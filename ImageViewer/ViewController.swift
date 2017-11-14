//
//  ViewController.swift
//  ImageViewer
//
//  Created by Paul on 2017-11-13.
//  Copyright © 2017 Paul. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Storm Viewer"
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            
            if item.hasPrefix("nssl"){
                //load pictures
                pictures.append(item)
            }
            
        }
        
    }
    
    
    
    
    //MARK: tableview datasource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PictureIdentifier", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //type cast to dvc to access its property.
        if let detailedVc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            
            detailedVc.selectedImage = pictures[indexPath.row]
            
            navigationController?.pushViewController(detailedVc, animated: true)
            
        }
        
        
    }



}

