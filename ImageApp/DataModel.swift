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

public class RingEntry: Codable {
    
    public var CurrentCelestialBody = ""
    public var originalIndicator = ""
    public var conconurrent = false
    
    
}

public class RotateableRing: Codable{
    
    public var HouseName = ""
    public var Ring = Array(repeating:RingEntry(), count:6)
    public var RingTransPersp = Array(repeating:RingEntry(), count:6)
    public var RingAdvancement = 1
    
    init(){
        Ring[0] = RingEntry()
        Ring[1] = RingEntry()
        Ring[2] = RingEntry()
        Ring[3] = RingEntry()
        Ring[4] = RingEntry()
        Ring[5] = RingEntry()
        RingTransPersp[0] = RingEntry()
        RingTransPersp[1] = RingEntry()
        RingTransPersp[2] = RingEntry()
        RingTransPersp[3] = RingEntry()
        RingTransPersp[4] = RingEntry()
        RingTransPersp[5] = RingEntry()
        
        
     }
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
                if (i == newR.count - 1){
                    //Error, maxed out rings at newR[i].CurrentCelestialBody
                    success = true
                }
            }
        }
        return newR
    }
    
    func AdvanceTo(advancement:Int, inputRing:Array<RingEntry>) -> Array<RingEntry>{
        
        var newR = Array(repeating:RingEntry(), count:6)
        newR = CopyRing(inputRing:inputRing)
        for _ in (1..<advancement){
            newR = AdvanceRing(inputRing:newR)
        }
        return newR
        
    }
    
    
    func RetractFrom(advancement:Int) -> Array<RingEntry>{
        var Ring = Array(repeating:RingEntry(), count:6)
        while RingAdvancement != advancement{
            RingTransPersp = RetractRing(inputRing: RingTransPersp)
            RingAdvancement = RingAdvancement - 1
            if (RingAdvancement == -1){
                RingAdvancement = 6
            }
        }
        return Ring
    }
    
    
}


public class RotateableHouse: Codable{
    public var Houses = Array(repeating:RotateableRing(), count:12)
    public var HousesTransPersp = Array(repeating:RotateableRing(), count:12)
    
    init(){
        for i in (0...11){
            Houses[i] = RotateableRing()
            HousesTransPersp[i] = RotateableRing()
        }
        
    }
    func CopyHouses(inputHouses:Array<RotateableRing>) -> Array<RotateableRing>{
        var newH = Array(repeating:RotateableRing(), count:12)
        newH[0] = inputHouses[0]
        newH[1] = inputHouses[1]
        newH[2] = inputHouses[2]
        newH[3] = inputHouses[3]
        newH[4] = inputHouses[4]
        newH[5] = inputHouses[5]
        newH[6] = inputHouses[6]
        newH[7] = inputHouses[7]
        newH[8] = inputHouses[8]
        newH[9] = inputHouses[9]
        newH[10] = inputHouses[10]
        newH[11] = inputHouses[11]
        
        return newH
    }
    
    func AdvanceHouse(inputHouses:Array<RotateableRing>) -> Array<RotateableRing>{
        var newH = Array(repeating:RotateableRing(), count:12)
        newH[0] = inputHouses[11]
        newH[1] = inputHouses[0]
        newH[2] = inputHouses[1]
        newH[3] = inputHouses[2]
        newH[4] = inputHouses[3]
        newH[5] = inputHouses[4]
        newH[6] = inputHouses[5]
        newH[7] = inputHouses[6]
        newH[8] = inputHouses[7]
        newH[9] = inputHouses[8]
        newH[10] = inputHouses[9]
        newH[11] = inputHouses[10]
        
        return newH
    }
    
    func AdvanceNode(CelestialBody:String, House:Int, Ring:Int, inputHouses:Array<RotateableRing>) -> Array<RotateableRing>{
        var newH = Array(repeating:RotateableRing(), count:12)
        newH = CopyHouses(inputHouses:inputHouses)
        newH[House].Ring = newH[House].RemoveAt(ringNumber: Ring, inputRing:newH[House].Ring)
        newH[House].RingTransPersp = newH[House].RemoveAt(ringNumber: Ring, inputRing: newH[House].RingTransPersp)
        
        
        if (House == 11){
            newH[0].RingTransPersp = newH[0].InsertAt(inputRing: newH[0].Ring, CelestialBody: CelestialBody)
        }
        else {
            newH[House + 1].RingTransPersp = newH[House + 1].InsertAt(inputRing: newH[House + 1].Ring, CelestialBody: CelestialBody)
        }
        
        return newH
    }
    
