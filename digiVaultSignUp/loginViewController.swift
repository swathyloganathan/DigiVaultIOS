//
//  loginViewController.swift
//  digiVaultSignUp
//
//  Created by R.M.D. Enginering College on 01/07/17.
//  Copyright © 2017 R.M.D. Enginering College. All rights reserved.
//

import UIKit
import Firebase
import FireAuth



class loginViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func loginnowButtonTapped(_ sender: Any) {
        
    }
    
    
    @IBAction func gobackButtonTapped(_ sender: Any) {
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
