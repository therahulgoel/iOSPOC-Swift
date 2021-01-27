//
//  CoreDataExtensions.swift
//  iOSPOC
//
//  Created by Rahul Goel on 05/02/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation
import CoreData

extension NSManagedObject{
    
    func getPropertyDictionary()->[String:Any]?{
        let keys = Array(self.entity.attributesByName.keys)
        var dict: [String : Any]? = nil
        dict = self.dictionaryWithValues(forKeys: keys)
        return dict
    }
    
    func getRelationshipDictionary()->[String:Any]?{
        let keys = Array(self.entity.relationshipsByName.keys)
        var dict: [String : Any]? = nil
        dict = self.dictionaryWithValues(forKeys: keys)
        return dict
    }
}

extension Dictionary {
    mutating func merge(dict: [Key: Value]){
        for (k, v) in dict {
            updateValue(v, forKey: k)
        }
    }
}
