//
//  Page3.swift
//  UIElements
//
//  Created by DCS on 19/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Page3: UIViewController {

    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "dest1")
        return imageView
    }()
    
    private let myLabelDestination:UILabel = {
        let labelDestination = UILabel()
        labelDestination.text = "Choose Your Destination"
        labelDestination.textColor = UIColor.red
        //labelDestination.font = UIFont.boldSystemFont(ofSize: 40)
        return labelDestination
    }()
    
    private let myPickerView = UIPickerView()
    private let pickerData = ["Singpore", "London", "Hongkong"]
    
   
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("NEXT..", for: .normal)
        button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        button.layer.cornerRadius = 10
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        view.addSubview(myImageView)
        view.addSubview(myLabelDestination)
        view.addSubview(myPickerView)
        view.addSubview(myButton)
        
        myPickerView.dataSource = self
        myPickerView.delegate = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myImageView.frame = CGRect(x: 10, y: 50, width: 400, height: 250)
        myLabelDestination.frame = CGRect(x: 30, y: myImageView.bottom + 30, width: view.width - 40, height: 40)
        myPickerView.frame = CGRect(x: 20, y: myLabelDestination.bottom + 20, width: view.width - 40, height: 80)
        myButton.frame = CGRect(x: 20, y: myPickerView.bottom + 20, width: view.width - 40, height: 80)
    }
    
    @objc func handleButtonClick() {
        let vc = Page4()
        navigationController?.pushViewController(vc, animated: true)
        //navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.143452806, green: 0.1553194879, blue: 0.1725588291, alpha: 1)
    }
    
}


extension Page3: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        return print(pickerData[row])
    }
}

   


