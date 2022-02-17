//
//  RegisterViewController.swift
//  NavigationViewController
//
//  Created by Kwon Young Jeong on 2022/02/17.
//

import UIKit

class RegisterViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var btnForLoginViewController: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.isNavigationBarHidden = true
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func onLoginViewControllerBtnClicked(_ sender: UIButton) {
        
        // Pop NavigationiViewController
        self.navigationController?.popViewController(animated: true)
    }
    
}
