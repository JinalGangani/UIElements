//
//  ViewController.swift
//  UIElements
//
//  Created by DCS on 17/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    

    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "Welcome to the tourist World"
        label.textAlignment = .center
        label.backgroundColor = .yellow
        return label
    }()
    
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "dest3")
        return imageView
    }()
    
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("BOOK NOW", for: .normal)
        button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 6
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myLabel)
        view.addSubview(myImageView)
        view.addSubview(myButton)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel.frame = CGRect(x: 20, y: 80, width: view.width - 40, height: 40)
        myImageView.frame = CGRect(x: 10, y: myLabel.bottom + 50, width: 400, height: 350)
        myButton.frame = CGRect(x: 20, y: myImageView.bottom + 20, width: view.width - 40, height: 40)
        
    }
    
    @objc func handleButtonClick() {
        print("Clicked!")
        
        let vc = Page2()
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

