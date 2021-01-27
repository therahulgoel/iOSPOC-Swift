//
//  Graphs.swift
//  iOSPOC
//
//  Created by Rahul Goel on 28/04/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

/**  Graphs Quick Notes @therahulgoel
 
 Graph G = (V,E)
 Where V is Finite set of vertices,
 Where E is Finite set of Edges, Can contain cost/value/weight, Can be -negative.
 
 Graph Can Be :
    1. Directed
    2. UnDirected
 
 Graph Representations :
    1. Adjacency Matrix
    2. Adjacency Lists
    3. Edge Lists :
 
 All The graph Representaions has their own pros and cons and can be used/picked based on which ever suits best to the need.
 
    Graphs May or May not contain cycle
    Graphs May or May not be connected
 
 Graph Traversals : Traversing the complete Graph
    1. Breadth First Traversal (BFT):
    2. Depth First Traversal (DFT):
 
 Graph Searching PathBetween(V1,V2): Does not consider Edge weight
    1. Breadth First Search (BFS) : Based on Number of Edges
        Always Gives Min edge Path Between Two vertex
 
    2. Depth First Search (DFS) :
        May not give Min edge Path Between Two vertex
 
 Strongly Connected Graph :
    A directed graph is called strongly connected if there is a path from each vertex in the graph to every other vertex.
 
 */

enum GraphRepresentaionType{
    case adjcencyList
    case adjacencyMatrix
}

enum GraphType{
    case Directed
    case UnDirected
}

final class Vertex{
    let name:String
    var weight:Int? //Cost Or Value Or Weight
    
    init(_ name:String, _ wt:Int?) {
        self.name = name
        weight = wt
    }
}

final class Graphs{
    
    //Graph Representaions:
    var adjcencyList:[String:[Vertex]] = [String:[Vertex]]()
    var adjacencyMatrix:[[Int]] = [[Int]]()
    
    private var allVertices:[Vertex] = [Vertex]()
    private var representationType:GraphRepresentaionType
    private var graphType:GraphType
    private var allVerticesMap:[String:Int] = [String:Int]()
    
    //Traversals
    var dfTraversal:[Vertex] = [Vertex]()
    var bfTraversal:[Vertex] = [Vertex]()
    
    //Min Spanning Trees
    var mst_prims:[Vertex] = [Vertex]()
    var mst_kruskal:[Vertex] = [Vertex]()
    
    init(graphType:GraphType, representationType:GraphRepresentaionType){
        self.graphType = graphType
        self.representationType = representationType
    }
}

extension Graphs{
    
    final func insertEdge(u:String ,v:String){
        switch graphType {
        case .Directed:
            insertEdgeInDirectedGraph(u: u, v:v)
            break
        case .UnDirected:
            insertEdgeInUnDirectedGraph(u:u, v:v)
            break
        }
    }
    private func insertEdgeInDirectedGraph(u:String ,v:String){
        switch representationType{
        case .adjacencyMatrix:
            if let uIndex = getIndexFor(u), let vIndex = getIndexFor(v){
                adjacencyMatrix[uIndex][vIndex] = 1
            }
            break
        case .adjcencyList:
            break
        }
    }
    
    private final func getIndexFor(_ u:String)->Int?{
        return allVerticesMap[u]
    }
    
    private func insertEdgeInUnDirectedGraph(u:String ,v:String){
        switch representationType{
        case .adjacencyMatrix:
            if let uIndex = getIndexFor(u), let vIndex = getIndexFor(v){
                adjacencyMatrix[uIndex][vIndex] = 1
                adjacencyMatrix[vIndex][uIndex] = 1
            }
            break
        case .adjcencyList:
            break
        }
    }
    
}

extension Graphs{
    
    final func insertVertex(_ vertex: Vertex){
        //Get the All vertices array count
        let arrCount = allVertices.count
        allVertices.append(vertex)
        allVerticesMap[vertex.name] = arrCount
        
        switch graphType {
        case .Directed:
            insertVertexInDirectedGraph(vertex)
            break
        case .UnDirected:
            insertVertexInUnDirectedGraph(vertex)
            break
        }
    }
    
    private func insertVertexInDirectedGraph(_ vertex: Vertex){
        switch representationType{
        case .adjacencyMatrix:
            updateColumnAndAddRow()
            break
        case .adjcencyList:
            break
        }
    }
    
    private func insertVertexInUnDirectedGraph(_ vertex: Vertex){
        switch representationType{
        case .adjacencyMatrix:
            updateColumnAndAddRow()
            break
        case .adjcencyList:
            break
        }
    }
    
    private final func updateColumnAndAddRow(){
        if adjacencyMatrix.isEmpty{
            adjacencyMatrix = [[0]]
        }else{
            //Insert new cloumn
            var index = 0
            while index < adjacencyMatrix.count{
                adjacencyMatrix[index].append(0)
                index += 1
            }
            //Insert new Row
            adjacencyMatrix.append(Array(repeating: 0, count: allVertices.count))
        }
    }

