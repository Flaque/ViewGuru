//
//  ViewGuru.swift
//  ProjectWaitTime
//
//  Created by Evan Conrad on 11/20/15.
//  Copyright © 2015 Evan Conrad. All rights reserved.
//

import UIKit


/* A Collection of functions for easy manipulation of views
 *
 */
class ViewGuru {
    
    
    /* Puts in the center of the parent
     *
     */
    static func centerViewCompletelyWithinParent(child: UIView, parent: UIView) {
        centerViewHorizontallyWithinParent(child, parent: parent)
        centerViewVerticallyWithinParent(child, parent: parent)
    }
    
    /* Puts in the horizontal center of the parent. Keeps y value.
    *
    */
    static func centerViewHorizontallyWithinParent(child : UIView, parent : UIView) {
        setViewX(child, x: parent.frame.width/2-child.frame.width*2)
    }
    
    /* Puts in the vertical center of the parent. Keeps x value.
    *
    */
    static func centerViewVerticallyWithinParent(child: UIView, parent: UIView) {
        setViewY(child, y: parent.frame.height/2-child.frame.height*2)
    }
    
    /* shortcut for setting x value of a view
    *
    */
    static func setViewX(view : UIView, x : CGFloat) {
        var frame : CGRect = view.frame
        frame.origin.x = x
        view.frame = frame
    }
    
    /* shortcut for setting y value of a view
    *
    */
    static func setViewY(view : UIView, y : CGFloat) {
        var frame : CGRect = view.frame
        frame.origin.y = y
        view.frame = frame
    }
    
    /* shortcut for setting the width of a view
    *
    */
    static func setViewWidth(view : UIView, width : CGFloat) {
        let frame = CGRect(x: view.frame.origin.x, y: view.frame.origin.y,
            width: width, height: view.frame.height)
        
        view.frame = frame
    }
    
    /* shortcut for setting the height of a view
    *
    */
    static func setViewHeight(view : UIView, height : CGFloat) {
        let frame = CGRect(x: view.frame.origin.x, y: view.frame.origin.y,
            width: view.frame.height, height: height)
        
        view.frame = frame
    }
    
    /* Gives the font a black outline to make it more readible on photos
     *
     */
    static func setUILabelStringPhotoReadible(label: UILabel) {
        let strokeTextAttributes = [
            NSStrokeColorAttributeName : UIColor.blackColor(),
            NSForegroundColorAttributeName : UIColor.whiteColor(),
            NSStrokeWidthAttributeName : -2.0,
        ]
        
        label.attributedText = NSAttributedString(string: label.text!, attributes: strokeTextAttributes)
    }

}