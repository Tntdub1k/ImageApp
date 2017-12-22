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
                return m_ADB.Database[row].CategoryName
            }
            else {
                return m_ADB.Database[m_CurrentCategory].Contents[row].IndividualName
            }
        }
        else if (pickerView == addPicker){
            return m_ADB.Database[row].CategoryName
        }
        else {
            return ""
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
                IndividualTitle.topItem?.title = m_ADB.Database[m_CurrentCategory].Contents[m_CurrentIndividual].IndividualName
                mainView.sendSubview(toBack: selectPicker)
                
            }
        }
        else if (pickerView == addPicker){
            addNewCategoryButton.isHidden = true
            addNewMemberView.isHidden = false
        }
        
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
        
    }
  
    
    
    @IBAction func addNewMemberPressedOK(_ sender: Any) {
        addNewCategoryButton.isHidden = false
        addNewMemberView.isHidden = true
    }
    @IBAction func addPressed(_ sender: Any) {
        mainView.bringSubview(toFront: addView)
    }
    @IBOutlet weak var addNewMemberView: UIView!
    @IBOutlet weak var addNewCategoryButton: UIButton!
    @IBOutlet weak var addView: UIView!
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var aUiView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imgPhoto: UIImageView!
    @IBOutlet weak var IndividualTitle: UINavigationBar!
    
    @IBOutlet weak var addPicker: UIPickerView!
    @IBOutlet weak var selectPicker: UIPickerView!
    @IBAction func SelectPressed(_ sender: Any) {
        mainView.bringSubview(toFront: selectPicker)
    }
    let m_ADB = AstrologicalDatabase()
    var m_CurrentCategory = 0
    var m_CurrentIndividual = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        
        
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 6.0
        
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

