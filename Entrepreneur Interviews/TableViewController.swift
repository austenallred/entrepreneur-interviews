//
//  TableViewController.swift
//  Entrepreneur Interviews
//
//  Created by Austen Allred on 2/4/15.
//  Copyright (c) 2015 Austen Allred. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {

    let entrepreneurs = ["Chris Sacca","Jack Dorsey","Mark Zuckerberg","Marc Andreessen","Ben Horowitz","Chris Dixon","Steve Jobs","Bill Gates","Elon Musk"]
    
    var entrepreneur = "Chris Sacca"
    
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
        self.title = "Select an entrepreneur"
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entrepreneurs.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
        let label = cell.viewWithTag(1000) as UILabel
        label.text = entrepreneurs[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Pushed")
        self.entrepreneur = self.entrepreneurs[indexPath.row]
        self.performSegueWithIdentifier("tableViewToDetailSegue", sender: self)
        println(entrepreneur)
    }
    
 
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var secondViewController = segue.destinationViewController as DetailViewController
        secondViewController.entrepreneurName = entrepreneur
    }
}
