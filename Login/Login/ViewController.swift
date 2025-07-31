//
//  ViewController.swift
//  Login
//
//  Created by Student on 30/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var ForgotPasswordTapped: UIButton!
    @IBOutlet weak var ForgotUserNameTapped: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender=sender as? UIButton else {return}
        if sender==ForgotPasswordTapped{
            segue.destination.title="Forgot Password"
        }
        else if sender==ForgotUserNameTapped{
            segue.destination.title="Forgot UserName"
        }
        else{
            segue.destination.title=Username.text
        }
    }

    @IBAction func ForgotUsername(_ sender: Any) {
        performSegue(withIdentifier: "Forgot", sender: sender)
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier:"Forgot", sender: sender)
    }
}

