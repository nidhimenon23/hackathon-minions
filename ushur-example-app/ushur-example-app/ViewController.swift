//
//  ViewController.swift
//  ushur-example-app
//
//  Created by Nidhi on 18/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Login"
        Ushur.configure(portalId: "adsasd", apiKey: "asdasd")
        
    }


    @IBAction func actionClicked(_ sender: Any) {
            
        Ushur.renderApplication()

    }
}

