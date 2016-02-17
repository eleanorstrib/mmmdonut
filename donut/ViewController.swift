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
        
        //this array organizes all of the pararmeters from the flickrconstants file in order
        //the idea is to make the code easier to maintain by storing all parameters in one place across the whole app
        let flickrParameters = [
            Flickrconstants.ParameterKeys.Method : Flickrconstants.ParameterValues.GalleryPhotosMethod,
            Flickrconstants.ParameterKeys.APIKey : Flickrconstants.ParameterValues.APIKey,
            Flickrconstants.ParameterKeys.GalleryID : Flickrconstants.ParameterValues.GalleryID,
            Flickrconstants.ParameterKeys.Extras : Flickrconstants.ParameterValues.MediaUrl,
            Flickrconstants.ParameterKeys.Format : Flickrconstants.ParameterValues.ResponseFormat,
            Flickrconstants.ParameterKeys.NoJSONCallback : Flickrconstants.ParameterValues.DisableJSONCallback
        ]
        
        //this puts together the URL from the constants, creates the request and runs the session
        let urlString = Flickrconstants.Base.FlickrBaseUrl + escParameters(flickrParameters)
        let url = NSURL(string: urlString)!
        let request = NSURLRequest(URL: url)
        
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request) {(data, response, error) in
            if error == nil {
                print(data)
            } else {
                print("there was an error")
            }
        
        }
        task.resume()
    }
    
    private func escParameters(parameters: [String:AnyObject]) -> String {
        if parameters.isEmpty {
            return "error"
        } else {
            var keyValuePairs = [String()]
            for (key, value) in parameters {
                let stringValue = "\(value)"
                let escValue = stringValue.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())
                keyValuePairs.append(key + "=" + "(/escValue!)")
            }
        return "?\(keyValuePairs.joinWithSeparator("&"))"
        }
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

