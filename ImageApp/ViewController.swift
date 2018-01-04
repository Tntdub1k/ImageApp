//
//  ViewController.swift
//  ImageApp
//
//  Created by Nick on 12/20/17.
//  Copyright © 2017 Nick. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIScrollViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var TVC = UITableViewCell()
        var label = UILabel(frame: CGRect(x:10, y:0, width:25, height:44))
        label.textAlignment = NSTextAlignment.center
        label.text = "FM"
        TVC.contentView.addSubview(label)
        var label2 = UILabel(frame: CGRect(x:45, y:0, width:240, height:44))
        label2.textAlignment = NSTextAlignment.right
        label2.text = "freespirited-mind.com"
        TVC.contentView.addSubview(label2)
        
        return TVC
        
        
    }
    
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
            return m_remainingCBs.count
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
            return m_remainingCBs[row]
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
        mainView.sendSubview(toBack: chooseReadingView)
    }
    @IBAction func clearKeyboard(_ sender: Any) {
        mainView.endEditing(true)
    }
    @IBOutlet weak var clearKeyboard: UIButton!
    func loadAP(){
        IndividualTitle.text = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].IndividualName
        cycleCounter.text = String(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].cycle)
        advancementCounter.text = String(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancement)
        ringCounter.text = String(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].RingAdvancement)
        clearAllViewsFromScreen()
        
        m_remainingCBs = Array(repeating:"", count:0)
        var allCBs = Array(repeating:"", count:0)
        var usedCBs = Array(repeating:"", count:0)
        
        for CB in m_CBL.AllCelestialBodies{
            allCBs.append(CB.value.DisplayName)
                }
        for i in (0...11){
            for j in (0...5){
                if ((m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses[i].Ring[j].CurrentCelestialBody != "Empty") && (m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses[i].Ring[j].CurrentCelestialBody != "")) {
                    usedCBs.append(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses[i].Ring[j].CurrentCelestialBody)
                    
                }
            }
        }
        
        for i in allCBs{
            var isUsed = false
            for usedCB in usedCBs{
                if (i == usedCB){
                    isUsed = true
                }
            }
            if (isUsed == false){
                m_remainingCBs.append(i)
            }
        }
        addCBPicker.reloadComponent(0)
        
            
        
        
        fillWithData()
    }
    
    @IBAction func clickCancelSelectView(_ sender: Any) {
        clearAllViewsFromScreen()
    }
    @IBAction func clickOKSelectItem(_ sender: Any) {
        loadAP()
    }
    @IBAction func addNewMemberPressedOK(_ sender: Any) {
        var AP = AstrologicalProfile()
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
        IndividualTitle.text = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].IndividualName
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
        IndividualTitle.text = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].IndividualName
    }

  
    @IBAction func CBHouseClick(_ sender: UIButton) {
      clearAllViewsFromScreen()
        m_LastHouseClicked = Int(sender.accessibilityHint!)!
        if (sender.accessibilityIdentifier == "Empty"){
            mainView.bringSubview(toFront: CBview)
        }
        else {
            var ordinalNum = ""
            switch(m_LastHouseClicked){
                case 1:
                ordinalNum = "1st"
                case 2:
                ordinalNum = "2nd"
                case 3:
                ordinalNum = "3rd"
                case 4:
                ordinalNum = "4th"
                case 5:
                ordinalNum = "5th"
                case 6:
                ordinalNum = "6th"
                case 7:
                ordinalNum = "7th"
                case 8:
                ordinalNum = "8th"
                case 9:
                ordinalNum = "9th"
                case 10:
                ordinalNum = "10th"
                case 11:
                ordinalNum = "11th"
                case 12:
                ordinalNum = "12th"
            default:
                ordinalNum = ""
            }
            chooseReadingLabel.text = sender.accessibilityIdentifier! + " in the " + ordinalNum + " House"

            mainView.bringSubview(toFront: chooseReadingView)
            
        }
    }


    @IBOutlet weak var chooseReadingsTableV: UITableView!
    @IBAction func clickRemoveCB(_ sender: Any) {
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.HousesTransPersp[m_LastHouseClicked - 1].Ring[m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].RingAdvancement - 1].CurrentCelestialBody = "Empty"
        loadAP()
    }
    @IBAction func clickOKAddCB(_ sender: Any) {
         m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.HousesTransPersp[m_LastHouseClicked - 1].Ring[m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].RingAdvancement - 1].CurrentCelestialBody = m_remainingCBs[addCBPicker.selectedRow(inComponent: 0)]
        loadAP()
        addCBPicker.reloadAllComponents()
    }
    @IBAction func clickCancelAddCB(_ sender: Any) {
        clearAllViewsFromScreen()
    }
    @IBOutlet weak var chooseReadingLabel: UILabel!
    @IBOutlet weak var House12: UIView!
    @IBOutlet weak var House1: UIView!
 
    @IBOutlet weak var House11: UIView!
    
    @IBAction func ClickNotesButton(_ sender: Any) {
        if (m_notesAreOpen == false){
                OpenNotes()
        }
        else{
            CloseNotes()
        }
    }
    
    func OpenNotes(){
        m_notesAreOpen = true
        mainView.endEditing(true)
        NotesButton.setImage(UIImage(named: "exitIcon"), for:UIControlState.normal)
        AstroView.isHidden = true
        NotesView.isHidden = false
        NotesCycleLabel.text = "Cycle "+String(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].cycle) + ":"
        NotesStepLabel.text = "Step "+String(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancement) + ":"
        
        //Load notes
        
    }
    func CloseNotes(){
        m_notesAreOpen = false
        mainView.endEditing(true)
        NotesButton.setImage(UIImage(named: "keyboard"), for:UIControlState.normal)
        AstroView.isHidden = false
        NotesView.isHidden = true
        
        //Save notes
    }
    @IBOutlet weak var NotesCycleLabel: UILabel!
    @IBOutlet weak var NotesStepLabel: UILabel!
    @IBOutlet weak var AstroView: UIView!
    @IBOutlet weak var NotesView: UIView!
    @IBOutlet weak var NotesButton: UIButton!
    @IBOutlet weak var chooseReadingView: UIView!
    @IBOutlet weak var House10: UIView!
    @IBOutlet weak var House9: UIView!
    @IBOutlet weak var House8: UIView!
    @IBOutlet weak var House7: UIView!
    @IBOutlet weak var House6: UIView!
    @IBOutlet weak var House5: UIView!
    @IBOutlet weak var House4: UIView!
    @IBOutlet weak var House3: UIView!
    @IBOutlet weak var House2: UIView!
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

    
    @IBOutlet weak var IndividualTitle: UILabel!
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

    @IBOutlet weak var NotesStepText: UITextView!
    @IBOutlet weak var NotesCycleText: UITextView!
    
    @IBOutlet weak var ringCounter: UILabel!
    @IBOutlet weak var advancementCounter: UILabel!
    @IBOutlet weak var cycleCounter: UILabel!
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
    var m_remainingCBs = Array(repeating:"", count:0)
    var m_notesAreOpen = false
    
    
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
       
        */
        
        
       
            var Json = ""
       
        if ((try? UserDefaults.standard.string(forKey: "MindmapDataBase")) == nil){
            loadSampleAP()
        }else{
            var jsonString2 = UserDefaults.standard.string(forKey: "MindmapDataBase")
            if ((try? Data(base64Encoded: jsonString2!)) == nil){
                loadSampleAP()
            } else {
                let jsonData2 = Data(base64Encoded: jsonString2!)
                
                if ((try? JSONDecoder().decode(AstrologicalDatabase.self, from: jsonData2!)) == nil){
                    loadSampleAP()
                }else {
                    var ADB:AstrologicalDatabase
                    ADB = try! JSONDecoder().decode(AstrologicalDatabase.self, from: jsonData2!)
                    m_ADB =  ADB
                    loadAP()
                }
            }
        }
        
        
        
        
        
    
    
        
        
        //var Json = try? JSONSerialization.jsonObject(with: jsonData, options: .allowFragments)
        
        // let jsonData2 = try? JSONSerialization.data(withJSONObject: Json)
       // var ADB: AstrologicalDatabase
        //ADB = try! JSONDecoder().decode(AstrologicalDatabase.self, from: jsonData2!)
        
     
       
        //IndividualTitle.topItem?.title = m_ADB.Database[0].Contents[0].IndividualName
        chooseReadingsTableV.delegate = self
        chooseReadingsTableV.dataSource = self
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
    func loadSampleAP(){
        let AP = AstrologicalProfile()
        AP.IndividualName = "Sample Individual"
        
        let AC = AstrologicalCategory()
        AC.CategoryName = "Individuals"
        AC.Contents.append(AP)
        m_ADB.Database.append(AC)
        loadAP()
    }
    
    func getHouseViews(aHouseView:UIView)-> HouseViews{
        var aHV = HouseViews()
        
        for subview in aHouseView.subviews{
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
            else if (subview.accessibilityLabel == "Sa1"){
                for subview2 in subview.subviews{
                    if (subview2.accessibilityLabel == "Sa1Image"){
                        aHV.sat1Imag = subview2 as! UIImageView
                    }
                    else if (subview2.accessibilityLabel == "Sa1Dignified"){
                        aHV.sat1Dignified = subview2 as! UIImageView
                    }
                    else if (subview2.accessibilityLabel == "Sa1Label"){
                        aHV.sat1Label = subview2 as! UILabel
                    }
                }
            }
            else if (subview.accessibilityLabel == "Sa2"){
                for subview2 in subview.subviews{
                    if (subview2.accessibilityLabel == "Sa2Image"){
                        aHV.sat2Imag = subview2 as! UIImageView
                    }
                    else if (subview2.accessibilityLabel == "Sa2Dignified"){
                        aHV.sat2Dignified = subview2 as! UIImageView
                    }
                    else if (subview2.accessibilityLabel == "Sa2Label"){
                        aHV.sat2Label = subview2 as! UILabel
                    }
                }
            }
            else if (subview.accessibilityLabel == "Sa3"){
                for subview2 in subview.subviews{
                    if (subview2.accessibilityLabel == "Sa3Image"){
                        aHV.sat3Imag = subview2 as! UIImageView
                    }
                    else if (subview2.accessibilityLabel == "Sa3Dignified"){
                        aHV.sat3Dignified = subview2 as! UIImageView
                    }
                    else if (subview2.accessibilityLabel == "Sa3Label"){
                        aHV.sat3Label = subview2 as! UILabel
                    }
                }
            }
            else if (subview.accessibilityLabel == "Sa4"){
                for subview2 in subview.subviews{
                    if (subview2.accessibilityLabel == "Sa4Image"){
                        aHV.sat4Imag = subview2 as! UIImageView
                    }
                    else if (subview2.accessibilityLabel == "Sa4Dignified"){
                        aHV.sat4Dignified = subview2 as! UIImageView
                    }
                    else if (subview2.accessibilityLabel == "Sa4Label"){
                        aHV.sat4Label = subview2 as! UILabel
                    }
                }
            }
            else if (subview.accessibilityLabel == "Sa5"){
                for subview2 in subview.subviews{
                    if (subview2.accessibilityLabel == "Sa5Image"){
                        aHV.sat5Imag = subview2 as! UIImageView
                    }
                    else if (subview2.accessibilityLabel == "Sa5Dignified"){
                        aHV.sat5Dignified = subview2 as! UIImageView
                    }
                    else if (subview2.accessibilityLabel == "Sa5Label"){
                        aHV.sat5Label = subview2 as! UILabel
                    }
                }
            }
        }
        
        return aHV
    }
    



    @IBAction func ringMinus(_ sender: Any) {
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].RingAdvancement = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].RingAdvancement - 1
        if (m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].RingAdvancement < 1){
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].RingAdvancement = 6
        }
        loadAP()
    }
    @IBAction func ringPlus(_ sender: Any) {
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].RingAdvancement = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].RingAdvancement + 1
        if (m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].RingAdvancement > 6){
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].RingAdvancement = 1
        }
        loadAP()
    }
    
    func setFontColor(){
        var labelColor = UIColor()
        labelColor = UIColor.init(red: 255.0/255.0, green: 132.0/255.0, blue: 187.0/255.0, alpha: 1)
        
        var views = Array<UIView>()
        views.append(House1)
        views.append(House2)
        views.append(House3)
        views.append(House4)
        views.append(House5)
        views.append(House6)
        views.append(House7)
        views.append(House8)
        views.append(House9)
        views.append(House10)
        views.append(House11)
        views.append(House12)
        
        let strokeText: [NSAttributedStringKey: Any] = [
            NSAttributedStringKey.strokeColor : UIColor.white,
            NSAttributedStringKey.foregroundColor: labelColor,
            NSAttributedStringKey.strokeWidth : -2.0]
        
        
        var aHouseView = HouseViews()
        for view in views{
            aHouseView = getHouseViews(aHouseView:view)
            aHouseView.mainLabel.textColor = labelColor
            aHouseView.mainLabel.attributedText = NSAttributedString(string: "hello", attributes: strokeText)
            
            aHouseView.sat1Label.textColor = labelColor
            aHouseView.sat2Label.textColor = labelColor
            aHouseView.sat3Label.textColor = labelColor
            aHouseView.sat4Label.textColor = labelColor
            aHouseView.sat5Label.textColor = labelColor
        }
    }
    func fillWithData(){
       
        var AP = AstrologicalProfile()
        AP = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual]
        AP.HouseInfo.HousesTransPersp = AP.HouseInfo.CopyHouses(inputHouses: AP.HouseInfo.Houses)
        AP.HouseInfo.HousesTransPersp = AP.HouseInfo.AdvanceTo(aHouseAdvancement: AP.advancement, inputHouses: AP.HouseInfo.HousesTransPersp)
        
        //1
       var aHouseView = HouseViews()
        aHouseView = getHouseViews(aHouseView:House1)
        AP.HouseInfo.HousesTransPersp[0].RingTransPersp = AP.HouseInfo.Houses[0].AdvanceTo(advancement: AP.RingAdvancement, inputRing: AP.HouseInfo.HousesTransPersp[0].Ring)
        AP.HouseInfo.HousesTransPersp[0].HouseName = "1stHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[0], houseViews:aHouseView)
        
        //2
        aHouseView = getHouseViews(aHouseView:House2)
        AP.HouseInfo.HousesTransPersp[1].RingTransPersp = AP.HouseInfo.Houses[1].AdvanceTo(advancement: AP.RingAdvancement, inputRing: AP.HouseInfo.HousesTransPersp[1].Ring)
        AP.HouseInfo.HousesTransPersp[1].HouseName = "2ndHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[1], houseViews:aHouseView)
        
        //3
        aHouseView = getHouseViews(aHouseView:House3)
        AP.HouseInfo.HousesTransPersp[2].RingTransPersp = AP.HouseInfo.Houses[2].AdvanceTo(advancement: AP.RingAdvancement, inputRing: AP.HouseInfo.HousesTransPersp[2].Ring)
        AP.HouseInfo.HousesTransPersp[2].HouseName = "3rdHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[2], houseViews:aHouseView)
        
        //4
        aHouseView = getHouseViews(aHouseView:House4)
        AP.HouseInfo.HousesTransPersp[3].RingTransPersp = AP.HouseInfo.Houses[3].AdvanceTo(advancement: AP.RingAdvancement, inputRing: AP.HouseInfo.HousesTransPersp[3].Ring)
        AP.HouseInfo.HousesTransPersp[3].HouseName = "4thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[3], houseViews:aHouseView)
        
        //5
        aHouseView = getHouseViews(aHouseView:House5)
        AP.HouseInfo.HousesTransPersp[4].RingTransPersp = AP.HouseInfo.Houses[4].AdvanceTo(advancement: AP.RingAdvancement, inputRing: AP.HouseInfo.HousesTransPersp[4].Ring)
        AP.HouseInfo.HousesTransPersp[4].HouseName = "5thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[4], houseViews:aHouseView)
        
        //6
        aHouseView = getHouseViews(aHouseView:House6)
        AP.HouseInfo.HousesTransPersp[5].RingTransPersp = AP.HouseInfo.Houses[5].AdvanceTo(advancement: AP.RingAdvancement, inputRing: AP.HouseInfo.HousesTransPersp[5].Ring)
        AP.HouseInfo.HousesTransPersp[5].HouseName = "6thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[5], houseViews:aHouseView)
        
        //7
        aHouseView = getHouseViews(aHouseView:House7)
        AP.HouseInfo.HousesTransPersp[6].RingTransPersp = AP.HouseInfo.Houses[6].AdvanceTo(advancement: AP.RingAdvancement, inputRing: AP.HouseInfo.HousesTransPersp[6].Ring)
        AP.HouseInfo.HousesTransPersp[6].HouseName = "7thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[6], houseViews:aHouseView)
        
        //8
        aHouseView = getHouseViews(aHouseView:House8)
        AP.HouseInfo.HousesTransPersp[7].RingTransPersp = AP.HouseInfo.Houses[7].AdvanceTo(advancement: AP.RingAdvancement, inputRing: AP.HouseInfo.HousesTransPersp[7].Ring)
        AP.HouseInfo.HousesTransPersp[7].HouseName = "8thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[7], houseViews:aHouseView)
        
        //9
        aHouseView = getHouseViews(aHouseView:House9)
        AP.HouseInfo.HousesTransPersp[8].RingTransPersp = AP.HouseInfo.Houses[8].AdvanceTo(advancement: AP.RingAdvancement, inputRing: AP.HouseInfo.HousesTransPersp[8].Ring)
        AP.HouseInfo.HousesTransPersp[8].HouseName = "9thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[8], houseViews:aHouseView)
    
       //10
        aHouseView = getHouseViews(aHouseView:House10)
        AP.HouseInfo.HousesTransPersp[9].RingTransPersp = AP.HouseInfo.Houses[9].AdvanceTo(advancement: AP.RingAdvancement, inputRing: AP.HouseInfo.HousesTransPersp[9].Ring)
        AP.HouseInfo.HousesTransPersp[9].HouseName = "10thHouse"
    fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[9], houseViews:aHouseView)
        
        //11
        aHouseView = getHouseViews(aHouseView:House11)
        AP.HouseInfo.HousesTransPersp[10].RingTransPersp = AP.HouseInfo.Houses[10].AdvanceTo(advancement: AP.RingAdvancement, inputRing: AP.HouseInfo.HousesTransPersp[10].Ring)
        AP.HouseInfo.HousesTransPersp[10].HouseName = "11thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[10], houseViews:aHouseView)
        
        //12
        aHouseView = getHouseViews(aHouseView:House12)
        AP.HouseInfo.HousesTransPersp[11].RingTransPersp = AP.HouseInfo.Houses[11].AdvanceTo(advancement: AP.RingAdvancement, inputRing: AP.HouseInfo.HousesTransPersp[11].Ring)
        AP.HouseInfo.HousesTransPersp[11].HouseName = "12thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[11], houseViews:aHouseView)
        
        
        
        
        //End
       m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual] = AP
    }
    
    func fillRingViewWithData(aRing:RotateableRing, houseViews: HouseViews){
     
        var m_Ring = aRing
 
        let labelColor = UIColor.init(red: 250.0/255.0, green: 67.0/255.0, blue: 118.0/255.0, alpha: 1)
        
        var strokeText: [NSAttributedStringKey: Any] = [
            NSAttributedStringKey.strokeColor : UIColor.white,
            NSAttributedStringKey.foregroundColor: labelColor,
            NSAttributedStringKey.font : UIFont(name:"Seravek-Bold", size:11.37),
            NSAttributedStringKey.strokeWidth : -1.6]
        
        //main Image
        fillImage(imageView: houseViews.mainImagView, dignified: houseViews.mainDignified, label:houseViews.mainLabel, celestialBody:m_Ring.RingTransPersp[0].CurrentCelestialBody, houseNumber:m_Ring.HouseName, attributedText: strokeText)
        if ((m_Ring.RingTransPersp[0].CurrentCelestialBody == "Empty") || (m_Ring.RingTransPersp[0].CurrentCelestialBody == "")){
            
            houseViews.mainButton.accessibilityIdentifier = "Empty"
        }else {
            
            houseViews.mainButton.accessibilityIdentifier = m_Ring.RingTransPersp[0].CurrentCelestialBody
        }
        
         strokeText = [
            NSAttributedStringKey.strokeColor : labelColor,
            NSAttributedStringKey.foregroundColor: labelColor,
            NSAttributedStringKey.font : UIFont(name:"Seravek-Bold", size:7),
            NSAttributedStringKey.strokeWidth : -0.0]
        
        //Sat 1
        fillImage(imageView: houseViews.sat1Imag, dignified: houseViews.sat1Dignified, label:houseViews.sat1Label, celestialBody:m_Ring.RingTransPersp[1].CurrentCelestialBody, houseNumber:m_Ring.HouseName, attributedText: strokeText)
        
        //Sat 2
        fillImage(imageView: houseViews.sat2Imag, dignified: houseViews.sat2Dignified, label:houseViews.sat2Label, celestialBody:m_Ring.RingTransPersp[2].CurrentCelestialBody, houseNumber:m_Ring.HouseName, attributedText: strokeText)
        
        //Sat 3
        fillImage(imageView: houseViews.sat3Imag, dignified: houseViews.sat3Dignified, label:houseViews.sat3Label, celestialBody:m_Ring.RingTransPersp[3].CurrentCelestialBody, houseNumber:m_Ring.HouseName, attributedText: strokeText)
        
        //Sat 4
        fillImage(imageView: houseViews.sat4Imag, dignified: houseViews.sat4Dignified, label:houseViews.sat4Label, celestialBody:m_Ring.RingTransPersp[4].CurrentCelestialBody, houseNumber:m_Ring.HouseName, attributedText: strokeText)
        
        //Sat 5
        fillImage(imageView: houseViews.sat5Imag, dignified: houseViews.sat5Dignified, label:houseViews.sat5Label, celestialBody:m_Ring.RingTransPersp[5].CurrentCelestialBody, houseNumber:m_Ring.HouseName, attributedText: strokeText)
    }
    
    
 
    @IBAction func AdvanceMinus(_ sender: Any) {
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancement = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancement - 1
        if (m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancement < 1){
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].cycle = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].cycle - 1
            var countNN = 0
            for i in (0...11){
                var R = RotateableRing()
                R = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses[i]
                for j in (0...5){
                    if (R.Ring[j].CurrentCelestialBody == "NN"){
                        countNN = countNN + 1
                    }
                }
            }
            
            
            
            var newCountNN = 0
            for i in (0...11){
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
                    m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.RetractNode(CelestialBody: "NN", House: i, Ring: positionInRing, inputHouses: m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses)
                    if (newCountNN == countNN){
                        break;
                    }
                }
            }
            
            var countSN = 0
            for i in (0...11){
                var R = RotateableRing()
                R = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses[i]
                for j in (0...5){
                    if(R.Ring[j].CurrentCelestialBody == "SN"){
                        countSN = countSN + 1
                    }
                }
            }
            
            var newCountSN = 0
            for i in (0...11){
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
                    m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.RetractNode(CelestialBody: "SN", House: i, Ring: positionInRing, inputHouses: m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses)
                    if (newCountSN == countSN){
                        break;
                    }
                }
                
            }
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancement = 12
        }
        
        if (m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].cycle < 1){
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].cycle = 12
        }
        loadAP()
        
        
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
    func fillImage(imageView: UIImageView, dignified: UIImageView, label:UILabel, celestialBody:String, houseNumber:String, attributedText:[NSAttributedStringKey: Any]?){
        
        //Display CB
     
        //If CB is empty
        if ((celestialBody == "Empty") || (celestialBody == "")){
            label.text = ""
            dignified.image = UIImage(named: "DignifiedEmpty")
            imageView.image = UIImage(named: "Empty")
            
        } else{ //If CB is full/with content
            label.attributedText = NSAttributedString(string: celestialBody, attributes: attributedText)
            
            imageView.image = UIImage(named: celestialBody)
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
            } else {
                dignified.image = UIImage(named: "DignifiedEmpty")
            }
        }
        
        
       
        
        
        
    }
  
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        return aUiView
    }
    
    
    

}

