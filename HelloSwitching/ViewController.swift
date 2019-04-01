//
//  ViewController.swift
//  HelloSwitching
//
//  Created by 曹炎平 on 2019/3/31.
//  Copyright © 2019 Peter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var role: Role?
    @IBOutlet weak var roleImage: UIImageView!
    
    @IBOutlet weak var genderSeg: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let role = role{
            roleImage.image = UIImage(named: role.image)
            if role.gender == "male" {
                genderSeg.selectedSegmentIndex = 0
            }else{
                genderSeg.selectedSegmentIndex = 1
            }
        }
    }


}

