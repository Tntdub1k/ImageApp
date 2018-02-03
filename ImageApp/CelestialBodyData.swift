//
//  CelestialBodyData.swift
//  ImageApp
//
//  Created by Nick on 12/23/17.
//  Copyright © 2017 Nick. All rights reserved.
//

import Foundation

public class HouseAstroInfo:Codable{
    var HousesIncluded = Array<String>()
}

public class DignityInfo:Codable{
    var Domicile = HouseAstroInfo()
    var Exalted = HouseAstroInfo()
    var Detriment = HouseAstroInfo()
    var Fall = HouseAstroInfo()
}

public class  WebsiteEntry:Codable{
    var URL = ""
    var extensionType = ""
    var website = ""
    var author =  ""
    var scrollBuffer = 0
    var abbreviation = ""
    var DisplayName = ""
}

public class TwelveHouseWE:Codable{
    var data = [String: WebsiteEntry]()
    init(){
        data["1st House"] = WebsiteEntry()
        data["2nd House"] = WebsiteEntry()
        data["3rd House"] = WebsiteEntry()
        data["4th House"] = WebsiteEntry()
        data["5th House"] = WebsiteEntry()
        data["6th House"] = WebsiteEntry()
        data["7th House"] = WebsiteEntry()
        data["8th House"] = WebsiteEntry()
        data["9th House"] = WebsiteEntry()
        data["10th House"] = WebsiteEntry()
        data["11th House"] = WebsiteEntry()
        data["12th House"] = WebsiteEntry()
    }
}

public class WebsiteDataBase:Codable{
    var database = [String:Array<TwelveHouseWE>]()
    var houses = ["1st House","2nd House","3rd House","4th House","5th House","6th House","7th House","8th House","9th House","10th House","11th House","12th House"]
    
