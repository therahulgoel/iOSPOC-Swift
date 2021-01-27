//
//  UniqueEmailAddresses.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 13/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/unique-email-addresses/

func numUniqueEmails(_ emails: [String]) -> Int {
    var filteredEmailsSet = Set<String>()
    var i = 0
    let totalEmails = emails.count
    
    while i < totalEmails{
        let email = Array(emails[i])
        var j = 0
        let emailLength = email.count
        var tmp = ""
        var plusEncountered = false
        var atencountered = false
        while j < emailLength{
            //To skip . in local name
            if atencountered || email[j] != Character("."){
                if email[j] == Character("+"){
                    plusEncountered = true
                }else if email[j] == Character("@"){
                    atencountered = true
                }
                if atencountered || !plusEncountered{
                    tmp = tmp + "\(email[j])"
                }
            }
            j += 1
        }
        filteredEmailsSet.insert(tmp)
        i += 1
    }
    return filteredEmailsSet.count
}

