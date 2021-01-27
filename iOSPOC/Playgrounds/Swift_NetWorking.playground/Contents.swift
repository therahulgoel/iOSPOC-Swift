// Playground - noun: a place where people can play
//Created On : XCode 11.0
// By : Rahul Goel CSE

import Cocoa

var str = "Hello, playground for networking"

//Sample REST API call
func sampleAPICall(){
    if let url = URL(string: "https://www.google.com"){
        let _ = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if (error != nil){
            }else{
            }
        }
    }
}

sampleAPICall()

//URLSession Key Points :
/*
 1. Data Tasks    : URLSessionDataTask
 They’re the most common for webservice requests, for example when working with JSON.
 2. Upload Tasks : URLSessionUploadTask,
 They’re similar to data tasks, but URLSessionUploadTask instances can also upload data in the background
 3. Download Tasks : URLSessionDownloadTask,
 by directly writing to a temporary file. You can track the progress of file downloads, and pause and resume them.
 
 */


