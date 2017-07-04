//
//  signUpViewController.swift
//  digiVaultSignUp
//
//  Created by R.M.D. Enginering College on 01/07/17.
//  Copyright © 2017 R.M.D. Enginering College. All rights reserved.
//

import UIKit

class signUpViewController: UIViewController {

    //@IBOutlet weak var signUpLabel: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var emailIdTextField: UITextField!
 
    
    @IBOutlet weak var mobileTextField: UITextField!
    
    var myString=""
    
    @IBAction func OTPButtonTapped(_ sender: Any) {
    
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
        if(password==confrimpswd)
        {
            let number = arc4random_uniform(101)
            
            myString = String(number)
            displayMyAlertMessage(userMessage: myString);
            }
        else{
            
            displayMyAlertMessage(userMessage: "PASSWORDS DO NOT MATCH");
            return;

        
    }
    }
    
    
    @IBOutlet weak var otpTextField: UITextField!
    
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        let otp = otpTextField.text
        if(myString==otp){
            displayMyAlertMessage(userMessage: "REGISTRATION SUCCESS");
            return;
        }
        
    }
    func displayMyAlertMessage(userMessage: String){
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle:UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert,animated: true, completion:nil);
        
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
