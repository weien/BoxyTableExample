//
//  ViewController.swift
//  BoxyTableExample
//
//  Created by Weien Wang on 9/23/16.
//  Copyright © 2016 Weien Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var mainDataSource: ItemListDataSource?
    var mainViewModel: ItemListViewModel?
    @IBOutlet var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainViewModel = ItemListViewModel()
        self.mainDataSource = ItemListDataSource(tableView: self.mainTableView, viewModel: self.mainViewModel!)
        
        self.mainTableView.estimatedRowHeight = 80
        self.mainTableView.rowHeight = UITableViewAutomaticDimension
    }

}

