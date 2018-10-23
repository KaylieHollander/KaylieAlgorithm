//
//  ViewController.swift
//  KaylieAlgorithm
//
//  Created by Hollander, Kaylie on 10/23/18.
//  Copyright © 2018 Hollander, Kaylie. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController {

    @IBOutlet weak var Name: UILabel!
    
    @IBOutlet weak var Image: UIImageView!
    
    
    
   public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        formatAlgorithm()
    }

    private func formatAlgorithm() -> Void
        
    {
        let title : String = " How to start a Swift Project in XCode"
        
        
        let stepOne : String = " First open Xcode and select new project. Then click on single view and hit next. Then unclick the Unit test and UI Test and click create."
        
        let stepTwo : String = " Second you have to create folders in which the files go into. AppDelegate.Swift, Assets.xcassets, and Info.plist all go into a folder named Resource. The ViewController.swift goes into a folder named Controller. Main.storyboard and LaunchScreen goes into a folder named View."
        
        let stepThree : String = " Lastly click on the project on the top left of the screen and then underneath identity click on choose info.plist and tell the app where the file is inside the folders."
        
        let algorithm = [stepOne, stepTwo, stepThree]
        
        let attributesDictionary = [NSAttributedStringKey.font : Name.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
    
        for step in algorithm
        {
           let bullet : String = "🦕"
           let formattedStep : String = "\n\(bullet) \(step)"
           let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
           let outlineStyle = createOutlineStyle()
            
           attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            
           fullAttributedString.append(attributedStringStep)
        }
        
        Name.attributedText = fullAttributedString
        
        
        
        
    }
    
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }

    


}

