//
//  BoilerplateCode.swift
//  iOSPOC
//
//  Created by Rahul on 28/07/18.
//  Copyright © 2018 Rahul Goel. All rights reserved.
//

import Foundation
import UIKit

extension NSAttributedString {
    
    //To get height of attributed string based on width passed
    func getTextHeightWith(width:CGFloat)->CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil)
        return boundingBox.height
    }
}
