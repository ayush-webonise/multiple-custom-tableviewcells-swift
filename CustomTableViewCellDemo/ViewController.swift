//
//  ViewController.swift
//  CustomTableViewCellDemo
//
//  Created by webonise on 26/07/17.
//  Copyright © 2017 webonise. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableViewInfoListing: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewInfoListing.delegate = self
        tableViewInfoListing.dataSource = self
        
        
        tableViewInfoListing.rowHeight = UITableViewAutomaticDimension
        tableViewInfoListing.estimatedRowHeight = 40
        
        tableViewInfoListing.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let firstCell = tableView.dequeueReusableCell(withIdentifier: "firstTableViewCell", for: indexPath) as? FirstTableViewCell
            firstCell?.labelDemoName.text = "Some text"
            return firstCell ?? FirstTableViewCell()
        } else {
            let secondCell = tableView.dequeueReusableCell(withIdentifier: "secondTableViewCell", for: indexPath) as? SecondTableViewCell
            return secondCell  ?? SecondTableViewCell()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

