//
//  ViewController.swift
//  DemoStackView+ScrollView
//
//  Created by ly.hoang.quang on 6/3/19.
//  Copyright © 2019 ly.hoang.quang. All rights reserved.
//

import UIKit

class ViewController: UITableViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "toStack", sender: nil)
        default:
            performSegue(withIdentifier: "toScroll", sender: nil)
        }
    }
}

