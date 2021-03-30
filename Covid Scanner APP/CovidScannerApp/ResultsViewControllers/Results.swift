//
//  Results.swift
//  CovidScanner4.0Try3
//
//  Created by Ananth Kashyap on 9/2/20.
//  Copyright © 2020 Ananth Kashyap. All rights reserved.
//

import UIKit
class Results : UIViewController {
    
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
    
    func labelFonts(label: UILabel) {
        if (self.view.traitCollection.horizontalSizeClass == .compact && self.view.traitCollection.verticalSizeClass == .regular) {
            label.font = label.font.withSize(17)
        } else {
            label.font = label.font.withSize(30)
        }
    }
    
    var RiskScore1 : Int!
    var RiskScore2 : Int!
    var AgeRiskScore :Int!
    var SymptomScore : Int!
    var isOn1 :Bool!
    var isOn2 :Bool!
    var isOn3 :Bool!
    var isOn4 :Bool!
    var PECisOn1 :Bool!
    var PECisOn2 :Bool!
    var PECisOn3 :Bool!
    var PECisOn4 :Bool!
    var PECisOn5 :Bool!
    var PECisOn6 :Bool!
    var PECisOn7 :Bool!
    var PECisOn8 :Bool!
    var PECisOn9 :Bool!
    var PECisOn10 :Bool!
    var PEC2isOn1 :Bool!
    var PEC2isOn2 :Bool!
    var PEC2isOn3 :Bool!
    var PEC2isOn4 :Bool!
    var PEC2isOn5 :Bool!
    var PEC2isOn6 :Bool!
    var PEC2isOn7 :Bool!
    var PEC2isOn8 :Bool!
    var PEC2isOn9 :Bool!
    var PEC2isOn10 :Bool!
    var SymptomisOn1 :Bool!
    var SymptomisOn2 :Bool!
    var SymptomisOn3 :Bool!
    var SymptomisOn4 :Bool!
    var SymptomisOn5 :Bool!
    var SymptomisOn6 :Bool!
    var SymptomisOn7 :Bool!
    var SymptomisOn8 :Bool!
    var SymptomisOn9 :Bool!
    var SymptomisOn10 :Bool!
    var SymptomisOn11 :Bool!
    var SymptomisOn12 :Bool!
    var SymptomisOn13 :Bool!
    var SymptomisOn14 :Bool!
    var SevisOn1 :Bool!
    var SevisOn2 :Bool!
    var SevisOn3 :Bool!
    var SevisOn4 :Bool!
    
    @IBOutlet weak var StackViewView: UIView!
    @IBOutlet weak var Testing: UIView!
    @IBOutlet weak var Risk: UIView!
    @IBOutlet weak var TestingLocationButton: UIView!
    @IBOutlet weak var SymptomsAndTestingDescription: UILabel!
    @IBOutlet weak var SymptomsAndTesting: UILabel!
    @IBOutlet weak var RiskDescription: UILabel!
    @IBOutlet weak var RiskOfSevereIllness: UILabel!
    @IBOutlet weak var ResultsStackView: UIStackView!
   
    @IBOutlet var Results: UIView!
    @IBOutlet weak var CheckAgain: UIButton!
    @IBOutlet var ResultsPage: UIView!
    @IBOutlet weak var WhatToDOo: UILabel!
    
    func setBorderRadiusForIphone(button: UIButton) {
               button.layer.cornerRadius = button.bounds.size.height/4.5
    }
    func setBorderRadiusForIpad(button: UIButton) {
               button.layer.cornerRadius = button.bounds.size.height/2
    }
                  
    func setBackgroundColor(button: UIButton) {
        button.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
    }
    
    func setBorderRadiusForIphone(view: UIView) {
               view.layer.cornerRadius = 15
    }
    func setBorderRadiusForIpad(view: UIView) {
               view.layer.cornerRadius = 30
    }
    
