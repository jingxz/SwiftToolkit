//
//  MainViewController.swift
//  Examples for iOS
//
//  Created by Jingxiang Zhang on 12/22/15.
//  Copyright © 2015 Jingxiang Zhang. All rights reserved.
//

import UIKit
import SwiftToolkit

enum SupportedExample: String {
    case StringExtensions
    case UIViewExtensions
}

class MainViewController: UITableViewController {
    
    private var datasource = [SupportedExample]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Main Menu"
        
        self.datasource.append(SupportedExample.StringExtensions)
        self.datasource.append(SupportedExample.UIViewExtensions)
    }
    
    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.datasource.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let reuseIdentifier = "reuseIdentifier"
        var cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier)
        if  cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: reuseIdentifier)
        }
        
        cell?.textLabel?.text = self.datasource[indexPath.row].rawValue
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let selectedExample = self.datasource[indexPath.row]
        switch (selectedExample) {
        case .StringExtensions:
            NSLog("String Extensions")
            
        case .UIViewExtensions:
            NSLog("UIViewExtensions")
            
        }
    }
}
