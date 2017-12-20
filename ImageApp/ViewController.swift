//
//  ViewController.swift
//  ImageApp
//
//  Created by Nick on 12/20/17.
//  Copyright © 2017 Nick. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIScrollViewDelegate{

   
    
    @IBOutlet weak var aUiView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imgPhoto: UIImageView!
    let DM = DataModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 6.0
        self.DM.aTestString = "this"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        return aUiView
    }

}

