//
//  LicensePlateItem.swift
//  LicensePlateGameSwiftUI
//
//  Created by Jaye Mondale on 12/16/22.
//

import Foundation

import UIKit

class LicensePlateItem: NSObject, NSCoding {
    var stateName = ""
    var stateFlagImage:UIImage?
    var checked = false
    var stateCapital = ""
    var stateFlag = ""
    var yearEstablished = ""
    var yearSettled = ""
    var stateOrder = ""
    var stateFlagImageName = ""
    
    required init?(coder aDecoder: NSCoder) {
        stateName = aDecoder.decodeObject(forKey: "StateName") as? String ?? ""
        stateCapital = aDecoder.decodeObject(forKey: "StateCapital") as? String ?? ""
        checked = aDecoder.decodeBool(forKey: "Checked")
        stateFlag = aDecoder.decodeObject(forKey: "Flag") as? String ?? ""
        yearEstablished = aDecoder.decodeObject(forKey: "YearEstablished") as? String ?? ""
        yearSettled = aDecoder.decodeObject(forKey: "YearSettled") as? String ?? ""
        stateOrder = aDecoder.decodeObject(forKey: "StateOrder") as? String ?? ""
        stateFlagImageName = aDecoder.decodeObject(forKey: "StateFlageImageName") as? String ?? ""
        super.init()
    }
    
    override init() { super.init()
    }
    
    func toggleChecked() {
        checked = !checked
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(stateName, forKey: "StateName")
        aCoder.encode(stateCapital, forKey: "StateCapital")
        aCoder.encode(checked, forKey: "Checked")
        aCoder.encode(stateFlag, forKey: "Flag")
        aCoder.encode(yearEstablished, forKey: "YearEstablished")
        aCoder.encode(yearSettled, forKey: "YearSettled")
        aCoder.encode(stateOrder, forKey: "StateOrder")
        aCoder.encode(stateFlagImageName, forKey: "StateFlageImageName")
    }
}
