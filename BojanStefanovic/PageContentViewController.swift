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
    
    var itemIndex: Int = 0
    
    var titleText: String = "" {
        didSet {
            if let label = self.contentTitleLabel {
                label.text = self.titleText
            }
        }
    }
    
    var imageName: String = "" {
        didSet {
            if let imageView = self.contentImageView {
                imageView.image = UIImage(named: self.imageName)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.contentImageView.image = UIImage(named: imageName)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)          
        
        self.setupCustomButton()
        self.setupCustomLabel(self.contentTitleLabel, text: self.titleText)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }    
    
    // MARK: - Helper methods
    
    func setupCustomButton() {
        self.learnMoreButton.layer.masksToBounds = true
        self.learnMoreButton.layer.cornerRadius = 5.0
    }
    
    func setupCustomLabel(label: UILabel, text: String) {        
        label.alpha = 0.0
        label.text = text
        UIView.animateWithDuration(1.5, animations: { () -> Void in
            label.alpha = 1.0
        })
    }

}







