//
//  ViewController.swift
//  MINCLT
//
//  Created by madhav sharma on 10/20/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var cltView: UICollectionView!
    @IBOutlet weak var typeTxt: UITextView!
    @IBOutlet weak var titleLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        typeTxt.layer.cornerRadius = 15.0
        typeTxt.layer.borderWidth = 0.5
        typeTxt.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        if traitCollection.userInterfaceStyle == .dark {
                titleLbl.textColor = UIColor.white
            } else {
                titleLbl.textColor = UIColor.black
            }
        
        cltView.register(CltViewCell.nib(), forCellWithReuseIdentifier: CltViewCell.identifier)
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height)
        cltView.collectionViewLayout = layout
        
        cltView.delegate = self
        cltView.dataSource = self
        
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CltViewCell.identifier, for: indexPath) as! CltViewCell
        
        cell.configure(with: UIImage(named: "MINTXT")!)
        
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height)
    }
}
