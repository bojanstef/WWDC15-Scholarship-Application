//
//  TimelineViewController.swift
//  BojanStefanovic
//
//  Created by Bojan Stefanovic on 2015-04-22.
//  Copyright (c) 2015 Bojan Stefanovic. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let cellData = CellData()
    
    let tableViewCellIdentifier = "tableCell"
    let bottomCellIdentifier = "bottomTableCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let headerView: ParallaxHeaderView = ParallaxHeaderView.parallaxHeaderViewWithImage(UIImage(named: "majorlazer.png"), forSize: CGSizeMake(self.tableView.frame.size.height, 200.0)) as! ParallaxHeaderView

        // Tap Gesture to return to previous view
        headerView.userInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: "headerTapped")
        headerView.addGestureRecognizer(tapGesture)
        
        // Label settings
        headerView.headerTitleLabel.font = UIFont(name: "HelveticaNeue-Medium", size: CGFloat(36.0))
        headerView.headerTitleLabel.text = "Bojan Stefanovic"
        
        self.tableView.tableHeaderView = headerView                
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - IBAction methods
    
    @IBAction func nameButtonPressed(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    // MARK: - UITableViewDataSource methods
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return cellData.cells.count
        }
        else {
            return 1
        }

    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier(tableViewCellIdentifier, forIndexPath: indexPath) as! TimelineTableViewCell
        
            let entry = cellData.cells[indexPath.row]
        
            let cellDate = entry.date
            let cellLineImage = UIImage(named: entry.line)

            cell.tableCellDate.text = cellDate
            cell.tableCellLineImage.image = cellLineImage
            cell.tableCellLabel.text = entry.labelText
        
            return cell
        }
        else {
            let bottomCell = tableView.dequeueReusableCellWithIdentifier(bottomCellIdentifier, forIndexPath: indexPath) as! BottomTableViewCell
            
            return bottomCell
        }
    }
    
    // MARK: - UITableView methods
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return CGFloat(160.0)
        }
        else {
            return CGFloat(300.0)
        }
    }
    
    //
//    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let footerView = UIView(frame: CGRectMake(0, 0, tableView.frame.size.width, 200.0))
//        footerView.backgroundColor = UIColor.blackColor()
//        
//        return footerView
//    }
//    
//    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 200.0
//    }
    
    // MARK: - UITableViewDelegate methods
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        
        println(cellData.cells[row].labelText)
    }
    
    // MARK: UIScrollViewDelegate methods
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let header: ParallaxHeaderView = self.tableView.tableHeaderView as! ParallaxHeaderView
        header.layoutHeaderViewForScrollViewOffset(scrollView.contentOffset)
        
        self.tableView.tableHeaderView = header
    }
    
    // MARK: - Helper methods
    
    func headerTapped() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
