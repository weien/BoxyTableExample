//
//  ItemListDataSource.swift
//  BoxyTableExample
//
//  Created by Weien Wang on 9/24/16.
//  Copyright © 2016 Weien Wang. All rights reserved.
//

import UIKit

class ItemListDataSource: NSObject {
    let viewModel: ItemListViewModel
    
    init(tableView: UITableView, viewModel: ItemListViewModel) {
        self.viewModel = viewModel
        super.init()
        tableView.dataSource = self
    }
}

extension ItemListDataSource: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.numberOfItemsInSection(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! ItemTableViewCell
        cell.mainImage.image = self.viewModel.imageForIndexPath(indexPath: indexPath)
        cell.titleLabel.text = self.viewModel.titleForIndexPath(indexPath: indexPath)
        cell.dateLabel.text = self.viewModel.dateForIndexPath(indexPath: indexPath)
        cell.descriptionLabel.text = self.viewModel.descForIndexPath(indexPath: indexPath)
        cell.buyNowButton.isHidden = self.viewModel.buyNowValueForIndexPath(indexPath: indexPath)
                
        return cell
    }
}
