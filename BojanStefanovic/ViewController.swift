//
//  ViewController.swift
//  BojanStefanovic
//
//  Created by Bojan Stefanovic on 2015-04-15.
//  Copyright (c) 2015 Bojan Stefanovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    private var pageVC: UIPageViewController?
    
    private let contentLabels = ["UI/UX Designer", "Software Engineer", "Entrepreneur"]
    private let contentImages = ["hipster.jpg", "hacker.jpg", "hustler.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.createPageViewController()
        self.setupPageControl()
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Helper methods
    
    private func createPageViewController() {
        let pageViewController = self.storyboard?.instantiateViewControllerWithIdentifier("PageViewController") as! UIPageViewController
        pageViewController.dataSource = self
        pageViewController.delegate = self
        
        if contentImages.count > 0 {
            let firstVC = self.getItemController(0)!
            let startingVCs: NSArray = [firstVC]
            pageViewController.setViewControllers(startingVCs as [AnyObject], direction: .Forward, animated: false, completion: nil)
        }
        
        self.pageVC = pageViewController
        addChildViewController(self.pageVC!)
        self.view.addSubview(self.pageVC!.view)
        self.pageVC?.didMoveToParentViewController(self)
    }
    
    private func setupPageControl() {
        let appearance = UIPageControl.appearance()
        appearance.pageIndicatorTintColor = UIColor.darkGrayColor()
        appearance.currentPageIndicatorTintColor = UIColor.whiteColor()
        appearance.backgroundColor = UIColor.clearColor()
    }
    
    private func getItemController(itemIndex: Int) -> PageContentViewController? {
        if itemIndex < contentImages.count {
            let pageItemController = self.storyboard!.instantiateViewControllerWithIdentifier("PageContentViewController") as! PageContentViewController
            pageItemController.itemIndex = itemIndex
            pageItemController.titleText = contentLabels[itemIndex]
            pageItemController.imageName = contentImages[itemIndex]
            
            return pageItemController
        }
        
        return nil
    }
    
    // MARK: UIPageViewControllerDataSource methods
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        let itemVC = viewController as! PageContentViewController
        if itemVC.itemIndex > 0 {
            return getItemController(itemVC.itemIndex - 1)
        }
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        let itemVC = viewController as! PageContentViewController
        if itemVC.itemIndex + 1 < self.contentImages.count {
            return getItemController(itemVC.itemIndex + 1)
        }
        return nil
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return self.contentImages.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
}
