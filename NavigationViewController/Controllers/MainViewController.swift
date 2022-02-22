//
//  MainViewController.swift
//  NavigationViewController
//
//  Created by Kwon Young Jeong on 2022/02/22.
//

import UIKit

class MainViewController: UIViewController {
	
	// title
	var titleLabel: UILabel = {
		let label = UILabel()
		label.text = "메인화면"
		label.textAlignment = .center
		label.font = UIFont.boldSystemFont(ofSize: 50)
		label.textColor = UIColor.white
		return label
	}()
	
	let changeBtn: UIButton = {
		let btn = UIButton(type: .system)
		btn.setTitle("배경색 바꾸기", for: .normal)
		btn.setTitleColor(.black, for: .normal)
		btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
		btn.backgroundColor = UIColor.white
		btn.layer.cornerRadius = 5
		btn.contentEdgeInsets = UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20)
		btn.addTarget(self, action: #selector(changeBg), for: .touchUpInside)
		return btn
	}()
	
	var isBgOrange: Bool?
	
	
	// when view is loaded
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = .orange
		view.addSubview(titleLabel)
		
		titleLabel.translatesAutoresizingMaskIntoConstraints = false
		titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		
		
		view.addSubview(changeBtn)
		
		changeBtn.translatesAutoresizingMaskIntoConstraints = false
		changeBtn.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
		changeBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
	}
	
	// change background color
	@objc fileprivate func changeBg(){
		
		if isBgOrange == true {
			// 주황색이면 노란색으로 바꿈
			view.backgroundColor = .yellow
			isBgOrange = false
		} else {
			// 주황색이 아니면(노란색) 주황색으로 바꿈
			view.backgroundColor = .orange
			isBgOrange = true
		}
		
		print("MainViewController - changeBg() called / isBgOrange : \(String(describing: isBgOrange))")
		
	}
	
}
