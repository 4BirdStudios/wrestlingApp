//
//  1xChampions.swift
//  ChampStats
//
//  Created by Andrew Weaver on 6/4/17.
//  Copyright © 2017 4BirdsStudios. All rights reserved.
//

import UIKit
import SwiftyJSON

class x1Champions : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    parseJSON()
    }
    
    func parseJSON (){
        
        let path : String = Bundle.main.path(forResource: "1xChampions" , ofType: "json") as String!
        
        let jsonData = NSData(contentsOfFile: path) as NSData!
        
        let readableJSON = JSON(data: (jsonData as Data?)!, options: JSONSerialization.ReadingOptions.mutableContainers, error: nil)
        
        var Name = readableJSON["1xChampions"]
        
        
        NSLog("\(Name)")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
