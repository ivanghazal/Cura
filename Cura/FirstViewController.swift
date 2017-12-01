//
//  FirstViewController.swift
//  Cura
//
//  Created by Ivan Ghazal on 11/30/17.
//  Copyright © 2017 Ivan Ghazal. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let origImage = UIImage(named: "arrow_right") {
        let tintedImage = origImage.withRenderingMode(.alwaysTemplate)
            nextButton.setImage(tintedImage, for: .normal)
            nextButton.tintColor = .white
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

