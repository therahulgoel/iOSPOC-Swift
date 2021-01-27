//
//  NetworkAPIManager.swift
//  iOSPOC
//
//  Created by Rahul Goel on 11/08/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

public enum TRGRequestType:String{
    case GET = "GET"
    case PUT = "PUT"
    case POST = "POST"
    case DELETE = "DELETE"
}

public enum TRGMIMEType:String{
    case Image = "image"
    case JSON = "application/json"
}

public enum TRGHttpStatusCode:Int{
    case Success = 200
    case AuthError = 401
    case BadRequest = 400
    case ServerError = 500
}

open class TRGNetworkAPIManager{
    static let shared:TRGNetworkAPIManager = TRGNetworkAPIManager()
    
    //MARK: Private
    private init() {
    }
    
    typealias NetworkAPIManagerCompletion = (Data?, URLResponse?, Error?)->Void
    final var baseURL:String?
    
}

extension TRGNetworkAPIManager{
    final func executeRequest(url:String, methodType:TRGRequestType,completion:@escaping NetworkAPIManagerCompletion){
        if let str = URL(string: url){
            let task = URLSession.shared.dataTask(with: str){data, response, error in
                if error == nil{
                    if let response = response as? HTTPURLResponse, let mimetype = response.mimeType, mimetype.hasPrefix(TRGMIMEType.JSON.rawValue), response.statusCode == TRGHttpStatusCode.Success.rawValue{
                        completion(data, response, error)
                    }
                }else{
                    completion(data, response, error)
                }
            }
            task.resume()
        }else{
            completion(nil, nil, nil)
        }
    }
    
    final func downloadImage(url:String,completion:@escaping ImageDownloaderCompletion){
        if let str = URL(string: url){
            let task = URLSession.shared.dataTask(with: str){data, response, error in
                if error == nil{
                    if let response = response as? HTTPURLResponse, let mimetype = response.mimeType, mimetype.hasPrefix(TRGMIMEType.Image.rawValue), response.statusCode == TRGHttpStatusCode.Success.rawValue, let data = data, let img = UIImage(data: data){
                        completion(img,nil)
                    }
                }else{
                    completion(nil,error)
                }
            }
            task.resume()
        }else{
            completion(nil,nil)
        }
    }
    
    final func setDefaultHeaders(){
        
    }
}
