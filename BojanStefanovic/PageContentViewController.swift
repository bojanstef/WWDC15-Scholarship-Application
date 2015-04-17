//
//  PageContentViewController.swift
//  BojanStefanovic
//
//  Created by Bojan Stefanovic on 2015-04-15.
//  Copyright (c) 2015 Bojan Stefanovic. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {

    @IBOutlet weak var contentTitleLabel: UILabel!
    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var learnMoreButton: UIButton!
    
    var itemIndex: Int?
    
    var titleText: String? {
        didSet {
            if let label = self.contentTitleLabel {
                label.text = self.titleText!
            }
        }
    }
    var imageName: String? {
        didSet {
            if let imageView = self.contentImageView {
                imageView.image = UIImage(named: self.imageName!)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.contentImageView.image = UIImage(named: imageName!)        
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)          
        
        self.setupCustomLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }    
    
    // MARK: - Helper methods
    
    func setupCustomLabel() {
        self.contentTitleLabel.backgroundColor = UIColor(red: 35.0/255.0, green: 35.0/255.0, blue: 35.0/255.0, alpha: 0.75)
        self.contentTitleLabel.alpha = 0.0
        self.contentTitleLabel.text = titleText!
        UIView.animateWithDuration(1.5, animations: { () -> Void in
            self.contentTitleLabel.alpha = 1.0
        })
    }

}







