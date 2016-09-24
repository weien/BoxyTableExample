//
//  DataController.swift
//  BoxyTableExample
//
//  Created by Weien Wang on 9/23/16.
//  Copyright © 2016 Weien Wang. All rights reserved.
//

import UIKit

class DataController: NSObject {
    func generateItems() -> Array<Item> {
        var itemArray:Array<Item> = Array()
        if let filePath = Bundle.main.path(forResource: "mock_data", ofType:"json"), let data = NSData(contentsOfFile: filePath) {
            do {
                let jsonObject = try JSONSerialization.jsonObject(with: data as Data, options: JSONSerialization.ReadingOptions.allowFragments)
                
                if let jsonArray = jsonObject as? NSArray {
                    for jsonItem in jsonArray {
                        let processedItem = Item(dictInfo: jsonItem as! NSDictionary)
                        itemArray.append(processedItem)                        
                    }
                }
            }
            catch {
                //Handle error
            }
        }
        
        print (itemArray.count)
        return itemArray
    }
}
