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
        AllCelestialBodies["NN"] = NorthNode
        
        let SouthNode = CelestialBody()
        SouthNode.DisplayName = "South Node"
        AllCelestialBodies["SN"] = SouthNode
        
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
        
        
    }
}








