    init(){

        var CBL = CelestialBodyListing()
        //Add google search
        for CB in CBL.AllCelestialBodies{
            database[CB.value.DisplayName] = Array<TwelveHouseWE>()
        }
        //Add Astro Codex
        for CBname in ["Sun","Moon","Mercury","Venus","Saturn","Mars","Jupiter","Uranus","Neptune","Pluto","North Node","South Node","Lilith","Chiron"]{
            var THWE = TwelveHouseWE()
            var THWE2 = TwelveHouseWE()
            
            for house in houses{
                if ((CBname == "North Node") || (CBname == "South Node") || (CBname == "Lilith") || (CBname == "Chiron")){
                    THWE.data[house]?.URL = "Websites/"+CBname+" in the "+house+" • The Astro Codex"
                    THWE.data[house]?.DisplayName = CBname+" in the "+house
                } else {
                THWE.data[house]?.URL = "Websites/Natal "+CBname+" in the "+house+" • The Astro Codex"
                THWE.data[house]?.DisplayName = "Natal "+CBname+" in the "+house
                }
                
                THWE.data[house]?.extensionType = "htm"
                THWE.data[house]?.website = "theastrocodex.com"
                THWE.data[house]?.author = "Xaos"
                THWE.data[house]?.abbreviation = "AC"
                THWE.data[house]?.scrollBuffer = 470
                
                THWE2.data[house]?.URL = "Websites/The "+house+" in Astrology • The Astro Codex"
                THWE2.data[house]?.DisplayName = "The "+house+" in Astrology"
                THWE2.data[house]?.extensionType = "htm"
                THWE2.data[house]?.website = "theastrocodex.com"
                THWE2.data[house]?.author = "Xaos"
                THWE2.data[house]?.abbreviation = "AC"
                THWE2.data[house]?.scrollBuffer = 470
            }
            database[CBname]?.append(THWE)
            database[CBname]?.append(THWE2)
        }
        
        for CBname in ["Sun","Moon","Mercury","Venus","Saturn","Mars","Jupiter","Uranus","Neptune","Pluto"]{
            var THWE = TwelveHouseWE()
   
            
            for house in houses{
                if  (["Mercury","Mars","Venus","Jupiter","Saturn"].contains(CBname)){
                    THWE.data[house]?.URL = "Websites/"+CBname+"_ Rulership, Exaltation, Detriment and Fall • The Astro Codex"
                    THWE.data[house]?.DisplayName = CBname+" in Astrology"
                } else if (["Sun","Moon"].contains(CBname)){
                    THWE.data[house]?.URL = "Websites/The "+CBname+"_ Rulership, Exaltation, Detriment and Fall • The Astro Codex"
                    THWE.data[house]?.DisplayName = "The "+CBname+" in Astrology"
                } else if (["Uranus","Neptune","Pluto"].contains(CBname)){
                    THWE.data[house]?.URL = "Websites/"+CBname+" in Astrology • The Astro Codex"
                    THWE.data[house]?.DisplayName = CBname+" in Astrology"
                }
                
                THWE.data[house]?.extensionType = "htm"
                THWE.data[house]?.website = "theastrocodex.com"
                THWE.data[house]?.author = "Xaos"
                THWE.data[house]?.abbreviation = "AC"
                THWE.data[house]?.scrollBuffer = 470
            }
            database[CBname]?.append(THWE)
            
            
        }
        
        //Add L...G...
        for CBname in ["North Node","South Node"]{
         var THWE = TwelveHouseWE()
            for house in houses{
                THWE.data[house]?.URL = "Websites/Nodes in natal chart article - Lindaland"
                THWE.data[house]?.DisplayName = "Lunar Nodes in the Natal Chart"
                THWE.data[house]?.extensionType = "htm"
                THWE.data[house]?.website = "linda-goodman.com"
                THWE.data[house]?.author = "Unknown"
                THWE.data[house]?.abbreviation = "LG"
                THWE.data[house]?.scrollBuffer = 1230
            }
        database[CBname]?.append(THWE)
    }
        
        
        
        //Add Astrology Arena
        for CBname in ["South Node"]{
            var THWE = TwelveHouseWE()
            for house in houses{
                THWE.data[house]?.URL = "Websites/Astrology Arena_ Planets conjunct the South Node"
                THWE.data[house]?.DisplayName = "Planets Conjunct the South Node"
                THWE.data[house]?.extensionType = "htm"
                THWE.data[house]?.website = "astroarena12.blogspot.com"
                THWE.data[house]?.author = "Unknown"
                THWE.data[house]?.abbreviation = "AA"
                THWE.data[house]?.scrollBuffer = 0
            }
            database[CBname]?.append(THWE)
        }
        
        
        for CBname in ["Sedna"]{
            var THWE = TwelveHouseWE()
            for house in houses{
                THWE.data[house]?.URL = "Websites/The Arcane Archive - Sedna Delineation"
                THWE.data[house]?.DisplayName = "Sedna Delineation"
                THWE.data[house]?.extensionType = "htm"
                THWE.data[house]?.website = "arcane-archive.org"
                THWE.data[house]?.author = "Unknown"
                THWE.data[house]?.abbreviation = "AR"
                THWE.data[house]?.scrollBuffer = 2870
            }
            database[CBname]?.append(THWE)
        }
        
        
        for CBname in ["Nibiru"]{
            var THWE = TwelveHouseWE()
            for house in houses{
                THWE.data[house]?.URL = "Websites/Nibiru Delineation"
                THWE.data[house]?.DisplayName = "Nibiru Delineation"
                THWE.data[house]?.extensionType = "html"
                THWE.data[house]?.website = "personal findings"
                THWE.data[house]?.author = "Unknown"
                THWE.data[house]?.abbreviation = "--"
                THWE.data[house]?.scrollBuffer = 0
            }
            database[CBname]?.append(THWE)
        }
        
        
        
        
        
        
        
        //Add google search
        for CB in CBL.AllCelestialBodies{
            var THWE = TwelveHouseWE()
            for house in houses{
                
                var searchName = ""
                switch(CB.value.DisplayName){
                case "North Node":
                    searchName = "North+Node"
                case "South Node":
                    searchName = "South+Node"
                default:
                    searchName = CB.value.DisplayName
                }
                
                var houseName = ""
                switch(house){
                case "1st House":
                    houseName = "1st+house"
                case "2nd House":
                    houseName = "2nd+house"
                case "3rd House":
                    houseName = "3rd+house"
                case "4th House":
                    houseName = "4th+house"
                case "5th House":
                    houseName = "5th+house"
                case "6th House":
                    houseName = "6th+house"
                case "7th House":
                    houseName = "7th+house"
                case "8th House":
                    houseName = "8th+house"
                case "9th House":
                    houseName = "9th+house"
                case "10th House":
                    houseName = "10th+house"
                case "11th House":
                    houseName = "11th+house"
                case "12th House":
                    houseName = "12th+house"
                default:
                    break
                }
                
                THWE.data[house]?.URL = "https://www.google.com/search?q="+searchName+"+in+the+"+houseName
                THWE.data[house]?.DisplayName = CB.value.DisplayName+" in the "+house
                THWE.data[house]?.extensionType = "WP!"
                THWE.data[house]?.website = "google.com"
                THWE.data[house]?.author = "Unknown"
                THWE.data[house]?.abbreviation = "GC"
                THWE.data[house]?.scrollBuffer = 0
            }
            database[CB.value.DisplayName]?.append(THWE)
        }
    }
}

public class CelestialBody:Codable{
    var DisplayName = ""
    var Dignities = DignityInfo()
}

