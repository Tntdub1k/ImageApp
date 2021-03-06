//
//  webViewController.swift
//  ImageApp
//
//  Created by Nick on 12/27/17.
//  Copyright © 2017 Nick. All rights reserved.
//

import UIKit
import WebKit

class webViewController: UIViewController, WKNavigationDelegate {
    
    var aURL = ""
    var extensionType = ""
    var website = ""
    var scrollBuffer = 0
    var Title = ""
    var Img = ""
    
    
    @IBOutlet weak var mainBackgroundImage: UIImageView!
    func webView(_ webView: WKWebView,
                 decidePolicyFor navigationAction: WKNavigationAction,
                 decisionHandler: @escaping (WKNavigationActionPolicy) -> Void){
        decisionHandler(.allow)
    }
    
  
    override func viewDidLoad() {
        loadingLabel.isHidden = false
        loadingActivity.startAnimating()
        super.viewDidLoad()
        //
        //let url = Bundle.main.url(forResource: "Websites/The 2nd House in Astrology • The Astro Codex", withExtension: "htm")
        mainBackgroundImage.image = UIImage(named:Img)
        
        sourceLabel.text = "Source Website: " + String(website)
        var url = URL(string:"Blank")
        if (extensionType == "WP!"){
            url = URL(string:aURL)
        } else {
            url = Bundle.main.url(forResource: aURL , withExtension: extensionType)
        }
    
        let request = URLRequest (url:(url)!)
        webView.load(request)
        webView.navigationDelegate = self
    }
    
 
    @IBOutlet weak var loadingLabel: UILabel!
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    TitleLabel.text = "Selected Article: "+Title
    websiteContentV.isHidden = false
    loadingActivity.stopAnimating()
        let scrollPoint = CGPoint(x: 0, y: scrollBuffer)
        webView.scrollView.setContentOffset(scrollPoint, animated: true)//Set false if you
        }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    @IBAction func clickGoBack(_ sender: Any) {
        loadingActivity.startAnimating()
        websiteContentV.isHidden = true
        loadingLabel.isHidden = true
    }
    @IBOutlet weak var websiteContentV: UIView!
    

    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var loadingActivity: UIActivityIndicatorView!
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
