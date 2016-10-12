//
//  ViewController.swift
//  ConfettiExample
//
//  Created by Or on 05/10/2016.
//  Copyright © 2016 Or. All rights reserved.
//

import UIKit
import ConfettiView

class ViewController: UIViewController {

    @IBOutlet weak var confettiView: ConfettiView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func stopConfetti(_ sender: UIButton) {
        if confettiView.isAnimating == true {
            sender.titleLabel?.text = "startAnimating()"
            confettiView.stopAnimating()
        } else {
            sender.titleLabel?.text = "stopAnimating()"
            confettiView.startAnimating()
        }
        
    }

    @IBAction func snap(_ sender: AnyObject) {
        confettiView.snapShot()
    }

}

