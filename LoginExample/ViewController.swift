//
//  ViewController.swift
//  LoginExample
//
//  Created by Ikhsan on 10/4/17.
//  Copyright © 2017 Ikhsan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnLogoutClicked(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "isLogin")
        UserDefaults.standard.synchronize()
        
        performSegue(withIdentifier: "showLogin", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let isLogin = UserDefaults.standard.bool(forKey: "isLogin")
        
        if(!isLogin){
            performSegue(withIdentifier: "showLogin", sender: self)
        }
    }


}

