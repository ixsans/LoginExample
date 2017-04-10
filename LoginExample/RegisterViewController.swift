//
//  RegisterViewController.swift
//  LoginExample
//
//  Created by Ikhsan on 10/4/17.
//  Copyright © 2017 Ikhsan. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var txtFieldPassword: UITextField!
    @IBOutlet weak var txtFieldConfirmPassword: UITextField!
    
    
    @IBAction func btnLoginClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func btnRegisterClicked(_ sender: Any) {
        
        let email = txtFieldEmail.text
        let password = txtFieldPassword.text
        let cpassword = txtFieldConfirmPassword.text
        
        if((email?.isEmpty)! || (password?.isEmpty)! || (cpassword?.isEmpty)!){
            showAlertMessage(message:"Please fill all fields")
            return
        }
        
        if(cpassword != password){
            showAlertMessage(message: "Password doesn't match")
            return
        }
        
        UserDefaults.standard.set(email, forKey: "email")
        UserDefaults.standard.set(password, forKey: "password")
        UserDefaults.standard.synchronize()
        
        let alert = UIAlertController(title: "Alert", message: "Registration successful", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            action in
                self.dismiss(animated: true, completion: nil)
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    
    func showAlertMessage(message:String){
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)

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
