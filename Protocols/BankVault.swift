//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

protocol ProvideAccess {
    func allowEntryWithPassword(password: [Int]) -> Bool
}

extension BankVault: ProvideAccess {
    func allowEntryWithPassword(password: [Int]) -> Bool {
        if 1...10 ~= password.count {
            for index in stride(from: 0, to: password.count, by: 2) {
                if password[index] % 2 != 0 {
                    return false
                }
            }
            return true
        } else {
            return false
        }
        
    }
}

