//
//  HomeCellInfoWrapper.swift
//  iOSPOC
//
//  Created by Rahul Goel on 17/08/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

enum HomeCellType:String{
    case type1 = "Type 1"
    case type2 = "Type 2"
}

final class HomeCellInfoWrapper{
    
    var imgUrl:[String] = [String]()
    var type:HomeCellType?
}
