//
//  KeyboardViewController.swift
//  KeyboardViewExample
//
//  Created by Владислав Костромин on 21.12.2022.
//

import UIKit

class KeyboardViewController: UIViewController {
    
    let textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter name"
        textField.backgroundColor = .secondarySystemBackground
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textField)
    
    let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
    
    let flexbleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                       target: self,
                                       action: nil)
    let doneButtton = UIBarButtonItem(title: "Done", style: .done, target: self,
                                      action: #selector(didTapDone))
        toolBar.items = [flexbleSpace, doneButtton]
        toolBar.sizeToFit()
        textField.inputAccessoryView = toolBar

}
    
    @objc private func didTapDone() {
        textField.resignFirstResponder()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        textField.frame = CGRect(x: 20,
                                 y: 30 + view.safeAreaInsets.top,
                                 width: view.frame.size.width-40, height: 50)
    }

}



