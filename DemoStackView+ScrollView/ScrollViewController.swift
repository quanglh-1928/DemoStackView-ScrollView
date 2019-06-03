//
//  ScrollViewController.swift
//  DemoStackView+ScrollView
//
//  Created by ly.hoang.quang on 6/3/19.
//  Copyright © 2019 ly.hoang.quang. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
    }

    func setupScrollView() {
        scrollView.delegate = self
        scrollView.minimumZoomScale = 0.5
        scrollView.maximumZoomScale = 4
        scrollView.zoomScale = 1.0
    }
    
}

extension ScrollViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print(scrollView.contentOffset)
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("Begin Dragging .......")
    }
    
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        print("Begin Decelerating ...........")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("End Decelerating ..........")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("End Dragging .......... \(decelerate)")
    }
}
