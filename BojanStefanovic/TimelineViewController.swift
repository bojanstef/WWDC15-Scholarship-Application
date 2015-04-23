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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
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
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.cells.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(tableViewCellIdentifier, forIndexPath: indexPath) as! TimelineTableViewCell
        
        let entry = cellData.cells[indexPath.row]
        
        let cellImage = UIImage(named: entry.image)
        let cellLineImage = UIImage(named: entry.line)

        cell.tableCellImage.image = cellImage
        cell.tableCellLineImage.image = cellLineImage
        cell.tableCellLabel.text = entry.labelText
        
        return cell
    }
    
    // UITableViewDelegate methods
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        
        println(cellData.cells[row].labelText)
    }
    
}















