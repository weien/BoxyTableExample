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
        
        let comments = self.viewModel.commentsForIndexPath(indexPath: indexPath)
        if comments.count == 1 {
            cell.commentLabel1.isHidden = false
            cell.commentLabel2.isHidden = true
            cell.commentLabel3.isHidden = true
            
            cell.commentLabel1.text = "Comment: " + comments[0]
            
        }
        else if comments.count == 2 {
            cell.commentLabel1.isHidden = false
            cell.commentLabel2.isHidden = false
            cell.commentLabel3.isHidden = true
            
            cell.commentLabel1.text = "Comment: " + comments[0]
            cell.commentLabel2.text = "Comment: " + comments[1]
        }
        else if comments.count == 3 {
            cell.commentLabel1.isHidden = false
            cell.commentLabel2.isHidden = false
            cell.commentLabel3.isHidden = false
            
            cell.commentLabel1.text = "Comment: " + comments[0]
            cell.commentLabel2.text = "Comment: " + comments[1]
            cell.commentLabel3.text = "Comment: " + comments[2]
        }
        else { //0
            cell.commentLabel1.isHidden = true
            cell.commentLabel2.isHidden = true
            cell.commentLabel3.isHidden = true
        }
        
        return cell
    }
}
