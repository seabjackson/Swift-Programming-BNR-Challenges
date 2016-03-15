//
//  Accountant.swift
//  CyclicalAssets
//
//  Created by lily on 3/15/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

import Foundation

class Accountant {
    typealias NetworthChanged = (Double) -> ()
    
    var networthChangedHandler: NetworthChanged? = nil
    var netWorth: Double = 0.0 {
        didSet {
            networthChangedHandler?(netWorth)
        }
    }
    
    func gainedNewAsset(asset: Asset) {
        netWorth += asset.value
    }
}
