//
//  ImageDownloader.swift
//  iOSPOC
//
//  Created by Rahul Goel on 11/08/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

typealias ImageDownloaderCompletion = (UIImage?,Error?)->Void

public enum CacheType{
    case InMemory
    case OnDisk
}

final class TRGImageCacheManager{
    static let shared:TRGImageCacheManager = TRGImageCacheManager(type: .InMemory)
    
    //Temporary place to store images downloaded recently
    private let cache:NSCache = NSCache<NSString,UIImage>()
    final var cacheType:CacheType = .InMemory
    
    private init(type:CacheType) {
        cacheType = type
    }
    
    final func downloadImageWith(url:String,completion:@escaping ImageDownloaderCompletion){
        //If Image is there in Cache Return The same
        if let contains = cache.object(forKey: url as NSString ){
            completion(contains,nil)
        }else{ //API Call
            TRGNetworkAPIManager.shared.downloadImage(url: url, completion: { [weak self](img, error) in
                if let img = img{
                    self?.cache.setObject(img, forKey: url as NSString)
                    completion(img,nil)
                }else{
                    completion(nil,error)
                }
            })
        }
    }
}

extension TRGImageCacheManager{
        
}

