//
//  DetailViewcontroller.swift
//  Entrepreneur Interviews
//
//  Created by Austen Allred on 2/21/15.
//  Copyright (c) 2015 Austen Allred. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    
    var entrepreneurName = "Steve Jobs"
    

    override func viewDidLoad() {
        nameLabel.text = entrepreneurName
        self.title = "\(entrepreneurName)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
