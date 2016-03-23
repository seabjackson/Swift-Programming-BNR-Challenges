//
//  Contact.swift
//  Contacts
//
//  Created by lily on 3/22/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

import Foundation

class Contact: NSObject {
    let name: String
    init(contactName: String) {
        name = contactName
        super.init()
    }
}