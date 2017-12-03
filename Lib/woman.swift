//
//  woman.swift
//  Cura
//
//  Created by Ivan Ghazal on 12/1/17.
//  Copyright © 2017 Ivan Ghazal. All rights reserved.
//

import UIKit
//@IBDesignable
class womanFront: UIView {
    override func draw(_ rect: CGRect) {
        StyleKit.drawFront(frame: self.bounds, resizing: .aspectFit)
        
    }
}


//@IBDesignable
class womanBack: UIView {
    override func draw(_ rect: CGRect) {
        StyleKit.drawBack(frame: self.bounds, resizing: .aspectFit)
        
    }
}
    
    class womanHead: UIView {
        override func draw(_ rect: CGRect) {
            StyleKit.drawHead(frame: self.bounds, resizing: .aspectFit)
            
        }
}
    