public class CelestialBodyListing:Codable{
    var AllCelestialBodies =  [String: CelestialBody]()
    init(){
        //Sun
        let Sun = CelestialBody()
        Sun.DisplayName = "Sun"
        Sun.Dignities.Domicile.HousesIncluded.append("5thHouse")
        Sun.Dignities.Detriment.HousesIncluded.append("11thHouse")
        Sun.Dignities.Exalted.HousesIncluded.append("1stHouse")
        Sun.Dignities.Fall.HousesIncluded.append("7thHouse")
        AllCelestialBodies["Sun"] = Sun
        
        
        let Moon = CelestialBody()
        Moon.DisplayName = "Moon"
        Moon.Dignities.Domicile.HousesIncluded.append("4thHouse");
        Moon.Dignities.Detriment.HousesIncluded.append("10thHouse");
        Moon.Dignities.Exalted.HousesIncluded.append("2ndHouse");
        Moon.Dignities.Fall.HousesIncluded.append("8thHouse");
        AllCelestialBodies["Moon"] = Moon
        
        let Mercury = CelestialBody()
        Mercury.DisplayName = "Mercury"
        Mercury.Dignities.Domicile.HousesIncluded.append("3rdHouse");
        Mercury.Dignities.Domicile.HousesIncluded.append("6thHouse");
        Mercury.Dignities.Detriment.HousesIncluded.append("12thHouse");
        Mercury.Dignities.Detriment.HousesIncluded.append("9thHouse");
        Mercury.Dignities.Exalted.HousesIncluded.append("6thHouse");
        Mercury.Dignities.Exalted.HousesIncluded.append("11thHouse");
        Mercury.Dignities.Fall.HousesIncluded.append("12thHouse");
        Mercury.Dignities.Fall.HousesIncluded.append("5thHouse");
        AllCelestialBodies["Mercury"] = Mercury
        
        let Venus = CelestialBody()
        Venus.DisplayName = "Venus"
        Venus.Dignities.Domicile.HousesIncluded.append("7thHouse");
        Venus.Dignities.Domicile.HousesIncluded.append("2ndHouse");
        Venus.Dignities.Detriment.HousesIncluded.append("8thHouse");
        Venus.Dignities.Detriment.HousesIncluded.append("1stHouse");
        Venus.Dignities.Exalted.HousesIncluded.append("12thHouse");
        Venus.Dignities.Fall.HousesIncluded.append("6thHouse");
        AllCelestialBodies["Venus"] = Venus
        
        let Mars = CelestialBody()
        Mars.DisplayName = "Mars"
        Mars.Dignities.Domicile.HousesIncluded.append("1stHouse");
        Mars.Dignities.Domicile.HousesIncluded.append("8thHouse");
        Mars.Dignities.Detriment.HousesIncluded.append("7thHouse");
        Mars.Dignities.Detriment.HousesIncluded.append("2ndHouse");
        Mars.Dignities.Exalted.HousesIncluded.append("10thHouse");
        Mars.Dignities.Fall.HousesIncluded.append("4thHouse");
        AllCelestialBodies["Mars"] = Mars
        
        let Jupiter = CelestialBody()
        Jupiter.DisplayName = "Jupiter"
        Jupiter.Dignities.Domicile.HousesIncluded.append("12thHouse");
        Jupiter.Dignities.Domicile.HousesIncluded.append("9thHouse");
        Jupiter.Dignities.Detriment.HousesIncluded.append("3rdHouse");
        Jupiter.Dignities.Detriment.HousesIncluded.append("6thHouse");
        Jupiter.Dignities.Exalted.HousesIncluded.append("4thHouse");
        Jupiter.Dignities.Fall.HousesIncluded.append("10thHouse");
        AllCelestialBodies["Jupiter"] = Jupiter
        
        
        let Saturn = CelestialBody()
        Saturn.DisplayName = "Saturn"
        Saturn.Dignities.Domicile.HousesIncluded.append("11thHouse");
        Saturn.Dignities.Domicile.HousesIncluded.append("10thHouse");
        Saturn.Dignities.Detriment.HousesIncluded.append("4thHouse");
        Saturn.Dignities.Detriment.HousesIncluded.append("5thHouse");
        Saturn.Dignities.Exalted.HousesIncluded.append("7thHouse");
        Saturn.Dignities.Fall.HousesIncluded.append("1stHouse");
        AllCelestialBodies["Saturn"] = Saturn
        
        let Uranus = CelestialBody()
        Uranus.DisplayName = "Uranus"
        Uranus.Dignities.Domicile.HousesIncluded.append("11thHouse");
        Uranus.Dignities.Detriment.HousesIncluded.append("5thHouse");
        Uranus.Dignities.Exalted.HousesIncluded.append("8thHouse");
        Uranus.Dignities.Fall.HousesIncluded.append("2ndHouse");
        AllCelestialBodies["Uranus"] = Uranus
        
        let Neptune = CelestialBody()
        Neptune.DisplayName = "Neptune"
        Neptune.Dignities.Domicile.HousesIncluded.append("12thHouse");
        Neptune.Dignities.Detriment.HousesIncluded.append("6thHouse");
        Neptune.Dignities.Exalted.HousesIncluded.append("5thHouse");
        Neptune.Dignities.Fall.HousesIncluded.append("11thHouse");
        AllCelestialBodies["Neptune"] = Neptune
        
        let Pluto = CelestialBody()
        Pluto.DisplayName = "Pluto"
        Pluto.Dignities.Domicile.HousesIncluded.append("8thHouse");
        Pluto.Dignities.Detriment.HousesIncluded.append("2ndHouse");
        Pluto.Dignities.Exalted.HousesIncluded.append("6thHouse");
        Pluto.Dignities.Fall.HousesIncluded.append("12thHouse");
        AllCelestialBodies["Pluto"] = Pluto
        
        let Chiron = CelestialBody()
        Chiron.DisplayName = "Chiron"
        Chiron.Dignities.Domicile.HousesIncluded.append("6thHouse");
        Chiron.Dignities.Detriment.HousesIncluded.append("12thHouse");
        AllCelestialBodies["Chiron"] = Chiron
        
        let Sedna = CelestialBody()
        Sedna.DisplayName = "Sedna"
        Sedna.Dignities.Domicile.HousesIncluded.append("2ndHouse");
        Sedna.Dignities.Exalted.HousesIncluded.append("10thHouse");
        Sedna.Dignities.Detriment.HousesIncluded.append("4thHouse");
        AllCelestialBodies["Sedna"] = Sedna
        
        let Nibiru = CelestialBody()
        Nibiru.DisplayName = "Nibiru"
        Nibiru.Dignities.Domicile.HousesIncluded.append("9thHouse");
        Nibiru.Dignities.Exalted.HousesIncluded.append("12thHouse");
        Nibiru.Dignities.Fall.HousesIncluded.append("3rdHouse");
        Nibiru.Dignities.Detriment.HousesIncluded.append("7thHouse")
        AllCelestialBodies["Nibiru"] = Nibiru
        
        let NorthNode = CelestialBody()
        NorthNode.DisplayName = "North Node"
        AllCelestialBodies["North Node"] = NorthNode
        
        let SouthNode = CelestialBody()
        SouthNode.DisplayName = "South Node"
        AllCelestialBodies["South Node"] = SouthNode
        
        let Nessus = CelestialBody()
        Nessus.DisplayName = "Nessus"
        AllCelestialBodies["Nessus"] = Nessus
        
        let Dejanira = CelestialBody()
        Dejanira.DisplayName = "Dejanira"
        AllCelestialBodies["Dejanira"] = Dejanira
        
        let Lilith = CelestialBody()
        Lilith.DisplayName = "Lilith"
        Lilith.Dignities.Domicile.HousesIncluded.append("3rdHouse");
        Lilith.Dignities.Detriment.HousesIncluded.append("4thHouse");
        AllCelestialBodies["Lilith"] = Lilith
        
        let Kaali = CelestialBody()
        Kaali.DisplayName = "Kaali"
        AllCelestialBodies["Kaali"] = Kaali
        
        let Hekate = CelestialBody()
        Hekate.DisplayName = "Hekate"
        AllCelestialBodies["Hekate"] = Hekate
        
        let Valentine = CelestialBody()
        Valentine.DisplayName = "Valentine"
        AllCelestialBodies["Valentine"] = Valentine
        
        let Cupido = CelestialBody()
        Cupido.DisplayName = "Cupido"
        AllCelestialBodies["Cupido"] = Cupido
        
        let Amor = CelestialBody()
        Amor.DisplayName = "Amor"
        AllCelestialBodies["Amor"] = Amor
        
        let Psyche = CelestialBody()
        Psyche.DisplayName = "Psyche"
        AllCelestialBodies["Psyche"] = Psyche
        
        let Eros = CelestialBody()
        Eros.DisplayName = "Eros"
        AllCelestialBodies["Eros"] = Eros
        
        let Heracles = CelestialBody()
        Heracles.DisplayName = "Heracles"
        AllCelestialBodies["Heracles"] = Heracles
        
        let Fortunae = CelestialBody()
        Fortunae.DisplayName = "Fortunae"
        AllCelestialBodies["Fortunae"] = Fortunae
        
        let Eris = CelestialBody()
        Eris.DisplayName = "Eris"
        AllCelestialBodies["Eris"] = Eris
        
        let Juno = CelestialBody()
        Juno.DisplayName = "Juno"
        AllCelestialBodies["Juno"] = Juno
    }
}








































