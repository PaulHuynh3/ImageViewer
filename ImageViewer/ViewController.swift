//
//  ViewController.swift
//  ImageViewer
//
//  Created by Paul on 2017-11-13.
//  Copyright © 2017 Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            
            if item.hasPrefix("nssl"){
                //load pictures
                pictures.append(item)
                print(pictures)
            }
            
        }
        
    }




}

