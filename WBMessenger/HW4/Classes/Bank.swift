//
//  Bank.swift
//  WBMessenger
//
//  Created by Vladimir on 21.06.2024.
//

import Foundation

class Bank {
    
    var account: Double
    
    func transaction(from clientA: Bank, to clientB: Bank, and transfer: Double) {
        print("\(clientA.account) \(clientB.account)")
        
        clientA.account -= transfer
        clientB.account += transfer
        
        print("\(clientA.account) \(clientB.account)")
    }
    
    func refillAccount(with units: Double) {
        print(account.self)
        
        account.self += units
        
        print(account.self)
    }
    
    init(acount: Double) {
        self.account = acount
    }
}


final class ClientA: Bank {
    var customersAccountA: Double
    
    init(customersAccountA: Double) {
        self.customersAccountA = customersAccountA
        
        super.init(acount: customersAccountA)
    }
}
  
final class ClientB: Bank {
    var customersAccoutB: Double
    
    init(customersAccoutB: Double) {
        self.customersAccoutB = customersAccoutB
        
        super.init(acount: customersAccoutB)
    }
    
}


let a: ClientA = ClientA(customersAccountA: 100)
let b: ClientB = ClientB(customersAccoutB: 100)


