//
//  signUpViewController.swift
//  digiVaultSignUp
//
//  Created by R.M.D. Enginering College on 01/07/17.
//  Copyright © 2017 R.M.D. Enginering College. All rights reserved.
//

import UIKit
import FirebaseDatabase

class signUpViewController: UIViewController {

    //@IBOutlet weak var signUpLabel: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var emailIdTextField: UITextField!
 
    
    @IBOutlet weak var mobileTextField: UITextField!
    
    @IBOutlet weak var otpTextField: UITextField!
    var ref:DatabaseReference!
    
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
        if(validate(email: email!)){
        if(password==confrimpswd)
        {
            if(validatePhone(mobno: mobno!)){
            let number = arc4random_uniform(101)
            
            myString = String(number)
            //displayMyAlertMessage(userMessage: myString);
            }
            else{
                displayMyAlertMessage(userMessage: "INVALID MOBILE NUMBER");
                return;
            }
            }
            
        else{
            
            displayMyAlertMessage(userMessage: "PASSWORDS DO NOT MATCH");
            return;

        
    }
            
    }
        else{
            displayMyAlertMessage(userMessage: "INVALID EMAIL ID");
            return;
        }
        otpTextField.text="\(myString)"
        
    
    }
    
    //@IBOutlet weak var otpTextField: UITextField!
    
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        
        //(myString==otp){
            displayMyAlertMessage(userMessage: "REGISTRATION SUCCESS");
        ref?.child("posts").childByAutoId().setValue("hello firebase")
            return;
        //}
        
    }
    func displayMyAlertMessage(userMessage: String){
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle:UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert,animated: true, completion:nil);
        
    }
    func validate(email: String) -> Bool {
        let REGEX: String
        REGEX = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
        return NSPredicate(format: "SELF MATCHES %@", REGEX).evaluate(with: email)
            }
    func validatePhone(mobno: String) -> Bool {
        let PHONE_REGEX = "^\\d{3}\\d{3}\\d{4}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: mobno)
        return result
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()

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
