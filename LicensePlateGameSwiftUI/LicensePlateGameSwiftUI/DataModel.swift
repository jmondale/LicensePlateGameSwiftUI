//
//  DataModel.swift
//  LicensePlateGameSwiftUI
//
//  Created by Jaye Mondale on 12/16/22.
//

import Foundation

class DataModel {
    var states = [LicensePlateItem]()
    var firstTimeToPlay = true
    
    init() {
        loadLicensePlateItems()
    }
    
    func documentsDirectory() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        return paths[0]
    }
    
    func dataFilePath() -> String {
        return (documentsDirectory() as NSString).appendingPathComponent("LicensePlateItem.plist")
    }
    
    func saveLicensePlateItem() {
        let data = NSMutableData()
        let archiver = NSKeyedArchiver(forWritingWith: data)
        archiver.encode(states, forKey: "LicensePlateItems")
        archiver.finishEncoding()
        data.write(toFile: dataFilePath(), atomically: true)
    }
    
    func loadLicensePlateItems() {
        let path = dataFilePath()
        if FileManager.default.fileExists(atPath: path) {
            if let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
                let unarchiver = NSKeyedUnarchiver(forReadingWith: data)
                states = unarchiver.decodeObject(forKey: "LicensePlateItems") as! [LicensePlateItem]
                unarchiver.finishDecoding()
            }
        }
    }
}
