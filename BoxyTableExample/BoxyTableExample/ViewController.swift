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
        
        let dc = DataController()
        let generatedItems = dc.generateItems()
        
        self.mainViewModel = ItemListViewModel(items: generatedItems)
        self.mainDataSource = ItemListDataSource(tableView: self.mainTableView, viewModel: self.mainViewModel!)
    }

}

