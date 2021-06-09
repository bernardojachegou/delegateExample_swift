//
//  SecondViewController.swift
//  DelegateExample
//
//  Created by Michel Bernardo on 07/06/21.
//

import UIKit

//MARK: 1rd Step - Call the textfieldDelegate
class SecondViewController: UIViewController {
    
    @IBOutlet weak private var nameTextField: UITextField!
    @IBOutlet weak private var ageTextField: UITextField!
    @IBOutlet weak private var techTextField: UITextField!
    @IBOutlet weak private var saveButton: UIBarButtonItem!
    //MARK: 4th Step - Create a delegate var to handle the information transfer
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: 3nd Step - Call the function inside the viewDidLoad
        
        configureTapGesture()
    }
    
    //MARK: 2st Step - Create a function to handle the textfields delegate
    private func configureTextFields() {
        
    }
    
    //MARK: Functions created to dismiss the keyboard when pressing outside the textField
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(SecondViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
    @IBAction func tapOnSaveButton(_ sender: UIBarButtonItem) {
        //MARK: 7th Step - Create the vars to conform the struct format
        
        //MARK: 7.1th Step - Passing the values of the textFields as the struct params
        
        
        navigationController?.dismiss(animated: true, completion: {
            //MARK: 8th Step - Calling the updateLabels function to change the Values inside the first VC;
        })
    }
    
}

//MARK: Code used to move to the next textField when Tapping return in keyboard
extension SecondViewController {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case nameTextField:
            ageTextField.becomeFirstResponder()
        case ageTextField:
            techTextField.becomeFirstResponder()
        default:
            techTextField.resignFirstResponder()
        }
        return true
    }
}
