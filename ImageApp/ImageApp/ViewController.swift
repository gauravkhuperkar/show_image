//
//  ViewController.swift
//  ImageApp
//
//  Created by Gaurav k on 4/29/16.
//  Copyright © 2016 Gaurav k. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var urlTextField: UITextField!
    
    @IBAction func submit(sender: UIButton) {
        let iniputUrl = urlTextField.text ?? ""
        if isValidUrl(iniputUrl) {
            // do something
        } else {
            // do somrthing
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
   
    
    func isValidUrl(url: String) -> Bool {
        // check if url is valid or not
        return false
    }


}

