//
//  NewContactViewController.swift
//  Contacts
//
//  Created by lily on 3/22/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

import UIKit

class NewContactViewController: UIViewController {
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var contactImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
// Do any additional setup after loading the view.
        contactImageView.image = DefaultImage.generateDefaultImageOfSize(contactImageView.frame.size);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


