//
//  GraphsTests.swift
//  iOSPOC
//
//  Created by Rahul Goel on 28/04/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

final class GraphsTests{
    
    final class func createAdjacencyList(){
    }
    
    final class func createAdjacencyMatrix(){
        let graph:Graphs = Graphs(graphType: .Directed, representationType: .adjacencyMatrix)
        graph.insertVertex(Vertex("A", 0))
        graph.insertVertex(Vertex("B", 0))
        graph.insertVertex(Vertex("C", 0))
        graph.insertVertex(Vertex("D", 0))
        print(graph.getAllVertices().count)
        graph.insertEdge(u: "A", v: "B")
        graph.insertEdge(u: "C", v: "D")
        
        
    }
    
    final class func bft(){
        
        //Connected graph
        let graph:Graphs = Graphs(graphType: .UnDirected, representationType: .adjacencyMatrix)
        graph.insertVertex(Vertex("A", 0))
        graph.insertVertex(Vertex("B", 0))
        graph.insertVertex(Vertex("C", 0))
        graph.insertVertex(Vertex("D", 0))
        graph.insertEdge(u: "A", v: "B")
        graph.insertEdge(u: "B", v: "C")
        graph.insertEdge(u: "C", v: "D")
        graph.insertEdge(u: "D", v: "A")
        graph.bft("A")
        
        //Disconnected Graph
        let graph1:Graphs = Graphs(graphType: .UnDirected, representationType: .adjacencyMatrix)
        graph1.insertVertex(Vertex("A", 0))
        graph1.insertVertex(Vertex("B", 0))
        graph1.insertVertex(Vertex("C", 0))
        graph1.insertVertex(Vertex("D", 0))
        graph1.insertEdge(u: "A", v: "B")
        graph1.insertEdge(u: "B", v: "C")
        graph1.bft("A")
    }
    
    final class func dft(){
        //Connected graph
        let graph:Graphs = Graphs(graphType: .UnDirected, representationType: .adjacencyMatrix)
        graph.insertVertex(Vertex("A", 0))
        graph.insertVertex(Vertex("B", 0))
        graph.insertVertex(Vertex("C", 0))
        graph.insertVertex(Vertex("D", 0))
        graph.insertEdge(u: "A", v: "B")
        graph.insertEdge(u: "B", v: "C")
        graph.insertEdge(u: "C", v: "D")
        graph.insertEdge(u: "D", v: "A")
        graph.dft("A")
        
        //Disconnected Graph
        let graph1:Graphs = Graphs(graphType: .UnDirected, representationType: .adjacencyMatrix)
        graph1.insertVertex(Vertex("A", 0))
        graph1.insertVertex(Vertex("B", 0))
        graph1.insertVertex(Vertex("C", 0))
        graph1.insertVertex(Vertex("D", 0))
        graph1.insertEdge(u: "A", v: "B")
        graph1.insertEdge(u: "B", v: "C")
        graph1.dft("A")

    }
}

