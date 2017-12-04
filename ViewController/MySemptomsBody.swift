//
//  MySemptomsBody.swift
//  Cura
//
//  Created by Ivan Ghazal on 12/2/17.
//  Copyright © 2017 Ivan Ghazal. All rights reserved.
//

import UIKit

class MySemptomsBody: UIViewController {

    @IBOutlet weak var layoutBody1: UIView!
    @IBOutlet weak var layoutBody2: UIView!
    
    @IBOutlet weak var showBodyButton: UIButton!
    @IBOutlet weak var showListButton: UIButton!
    
    @IBOutlet weak var switchButton: UIButton!
    var bodyImageStatus = true
    
    @IBOutlet weak var headView: UIView!
    
    @IBOutlet weak var showHeadButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headView.isHidden = true
        
        switchButton.layer.zPosition = 10
        showHeadButton.layer.zPosition = 10
        headView.layer.zPosition = 9
    
        
        //fix button image color
        changeColorImageInButton(button: showBodyButton, imageName: "body", color: .white)
        let orangecolore = hexStringToUIColor(hex: "F77C12", alpha: 1.0)
        changeColorImageInButton(button: showListButton, imageName: "list", color: orangecolore)
        showBodyButton.layer.cornerRadius = 5
        showBodyButton.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        showListButton.layer.cornerRadius = 5
        showListButton.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        

        // build the body layers .
        buildBodyLayer(parentLayer: self.layoutBody1, wommanBodyStatus: true)
        buildBodyLayer(parentLayer: self.layoutBody2, wommanBodyStatus: false)
        
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    @IBAction func switchBodyClicked(_ sender: Any) {
       
        if bodyImageStatus == true {
            resetLayerBody()
            buildBodyLayer(parentLayer: self.layoutBody2, wommanBodyStatus: true)
            buildBodyLayer(parentLayer: self.layoutBody1, wommanBodyStatus: false)
            bodyImageStatus = false
        }else{
            resetLayerBody()
            buildBodyLayer(parentLayer: self.layoutBody1, wommanBodyStatus: true)
            buildBodyLayer(parentLayer: self.layoutBody2, wommanBodyStatus: false)
            bodyImageStatus = true
        }
        
    }
    
    @IBAction func bodyImageBackClicked(_ sender: UIButton) {

        headView.isHidden = true
        
    }
    
    @IBAction func showHead(_ sender: Any) {
        headView.isHidden = false
    }
    
    
    
    // functions
    // func to build new Boday design layer for the container layoutBody1,layoutBody2
    func buildBodyLayer(parentLayer : UIView , wommanBodyStatus : Bool){
    
        var newLayer : UIView?
        
        if wommanBodyStatus == true {
             newLayer = womanFront(frame: CGRect(x: 0, y: 0, width: parentLayer.frame.size.width, height: parentLayer.frame.size.height))
        }else{
             newLayer = womanBack(frame: CGRect(x: 0, y: 0, width: parentLayer.frame.size.width, height: parentLayer.frame.size.height))
            
        }
        

        parentLayer.addSubview(newLayer!)
        newLayer?.backgroundColor = UIColor.white
    
    }
    
    func resetLayerBody(){
        for v in layoutBody1.subviews{
            v.removeFromSuperview()
        }
        for v in layoutBody2.subviews{
            v.removeFromSuperview()
        }
    }
    
    
    
    
}
