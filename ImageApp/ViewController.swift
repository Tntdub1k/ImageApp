//
//  ViewController.swift
//  ImageApp
//
//  Created by Nick on 12/20/17.
//  Copyright © 2017 Nick. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIScrollViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if (pickerView == selectPicker){
            return 2
        }
        else if (pickerView == addPicker){
            return 1
        }
        else if (pickerView == addCBPicker){
            return 1
        }
        else {
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView == selectPicker){
            if (component == 0){
                return m_ADB.Database.count
            }
            else {
                return m_ADB.Database[m_CurrentCategory].Contents.count
            }
        }
        else if (pickerView == addPicker){
            return m_ADB.Database.count
        }
        else if (pickerView == addCBPicker){
            return m_CBL.AllCelestialBodies.count
        }
        else {
            return 1
        }
       
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView == selectPicker){
            if (component == 0){
                return m_ADB.Database[row].CategoryName as String
            }
            else {
                return m_ADB.Database[m_CurrentCategory].Contents[row].IndividualName
            }
        }
        else if (pickerView == addPicker){
            return m_ADB.Database[row].CategoryName as String
        }
        else if (pickerView == addCBPicker){
            return Array(m_CBL.AllCelestialBodies)[row].value.DisplayName
        }
        else {
            return ""
        }
        
    }
    
    @IBAction func pressedSave(_ sender: Any) {
        let jsonEncoder = JSONEncoder()
        
        do {
            let jsonData = try jsonEncoder.encode(m_ADB)
            let jsonString = jsonData.base64EncodedString()
            
            
            UserDefaults.standard.set(jsonString, forKey: "MindmapDataBase")
            UserDefaults.standard.synchronize()

            
        }
        catch {
            print(error)
            
        }

    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if (pickerView == selectPicker){
            if (component == 0){
                m_CurrentCategory = row
                m_CurrentIndividual = 0
                selectPicker.reloadComponent(1)
            }
            else {
                m_CurrentIndividual = row

                
            }
        }
        else if (pickerView == addPicker){
          
            m_AddToCategory = row
        }
        
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
        
    }
  
    func clearAllViewsFromScreen(){
        mainView.sendSubview(toBack:selectPicker)
        mainView.sendSubview(toBack:addView)
        mainView.endEditing(true)
        mainView.sendSubview(toBack: fullAddView)
        mainView.sendSubview(toBack: categoryAddView)
        mainView.sendSubview(toBack: selectView)
        mainView.sendSubview(toBack: renameView)
        mainView.sendSubview(toBack: deleteView)
        mainView.sendSubview(toBack: CBview)
    }
    func loadAP(){
        IndividualTitle.topItem?.title = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].IndividualName
        cycleCounter.text = String(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].cycle)
        advancementCounter.text = String(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancement)
        clearAllViewsFromScreen()
        fillWithData()
    }
    
    @IBAction func clickCancelSelectView(_ sender: Any) {
        clearAllViewsFromScreen()
    }
    @IBAction func clickOKSelectItem(_ sender: Any) {
        loadAP()
    }
    @IBAction func addNewMemberPressedOK(_ sender: Any) {
        let AP = AstrologicalProfile()
        AP.IndividualName = enterNewMemberTextB.text!
        m_ADB.Database[m_AddToCategory].Contents.append(AP)
        
        clearAllViewsFromScreen()
    }
    @IBAction func addPressed(_ sender: Any) {
        addPicker.reloadAllComponents()
        clearAllViewsFromScreen()
        mainView.bringSubview(toFront: addView)
    }
    @IBAction func addNewMemberPushed(_ sender: Any) {
        mainView.bringSubview(toFront: fullAddView)
        enterNewMemberTextB.text = ""
    }
  
    @IBAction func addNewCategoryPushed(_ sender: Any) {
        mainView.bringSubview(toFront: categoryAddView)
        enterNewCategoryTextb.text = ""
    }
   
    @IBAction func addNewCategoryPushedOK(_ sender: Any) {
        let AC = AstrologicalCategory()
        AC.CategoryName = enterNewCategoryTextb.text!
        m_ADB.Database.append(AC)
        clearAllViewsFromScreen()
    }
    @IBAction func RenamePushed(_ sender: Any) {
        mainView.bringSubview(toFront: renameView)
        renameTextB.text = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].IndividualName
        
    }
    @IBAction func clickCancelRename(_ sender: Any) {
        clearAllViewsFromScreen()
    }
    @IBAction func renameTitlePressed(_ sender: Any) {
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].IndividualName = renameTextB.text!
        IndividualTitle.topItem?.title = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].IndividualName
        clearAllViewsFromScreen()
    }
    
    @IBAction func PressedDelete(_ sender: Any) {
        mainView.bringSubview(toFront: deleteView)
    }
    @IBAction func pressedYesDelete(_ sender: Any) {
        m_ADB.Database[m_CurrentCategory].Contents.remove(at: m_CurrentIndividual)
        clearAllViewsFromScreen()
        m_CurrentIndividual = 0
        m_CurrentCategory = 0
        IndividualTitle.topItem?.title = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].IndividualName
    }

  
    @IBAction func CBHouseClick(_ sender: UIButton) {
        m_LastHouseClicked = Int(sender.accessibilityHint!)!
        if (sender.accessibilityIdentifier == "Empty"){
            mainView.bringSubview(toFront: CBview)
        }
    }

    @IBAction func clickOKAddCB(_ sender: Any) {
        
    }
    @IBAction func clickCancelAddCB(_ sender: Any) {
        clearAllViewsFromScreen()
    }
    @IBOutlet weak var House10: UIView!
    @IBOutlet weak var addCBPicker: UIPickerView!
    @IBOutlet weak var Button10: UIButton!
    @IBOutlet weak var CBview: UIView!
    @IBOutlet weak var deleteView: UIView!
    @IBOutlet weak var renameTextB: UITextField!
    @IBOutlet weak var enterNewMemberTextB: UITextField!
    @IBOutlet weak var enterNewCategoryTextb: UITextField!
    @IBOutlet weak var categoryAddView: UIView!
    @IBOutlet weak var fullAddView: UIView!
    @IBOutlet weak var addView: UIView!
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var aUiView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imgPhoto: UIImageView!
    @IBOutlet weak var IndividualTitle: UINavigationBar!
    
    @IBOutlet weak var renameView: UIView!
    @IBOutlet weak var selectView: UIView!
    @IBAction func ClickCancelCategoryScreen(_ sender: Any) {
        clearAllViewsFromScreen()
    }
    @IBOutlet weak var clickCancelCategoryScreen: UIButton!
    @IBAction func clickCancelFromAdd(_ sender: Any) {
        clearAllViewsFromScreen()
    }
    @IBOutlet weak var clickCancelAddScreen: UIButton!
    @IBAction func clickCancel(_ sender: Any) {
        clearAllViewsFromScreen()
    }

    @IBOutlet weak var cycleCounter: UITextField!
    
    @IBOutlet weak var advancementCounter: UITextField!
    @IBOutlet weak var addPicker: UIPickerView!
    @IBOutlet weak var selectPicker: UIPickerView!
    @IBAction func SelectPressed(_ sender: Any) {
        selectPicker.reloadAllComponents()
        clearAllViewsFromScreen()
        mainView.bringSubview(toFront: selectView)
    }
    var m_ADB = AstrologicalDatabase()
    var m_CurrentCategory = 0
    var m_CurrentIndividual = 0
    var m_AddToCategory = 0
    var m_CBL = CelestialBodyListing()
    var m_LastHouseClicked = 0
    
    
    func showMessage(message:String){
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)

    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        clearAllViewsFromScreen()
        
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 6.0
        /*
        let AP = AstrologicalProfile()
        AP.IndividualName = "Watashi"
        
        let AC = AstrologicalCategory()
        AC.CategoryName = "Individuals"
        AC.Contents.append(AP)
        m_ADB.Database.append(AC)
        
        let AP2 = AstrologicalProfile()
        AP2.IndividualName = "Louisville"
        let AP3 = AstrologicalProfile()
        AP3.IndividualName = "Addison"
        let AC2 = AstrologicalCategory()
        AC2.CategoryName = "Locations"
        AC2.Contents.append(AP2)
        AC2.Contents.append(AP3)
        m_ADB.Database.append(AC2)
        */
        var Json = ""
   
        var jsonString2 = UserDefaults.standard.string(forKey: "MindmapDataBase")
        let jsonData2 = Data(base64Encoded: jsonString2!)
        var ADB:AstrologicalDatabase
        ADB = try! JSONDecoder().decode(AstrologicalDatabase.self, from: jsonData2!)
        m_ADB = ADB
        //var Json = try? JSONSerialization.jsonObject(with: jsonData, options: .allowFragments)
        showMessage(message:jsonString2!)
        // let jsonData2 = try? JSONSerialization.data(withJSONObject: Json)
       // var ADB: AstrologicalDatabase
        //ADB = try! JSONDecoder().decode(AstrologicalDatabase.self, from: jsonData2!)
        
     
       
        IndividualTitle.topItem?.title = m_ADB.Database[0].Contents[0].IndividualName
        selectPicker.dataSource = self
        selectPicker.delegate = self
        addPicker.dataSource = self
        addPicker.delegate = self
        addCBPicker.dataSource = self
        addCBPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public class HouseViews{
        var mainImagView = UIImageView()
        var mainDignified = UIImageView()
        var mainLabel = UILabel()
        var mainButton = UIButton()
        var sat1Imag = UIImageView()
        var sat1Dignified = UIImageView()
        var sat1Label = UILabel()
        var sat2Imag = UIImageView()
        var sat2Dignified = UIImageView()
        var sat2Label = UILabel()
        var sat3Imag = UIImageView()
        var sat3Dignified = UIImageView()
        var sat3Label = UILabel()
        var sat4Imag = UIImageView()
        var sat4Dignified = UIImageView()
        var sat4Label = UILabel()
        var sat5Imag = UIImageView()
        var sat5Dignified = UIImageView()
        var sat5Label = UILabel()
        
    }
    
    func getHouseViews(aHouseView:UIView)-> HouseViews{
        var aHV = HouseViews()
        
        for subview in House10.subviews{
            if (subview.accessibilityLabel == "mainImage"){
                aHV.mainImagView = subview as! UIImageView
            }
            else if (subview.accessibilityLabel == "mainDignified"){
                aHV.mainDignified = subview as! UIImageView
            }
            else if (subview.accessibilityLabel == "mainLabel"){
                aHV.mainLabel = subview as! UILabel
            }
            else if (subview.accessibilityLabel == "mainButton"){
                aHV.mainButton = subview as! UIButton
            }
        }
        
        return aHV
    }
    
    func fillWithData(){
       
       //10
       var aHouseView = HouseViews()
        aHouseView = getHouseViews(aHouseView:House10)
   fillRingViewWithData(aRing:m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.HousesTransPersp[9], houseViews:aHouseView)
    }
    
    func fillRingViewWithData(aRing:RotateableRing, houseViews: HouseViews){
        var ra1 = 1
        var ra2 = 2
        var ra3 = 3
        var ra4 = 4
        var ra5 = 5
        var m_Ring = aRing
        
        switch m_Ring.RingAdvancement {
        case 1:
            ra1 = 2
            ra2 = 3
            ra3 = 4
            ra4 = 5
            ra5 = 6
            
        case 2:
            ra1 = 3
            ra2 = 4
            ra3 = 5
            ra4 = 6
            ra5 = 1
            
        case 3:
            ra1 = 4
            ra2 = 5
            ra3 = 6
            ra4 = 1
            ra5 = 2
            
        case 4:
            ra1 = 5
            ra2 = 6
            ra3 = 1
            ra4 = 2
            ra5 = 3
            
        case 5:
            ra1 = 6
            ra2 = 1
            ra3 = 2
            ra4 = 3
            ra5 = 4
            
        case 6:
            ra1 = 1
            ra2 = 2
            ra3 = 3
            ra4 = 4
            ra5 = 5
        default:
            ra1 = 2
            ra2 = 3
            ra3 = 4
            ra4 = 5
            ra5 = 6
        }
        
        //main Image
        fillImage(imageView: houseViews.mainImagView, dignified: houseViews.mainDignified, label:houseViews.mainLabel, celestialBody:m_Ring.RingTransPersp[0].CurrentCelestialBody, houseNumber:m_Ring.HouseName, buttonView: houseViews.mainButton)
        
        //Sat 1
    }
    @IBAction func AdvancePlus(_ sender: Any) {
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancement = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancement + 1
        if (m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancement > 12){
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].cycle = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].cycle + 1
            var countNN = 0
            for i in (0...11).reversed(){
                var R = RotateableRing()
                R = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses[i]
                for j in (0...5){
                    if (R.Ring[j].CurrentCelestialBody == "NN"){
                        countNN = countNN + 1
                    }
                }
            }
            
            
            
            var newCountNN = 0
            for i in (0...11).reversed(){
                var R = RotateableRing()
                R = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses[i]
                var containsNN = false
                var positionInRing = 0
                for j in (0...5){
                    if (R.Ring[j].CurrentCelestialBody == "NN"){
                        containsNN = true
                        positionInRing = j
                        newCountNN = newCountNN + 1
                    }
                }
                
                if (containsNN == true){
                    m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.AdvanceNode(CelestialBody: "NN", House: i, Ring: positionInRing, inputHouses: m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses)
                    if (newCountNN == countNN){
                        break;
                    }
                }
            }
            
            var countSN = 0
            for i in (0...11).reversed(){
                var R = RotateableRing()
                R = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses[i]
                for j in (0...5){
                    if(R.Ring[j].CurrentCelestialBody == "SN"){
                        countSN = countSN + 1
                    }
                }
            }
            
            var newCountSN = 0
            for i in (0...11).reversed(){
                var R = RotateableRing()
                R = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses[i]
                var containsSN = false
                var positionInRing = 0
                for j in (0...5){
                    if (R.Ring[j].CurrentCelestialBody == "SN"){
                        containsSN = true
                        positionInRing = j
                        newCountSN = newCountSN + 1
                    }
                }
                if (containsSN == true){
                    m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.AdvanceNode(CelestialBody: "SN", House: i, Ring: positionInRing, inputHouses: m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses)
                    if (newCountSN == countSN){
                        break;
                    }
                }
                
            }
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancement = 1
        }
        
        if (m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].cycle > 12){
           m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].cycle = 1
        }
        loadAP()
        
        
    }
    func fillImage(imageView: UIImageView, dignified: UIImageView, label:UILabel, celestialBody:String, houseNumber:String, buttonView:UIButton){
        
        //Display CB
        
        //If CB is empty
        if ((celestialBody == "Empty") || (celestialBody == "")){
            label.text = ""
            dignified.image = UIImage(named: "DignifiedEmpty")
            imageView.image = UIImage(named: "Empty")
            buttonView.accessibilityIdentifier = "Empty"
            
        } else{ //If CB is full/with content
            label.text = celestialBody
            imageView.image = UIImage(named: celestialBody)
            buttonView.accessibilityIdentifier = celestialBody
            var CBL = CelestialBodyListing()
            if (CBL.AllCelestialBodies[celestialBody]?.Dignities.Domicile.HousesIncluded.contains(houseNumber))!{
                dignified.image = UIImage(named: "DignifiedDomicile")
            }
            else if (CBL.AllCelestialBodies[celestialBody]?.Dignities.Exalted.HousesIncluded.contains(houseNumber))!{
                dignified.image = UIImage(named: "DignifiedExalted")
            } else if (CBL.AllCelestialBodies[celestialBody]?.Dignities.Detriment.HousesIncluded.contains(houseNumber))!{
                dignified.image = UIImage(named: "DignifiedDetriment")
            } else if (CBL.AllCelestialBodies[celestialBody]?.Dignities.Fall.HousesIncluded.contains(houseNumber))!{
                dignified.image = UIImage(named: "DignifiedFall")
            }
        }
        
        
       
        
        
        
    }
  
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        return aUiView
    }
    
    
    

}

