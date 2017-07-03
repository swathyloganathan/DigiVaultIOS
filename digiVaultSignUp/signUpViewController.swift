//
//  signUpViewController.swift
//  digiVaultSignUp
//
//  Created by R.M.D. Enginering College on 01/07/17.
//  Copyright © 2017 R.M.D. Enginering College. All rights reserved.
//

import UIKit

class signUpViewController: UIViewController {

    @IBOutlet weak var signUpLabel: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var emailIdTextField: UITextField!
 
    @IBOutlet weak var mobileTextField: UILabel!
    
    
    @IBAction func otpbuttontapped(sender: AnyObject) {
       let firstname = firstNameTextField.text
       let lastname = lastNameTextField.text
        let username = userNameTextField.text
        let password = passwordTextField.text
        let confrimpswd = confirmPasswordTextField.text
        let email = emailIdTextField.text
        let mobno = mobileTextField.text
        if((firstname?.isEmpty)!||(lastname?.isEmpty)!||(username?.isEmpty)!||(password?.isEmpty)!||(confrimpswd?.isEmpty)!||(email?.isEmpty)!||(mobno?.isEmpty)!)
        {
            displayMyAlertMessage(userMessage: "ALL FIELDS ARE REQUIRED");
            return;
        }
        if(password!==confrimpswd!)
        {
            displayMyAlertMessage(userMessage: "PASSWORDS DO NOT MATCH");
            return;
        }
        let number = arc4random_uniform(101)
        
        let myString = String(number)
        displayMyAlertMessage(userMessage: myString);
    }
    func displayMyAlertMessage(userMessage: String){
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle:)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:nil);
       
        myAlert.addAction(okAction);
        
        self.present(myAlert,animated: true, completion:nil);
    
    }
    @IBOutlet weak var OTPTextField: UITextField!
    
    
    
    
    
    
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
