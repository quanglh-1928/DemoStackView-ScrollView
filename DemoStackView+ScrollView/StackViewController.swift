//
//  StackViewController.swift
//  DemoStackView+ScrollView
//
//  Created by ly.hoang.quang on 6/3/19.
//  Copyright © 2019 ly.hoang.quang. All rights reserved.
//

import UIKit

class StackViewController: UIViewController {

    @IBOutlet weak var equalSpacingStack: UIStackView!
    @IBOutlet weak var hideButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onHideButton(_ sender: Any) {
        UIView.animate(withDuration: 0.3, animations: {
            self.equalSpacingStack.isHidden = !self.equalSpacingStack.isHidden
        }) { (_) in
            if self.equalSpacingStack.isHidden {
                self.hideButton.setTitle("Show Equal Spacing", for: .normal)
            } else {
                self.hideButton.setTitle("Hide Equal Spacing", for: .normal)
            }
        }
    }
    
}
