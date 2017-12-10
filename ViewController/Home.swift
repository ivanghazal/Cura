//
//  FirstViewController.swift
//  Cura
//
//  Created by Ivan Ghazal on 11/30/17.
//  Copyright © 2017 Ivan Ghazal. All rights reserved.
//

import UIKit

// hide keyboard
extension UIViewController {
    func hideKeyboardOnTap(_ selector: Selector) {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: selector)
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
}




class Home: UIViewController {

    @IBOutlet weak var genderTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var checkBox: CheckBoxSwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        changeColorImageInButton(button: nextButton, imageName: "arrow_right", color: .white)
        
        self.navigationItem.rightBarButtonItem?.image? = (UIImage(named: "user")?.withRenderingMode(.alwaysOriginal))!
        self.navigationItem.leftBarButtonItem?.image? = (UIImage(named: "menu")?.withRenderingMode(.alwaysOriginal))!
        
            //disable next button
        nextButton.isEnabled = false
        nextButton.alpha = 0.3
        
        // hide keyboard
        self.hideKeyboardOnTap(#selector(self.dismissKeyboard))
    }

    // hide keyboard
    @objc func dismissKeyboard() {
        view.endEditing(true)
        // do aditional stuff
    }

    
    @IBAction func checkBoxCliked(_ sender: CheckBoxSwitch) {
        

        if  checkBox.isChecked == true {
            nextButton.alpha = 0.3
            nextButton.isEnabled = false
            print("UnChecked")
            
        }else if checkBox.isChecked == false{

            nextButton.alpha = 1
            nextButton.isEnabled = true
            print("Checked")
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

