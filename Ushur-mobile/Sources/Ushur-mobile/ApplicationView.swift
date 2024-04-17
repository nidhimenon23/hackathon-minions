//
//  File.swift
//  
//
//  Created by Nidhi on 18/04/24.
//

import  UIKit
import Foundation
import WebKit

public class ApplicationView: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    var url = URL(string: "")!

    public override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public func renderApplication() {
        webView.load(URLRequest(url: self.url))
        webView.allowsBackForwardNavigationGestures = true
        self.setNavigationBar()
    }



    func setNavigationBar() {
        let screenSize: CGRect = UIScreen.main.bounds
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: 44))
        let navItem = UINavigationItem(title: "")
        let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: nil, action: #selector(done))
        navItem.rightBarButtonItem = doneItem
        navBar.setItems([navItem], animated: false)
        self.view.addSubview(navBar)
    }

    @objc func done() { // remove @objc for Swift 3
        self.dismiss(animated: true)
    }

    
    // MARK: - WKNavigationDelegate
    
    public func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print("WebView failed to load: \(error.localizedDescription)")
    }
    
    public  func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("WebView started loading")
    }
    
    public  func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("WebView finished loading")
    }
    
}