    final func getAllVertices()->[Vertex]{
        return allVertices
    }
    
    final func getAdjacentsOf(_ v:String)->[Vertex]{
        
        if representationType == .adjacencyMatrix{
            if let indexOfv = allVerticesMap[v]{
                //To Get indexes of adjacent vertices
                let indexes = adjacencyMatrix[indexOfv]
                //To get all vertices for which entry is 1
                
                var adjcVertices:[Vertex] = [Vertex]()
                for (index,vert) in indexes.enumerated() {
                    if vert == 1{
                        adjcVertices.append(allVertices[index])
                    }
                }
                return adjcVertices
            }
        }
        
        if representationType == .adjcencyList{
            
        }
        return [Vertex]()
    }
    
    final func getVertexFor(_ name:String)->Vertex?{
        if let index = allVerticesMap[name]{
            return allVertices[index]
        }
        return nil
    }
    
}

extension Graphs{
    final func checkIfContainCycle_directedGraph(){
        
    }
    
    final func checkIfContainCycle_undirectedGraph(){
    
    }
}

//Graph Traversals
extension Graphs{
    
    /*Breadth First Traversal : BFT, Visiting All the nodes of Graph,
     Traverse all the adjacent nodes for a given node first and then move forward and repeat the same.
     Uses AdjcList Representation of graph :
     */
    final func bft(_ vertex:String){
        //To keep track of already visited nodes
        var visited:Set<String> = Set<String>()
        bftUnitl(&visited,vertex)
    }
    
    private func bftUnitl(_ visited: inout Set<String>, _ v:String){
        //Apply until evry node is visited
        while visited.count != allVertices.count {
            bftInternal(&visited, v)
            
            //Find out unvisited node if any
            let remaining = allVertices.filter { (vertex) -> Bool in
                !visited.contains(vertex.name)
            }
            if !remaining.isEmpty{
               bftUnitl(&visited, remaining[0].name)
            }
        }
    }
    
    private final func bftInternal(_ visited: inout Set<String>, _ v:String){
        
        var queue:[Vertex] = [Vertex]()
        guard let first = getVertexFor(v) else {return
        }
        queue.append(first)
        while !queue.isEmpty {
            let obj = queue.removeFirst()
            if !visited.contains(obj.name){
                bfTraversal.append(obj)
                visited.insert(obj.name)
            }
            //Insert all the adjacent vertices of obj into queue
            //remove if some node is already visited
            let adjacentNodes = getAdjacentsOf(obj.name).filter { (vertex) -> Bool in
                !visited.contains(vertex.name)
            }
            if !adjacentNodes.isEmpty{
                queue.append(contentsOf: adjacentNodes)
            }
        }
    }
    
    //Depth First Traversal : DFT Visiting All the nodes of Graph
    //For every nodes Instead of visitng all adjacent nodes first go ahead and keep on visiting until nothing left out then come back
    //for other pending unvisited neighbours if any.
    final func dft(_ vertex:String){
        //To keep track of already visited nodes
        var visited:Set<String> = Set<String>()
        var stack:[Vertex] = [Vertex]()
        
        dftUntil(&visited, vertex, &stack)
        
    }
    private func dftUntil(_ visited: inout Set<String>, _ v:String, _ stack:inout [Vertex]){
        //Apply until evry node is visited
        
        guard let first = getVertexFor(v) else {return
        }

        stack.append(first)
        visited.insert(first.name)
        
        
    }
    
    
}

/*Minimum Spanning Tree
Given an undirected and connected graph G = (V,E), a spanning tree of the graph G is a tree that spans G (that is, it includes every vertex of G) and is a subgraph of G (every edge in the tree belongs to G)
 */
extension Graphs{
    
    final func prims(){
        
    }
    
    final func kruskals(){
        
    }
}

//Single Source Shortest Path : Dijkstra
extension Graphs{
    final func Dijkstra(){
        
    }
}

//All Pair Shortest path : Flyod Warshell
extension Graphs{
    final func FlyodWarshell(){
        
    }
}

//Topological Sort
extension Graphs{
    /*
     Only Possible for DAG(Directed acyclic graph) : linear ordering of vertices such that for every directed edge uv, vertex u comes before v in the ordering
     */
    final func TopologicalSort(){
        
    }
}

//Find Number of connected components in graph represented by matrix of 0s and 1s
extension Graphs{
    
    /*To search if there is path between two given nodes x and y
    It traverse down the path one child at a time.
     */
    final class func dfs(_ u:String, _ v:String){
        var visited:Set<String> = Set<String>()

    }
    
    /*To search the shortest path if any, between two given nodes x and y
     It traverse through graph one level of children at a time
     */
    final class func bfs(){
        
    }
}




