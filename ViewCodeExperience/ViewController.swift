//
//  ViewController.swift
//  ViewCodeExperience
//
//  Created by Julio Cesar on 03/08/20.
//  Copyright © 2020 Julio Cesar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var wallet: WalletView = {
       let view = WalletView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        wallet.show()       
    }
}

