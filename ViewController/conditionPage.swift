//
//  conditionPage.swift
//  Cura
//
//  Created by Ivan Ghazal on 12/12/17.
//  Copyright © 2017 Ivan Ghazal. All rights reserved.
//

import UIKit

class conditionPage: UIViewController {

    
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    
    
    @IBOutlet weak var backButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        shareButton.layer.cornerRadius = 5
        shareButton.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        saveButton.layer.cornerRadius = 5
        saveButton.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
    
    }

   
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func backButtonClicked(_ sender: UIBarButtonItem) {
        self.navigationController!.popViewController(animated: true)
            
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
