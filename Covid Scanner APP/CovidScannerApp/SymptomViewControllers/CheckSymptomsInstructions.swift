//
//  File.swift
//  CovidScanner4.0Try3
//
//  Created by Ananth Kashyap on 8/17/20.
//  Copyright © 2020 Ananth Kashyap. All rights reserved.
//

import UIKit

class CheckSymptomsInstructions : UIViewController {
    
    func buttonProportionateFonts(button: UIButton, divider1: CGFloat, divider2: CGFloat) {
        if (self.view.traitCollection.horizontalSizeClass == .compact && self.view.traitCollection.verticalSizeClass == .regular) {
            button.titleLabel?.font = button.titleLabel?.font.withSize(button.bounds.size.height/divider1)
        } else {
            button.titleLabel?.font = button.titleLabel?.font.withSize(button.bounds.size.height/divider1)
        }
    }
    
    func labelProportionateFonts(label: UILabel, divider1: CGFloat, divider2: CGFloat) {
        if (self.view.traitCollection.horizontalSizeClass == .compact && self.view.traitCollection.verticalSizeClass == .regular) {
            label.font = label.font.withSize(label.bounds.size.height/divider1)
        } else {
            label.font = label.font.withSize(label.bounds.size.height/divider2)
        }
    }
    
    @IBOutlet var Instructions: UIView!
    @IBOutlet var dataHandlingButton: UIButton!
    @IBOutlet weak var backToHomeButton: UIButton!
    @IBOutlet weak var Instructions2: UILabel!
    @IBOutlet var continueButton1: UIButton!
    @IBOutlet var Instruction1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Instructions.backgroundColor = UIColor(red: 15/255.0, green: 43/255.0, blue: 59/255.0, alpha: 1)
         
         continueButton1.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
                      
         if (self.view.traitCollection.horizontalSizeClass == .compact && self.view.traitCollection.verticalSizeClass == .regular) {
                continueButton1.layer.cornerRadius = 15
                           //AgeOptionButton1.layer.cornerRadius = (AgeOptionButton1.bounds.size.height)/3
               }
                      
               if (self.view.traitCollection.horizontalSizeClass == .regular && self.view.traitCollection.verticalSizeClass == .regular) {
                          continueButton1.layer.cornerRadius = 30
                           //AgeOptionButton1.layer.cornerRadius = (AgeOptionButton1.bounds.size.height)/2
        }
    }
}
        

