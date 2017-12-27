//
//  webViewController.swift
//  ImageApp
//
//  Created by Nick on 12/27/17.
//  Copyright © 2017 Nick. All rights reserved.
//

import UIKit
import WebKit

class webViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL (string: "https://www.google.com")
        let request = URLRequest (url:url!)
        webView.load(request)
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var webView: WKWebView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
