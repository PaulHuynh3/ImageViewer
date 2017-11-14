//
//  DetailViewController.swift
//  ImageViewer
//
//  Created by Paul on 2017-11-13.
//  Copyright © 2017 Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = selectedImage
        if let imageToLoad = selectedImage {
            
            imageView.image = UIImage(named: imageToLoad)
        }

    }

    
    //hides the nav bar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    //reenable nav bar when exiting detail view
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }


}
