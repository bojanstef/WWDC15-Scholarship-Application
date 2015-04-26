//
//  WebViewController.swift
//  BojanStefanovic
//
//  Created by Bojan Stefanovic on 2015-04-24.
//  Copyright (c) 2015 Bojan Stefanovic. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    var webURL: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // Do any additional setup after loading the view.
        
        webView.loadRequest(NSURLRequest(URL: NSURL(string: webURL)!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    // MARK: - IBAction methods
    
    @IBAction func closeButtonPressed(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func backButtonPressed(sender: UIButton) {
        webView.goBack()
    }
    
}
