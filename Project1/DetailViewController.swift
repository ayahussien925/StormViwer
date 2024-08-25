//
//  DetailViewController.swift
//  Project1
//
//  Created by Aya Hussien on 22/08/2024.
//

import UIKit

class DetailViewController: UIViewController {
   
    
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var selc: Int = 0
    var total: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

       title = "Picture \(selc) of \(total)"
         
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            imageView.image  = UIImage(named: imageToLoad)
        }

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

   
}
