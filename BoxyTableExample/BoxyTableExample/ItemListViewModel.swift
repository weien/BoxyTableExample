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
}
