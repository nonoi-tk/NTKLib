//
//  NTKSecureTextField.swift
//  NTKLib
//
//  Created by Takuro KAKOI on 2019/04/01.
//  Copyright © 2019年 nonoi. All rights reserved.
//

import Cocoa

@IBDesignable public class NTKSecureTextField: NSSecureTextField, NSTextFieldDelegate {
    
    public override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        
        self.delegate = self
        self.target = #selector(self.controlTextDidEndEditing(_:)) as AnyObject
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public override func becomeFirstResponder() -> Bool{
        let rtn = super.becomeFirstResponder()
        NSLog("becomeFirstResponder %d",rtn);
        self.backgroundColor = NSColor(red: 0xFF/255, green: 0xFF/255, blue: 0xC1/255, alpha: 0xFF)
        
        return rtn
    }
    
    public func controlTextDidEndEditing(_ obj: Notification) {
        NSLog("controlTextDidEndEditing");
        self.backgroundColor = NSColor.clear
        
    }
    
}
