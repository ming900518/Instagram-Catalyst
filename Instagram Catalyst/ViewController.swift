//
//  ViewController.swift
//  艦これBrowser
//
//  Created by Ming Chang on 5/10/20.
//  Copyright © 2020 Ming Chang. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        UIApplication.shared.isIdleTimerDisabled = true
        super.viewDidLoad()
        self.webView.uiDelegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.webView.load(URLRequest.init(url: URL.init(string: "https://www.instagram.com")!))
    }
    
    @IBAction func reloadBtn() {
        let refreshAlert = UIAlertController(title: "確認重新整理", message: nil, preferredStyle: .alert)
        refreshAlert.addAction(UIAlertAction(title: "確定", style: .destructive) { action in
            self.webView.load(URLRequest.init(url: URL.init(string: "https://www.instagram.com")!))
        })
        refreshAlert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: nil))
        self.present(refreshAlert, animated: true)
    }
}

