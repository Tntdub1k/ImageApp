//
//  DataModel.swift
//  ImageApp
//
//  Created by Nick on 12/20/17.
//  Copyright © 2017 Nick. All rights reserved.
//

import UIKit

public class DataModel{
    
    public var aTestString = ""
    
    
    
}

public class RingEntry{
    
    public var CurrentCelestialBody = ""
    public var originalIndicator = ""
    public var conconurrent = false
    
    
}

public class RotateableRing{
    
    public var HouseName = ""
    public var Ring = Array(repeating:RingEntry(), count:6)
    public var RingTransPersp = Array(repeating:RingEntry(), count:6)
    public var RingAdvancement = 1
    
   func CopyRing(inputRing:Array<RingEntry>) -> Array<RingEntry> {
    var newR = Array(repeating:RingEntry(), count:6)
    newR[0] = inputRing[0]
    newR[1] = inputRing[1]
    newR[2] = inputRing[2]
    newR[3] = inputRing[3]
    newR[4] = inputRing[4]
    newR[5] = inputRing[5]
    return newR
    }
    
    func AdvanceRing(inputRing:Array<RingEntry>) -> Array<RingEntry> {
        var newR = Array(repeating:RingEntry(), count:6)
        newR[0] = inputRing[1]
        newR[1] = inputRing[2]
        newR[2] = inputRing[3]
        newR[3] = inputRing[4]
        newR[4] = inputRing[5]
        newR[5] = inputRing[0]
        return newR
    }
    
    func RetractRing(inputRing:Array<RingEntry>) -> Array<RingEntry> {
        var newR = Array(repeating:RingEntry(), count:6)
        newR[0] = inputRing[5]
        newR[1] = inputRing[0]
        newR[2] = inputRing[1]
        newR[3] = inputRing[2]
        newR[4] = inputRing[3]
        newR[5] = inputRing[4]
        return newR
    }
    
    
    func RemoveAt(ringNumber:Int, inputRing:Array<RingEntry>) -> Array<RingEntry>{
        var newR = Array(repeating:RingEntry(), count:6)
        newR = CopyRing(inputRing: inputRing)
        newR[ringNumber].CurrentCelestialBody = ""
        return newR
    }
    
    func InsertAt(inputRing:Array<RingEntry>, CelestialBody:String) -> Array<RingEntry>{
        var newR = Array(repeating:RingEntry(), count:6)
        newR = CopyRing(inputRing:inputRing)
        var success = false
        while success == false {
            for  i in (0...newR.count) {
                if ((newR[i].CurrentCelestialBody == "Empty") || (newR[i].CurrentCelestialBody == "empty") || (newR[i].CurrentCelestialBody == "")){
                    newR[i].CurrentCelestialBody = CelestialBody
                    success = true
                    break
                }
                if (success == true){
                    break
                }
                if (i == newR.count -1){
                    //Error, maxed out rings at newR[i].CurrentCelestialBody
                    success = true
                }
            }
        }
        return newR
    }
    
    
}
