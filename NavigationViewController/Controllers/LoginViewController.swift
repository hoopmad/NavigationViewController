//
//  ViewController.swift
//  NavigationViewController
//
//  Created by Kwon Young Jeong on 2022/02/17.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        // 상단 네비게이션 바 숨김처리
        self.navigationController?.isNavigationBarHidden = true
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


}

