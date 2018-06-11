//
//  EditProfileViewController.swift
//  StaffMen
//
//  Created by la rosa francesco  on 01/06/18.
//  Copyright © 2018 Andrex. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {

    let picker = UIDatePicker()
    
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var PhoneTextField: UITextField!
    
    var userProfile: Login.UserProfile!
    
    @IBOutlet weak var dateField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDatePicker()
        
        nameLabel.text = userProfile.name
        emailTextField.text = userProfile.email
        PhoneTextField.text = userProfile.phoneNumber
    }
    
    @IBAction func didSaveButton(_ sender: Any) {
        // fare il salvataggio
        //invoco l'url con parametri token e salvataggi,
        
        dismiss(animated: true, completion: nil)
    }
    
    func createDatePicker() {
        // toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        // done button for toolbar
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([done], animated: false)
        
        dateField.inputAccessoryView = toolbar
        dateField.inputView = picker
        
        // format picker for date
        picker.datePickerMode = .date
    }
    @objc func donePressed() {
        // format date
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        let dateString = formatter.string(from: picker.date)
        
        dateField.text = "\(dateString)"
        self.view.endEditing(true)
    }
    

    
}
