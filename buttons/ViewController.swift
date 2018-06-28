//
//  ViewController.swift
//  buttons
//
//  Created by Dan on 28/06/2018.
//  Copyright © 2018 Hnz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let flatButton = FlatButton(title: "Hello World", backgroundColor: UIColor.purple)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(flatButton)
        flatButton.frame = view.frame
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

