//
//  Page4.swift
//  UIElements
//
//  Created by DCS on 22/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Page4: UIViewController {

    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "Turn On Your Notifications"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    
    private let mySwitch:UISwitch = {
        let switcher = UISwitch()
        return switcher
    }()
    
    private let myLabelRate:UILabel = {
        let labelRate = UILabel()
        labelRate.text = "Rate US..."
        labelRate.textColor = UIColor.white
        labelRate.font = UIFont.boldSystemFont(ofSize: 30)
        return labelRate
    }()
    
    private let mySlider:UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.addTarget(self, action: #selector(handlerRateUs), for: .valueChanged)
        return slider
    }()
    
    private let myRateTextView:UITextView = {
        let textView = UITextView()
        textView.font = UIFont.systemFont(ofSize: 20)
        textView.textAlignment = .center
        textView.backgroundColor = #colorLiteral(red: 0.9637209141, green: 0.9637209141, blue: 0.9637209141, alpha: 1)
        textView.layer.cornerRadius = 20
        return textView
    }()
    
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("NEXT..", for: .normal)
        button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        button.layer.cornerRadius = 20
        return button
    }()
    

    @objc func handlerRateUs() {
        let rate = Int(mySlider.value)
        myRateTextView.text = String(rate)
    }
    @objc func handleButtonClick() {
        let vc = Page5()
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tour & Travles"
        view.addSubview(myLabel)
        view.addSubview(mySwitch)
        view.addSubview(myLabelRate)
        view.addSubview(mySlider)
        view.addSubview(myRateTextView)
        view.addSubview(myButton)
        
    }
    
    
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myLabel.frame = CGRect(x: 30, y: 200, width: view.width - 40, height: 40)
        mySwitch.frame = CGRect(x: 50, y: myLabel.bottom + 20, width: view.width - 160, height: 40)
        myLabelRate.frame = CGRect(x: 30, y: mySwitch.bottom + 20, width: view.width - 160, height: 40)
        mySlider.frame = CGRect(x: 20, y: myLabelRate.bottom + 20, width: view.width - 40, height: 40)
        myRateTextView.frame = CGRect(x: 20, y: mySlider.bottom + 40, width: view.width - 40, height: 40)
        myButton.frame = CGRect(x: 20, y: myRateTextView.bottom + 40, width: view.width - 40, height: 60)
    }

}
