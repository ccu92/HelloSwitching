//
//  RoleTableViewController.swift
//  HelloSwitching
//
//  Created by 曹炎平 on 2019/3/31.
//  Copyright © 2019 Peter. All rights reserved.
//

import UIKit

class RoleTableViewController: UITableViewController {

    @IBOutlet var roleLabels: [UILabel]!
    
    
    var roles = [Role(name: "小飛象", image: "小飛象", gender: "male"), Role(name: "小珍寶", image: "小珍寶", gender: "male"), Role(name: "呆寶", image: "呆寶", gender: "male")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var i = 0
        for role in roles {
            roleLabels[i].text = role.name
            i += 1
        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }



    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let controller = segue.destination as? ViewController
        if let row = tableView.indexPathForSelectedRow?.row {
            controller?.role = roles[row]
        }
    }
    

}