    func setBottomBorder(label: UILabel) {
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 0, height: 1)
        label.layer.shadowRadius = 0
        label.layer.shadowOpacity = 1
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "continue" {
            let vc = segue.destination as! Results3
            vc.AgeRiskScore = AgeRiskScore
            vc.RiskScore1 = RiskScore1
            vc.RiskScore2 = RiskScore2
            vc.SymptomScore = SymptomScore
            vc.SymptomisOn1 = SymptomisOn1
            vc.SymptomisOn2 = SymptomisOn2
            vc.SymptomisOn3 = SymptomisOn3
            vc.SymptomisOn4 = SymptomisOn4
            vc.SymptomisOn5 = SymptomisOn5
            vc.SymptomisOn6 = SymptomisOn6
            vc.SymptomisOn7 = SymptomisOn7
            vc.SymptomisOn8 = SymptomisOn8
            vc.SymptomisOn9 = SymptomisOn9
            vc.SymptomisOn10 = SymptomisOn10
            vc.SymptomisOn11 = SymptomisOn11
            vc.SymptomisOn12 = SymptomisOn12
            vc.SymptomisOn13 = SymptomisOn13
            vc.SymptomisOn14 = SymptomisOn14
            vc.PECisOn1 = PECisOn1
            vc.PECisOn2 = PECisOn2
            vc.PECisOn3 = PECisOn3
            vc.PECisOn4 = PECisOn4
            vc.PECisOn5 = PECisOn5
            vc.PECisOn6 = PECisOn6
            vc.PECisOn7 = PECisOn7
            vc.PECisOn8 = PECisOn8
            vc.PECisOn9 = PECisOn9
            vc.PECisOn10 = PECisOn10
            vc.PEC2isOn8 = PEC2isOn8
            vc.PEC2isOn1 = PEC2isOn1
            vc.PEC2isOn2 = PEC2isOn2
            vc.PEC2isOn3 = PEC2isOn3
            vc.PEC2isOn4 = PEC2isOn4
            vc.PEC2isOn5 = PEC2isOn5
            vc.PEC2isOn6 = PEC2isOn6
            vc.PEC2isOn7 = PEC2isOn7
            vc.PEC2isOn8 = PEC2isOn8
            vc.PEC2isOn9 = PEC2isOn9
            vc.PEC2isOn10 = PEC2isOn10
            vc.isOn1 = isOn1
            vc.isOn2 = isOn2
            vc.isOn3 = isOn3
            vc.isOn4 = isOn4
            vc.SevisOn1 = SevisOn1
            vc.SevisOn2 = SevisOn2
            vc.SevisOn3 = SevisOn3
            vc.SevisOn4 = SevisOn4
        }
    }
    
    
    @IBAction func PressContinue(_ sender: Any) {
        self.performSegue(withIdentifier: "continue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StackViewView.layer.cornerRadius = 10
        StackViewView.layer.shadowColor = UIColor.black.cgColor
        StackViewView.layer.shadowOffset = CGSize(width: 5, height: 5)
        StackViewView.layer.shadowRadius = 2
        StackViewView.layer.shadowOpacity = 0.5
        ResultsPage.backgroundColor = UIColor(red: 15/255.0, green: 43/255.0, blue: 59/255.0, alpha: 1)
        SymptomsAndTestingDescription.text = ""
        
        /*
        
        */
        
        
        RiskDescription.text = ""
        
        if (AgeRiskScore == 20) {
            
            if (RiskScore1 == 0) {
                
            
                    
                    RiskDescription.text?.append("• You are at a high risk for developing a severe illness if you contract COVID-19.")
                SymptomsAndTestingDescription.text?.append("• Because of your risk, you should attempt to limit contact with any other individuals. \n\n• If you are to go into a public place, maintain social distancing (6 ft) and always keep a mask on.")
                
                
            }
            
            if (RiskScore1 == 5) {
                
               
                    
                    RiskDescription.text?.append("• You are at a very high risk for developing a severe illness if you contract COVID-19.")
                SymptomsAndTestingDescription.text?.append("• Because of your risk, you should attempt to limit contact with any other individuals. \n\n• If you are to go into a public place, maintain social distancing (6 ft) and always keep a mask on.")
                
                
            }

            if (RiskScore1 >= 10) {
                
                    
                    RiskDescription.text?.append("• You are at a extremely high risk for developing a severe illness if you contract COVID-19.")
                SymptomsAndTestingDescription.text?.append("• Because of your risk, you should attempt to limit contact with any other individuals. \n\n• If you are to go into a public place, maintain social distancing (6 ft) and always keep a mask on.")

                
            }

        }
        
        if (AgeRiskScore == 10) {
            
            if (RiskScore1 == 0) {
                
                if (RiskScore2 == 0) {
                    
                    RiskDescription.text?.append("• You are not likely to be at risk for developing a severe illness if you contract COVID-19.")
                    SymptomsAndTestingDescription.text?.append("• If you are to go into a public place, maintain social distancing (6 ft) and always keep a mask on.")
                    
                }
                
                if (RiskScore2 >= 2) {
                    
                    RiskDescription.text?.append("• You may be at an increased risk for developing a severe illness if you contract COVID-19.")
                    SymptomsAndTestingDescription.text?.append("• If you are to go into a public place, maintain social distancing (6 ft) and always keep a mask on.")
                    
                }
                
                
            }
            
            if (RiskScore1 == 5) {
                
                if (RiskScore2 == 0) {
                    
                    RiskDescription.text?.append("• You are at a somewhat high risk for developing a severe illness if you contract COVID-19.")
                    SymptomsAndTestingDescription.text?.append("• Because of your risk, you should attempt to limit contact with any other individuals.\n\n• If you are to go into a public place, maintain social distancing (6 ft) and always keep a mask on.")
                    
                }
                
                if (RiskScore2 >= 2) {
                    
                    RiskDescription.text?.append("• You are at a high risk for developing a severe illness if you contract COVID-19.")
                    SymptomsAndTestingDescription.text?.append("• Because of your risk, you should attempt to limit contact with any other individuals.\n\n• If you are to go into a public place, maintain social distancing (6 ft) and always keep a mask on.")
                    
                }
                
            }

            if (RiskScore1 >= 10) {
                
                    
                    RiskDescription.text?.append("• You are at a high risk for developing a severe illness if you contract COVID-19.")
                SymptomsAndTestingDescription.text?.append("• Because of your risk, you should attempt to limit contact with any other individuals. \n\n• If you are to go into a public place, maintain social distancing (6 ft) and always keep a mask on.")
                    
                
            }

        }
        
        if (AgeRiskScore == 05) {
            
            if (RiskScore1 == 0) {
                
                if (RiskScore2 == 0) {
                    
                    RiskDescription.text?.append("• You are not likely to be at risk for developing a severe illness if you contract COVID-19.")
                    SymptomsAndTestingDescription.text?.append("• If you are to go into a public place, maintain social distancing (6 ft) and always keep a mask on.")
                    
                }
                
                if (RiskScore2 >= 2) {
                    
                    RiskDescription.text?.append("• You may be at an increased risk for developing a severe illness if you contract COVID-19.")
                    SymptomsAndTestingDescription.text?.append("• If you are to go into a public place, maintain social distancing (6 ft) and always keep a mask on.")
                    
                }
                
            }
            
            if (RiskScore1 == 5) {
        
                    
                    RiskDescription.text?.append("• You are at an increased risk for developing a severe illness if you contract COVID-19.")
                SymptomsAndTestingDescription.text?.append("• If you are to go into a public place, maintain social distancing (6 ft) and always keep a mask on.")
        
                
            }

            if (RiskScore1 >= 10) {
                
                RiskDescription.text?.append("• You are at a high risk for developing a severe illness if you contract COVID-19.")
                SymptomsAndTestingDescription.text?.append("• Because of your risk, you should attempt to limit contact with any other individuals. \n\n• If you are to go into a public place, maintain social distancing (6 ft) and always keep a mask on.")
                
            }

        }
        
        if (AgeRiskScore == 20) {
            RiskDescription.text?.append("\n\n• COVID-19 patients within your age group tend to be at a much higher risk for severe illness than those in younger age groups.")
        }
        
        if (AgeRiskScore == 10) {
            RiskDescription.text?.append("\n\n• COVID-19 patients within your age group tend to be at a higher risk for severe illness than those in younger age groups.")
        }
        
        if (AgeRiskScore == 5) {
            RiskDescription.text?.append("\n\n• COVID-19 patients within your age group tend to be at a muh lower risk for severe illness than those in older age groups.")
        }
        
        if (RiskScore1 == 5) {
            RiskDescription.text?.append("\n\n• You suffer from an underlying health condition that many patients who develop a severe illness from COVID-19 also experience.")
        }
        
        if (RiskScore1 >= 10) {
            RiskDescription.text?.append("\n\n• You suffer from multiple underlying health conditions that many patients who develop a severe illness from COVID-19 also experience.")
        }
        
        if (RiskScore2 >= 2 && RiskScore1 == 0) {
            RiskDescription.text?.append("\n\n• Also, you suffer from certain underlying health conditions that some patients who develop a sever illness from COVID-19 also experience.")
        }
        
        if (RiskScore2 == 0 && RiskScore1 == 0) {
            RiskDescription.text?.append("\n\n• You suffer from no underlying health conditions that patients who develop a severe illness from COVID-19 experience.")
        }
        if (self.view.traitCollection.horizontalSizeClass == .regular && self.view.traitCollection.verticalSizeClass == .regular) {
        setBorderRadiusForIpad(button: CheckAgain)
        } else {
        setBorderRadiusForIphone(button: CheckAgain)
        }
        setBackgroundColor(button: CheckAgain)
        
    
       
        
    }
    
    
    
}
