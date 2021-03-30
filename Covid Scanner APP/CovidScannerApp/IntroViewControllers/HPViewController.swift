//
//  ViewController.swift
//  CovidScanner4.0Try3
//
//  Created by Ananth Kashyap on 8/15/20.
//  Copyright © 2020 Ananth Kashyap. All rights reserved.
//

import UIKit

class HPViewController: UIViewController {

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
    
    @IBAction func PressTestingLocation(_ sender: Any) {
        let targetURL = URL(string: "http://maps.apple.com/?q=COVID-19+Testing")!
        let isAvailable = UIApplication.shared.canOpenURL(targetURL)
        if (isAvailable == true) {
            UIApplication.shared.open(targetURL)
        }
    }
    
    @IBOutlet var fullHP: UIView!
    @IBOutlet weak var checkSymptomsButton: UIButton!
    @IBOutlet weak var descriptionHP: UILabel!
    @IBOutlet weak var TestingLocations: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        checkSymptomsButton.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
        TestingLocations.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
        fullHP.backgroundColor = UIColor(red: 15/255.0, green: 43/255.0, blue: 59/255.0, alpha: 1)
        
        
        if (self.view.traitCollection.horizontalSizeClass == .compact && self.view.traitCollection.verticalSizeClass == .regular) {
            checkSymptomsButton.layer.cornerRadius = 15
            TestingLocations.layer.cornerRadius = 15
            
        }
        
        if (self.view.traitCollection.horizontalSizeClass == .regular && self.view.traitCollection.verticalSizeClass == .regular) {
            checkSymptomsButton.layer.cornerRadius = 30
            TestingLocations.layer.cornerRadius = 30
            
        }
        
        
    }


}

