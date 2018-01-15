//
//  ViewController.swift
//  ImageApp
//
//  Created by Nick on 12/20/17.
//  Copyright © 2017 Nick. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIScrollViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource, UITableViewDelegate,
    UIPageViewControllerDelegate,
    UIPageViewControllerDataSource,
UITableViewDataSource{
    
    var aWebVC = webViewController()
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return self
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var WDB = WebsiteDataBase()
        
        if (WDB.database[m_ReadingSourceCurrentCB] != nil){
            return (WDB.database[m_ReadingSourceCurrentCB]?.count)!
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var WDB = WebsiteDataBase()
        
        
        
            var TVC = UITableViewCell()
        let label = UILabel(frame: CGRect(x:10, y:0, width:25, height:44))
            label.textAlignment = NSTextAlignment.center
        label.text = WDB.database[m_ReadingSourceCurrentCB]![chooseReadingsTableV.visibleCells.count].data[m_ReadingSourceCurrentHouse]!.abbreviation
        
            TVC.contentView.addSubview(label)
            
        
            var label2 = UILabel(frame: CGRect(x:45, y:20, width:240, height:21))
            label2.textAlignment = NSTextAlignment.right
            label2.font.withSize(5)
            label2.text = WDB.database[m_ReadingSourceCurrentCB]![chooseReadingsTableV.visibleCells.count].data[m_ReadingSourceCurrentHouse]!.DisplayName
        
        TVC.contentView.addSubview(label2)
        
            var label3 = UILabel(frame: CGRect(x:45, y:0, width:240, height:21))
            label3.textAlignment = NSTextAlignment.right
        label3.font.withSize(20)
            label3.text = WDB.database[m_ReadingSourceCurrentCB]![chooseReadingsTableV.visibleCells.count].data[m_ReadingSourceCurrentHouse]!.website
        
            TVC.accessibilityLabel = WDB.database[m_ReadingSourceCurrentCB]![chooseReadingsTableV.visibleCells.count].data[m_ReadingSourceCurrentHouse]!.URL
            TVC.accessibilityHint = WDB.database[m_ReadingSourceCurrentCB]![chooseReadingsTableV.visibleCells.count].data[m_ReadingSourceCurrentHouse]!.extensionType
        TVC.accessibilityValue = WDB.database[m_ReadingSourceCurrentCB]![chooseReadingsTableV.visibleCells.count].data[m_ReadingSourceCurrentHouse]!.website
        TVC.accessibilityLanguage = "\(WDB.database[m_ReadingSourceCurrentCB]![chooseReadingsTableV.visibleCells.count].data[m_ReadingSourceCurrentHouse]!.scrollBuffer)"
            TVC.contentView.addSubview(label3)
      
        
        
        
        
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
        else if (pickerView == bandPicker){
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
        else if (pickerView == bandPicker){
            return m_SpiritBands.count
        }
        else {
            return 1
        }
       
        
    }
    @IBOutlet weak var bandCounter: UILabel!
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
        else if (pickerView == bandPicker){
            return m_SpiritBands[row]
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
  
    @IBAction func clickSelectSpiritBand(_ sender: Any) {
        let oldSBody = m_CurrentSBody
        bandCounter.text = String(bandPicker.selectedRow(inComponent: 0) + 1)
        m_CurrentSBody = bandPicker.selectedRow(inComponent: 0)
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["currentSBody"] = m_CurrentSBody
        
        bandPicker.reloadAllComponents()
        let newAdvancement = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]
        
        
        var currentCycle = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(oldSBody)+"Cycle"] as! Int
        let newCycle = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"] as! Int
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"] = currentCycle
        if (currentCycle > newCycle){
            while (currentCycle != newCycle){
                decreaseAdvancement()
                currentCycle =  m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"] as! Int
            }
        } else if (currentCycle < newCycle){
            while (currentCycle != newCycle){
                increaseAdvancement()
                currentCycle =  m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"] as! Int
            }
        }
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"] = newAdvancement
        
        clearAllViewsFromScreen()
        loadAP()
        
    }
    
    @IBOutlet weak var bandView: UIView!
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
        mainView.sendSubview(toBack: bandView)
        mainView.sendSubview(toBack: NotesView)
        mainView.sendSubview(toBack: settingsView)
    }
    @IBAction func pressBand(_ sender: Any) {
        mainView.bringSubview(toFront: bandView)
    }
    @IBAction func clearKeyboard(_ sender: Any) {
        mainView.endEditing(true)
    }
    @IBAction func pressLoadSettings(_ sender: Any) {
        mainView.bringSubview(toFront: settingsView)
        m_DetailLevelBeforeChange = m_CurrentDetailLevel
        updateDetailLevelDisplay()
    }
    @IBOutlet weak var pressSettings: UIButton!
    @IBOutlet weak var ButtonView: UIView!
    @IBOutlet weak var clearKeyboard: UIButton!
    
    @IBOutlet weak var advancementImage: UIImageView!

    @IBOutlet weak var cycleImage: UIImageView!
    func loadAP(){
        IndividualTitle.text = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].IndividualName
        NotesTitle.text = IndividualTitle.text
        
        
        
        var cycle = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"] as! Int
        cycleImage.image = UIImage(named: "ring12gauge"+String(cycle))
        cycleCounter.text = String(cycle)
        var advancement = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"] as! Int
        advancementCounter.text = String(advancement)
        advancementImage.image = UIImage(named: "ring12gauge"+String(advancement))
        
        
        var ring = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"RingAdvancement"] as! Int
        ringCounter.text = String(ring)
        bandCounter.text = String(m_CurrentSBody + 1)
        depthImage.image = UIImage(named:"ring6gauge"+String(ring))
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
            if ((isUsed == false) || (i == "North Node") || ( i == "South Node")){
                m_remainingCBs.append(i)
            }
        }
        
        m_remainingCBs.sort(by:<)
        addCBPicker.reloadComponent(0)
        
            
        
        
        fillWithData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SequeId_____1" {
            if let destination = segue.destination as? webViewController {
               
                let url = chooseReadingsTableV.cellForRow(at: chooseReadingsTableV.indexPathForSelectedRow!)?.accessibilityLabel
                let fileExtension = chooseReadingsTableV.cellForRow(at: chooseReadingsTableV.indexPathForSelectedRow!)?.accessibilityHint
                let website = chooseReadingsTableV.cellForRow(at: chooseReadingsTableV.indexPathForSelectedRow!)?.accessibilityValue
                let scrollBuffer = chooseReadingsTableV.cellForRow(at: chooseReadingsTableV.indexPathForSelectedRow!)?.accessibilityLanguage
                destination.URL = url!
                destination.extensionType = fileExtension!
                destination.website = website!
                destination.scrollBuffer = Int(scrollBuffer!)!
            }
        }
    }

    @IBAction func clickCancelSelectView(_ sender: Any) {
        clearAllViewsFromScreen()
    }
    @IBAction func clickOKSelectItem(_ sender: Any) {
        m_CurrentSBody = 0
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
       NotesTitle.text = IndividualTitle.text
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
        NotesTitle.text = IndividualTitle.text
    }

  
    @IBAction func CBHouseClick(_ sender: UIButton) {
      clearAllViewsFromScreen()
        m_LastHouseClicked = Int(sender.accessibilityHint!)!
        var aCB = sender.accessibilityIdentifier as! String
        if ((aCB == "Empty") || ((m_CurrentDetailLevel == m_BeginnerDetail) && (beginnerCBsList.contains(aCB) == false)) ||
            ((m_CurrentDetailLevel == m_IntermediateDetail) && (intermediateCBsList.contains(aCB) == false))){
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
            m_ReadingSourceCurrentCB = sender.accessibilityIdentifier!
            m_ReadingSourceCurrentHouse = ordinalNum + " House"
            
            chooseReadingLabel.text = m_ReadingSourceCurrentCB + " in the " + m_ReadingSourceCurrentHouse
            chooseReadingsTableV.reloadData()
            

            mainView.bringSubview(toFront: chooseReadingView)
            
        }
    }
    
    

    
    @IBOutlet weak var chooseReadingsTableV: UITableView!
    @IBAction func clickRemoveCB(_ sender: Any) {
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.HousesTransPersp[m_LastHouseClicked - 1].Ring[m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"RingAdvancement"]! - 1].CurrentCelestialBody = "Empty"
        loadAP()
    }
    
    func Twelverotation(a:Int, b:Int) -> Int{
        if ((a + b) > 12){
            return (a + b) - 12
        }else{
            return a + b
        }
        
    }
    @IBAction func clickOKAddCB(_ sender: Any) {
        
        if (m_CurrentSBody == 0){
           
            var currentHouse = Twelverotation(a:m_LastHouseClicked, b:0)
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.HousesTransPersp[currentHouse - 1].Ring[m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"RingAdvancement"]! - 1].CurrentCelestialBody = m_remainingCBs[addCBPicker.selectedRow(inComponent: 0)]
            
        }
        
        
        
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
        //NotesButton.setImage(UIImage(named: "exitIcon"), for:UIControlState.normal)
        //AstroView.isHidden = true
        //ButtonView.isHidden = true
        //NotesView.isHidden = false
        //NotesLabel.isHidden = true
        //NotesTextBox.isHidden = true
        //NotesSaveButton.isHidden = true
        mainView.bringSubview(toFront: NotesView)
        m_currentNote = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].currentNote
        switch (m_currentNote){
        case "General":
            GenNotesClick(self)
        case "CurStep":
            CurStepNotesClick(self)
        case "CurCycle":
            CurCycleNotesClick(self)
        case "StepAndCycle":
            StepAndCycleNotesClick(self)
        default:
            GenNotesClick(self)
        }
 
        
    }
    func CloseNotes(){
        m_notesAreOpen = false
        mainView.endEditing(true)
        //NotesButton.setImage(UIImage(named: "keyboard"), for:UIControlState.normal)
        //AstroView.isHidden = false
        //ButtonView.isHidden = false
        //NotesView.isHidden = true
       mainView.sendSubview(toBack: NotesView)
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].currentNote = m_currentNote
        
        
        //Save notes
    }

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

    
    @IBOutlet weak var NotesTitle: UILabel!
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

    @IBOutlet weak var dropboxSwitch: UISwitch!
    @IBAction func settingsSwitchDropbox(_ sender: Any) {
        if (dropboxSwitch.isOn){
            do {
                let jsonEncoder = JSONEncoder()
                let jsonData = try jsonEncoder.encode(m_ADB)
                let jsonString = jsonData.base64EncodedString()
                UIPasteboard.general.string = jsonString
                
            }
            catch {
             //
            }
           
            
        }
    }
    @IBAction func CurStepNotesClick(_ sender: Any) {
        m_currentNote = "CurStep"
        NotesLabel.isHidden = false
        NotesTextBox.isHidden = false
        NotesSaveButton.isHidden = false
        NotesLabel.text = "Advancement ("+String(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]!)+")"
        let Key = "SBody"+String(m_CurrentSBody)+"Advancement"+String(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]!)
        NotesTextBox.text = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].notes[Key]
    }
    @IBAction func GenNotesClick(_ sender: Any) {
        m_currentNote = "General"
        NotesLabel.isHidden = false
        NotesTextBox.isHidden = false
        NotesSaveButton.isHidden = false
        NotesLabel.text = "General"
        let Key = "SBody"+String(m_CurrentSBody)+"General"
        NotesTextBox.text = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].notes[Key]
    }
    @IBAction func StepAndCycleNotesClick(_ sender: Any) {
        m_currentNote = "StepAndCycle"
        NotesLabel.isHidden = false
        NotesTextBox.isHidden = false
        NotesSaveButton.isHidden = false
        NotesLabel.text = "Advancement ("+String(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]!)+") Cycle ("+String(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]!)+")"
        let Key = "SBody"+String(m_CurrentSBody)+"StepAndCycle"+String((m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]! - 1)*12 + m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]! - 1)
        NotesTextBox.text = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].notes[Key]
    }
    @IBAction func CurCycleNotesClick(_ sender: Any) {
        m_currentNote = "CurCycle"
        NotesLabel.isHidden = false
        NotesTextBox.isHidden = false
        NotesSaveButton.isHidden = false
        NotesLabel.text = "Cycle  ("+String(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]!)+")"
        let Key = "SBody"+String(m_CurrentSBody)+"Cycle"+String(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]! - 1)
        NotesTextBox.text = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].notes[Key]
    }
    @IBAction func ClickSaveNotes(_ sender: Any) {
        switch (m_currentNote){
        case "General":
                let Key = "SBody"+String(m_CurrentSBody)+"General"
                m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].notes[Key] = NotesTextBox.text
        case "CurStep":
            let Key = "SBody"+String(m_CurrentSBody)+"Advancement"+String(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]!)
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].notes[Key] = NotesTextBox.text
        case "CurCycle":
            let Key = "SBody"+String(m_CurrentSBody)+"Cycle"+String(m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]! - 1)
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].notes[Key] = NotesTextBox.text
        case "StepAndCycle":
            let Key = "SBody"+String(m_CurrentSBody)+"StepAndCycle"+String((m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]! - 1)*12 + m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]! - 1)
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].notes[Key] = NotesTextBox.text
        default:
            break
        }
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].currentNote = m_currentNote
        pressedSave(self)
        
    }
    @IBOutlet weak var NotesSaveButton: UIButton!
    @IBOutlet weak var NotesTextBox: UITextView!
    @IBOutlet weak var NotesLabel: UILabel!
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
    var m_currentNote = ""
    var m_SpiritBands = ["1st Body - Physical","2nd Body - Emotional", "3rd Body - Intellectual", "4th Body - Spiritual"]
    var m_CurrentSBody = 0
    let m_BeginnerDetail = 0
    let m_IntermediateDetail = 1
    let  m_AdvancedDetail = 2
    let  m_MasterDetail = 3
    var m_CurrentDetailLevel = 0
    var m_DetailLevelBeforeChange = -1
    var m_ReadingSourceCurrentHouse = "1st House"
    var m_ReadingSourceCurrentCB = "Sun"
    let beginnerCBsList = ["Sun","Moon","Mercury","Venus","Saturn","Mars","Jupiter","Uranus","Neptune","Pluto","Nibiru","Sedna"]
    let intermediateCBsList =
        ["Sun","Moon","Mercury","Venus","Saturn","Mars","Jupiter","Uranus","Neptune","Pluto","Nibiru","Sedna", "North Node","South Node"]
    func showMessage(message:String){
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)

    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
 
    @IBOutlet weak var settingsView: UIView!
    @IBAction func clickSettingsFinished(_ sender: Any) {
        
        clearAllViewsFromScreen()
    }
    
    
    func advanceToCycle( pastCycle:Int, newCycle:Int, newAdvancement:Int, newBody:Int){
        
      
        var currentCycle = pastCycle
        
        
        m_CurrentSBody = newBody
    m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"] = pastCycle
        
        if (currentCycle > newCycle){
            while (currentCycle != newCycle){
                decreaseAdvancement()
                currentCycle =  m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"] as! Int
            }
        } else if (currentCycle < newCycle){
            while (currentCycle != newCycle){
                increaseAdvancement()
                currentCycle =  m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"] as! Int
            }
        }
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody0Advancement"] = newAdvancement
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        scrollView.delegate = self
        
        clearAllViewsFromScreen()

        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 6.0
        scrollView.bounces = false

       
            var Json = ""
       
        if ((try? UserDefaults.standard.string(forKey: "MindmapDataBase")) == nil){
            loadSampleDB()
        }else{
            var jsonString2 = UserDefaults.standard.string(forKey: "MindmapDataBase")
            if ((try? Data(base64Encoded: jsonString2!)) == nil){
                loadSampleDB()
            } else {
                let jsonData2 = Data(base64Encoded: jsonString2!)
                
                if ((try? JSONDecoder().decode(AstrologicalDatabase.self, from: jsonData2!)) == nil){
                    loadSampleDB()
                }else {
                    var ADB:AstrologicalDatabase
                    ADB = try! JSONDecoder().decode(AstrologicalDatabase.self, from: jsonData2!)
                    m_ADB =  ADB
                    
                    if (UserDefaults.standard.string(forKey: "MindmapDetailLevel") == nil){
                        m_CurrentDetailLevel = m_BeginnerDetail
                    } else{
                        m_CurrentDetailLevel = Int(UserDefaults.standard.string(forKey: "MindmapDetailLevel")!)!
                    }
                    
                }
            }
        }
        
        
        m_CurrentSBody = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["currentSBody"]!
        
        
        if ((m_CurrentDetailLevel != m_MasterDetail) && (m_CurrentSBody >= m_IntermediateDetail)){
            
            advanceToCycle(pastCycle:m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]!, newCycle:m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody0Cycle"]!, newAdvancement:m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody0Advancement"]! , newBody:m_BeginnerDetail)
            m_CurrentSBody = 0
        }
            
        
        
        
        displayCurrentDetailLevel()
        loadAP()
        
    
    
        
        
        //var Json = try? JSONSerialization.jsonObject(with: jsonData, options: .allowFragments)
        
        // let jsonData2 = try? JSONSerialization.data(withJSONObject: Json)
       // var ADB: AstrologicalDatabase
        //ADB = try! JSONDecoder().decode(AstrologicalDatabase.self, from: jsonData2!)
        
     
       
        //IndividualTitle.topItem?.title = m_ADB.Database[0].Contents[0].IndividualName
        chooseReadingsTableV.delegate = self
        chooseReadingsTableV.dataSource = self
        bandPicker.delegate = self
        bandPicker.dataSource = self
        selectPicker.dataSource = self
        selectPicker.delegate = self
        addPicker.dataSource = self
        addPicker.delegate = self
        addCBPicker.dataSource = self
        addCBPicker.delegate = self
    
       
    }
    func updateDetailLevelDisplay(){
        switch(m_CurrentDetailLevel){
        case m_BeginnerDetail:
            settingsDetailTextBox.text = "Beginner Level \n ----------------\nShows MindMap interface and 12 planets to place within the 12 Houses\n\nAllows saving notes for the profile in general and for each individual advancement"
        case m_IntermediateDetail:
            settingsDetailTextBox.text = "Intermediate Level \n ----------------\nIncludes Depth and Cycle gauges and adds North Node and South Node entities\n\nAllows saving notes for each individual cycle"
        case m_AdvancedDetail:
            settingsDetailTextBox.text = "Advanced Level \n ----------------\nIntroduces additional entries to supplement the Map including asteroids\n\nAllows saving notes for each combination of advancement and cycle"
        case m_MasterDetail:
            settingsDetailTextBox.text = "Master Level \n ----------------\nFeatures all possible entries along with a selector to move between different Spiritual Bodies\n\nNotes are saved for each spiritual body seperately"
        default:
            break
        }
    }
    
    @IBOutlet weak var notesButtonCycle: UIButton!
    @IBOutlet weak var notesButtonAdvancementAndCycle: UIButton!
    @IBOutlet weak var depthImage: UIImageView!
    func displayCurrentDetailLevel(){
        
    switch(m_CurrentDetailLevel){
    case m_BeginnerDetail:
        
        notesButtonCycle.isHidden = true
        notesButtonAdvancementAndCycle.isHidden = true
        
        bandCounter.isHidden = true
        bodyLabel.isHidden = true
        bodyImage.isHidden = true
        bodyButton.isHidden = true
   
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody0RingAdvancement"] = 1
        //m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody0Advancement"] = 0
        
        m_CBL = CelestialBodyListing()
        for CB in m_CBL.AllCelestialBodies{
            if (beginnerCBsList.contains(CB.value.DisplayName) == false){
                m_CBL.AllCelestialBodies.removeValue(forKey: CB.key)
            }
        }
        
        settingDetailSlider.setValue(0.0, animated: false)
        cycleLabel.isHidden = true
        cycleCounter.isHidden = true
        cycleImage.isHidden = true
        
        depthLabel.isHidden = true
        ringCounter.isHidden = true
        depthPlusB.isHidden = true
        depthMinusB.isHidden = true
        depthImage.isHidden = true
        
    case m_IntermediateDetail:
        notesButtonCycle.isHidden = false
        notesButtonAdvancementAndCycle.isHidden = true
        
        bandCounter.isHidden = true
        bodyLabel.isHidden = true
        bodyImage.isHidden = true
        bodyButton.isHidden = true

        
        m_CBL = CelestialBodyListing()
        for CB in m_CBL.AllCelestialBodies{
            if (intermediateCBsList.contains(CB.value.DisplayName) == false){
                m_CBL.AllCelestialBodies.removeValue(forKey: CB.key)
            }
        }
        settingDetailSlider.setValue(0.33, animated: false)
        cycleLabel.isHidden = false
        cycleCounter.isHidden = false
        cycleImage.isHidden = false
        
        depthLabel.isHidden = false
        ringCounter.isHidden = false
        depthPlusB.isHidden = false
        depthMinusB.isHidden = false
        depthImage.isHidden = false
    case m_AdvancedDetail:
        notesButtonCycle.isHidden = false
        notesButtonAdvancementAndCycle.isHidden = false
        
        bandCounter.isHidden = true
        bodyLabel.isHidden = true
        bodyImage.isHidden = true
        bodyButton.isHidden = true
   
        
        
        m_CBL = CelestialBodyListing()
        settingDetailSlider.setValue(0.66, animated: false)
        cycleLabel.isHidden = false
        cycleCounter.isHidden = false
        cycleImage.isHidden = false
        
        depthLabel.isHidden = false
        ringCounter.isHidden = false
        depthPlusB.isHidden = false
        depthMinusB.isHidden = false
        depthImage.isHidden = false
    case m_MasterDetail:
        notesButtonCycle.isHidden = false
        notesButtonAdvancementAndCycle.isHidden = false
        
        bandCounter.isHidden = false
        bodyLabel.isHidden = false
        bodyImage.isHidden = false
        bodyButton.isHidden = false
        
        settingDetailSlider.setValue(1.0, animated: false)
        m_CBL = CelestialBodyListing()
        cycleLabel.isHidden = false
        cycleCounter.isHidden = false
        cycleImage.isHidden = false
        
        depthLabel.isHidden = false
        ringCounter.isHidden = false
        depthPlusB.isHidden = false
        depthMinusB.isHidden = false
        depthImage.isHidden = false
    default:
        break
        }
    }
    @IBAction func settingsFinished(_ sender: Any){
    
        if (m_DetailLevelBeforeChange > m_CurrentDetailLevel){
            if (m_CurrentDetailLevel == m_BeginnerDetail){
                if ((m_currentNote != "CurStep") && (m_currentNote != "General")){
                    m_currentNote = "General"
                }
                else if(m_CurrentDetailLevel == m_IntermediateDetail){
                    if ((m_currentNote != "CurStep") && (m_currentNote != "General") && (m_currentNote != "CurCycle")){
                        m_currentNote = "General"
                    }
                }
            }
            
        }
        
        if ((m_DetailLevelBeforeChange == m_MasterDetail) && (m_CurrentDetailLevel != m_MasterDetail)){
            
            
            
            advanceToCycle(pastCycle:m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]!, newCycle:m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody0Cycle"]!, newAdvancement:m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody0Advancement"]! , newBody:m_BeginnerDetail)
            m_CurrentSBody = 0
            
    
            
        }
            
            if (m_DetailLevelBeforeChange == 0){
                let newAdvancement = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]
                var currentCycle = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody0Cycle"] as! Int
                //Set to 1
                let newCycle = 1
                if (currentCycle > newCycle){
                    while (currentCycle != newCycle){
                        decreaseAdvancement()
                        currentCycle =  m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"] as! Int
                    }
                } else if (currentCycle < newCycle){
                    while (currentCycle != newCycle){
                        increaseAdvancement()
                        currentCycle =  m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"] as! Int
                    }
                }
                m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"] = newAdvancement
            
        }

     
        displayCurrentDetailLevel()
        
        loadAP()
        
        UserDefaults.standard.set(String(m_CurrentDetailLevel), forKey: "MindmapDetailLevel")
        UserDefaults.standard.synchronize()
    }
    @IBOutlet weak var cycleLabel: UILabel!
    @IBOutlet weak var depthMinusB: UIButton!
    @IBOutlet weak var depthPlusB: UIButton!
    @IBOutlet weak var depthLabel: UILabel!
    @IBOutlet weak var settingsDetailTextBox: UITextView!
    @IBOutlet weak var bodyButton: UIButton!
    @IBOutlet weak var bodyImage: UIImageView!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBAction func settingSliderValueChanged(_ sender: Any) {
        if (settingDetailSlider.value <= 0.165){
            settingDetailSlider.setValue(0.0, animated: false)
            m_CurrentDetailLevel = m_BeginnerDetail
        } else if ((settingDetailSlider.value > 0.165) && (settingDetailSlider.value <= 0.495)){
            settingDetailSlider.setValue(0.33, animated: false)
            m_CurrentDetailLevel = m_IntermediateDetail
        } else if((settingDetailSlider.value > 0.495) && (settingDetailSlider.value <= 0.825)){
            settingDetailSlider.setValue(0.66, animated: false)
            m_CurrentDetailLevel = m_AdvancedDetail
        } else if(settingDetailSlider.value > 0.825){
            settingDetailSlider.setValue(1.0, animated:false)
            m_CurrentDetailLevel = m_MasterDetail
        }
        updateDetailLevelDisplay()
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var settingDetailSlider: UISlider!
    
    @IBOutlet weak var bandPicker: UIPickerView!
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
    func loadSampleDB(){
        let AS = AstrologicalProfile()
        AS.IndividualName = "Sample Individual"
        
        let AC = AstrologicalCategory()
        AC.CategoryName = "Individuals"
        AC.Contents.append(AS)
        m_ADB.Database.append(AC)
        m_CurrentDetailLevel = m_BeginnerDetail
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
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"RingAdvancement"]! = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"RingAdvancement"]! - 1
        if (m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"RingAdvancement"]! < 1){
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"RingAdvancement"]! = 6
        }
        loadAP()
    }
    @IBAction func ringPlus(_ sender: Any) {
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"RingAdvancement"]! = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"RingAdvancement"]! + 1
        if (m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"RingAdvancement"]! > 6){
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"RingAdvancement"]! = 1
        }
        loadAP()
    }
    
    func setFontColor(){
        var labelColor = UIColor()
        labelColor = UIColor.init(red: 0.0/255.0, green: 157.0/255.0, blue: 209.0/255.0, alpha: 1)
        
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
        var RA = 0
        AP = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual]

        
        
        switch(m_CurrentSBody){
        case 0:
            AP.HouseInfo.HousesTransPersp = AP.HouseInfo.CopyHouses(inputHouses: AP.HouseInfo.Houses)
            AP.HouseInfo.HousesTransPersp = AP.HouseInfo.AdvanceTo(aHouseAdvancement: Twelverotation(a:m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]!, b:0) , inputHouses: AP.HouseInfo.HousesTransPersp)
            RA = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"RingAdvancement"]!
            
        case 1:
            AP.HouseInfo.HousesTransPersp = AP.HouseInfo.CopyHouses(inputHouses: AP.HouseInfo.Houses)
            AP.HouseInfo.HousesTransPersp = AP.HouseInfo.AdvanceTo(aHouseAdvancement: Twelverotation(a:m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]!, b:3) , inputHouses: AP.HouseInfo.HousesTransPersp)
          RA = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"RingAdvancement"]!
        case 2:
            AP.HouseInfo.HousesTransPersp = AP.HouseInfo.CopyHouses(inputHouses: AP.HouseInfo.Houses)
            AP.HouseInfo.HousesTransPersp = AP.HouseInfo.AdvanceTo(aHouseAdvancement: Twelverotation(a:m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]!, b:6) , inputHouses: AP.HouseInfo.HousesTransPersp)
           RA = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"RingAdvancement"]!
        case 3:
            AP.HouseInfo.HousesTransPersp = AP.HouseInfo.CopyHouses(inputHouses: AP.HouseInfo.Houses)
            AP.HouseInfo.HousesTransPersp = AP.HouseInfo.AdvanceTo(aHouseAdvancement: Twelverotation(a:m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]!, b:9) , inputHouses: AP.HouseInfo.HousesTransPersp)
           RA = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"RingAdvancement"]!
        default:
            break
        }
        
        //1
       var aHouseView = HouseViews()
        aHouseView = getHouseViews(aHouseView:House1)
        AP.HouseInfo.HousesTransPersp[0].RingTransPersp = AP.HouseInfo.Houses[0].AdvanceTo(advancement: RA, inputRing: AP.HouseInfo.HousesTransPersp[0].Ring)
        AP.HouseInfo.HousesTransPersp[0].HouseName = "1stHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[0], houseViews:aHouseView)
        
        //2
        aHouseView = getHouseViews(aHouseView:House2)
        AP.HouseInfo.HousesTransPersp[1].RingTransPersp = AP.HouseInfo.Houses[1].AdvanceTo(advancement: RA, inputRing: AP.HouseInfo.HousesTransPersp[1].Ring)
        AP.HouseInfo.HousesTransPersp[1].HouseName = "2ndHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[1], houseViews:aHouseView)
        
        //3
        aHouseView = getHouseViews(aHouseView:House3)
        AP.HouseInfo.HousesTransPersp[2].RingTransPersp = AP.HouseInfo.Houses[2].AdvanceTo(advancement: RA, inputRing: AP.HouseInfo.HousesTransPersp[2].Ring)
        AP.HouseInfo.HousesTransPersp[2].HouseName = "3rdHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[2], houseViews:aHouseView)
        
        //4
        aHouseView = getHouseViews(aHouseView:House4)
        AP.HouseInfo.HousesTransPersp[3].RingTransPersp = AP.HouseInfo.Houses[3].AdvanceTo(advancement: RA, inputRing: AP.HouseInfo.HousesTransPersp[3].Ring)
        AP.HouseInfo.HousesTransPersp[3].HouseName = "4thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[3], houseViews:aHouseView)
        
        //5
        aHouseView = getHouseViews(aHouseView:House5)
        AP.HouseInfo.HousesTransPersp[4].RingTransPersp = AP.HouseInfo.Houses[4].AdvanceTo(advancement: RA, inputRing: AP.HouseInfo.HousesTransPersp[4].Ring)
        AP.HouseInfo.HousesTransPersp[4].HouseName = "5thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[4], houseViews:aHouseView)
        
        //6
        aHouseView = getHouseViews(aHouseView:House6)
        AP.HouseInfo.HousesTransPersp[5].RingTransPersp = AP.HouseInfo.Houses[5].AdvanceTo(advancement: RA, inputRing: AP.HouseInfo.HousesTransPersp[5].Ring)
        AP.HouseInfo.HousesTransPersp[5].HouseName = "6thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[5], houseViews:aHouseView)
        
        //7
        aHouseView = getHouseViews(aHouseView:House7)
        AP.HouseInfo.HousesTransPersp[6].RingTransPersp = AP.HouseInfo.Houses[6].AdvanceTo(advancement: RA, inputRing: AP.HouseInfo.HousesTransPersp[6].Ring)
        AP.HouseInfo.HousesTransPersp[6].HouseName = "7thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[6], houseViews:aHouseView)
        
        //8
        aHouseView = getHouseViews(aHouseView:House8)
        AP.HouseInfo.HousesTransPersp[7].RingTransPersp = AP.HouseInfo.Houses[7].AdvanceTo(advancement: RA, inputRing: AP.HouseInfo.HousesTransPersp[7].Ring)
        AP.HouseInfo.HousesTransPersp[7].HouseName = "8thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[7], houseViews:aHouseView)
        
        //9
        aHouseView = getHouseViews(aHouseView:House9)
        AP.HouseInfo.HousesTransPersp[8].RingTransPersp = AP.HouseInfo.Houses[8].AdvanceTo(advancement: RA, inputRing: AP.HouseInfo.HousesTransPersp[8].Ring)
        AP.HouseInfo.HousesTransPersp[8].HouseName = "9thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[8], houseViews:aHouseView)
    
       //10
        aHouseView = getHouseViews(aHouseView:House10)
        AP.HouseInfo.HousesTransPersp[9].RingTransPersp = AP.HouseInfo.Houses[9].AdvanceTo(advancement: RA, inputRing: AP.HouseInfo.HousesTransPersp[9].Ring)
        AP.HouseInfo.HousesTransPersp[9].HouseName = "10thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[9], houseViews:aHouseView)
        
        //11
        aHouseView = getHouseViews(aHouseView:House11)
        AP.HouseInfo.HousesTransPersp[10].RingTransPersp = AP.HouseInfo.Houses[10].AdvanceTo(advancement: RA, inputRing: AP.HouseInfo.HousesTransPersp[10].Ring)
        AP.HouseInfo.HousesTransPersp[10].HouseName = "11thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[10], houseViews:aHouseView)
        
        //12
        aHouseView = getHouseViews(aHouseView:House12)
        AP.HouseInfo.HousesTransPersp[11].RingTransPersp = AP.HouseInfo.Houses[11].AdvanceTo(advancement: RA, inputRing: AP.HouseInfo.HousesTransPersp[11].Ring)
        AP.HouseInfo.HousesTransPersp[11].HouseName = "12thHouse"
        fillRingViewWithData(aRing:AP.HouseInfo.HousesTransPersp[11], houseViews:aHouseView)
        
        
        
        
  
     
  //       m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual] = AP.cre
        //Notes
        
    }
    
    func fillRingViewWithData(aRing:RotateableRing, houseViews: HouseViews){
     
        var m_Ring = aRing
 
        
        var hasNN = false
        for ringTP in m_Ring.RingTransPersp{
            if (ringTP.CurrentCelestialBody == "North Node"){
                hasNN = true
            }
        }
        if ((hasNN == true) && (m_CurrentDetailLevel >= m_IntermediateDetail)){
            revealOrHideDragonHead(houseNumber:m_Ring.HouseName, hideOrReveal:"reveal")
        }else{
               revealOrHideDragonHead(houseNumber:m_Ring.HouseName, hideOrReveal:"hide")
        }
        
        
        var hasSN = false
        for ringTP in m_Ring.RingTransPersp{
            if (ringTP.CurrentCelestialBody == "South Node"){
                hasSN = true
            }
        }
        if ((hasSN == true) && (m_CurrentDetailLevel >= m_IntermediateDetail)){
            revealOrHideDragonTail(houseNumber:m_Ring.HouseName, hideOrReveal:"reveal")
        }else{
            revealOrHideDragonTail(houseNumber:m_Ring.HouseName, hideOrReveal:"hide")
        }
        
        
        let labelColor = UIColor.init(red: 0.0/255.0, green: 157.0/255.0, blue: 209.0/255.0, alpha: 1)
        
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
    
    
    func decreaseAdvancement(){
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]! = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]! - 1
        if (m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]! < 1){
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]! = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]! - 1
            var countNN = 0
            for i in (0...11){
                var R = RotateableRing()
                R = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses[i]
                for j in (0...5){
                    if (R.Ring[j].CurrentCelestialBody == "North Node"){
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
                    if (R.Ring[j].CurrentCelestialBody == "North Node"){
                        containsNN = true
                        positionInRing = j
                        newCountNN = newCountNN + 1
                    }
                }
                
                if (containsNN == true){
                    m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.RetractNode(CelestialBody: "North Node", House: i, Ring: positionInRing, inputHouses: m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses)
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
                    if(R.Ring[j].CurrentCelestialBody == "South Node"){
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
                    if (R.Ring[j].CurrentCelestialBody == "South Node"){
                        containsSN = true
                        positionInRing = j
                        newCountSN = newCountSN + 1
                    }
                }
                if (containsSN == true){
                    m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.RetractNode(CelestialBody: "South Node", House: i, Ring: positionInRing, inputHouses: m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses)
                    if (newCountSN == countSN){
                        break;
                    }
                }
                
            }
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]! = 12
        }
        
        if (m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]! < 1){
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]! = 12
        }
    }
    @IBAction func AdvanceMinus(_ sender: Any) {
     
        decreaseAdvancement()
        loadAP()
        
        
    }
    
    func increaseAdvancement(){
        m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]! = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]! + 1
        if (m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]! > 12){
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]! = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]! + 1
            var countNN = 0
            for i in (0...11).reversed(){
                var R = RotateableRing()
                R = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses[i]
                for j in (0...5){
                    if (R.Ring[j].CurrentCelestialBody == "North Node"){
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
                    if (R.Ring[j].CurrentCelestialBody == "North Node"){
                        containsNN = true
                        positionInRing = j
                        newCountNN = newCountNN + 1
                    }
                }
                
                if (containsNN == true){
                    m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.AdvanceNode(CelestialBody: "North Node", House: i, Ring: positionInRing, inputHouses: m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses)
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
                    if(R.Ring[j].CurrentCelestialBody == "South Node"){
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
                    if (R.Ring[j].CurrentCelestialBody == "South Node"){
                        containsSN = true
                        positionInRing = j
                        newCountSN = newCountSN + 1
                    }
                }
                if (containsSN == true){
                    m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.AdvanceNode(CelestialBody: "South Node", House: i, Ring: positionInRing, inputHouses: m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].HouseInfo.Houses)
                    if (newCountSN == countSN){
                        break;
                    }
                }
                
            }
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Advancement"]! = 1
        }
        
        if (m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]! > 12){
            m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].advancementInfo["SBody"+String(m_CurrentSBody)+"Cycle"]! = 1
        }
    }
   
    @IBAction func AdvancePlus(_ sender: Any) {
        increaseAdvancement()
        loadAP()
        
        
    }
    func fillImage(imageView: UIImageView, dignified: UIImageView, label:UILabel, celestialBody:String, houseNumber:String, attributedText:[NSAttributedStringKey: Any]?){
        
        //Display CB
  
        //If CB is empty
        if ((celestialBody == "Empty") || (celestialBody == "") || ((m_CurrentDetailLevel == m_BeginnerDetail) && (beginnerCBsList.contains(celestialBody) == false) ) ||
            ((m_CurrentDetailLevel == m_IntermediateDetail) && (intermediateCBsList.contains(celestialBody) == false) ) ){
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
    func revealOrHideDragonTail(houseNumber:String, hideOrReveal:String){
        switch(houseNumber){
        case "1stHouse":
            if (hideOrReveal == "reveal"){
                dragonTail1.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonTail1.isHidden = true
            }
        case "2ndHouse":
            if (hideOrReveal == "reveal"){
                dragonTail2.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonTail2.isHidden = true
            }
        case "3rdHouse":
            if (hideOrReveal == "reveal"){
                dragonTail3.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonTail3.isHidden = true
            }
        case "4thHouse":
            if (hideOrReveal == "reveal"){
                dragonTail4.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonTail4.isHidden = true
            }
        case "5thHouse":
            if (hideOrReveal == "reveal"){
                dragonTail5.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonTail5.isHidden = true
            }
        case "6thHouse":
            if (hideOrReveal == "reveal"){
                dragonTail6.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonTail6.isHidden = true
            }
        case "7thHouse":
            if (hideOrReveal == "reveal"){
                dragonTail7.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonTail7.isHidden = true
            }
        case "8thHouse":
            if (hideOrReveal == "reveal"){
                dragonTail8.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonTail8.isHidden = true
            }
        case "9thHouse":
            if (hideOrReveal == "reveal"){
                dragonTail9.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonTail9.isHidden = true
            }
        case "10thHouse":
            if (hideOrReveal == "reveal"){
                dragonTail10.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonTail10.isHidden = true
            }
        case "11thHouse":
            if (hideOrReveal == "reveal"){
                dragonTail11.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonTail11.isHidden = true
            }
        case "12thHouse":
            if (hideOrReveal == "reveal"){
                dragonTail12.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonTail12.isHidden = true
            }
        default:
            break
        }
    }
    func revealOrHideDragonHead(houseNumber:String, hideOrReveal:String){
        switch(houseNumber){
        case "1stHouse":
            if (hideOrReveal == "reveal"){
                dragonHead1.isHidden = false
            } else if (hideOrReveal == "hide"){
                 dragonHead1.isHidden = true
            }
        case "2ndHouse":
            if (hideOrReveal == "reveal"){
                dragonHead2.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonHead2.isHidden = true
            }
        case "3rdHouse":
            if (hideOrReveal == "reveal"){
                dragonHead3.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonHead3.isHidden = true
            }
        case "4thHouse":
            if (hideOrReveal == "reveal"){
                dragonHead4.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonHead4.isHidden = true
            }
        case "5thHouse":
            if (hideOrReveal == "reveal"){
                dragonHead5.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonHead5.isHidden = true
            }
        case "6thHouse":
            if (hideOrReveal == "reveal"){
                dragonHead6.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonHead6.isHidden = true
            }
        case "7thHouse":
            if (hideOrReveal == "reveal"){
                dragonHead7.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonHead7.isHidden = true
            }
        case "8thHouse":
            if (hideOrReveal == "reveal"){
                dragonHead8.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonHead8.isHidden = true
            }
        case "9thHouse":
            if (hideOrReveal == "reveal"){
                dragonHead9.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonHead9.isHidden = true
            }
        case "10thHouse":
            if (hideOrReveal == "reveal"){
                dragonHead10.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonHead10.isHidden = true
            }
        case "11thHouse":
            if (hideOrReveal == "reveal"){
                dragonHead11.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonHead11.isHidden = true
            }
        case "12thHouse":
            if (hideOrReveal == "reveal"){
                dragonHead12.isHidden = false
            } else if (hideOrReveal == "hide"){
                dragonHead12.isHidden = true
            }
        default:
            break
        }
    }
  
    @IBOutlet weak var dragonTail12: UIImageView!
    @IBOutlet weak var dragonTail11: UIImageView!
    @IBOutlet weak var dragonTail10: UIImageView!
    @IBOutlet weak var dragonTail9: UIImageView!
    @IBOutlet weak var dragonTail8: UIImageView!
    @IBOutlet weak var dragonTail7: UIImageView!
    @IBOutlet weak var dragonTail6: UIImageView!
    @IBOutlet weak var dragonTail5: UIImageView!
    @IBOutlet weak var dragonTail4: UIImageView!
    @IBOutlet weak var dragonTail3: UIImageView!
    @IBOutlet weak var dragonTail2: UIImageView!
    @IBOutlet weak var dragonTail1: UIImageView!
    @IBOutlet weak var dragonHead12: UIImageView!
    @IBOutlet weak var dragonHead11: UIImageView!
    @IBOutlet weak var dragonHead10: UIImageView!
    @IBOutlet weak var dragonHead9: UIImageView!
    @IBOutlet weak var dragonHead8: UIImageView!
    @IBOutlet weak var dragonHead6: UIImageView!
    @IBOutlet weak var dragonHead7: UIImageView!
    @IBOutlet weak var dragonHead5: UIImageView!
    @IBOutlet weak var dragonHead4: UIImageView!
    @IBOutlet weak var dragonHead2: UIImageView!
    @IBOutlet weak var dragonHead3: UIImageView!
    @IBOutlet weak var dragonHead1: UIImageView!
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        return aUiView
    }
    
    
    

}

