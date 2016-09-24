//
//  Item.swift
//  BoxyTableExample
//
//  Created by Weien Wang on 9/24/16.
//  Copyright © 2016 Weien Wang. All rights reserved.
//

import UIKit

class Item: NSObject {
    var itemID: NSNumber?
    var itemTitle: String
    var itemDate: String
    var itemDescription: String
    var itemBuyNow: Bool
    var itemComments: Array<String>?
    
    init(dictInfo:NSDictionary) {
        
        if let iID = dictInfo["id"] as? NSNumber {
            self.itemID = iID
        }
        
        if let iTitle = dictInfo["title"] as? String {
            self.itemTitle = iTitle
        }
        else {
            self.itemTitle = NSLocalizedString("Error", comment: "Error")
        }
        
        if let iDate = dictInfo["date"] as? String {
            self.itemDate = iDate
        }
        else {
            self.itemDate = NSLocalizedString("Error", comment: "Error")
            print("No date found for item: ", dictInfo)
        }
        
        if let itemDescription = dictInfo["description"] as? String {
            self.itemDescription = itemDescription
        }
        else {
            self.itemDescription = NSLocalizedString("Error", comment: "Error")
        }
        
        if let iBuyNow = dictInfo["buyNow"] as? Bool {
            self.itemBuyNow = iBuyNow
        }
        else {
            self.itemBuyNow = false
        }
        
        if let iComments = dictInfo["comments"] as? Array<Dictionary<String,String>> {
            if let unwrappedComments = iComments.map ({ $0["comment"]}) as? Array<String> {
                self.itemComments = unwrappedComments
            }
        }
        
        super.init()
    }
}
