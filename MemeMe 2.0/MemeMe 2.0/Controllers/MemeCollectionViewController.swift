//
//  MemeCollectionViewController.swift
//  MemeMe 2.0
//
//  Created by Conor Higgins on 11/05/2021.
//

import UIKit

class SentMemesCollectionViewController: UICollectionViewController {
    
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
            collectionView.reloadData()
            collectionView.delegate = self
        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let spacing: CGFloat = 3.0
        let x = (view.frame.size.width - (4 * spacing)) / 3.0
        let y = (view.frame.size.height - (4 * spacing)) / 6.0
        collectionViewFlowLayout.minimumInteritemSpacing = spacing
        collectionViewFlowLayout.minimumLineSpacing = spacing
        collectionViewFlowLayout.itemSize = CGSize(width: x, height: y)
    }
        
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionViewCell", for: indexPath) as! MemeCollectionViewCell
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
        cell.memeImageView?.image = meme.memedImage
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = self.storyboard!.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        vc.memedImage = self.memes[(indexPath as NSIndexPath).row].memedImage
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
}
