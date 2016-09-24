//
//  ItemListViewModel.swift
//  BoxyTableExample
//
//  Created by Weien Wang on 9/24/16.
//  Copyright © 2016 Weien Wang. All rights reserved.
//

import UIKit

class ItemListViewModel: NSObject {
    var items: [Item]
    var dataController: DataController
    
    override init() {
        self.dataController = DataController()
        self.items = self.dataController.generateItems()
        super.init()
    }
    
    func numberOfItemsInSection(section: Int) -> Int {
        return Int(self.items.count)
    }
    
    func imageForIndexPath(indexPath: IndexPath) -> UIImage {
        return UIImage.init(named: "stanlee")!
    }
    
    func titleForIndexPath(indexPath: IndexPath) -> String {
        let item = self.items[indexPath.row]
        return item.itemTitle
    }
    
    func dateForIndexPath(indexPath: IndexPath) -> String {
        let item = self.items[indexPath.row]
        return item.itemDate
    }
    
    func descForIndexPath(indexPath: IndexPath) -> String {
        let item = self.items[indexPath.row]
        return "Description: " + item.itemDescription
    }
    
    func buyNowValueForIndexPath(indexPath: IndexPath) -> Bool {
        let item = self.items[indexPath.row]
        return item.itemBuyNow
    }
    
    func commentsForIndexPath(indexPath: IndexPath) -> Array<String> {
        let item = self.items[indexPath.row]
        if let unwrappedComments = item.itemComments {
            return unwrappedComments
        }
        else {
            return Array()
        }
    }
}
