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
    }
    
    @IBAction func clickCancelSelectView(_ sender: Any) {
        clearAllViewsFromScreen()
    }
    @IBAction func clickOKSelectItem(_ sender: Any) {
        IndividualTitle.topItem?.title = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].IndividualName
        clearAllViewsFromScreen()
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        return aUiView
    }

}

