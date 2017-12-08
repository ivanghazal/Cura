//
//  ChoosenSemptomsViewController.swift
//  Cura
//
//  Created by Ivan Ghazal on 12/7/17.
//  Copyright © 2017 Ivan Ghazal. All rights reserved.
//

import UIKit

class ChoosenSemptomsViewController: UIViewController  , UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var showResultButton: buttonShadow!
    @IBOutlet weak var buttonArrow: UIImageView!
    
    @IBOutlet weak var mySymptomsTableView: UITableView!
    
    
    var sections = ["Head","Neck"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Show topmenu and footer
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.tabBarController?.tabBar.isHidden = false
        self.navigationController?.navigationBar.topItem?.title = " "
        
        self.navigationItem.rightBarButtonItem?.image? = (UIImage(named: "user")?.withRenderingMode(.alwaysOriginal))!
        self.navigationItem.leftBarButtonItem?.image? = (UIImage(named: "menu")?.withRenderingMode(.alwaysOriginal))!
        
        buttonArrow.tintColor = .white
        
        
        // mySymptomsTableView
        mySymptomsTableView.delegate = self
        mySymptomsTableView.dataSource = self
        
        mySymptomsTableView.backgroundView?.backgroundColor = .clear
        mySymptomsTableView.backgroundColor = .clear
        
        mySymptomsTableView.sectionFooterHeight = 40
        //tableView.sectionHeaderHeight = 120
        
        
        
        mySymptomsTableView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.08).cgColor
        mySymptomsTableView.layer.shadowOpacity = 1
        mySymptomsTableView.layer.shadowOffset = CGSize(width: 2, height: 0)
        mySymptomsTableView.layer.shadowRadius = 2

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mySymptomsTableView.dequeueReusableCell(withIdentifier: "cellMySymptoms" , for :indexPath) as! ChoosenSemptomsCell
        
        
        cell.nameLabel.text = "this is line number \(indexPath.row)"
        if indexPath.row == 2{
            cell.lineImageView.isHidden = true
        }
        
        
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    
    // change section background color
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // Bundle the footer with XIB
        let headerCell = Bundle.main.loadNibNamed("TableCellTop", owner: self, options: nil)?.first as! TableCellTop
        headerCell.labelName.text = "This header :)"
        return headerCell
    }
    
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        // Bundle the footer with XIB
        let footerCell = Bundle.main.loadNibNamed("TableCellBottom", owner: self, options: nil)?.first as! TableCellBottom
        
        return footerCell
    }
    
    

}
