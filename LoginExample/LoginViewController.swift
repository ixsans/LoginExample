//
//  LoginViewController.swift
//  LoginExample
//
//  Created by Ikhsan on 10/4/17.
//  Copyright © 2017 Ikhsan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var txtFieldEmail: UITextField!
    
    @IBOutlet weak var txtFieldPassword: UITextField!
    
    @IBAction func btnLoginClicked(_ sender: Any) {
        
        let email = txtFieldEmail.text
        let password = txtFieldPassword.text
        
        let registeredEmail = UserDefaults.standard.string(forKey: "email")
        let registeredPassword = UserDefaults.standard.string(forKey: "password")
        
        if(email == registeredEmail && password == registeredPassword){
            UserDefaults.standard.set(true, forKey: "isLogin")
            UserDefaults.standard.synchronize()
            
            dismiss(animated: true, completion: nil)
        }else{
            let alert = UIAlertController(title: "Alert", message: "Username / password incorrect", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

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
