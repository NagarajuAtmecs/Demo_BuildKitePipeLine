//
//  ViewController.swift
//  Bazel_Migrate
//
//  Created by Nagaraju Kankanala on 15/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTxtField:UITextField!
    @IBOutlet weak var passwordField:UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTxtField.accessibilityIdentifier = "userName"
        passwordField.accessibilityIdentifier = "Password"
    }
    
    @IBAction func LogininBtnClk(_ sender:UIButton) {
        if nameTxtField.text!.count > 0 && passwordField.text!.count > 0{
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let home = storyBoard.instantiateViewController(withIdentifier: "ProfileVC") as! ProfileVC
            navigationController?.pushViewController(home, animated: true);
        } else{
            showLoginSuccessAlert(title:"Failed To Login", message:"User name and Password cannot be nil")
        }
    }

    func showLoginSuccessAlert(title:String, message:String) {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            print("User acknowledged login success")
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func forgotPassWordBtnClk(_ sender:UIButton) {
        print("this resplved Stagging")
    }
}

 