    func RetractNode(CelestialBody:String, House:Int, Ring:Int, inputHouses:Array<RotateableRing>) -> Array<RotateableRing>{
        var newH = Array(repeating:RotateableRing(), count:12)
        newH = CopyHouses(inputHouses:inputHouses)
        newH[House].Ring = newH[House].RemoveAt(ringNumber: Ring, inputRing:newH[House].Ring)
        newH[House].RingTransPersp = newH[House].RemoveAt(ringNumber: Ring, inputRing: newH[House].RingTransPersp)
        
        if (House == 0){
            newH[11].RingTransPersp = newH[11].InsertAt(inputRing: newH[11].Ring, CelestialBody: CelestialBody)
        }
        else {
            newH[House - 1].RingTransPersp = newH[House - 1].InsertAt(inputRing: newH[House - 1].Ring, CelestialBody: CelestialBody)
        }
        return newH
        
    }
    
    func AdvanceNodeForCycle(CelestialBody:String, House:Int, Ring:Int, Cycle:Int, inputHouses:Array<RotateableRing>) -> Array<RotateableRing>{
        var newH = Array(repeating:RotateableRing(), count:12)
        newH = CopyHouses(inputHouses:inputHouses)
        for _ in (1..<Cycle){
            newH = AdvanceNode(CelestialBody:CelestialBody, House: House, Ring:Ring, inputHouses:newH)
        }
        return newH
    }
    
    func RetractHouses(inputHouses:Array<RotateableRing>) -> Array<RotateableRing>{
        var newH = Array(repeating:RotateableRing(), count:12)
        newH[0] = inputHouses[1]
        newH[1] = inputHouses[2]
        newH[2] = inputHouses[3]
        newH[3] = inputHouses[4]
        newH[4] = inputHouses[5]
        newH[5] = inputHouses[6]
        newH[6] = inputHouses[7]
        newH[7] = inputHouses[8]
        newH[8] = inputHouses[9]
        newH[9] = inputHouses[10]
        newH[10] = inputHouses[11]
        newH[11] = inputHouses[0]
        
        return newH
    }
    
    func AdvanceTo(aHouseAdvancement:Int, inputHouses:Array<RotateableRing>) -> Array<RotateableRing>{
        var newH = Array(repeating:RotateableRing(), count:12)
        newH = CopyHouses(inputHouses:inputHouses)
        for _ in (1..<aHouseAdvancement){
            newH = AdvanceHouse(inputHouses:newH)
        }
        return newH
    }
}

public class AstrologicalProfile: Codable{
    public var HouseInfo = RotateableHouse()
    public var advancement = 1
    public var cycle  = 1
    public var RingAdvancement = 1
    public var totalAdvancementIndicator = 1
    public var StepNotes = Array(repeating:"", count:12)
    public var CycleNotes = Array(repeating:"", count:12)
    public var IndividualName = ""
    public var Category = ""
    
    
    
    func createUnfilledBlank() -> AstrologicalProfile{
        var AP = AstrologicalProfile()
        for i in (0...11){
            var R = RotateableRing()
            for j in (0...5){
                var RE = RingEntry()
                RE.CurrentCelestialBody =  ""
                RE.originalIndicator = ""
                R.Ring.append(RE)
                R.RingTransPersp.append(RE)
            }
            AP.HouseInfo.Houses.append(R)
            AP.HouseInfo.HousesTransPersp.append(R)
        }
      return AP
    }

}

public class AstrologicalCategory: Codable{
    public var CategoryName =  ""
    public var Contents = Array<AstrologicalProfile>()
}

// Dictionary containing arrays of AP divided by Category
public class AstrologicalDatabase: Codable{
    public var Database = Array<AstrologicalCategory>()
}





























