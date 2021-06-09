//
//  ViewController.swift
//  DelegateExample
//
//  Created by Michel Bernardo on 07/06/21.
//

import UIKit

//MARK: 5th Step - Create a struct to conform the transfered object format


class FirstViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var techLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navigation = segue.destination as? UINavigationController,
           let secondViewController = navigation.topViewController as? SecondViewController {
            //secondViewController.delegate = self
        }
    }
    
    //MARK: 6th Step - Create a function to update the Labels using the transfered object

}

