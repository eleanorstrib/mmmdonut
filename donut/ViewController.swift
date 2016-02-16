//
//  ViewController.swift
//  donut
//
//  Created by Eleanor Stribling on 2/16/16.
//  Copyright © 2016 eleanorstrib. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var flickrImage: UIImageView!
    @IBOutlet weak var moreDonuts: UIButton!
    @IBOutlet weak var imageLabel: UILabel!
    
    @IBAction func getFlickrImage(sender: AnyObject) {
        enableUI(false)
        flickrAPICall()
    }
    
    private func enableUI(enabled:Bool) {
        imageLabel.enabled = enabled
        moreDonuts.enabled = enabled
        
        if enabled {
            imageLabel.alpha = 1.0
            moreDonuts.alpha = 1.0
        } else {
            imageLabel.alpha = 0.5
            moreDonuts.alpha = 0.5
        }
    
    }
    
    private func flickrAPICall(){
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

