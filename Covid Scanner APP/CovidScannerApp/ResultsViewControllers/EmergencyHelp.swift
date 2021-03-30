//
//  EmergencyHelp.swift
//  CovidScanner4.0Try3
//
//  Created by Ananth Kashyap on 9/8/20.
//  Copyright © 2020 Ananth Kashyap. All rights reserved.
//

import UIKit

class EmergencyHelp : UIViewController {
    
    fileprivate let application = UIApplication.shared
    
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
    
    var AgeRiskScore : Int?
    @IBOutlet weak var HelpStackView: UIStackView!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet var EmergencyHelp: UIView!
    
    @IBOutlet weak var Decription: UILabel!
    

    @IBAction func PressEmergencyRoom(_ sender: Any) {
        let targetURL = URL(string: "http://maps.apple.com/?q=Emergency+Rooms")!
        let isAvailable = UIApplication.shared.canOpenURL(targetURL)
        if (isAvailable == true) {
            UIApplication.shared.open(targetURL)
        }
    }
    @IBAction func Call911noq(_ sender: UIButton) {
        if let phoneURL = URL(string: "tel://911"){
            if application.canOpenURL(phoneURL){
                application.open(phoneURL, options: [:], completionHandler: nil)
            } else {
                //alert
            }
        }
        
    }
    @IBOutlet weak var StackViewView: UIView!
    @IBOutlet var FeatureButtons: [UIButton]!
    @IBOutlet weak var CallView: UIView!
    @IBOutlet weak var MapView: UIView!
    
    func setShadow(label: UILabel) {
        label.layer.borderWidth = 2.0
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.cornerRadius = 10
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        StackViewView.layer.cornerRadius = 10
        StackViewView.layer.shadowColor = UIColor.black.cgColor
        StackViewView.layer.shadowOffset = CGSize(width: 5, height: 5)
        StackViewView.layer.shadowRadius = 2
        StackViewView.layer.shadowOpacity = 0.5
        EmergencyHelp.backgroundColor = UIColor(red: 15/255.0, green: 43/255.0, blue: 59/255.0, alpha: 1)
        
        
        let Features = [MapView, CallView]
        func setBorderRadiusForIphone(view: UIView) {
             if (EmergencyHelp.traitCollection.horizontalSizeClass == .compact && EmergencyHelp.traitCollection.verticalSizeClass == .regular ) {
                view.layer.cornerRadius = 10
             }
        }
        
        func setBorderRadiusForIpad(view: UIView) {
              if (EmergencyHelp.traitCollection.horizontalSizeClass == .regular && EmergencyHelp.traitCollection.verticalSizeClass == .regular ) {
                   view.layer.cornerRadius = 10
              }
        }
                      
        func setBackgroundColor(view: UIView) {
            view.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
        }
        
        
        for button in FeatureButtons {
            button.titleLabel?.numberOfLines = 0
        }
            
            
            for button in Features {
               setBackgroundColor(view: button!)
               setBorderRadiusForIphone(view: button!)
                setBorderRadiusForIpad(view: button!)
                
            }
            
        
        setShadow(label: TitleLabel)
        
    }
    
}
