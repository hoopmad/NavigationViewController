//
//  ViewController.swift
//  NavigationViewController
//
//  Created by Kwon Young Jeong on 2022/02/17.
//

import UIKit

class LoginViewController: UIViewController {
	
	@IBOutlet weak var loginBtn: UIButton!
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        // 상단 네비게이션 바 숨김처리
        self.navigationController?.isNavigationBarHidden = true
        
		loginBtn.addTarget(self, action: #selector(moveToMainViewController), for: .touchUpInside)
		
    }
	
	// move to MainView
	@objc fileprivate func moveToMainViewController(){
		print("LoginViewController - moveToMainViewController() called")
		
		let mainViewController = MainViewController()
		self.navigationController?.pushViewController(mainViewController, animated: true)
	}
	
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


}

