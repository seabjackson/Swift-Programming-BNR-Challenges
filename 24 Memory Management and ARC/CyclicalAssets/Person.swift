//
//  Person.swift
//  CyclicalAssets
//
//  Created by lily on 3/15/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

import Foundation

class Person: CustomStringConvertible {
    let name: String
    let accountant = Accountant()
    var assets = [Asset]()
    
    var description: String {
        return "Person(\(name))"
    }
    
    init(name: String) {
        self.name = name
        
        accountant.networthChangedHandler = {
            [weak self] netWorth in
            
            self?.netWorthDidChange(netWorth)
            return
        }
    }
    
    deinit {
        print("\(self) is being deallocated")
    }
    
    func takeOwnershipOfAsset(asset: Asset) {
        asset.owner = self
        assets.append(asset)
        accountant.gainedNewAsset(asset)
    }
    
    func netWorthDidChange(netWorth: Double) {
        print("The networth of \(self) is now \(netWorth)")
    }
    
}