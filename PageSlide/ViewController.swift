//
//  ViewController.swift
//  PageSlide
//
//  Created by Daniel Ku on 11/3/17.
//  Copyright © 2017 djku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        view1.backgroundColor = UIColor.blue
        
        let view1Label = UILabel(frame: CGRect(x: self.view.center.x, y: self.view.center.y, width: self.view.bounds.width, height: self.view.bounds.height))
        view1Label.text = "View1"
        view1Label.textAlignment = .center
        view1Label.center = self.view.center
        view1Label.textColor = UIColor.black
        view1Label.font = view1Label.font.withSize(25)
        view1.addSubview(view1Label)
        
        let view2 = UIView(frame: CGRect(x: self.view.frame.width, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        view2.backgroundColor = UIColor.black
        
        let view3 = UIView(frame: CGRect(x: view2.frame.origin.x + self.view.frame.width, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        view3.backgroundColor = UIColor.red

        scrollView.addSubview(view1)
        scrollView.addSubview(view2)
        scrollView.addSubview(view3)

        self.scrollView.contentSize = CGSize(width: self.view.frame.width * 3, height: self.view.frame.height)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

