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
    
    var URL = ""
    var extensionType = ""
    var website = ""
    var scrollBuffer = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //let url = URL (string: "https://www.google.com")
        //let url = Bundle.main.url(forResource: "Websites/The 2nd House in Astrology • The Astro Codex", withExtension: "htm")
        sourceLabel.text = "Source: " + String(website)
        let url = Bundle.main.url(forResource: URL , withExtension: "htm")
        let request = URLRequest (url:(url)!)
        webView.load(request)
        
    }
    
    func webViewDidFinishLoad(_ webView: WKWebView) {
        
        let scrollPoint = CGPoint(x: 0, y: webView.scrollView.contentSize.height - webView.frame.size.height)
        webView.scrollView.setContentOffset(scrollPoint, animated: true)//Set false if you doesn't want animation
    }
    
    
    @IBOutlet weak var sourceLabel: UILabel!
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
