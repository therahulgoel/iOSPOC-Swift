//
//  JSONResponseReader.swift
//  iOSPOC
//
//  Created by Rahul on 28/07/18.
//  Copyright © 2018 Rahul Goel. All rights reserved.
//

import Foundation

class JSONResponseReader{
    
    //To read json from the file name available in project directory
    class func readMockJSON(file:String)->Any?{
        let path =  Bundle.main.path(forResource:file, ofType: "json")
        let jsonData = try? NSData(contentsOfFile: path!, options: NSData.ReadingOptions.mappedIfSafe)
        let jsonResult = try? JSONSerialization.jsonObject(with: (jsonData as Data?)!, options: JSONSerialization.ReadingOptions.mutableContainers)
        return jsonResult
    }
}
