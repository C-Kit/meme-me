//
//  Model.swift
//  MemeMe 1.0
//
//  Created by Conor Higgins on 12/04/2021.
//

import UIKit

    struct Meme {
        var topText: String
        var bottomText: String
        var originalImage: UIImage
        var memedImage: UIImage
        
        // Function to generate a title for each meme to be used for CollectionViewCell Label text.
        
        func createMemeTitle() -> String {
            return topText + "_" + bottomText
        }
    }
