//
//  HomeViewModel.swift
//  iOSPOC
//
//  Created by Rahul Goel on 17/08/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

final class HomeViewModel{
    
    var dataSource:[HomeCellType:[HomeCellInfoWrapper]] = [HomeCellType:[HomeCellInfoWrapper]]()
    var dataSourceOrder:[HomeCellType] = [HomeCellType]()
    
    init() {
        initDataSource()
    }
}

extension HomeViewModel{
    final func initDataSource(){
        let obj1:HomeCellInfoWrapper = HomeCellInfoWrapper()
        obj1.imgUrl.append("https://www.spacex.com/sites/spacex/files/v2_smallsatheader.png")
        obj1.type = .type1
        dataSource[.type1]?.append(obj1)
        
        let obj2:HomeCellInfoWrapper = HomeCellInfoWrapper()
        obj2.imgUrl.append("https://www.futuretimeline.net/23rdcentury/images/antimatter_starship.jpg")
        obj2.type = .type1
        dataSource[.type1]?.append(obj2)

        let obj3:HomeCellInfoWrapper = HomeCellInfoWrapper()
        obj3.type = .type2
        dataSource[.type2]?.append(obj3)
        
        dataSourceOrder.append(.type1)
        dataSourceOrder.append(.type2)
    }
    
}
