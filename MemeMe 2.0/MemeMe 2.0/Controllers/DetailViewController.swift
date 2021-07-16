//
//  DetailViewController.swift
//  MemeMe 2.0
//
//  Created by Conor Higgins on 20/05/2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    // Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    
    // Properties
    
    var memedImage: UIImage!
    
    // Function
    
    override func viewWillAppear(_ animated: Bool) {
        imageView.image = memedImage
    }
    
}
