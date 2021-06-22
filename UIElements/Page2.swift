//
//  Page2.swift
//  UIElements
//
//  Created by DCS on 19/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Page2: UIViewController {
    
    private let myLabelBookNow:UILabel = {
        let labelBook = UILabel()
        labelBook.text = "Book Now....!"
        labelBook.textColor = UIColor.red
        //labelBook.font = UIFont.boldSystemFont(ofSize: 40)
        return labelBook
    }()
    
    private let myTextViewName:UITextView = {
        let textViewName = UITextView()
        textViewName.text = "Enter Your Name"
        textViewName.font = UIFont.systemFont(ofSize: 20)
        textViewName.textAlignment = .center
        textViewName.backgroundColor = UIColor.gray
        textViewName.layer.cornerRadius = 20
        return textViewName
    }()
    
    private let myTextFieldEmail:UITextField = {
        let textFieldEmail = UITextField()
        textFieldEmail.placeholder = "Enter Email..."
        textFieldEmail.textAlignment = .center
        textFieldEmail.borderStyle = .roundedRect
        textFieldEmail.backgroundColor = .gray
        return textFieldEmail
    }()
    
    private let myLabelTotal:UILabel = {
        let labelTotal = UILabel()
        labelTotal .text = "Total Person:"
        labelTotal .textColor = UIColor.black
        labelTotal .font = UIFont.boldSystemFont(ofSize: 20)
        return labelTotal
    }()
    
    private let myStepper:UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.addTarget(self, action: #selector(handleStepper), for: .valueChanged)
        return stepper
    }()
    
    private let myLabelFlight:UILabel = {
        let labelFlight = UILabel()
        labelFlight.text = "Booking Date.."
        labelFlight.textAlignment = .center
        //labelFlight.backgroundColor = .UIColor.black
        return labelFlight
    }()
    
    private let myDatePicker:UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.backgroundColor = #colorLiteral(red: 0.9637209141, green: 0.9637209141, blue: 0.9637209141, alpha: 1)
        datePicker.timeZone = TimeZone(secondsFromGMT: 0)
        return datePicker
    }()
    
    
    
    private let mySegmentedControl:UISegmentedControl = {
        let segControl = UISegmentedControl()
        segControl.insertSegment(withTitle: "Male", at: 0, animated: true)
        segControl.insertSegment(withTitle: "Female", at: 1, animated: true)
        segControl.selectedSegmentIndex = 0
        segControl.addTarget(self, action: #selector(handleSegmentedControl), for: .valueChanged)
        return segControl
    }()
    
    private let myPageControl:UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 3
        //pageControl.backgroundStyle = .prominent
        pageControl.addTarget(self, action: #selector(handlePageControl), for: .valueChanged)
        return pageControl
    }()
    
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
        view.backgroundColor = UIColor.white
        
        view.addSubview(myLabelBookNow)
        view.addSubview(myTextViewName)
        view.addSubview(myTextFieldEmail)
        view.addSubview(myLabelTotal)
        view.addSubview(myStepper)
        view.addSubview(myLabelFlight)
        view.addSubview(myDatePicker)
        view.addSubview(mySegmentedControl)
        view.addSubview(myPageControl)
        view.addSubview(myButton)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myLabelBookNow.frame = CGRect(x: 60, y: 60, width: view.width - 40, height: 50)
        myTextViewName.frame = CGRect(x: 20, y: myLabelBookNow.bottom + 20, width: view.width - 40, height: 40)
        myTextFieldEmail.frame = CGRect(x: 20, y: myTextViewName.bottom + 20, width: view.width - 40, height: 40)
        myLabelTotal.frame = CGRect(x: 20, y: myTextFieldEmail.bottom + 20, width: view.width - 40, height: 40)
        myStepper.frame = CGRect(x: 20, y: myLabelTotal.bottom + 20, width: view.width - 40, height: 40)
        myLabelFlight.frame = CGRect(x: 20, y: myStepper.bottom + 20, width: view.width - 40, height: 40)
        myDatePicker.frame = CGRect(x: 20, y: myLabelFlight.bottom + 20, width: view.width - 40, height: 40)
        mySegmentedControl.frame = CGRect(x: 20, y: myDatePicker.bottom + 20, width: view.width - 40, height: 40)
        myPageControl.frame = CGRect(x: 20, y: mySegmentedControl.bottom + 20, width: view.width - 40, height: 40)
        myButton.frame = CGRect(x: 20, y: myPageControl.bottom + 20, width: view.width - 40, height: 40)
    }

    
    
    @objc func handleStepper() {
        print(myStepper.value)
    }
    
    @objc func handleSegmentedControl() {
        print(mySegmentedControl.selectedSegmentIndex)
    }
    
    @objc func handlePageControl() {
        print(myPageControl.currentPage)
    }
    
    @objc func handleButtonClick() {
        let vc = Page3()
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.143452806, green: 0.1553194879, blue: 0.1725588291, alpha: 1)
    }
}

