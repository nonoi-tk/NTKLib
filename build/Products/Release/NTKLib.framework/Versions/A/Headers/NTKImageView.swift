//
//  NTLImageView2.swift
//  NTKLib
//
//  Created by Takuro KAKOI on 2019/03/31.
//  Copyright © 2019年 nonoi. All rights reserved.
//

import Cocoa

///NTLImageView
@IBDesignable public class NTKImageView: NSImageView {
    var _mainWindow: NSWindow!

    func theApplication(mainWindow : NSWindow)
    {
        _mainWindow = mainWindow
    }
    override public func mouseMoved(with event: NSEvent) {
        _mainWindow.mouseMoved(with: event)
    }
    override public func mouseDragged(with event: NSEvent)
    {
    }
    ////////////////////////////////////////////////////////////////////////////////////
    //サブクラス（コントロール）をDraggしてWindowを動かす方法
    //1. サブクラスのカスタムNSViewクラスを作成し、mouseDownCanMoveWindowをオーバーライドしてtrueを返す.
    //2. メインウィンドウのカスタムNSWindowを作成し、isMovableByWindowBackgroundをオーバーライドしてtrueを返す.
    override public var mouseDownCanMoveWindow: Bool {
        return true
    }
}
