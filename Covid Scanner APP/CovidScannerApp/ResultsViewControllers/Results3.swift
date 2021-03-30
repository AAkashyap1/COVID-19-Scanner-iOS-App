//
//  Results3.swift
//  CovidScanner4.0Try3Scanner4.0Try3
//
//  Created by Ananth Kashyap on 9/27/20.
//  Copyright © 2020 Ananth Kashyap. All rights reserved.
//

import UIKit



class Results3 : UIViewController {
    
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
    
    @IBOutlet weak var ResultsStackView: UIView!
    @IBOutlet var Results3: UIView!
    
    @IBOutlet weak var Back: UIButton!
    @IBOutlet weak var FindTestingLocations: UIButton!
    @IBOutlet weak var CheckAgain: UIButton!
    @IBOutlet weak var SymptomsText: UILabel!
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
    
    func setBackgroundColor(button: UIButton) {
        button.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
    }
    
    func setBorderRadiusForIphone(view: UIButton) {
        view.layer.cornerRadius = 15
    }
    
    func setBorderRadiusForIpad(view: UIButton) {
               view.layer.cornerRadius = 30
    }
    
    
    @IBAction func pressTestingLocations(_ sender: Any) {
        let targetURL = URL(string: "http://maps.apple.com/?q=COVID-19+Testing")!
        let isAvailable = UIApplication.shared.canOpenURL(targetURL)
        if (isAvailable == true) {
            UIApplication.shared.open(targetURL)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "continue") {
            let vc = segue.destination as! TestingLocations
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
            vc.SymptomisOn12 =  SymptomisOn12
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
        } else if (segue.identifier == "back") {
            let vc = segue.destination as! Results
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

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ResultsStackView.layer.cornerRadius = 10
        ResultsStackView.layer.shadowColor = UIColor.black.cgColor
        ResultsStackView.layer.shadowOffset = CGSize(width: 5, height: 5)
        ResultsStackView.layer.shadowRadius = 2
        ResultsStackView.layer.shadowOpacity = 0.5
        Results3.backgroundColor = UIColor(red: 15/255.0, green: 43/255.0, blue: 59/255.0, alpha: 1)
        setBackgroundColor(button: CheckAgain)
        setBackgroundColor(button: FindTestingLocations)
        
        if (SymptomScore >= 3) {
            SymptomsText.text = "• You have been experiencing many symptoms that patients who contract COVID-19 experience. Based off of your responses, you should get tested for COVID-19 very soon."
        } else if (SymptomScore == 2) {
            SymptomsText.text = "• You have been experiencing two symptoms that patients who contract COVID-19 experience. You should get a COVID-19 test when possible."
        } else if (SymptomScore == 1) {
            SymptomsText.text = "• You have been experiencing a symptom that patients who contract COVID-19 experience. You should get a COVID-19 test if this symptom persists or new symptoms develop."
        } else if (SymptomScore == 0) {
            SymptomsText.text = "• You have not been experiencing any symptoms of COVID-19. It is not necessary for you to get a COVID-19 test at this time."
        }
            
        SymptomsText.text?.append("\n\n • Make sure to always follow the proper safety guidelines regardless of your current symptoms or risk. Maintain social distancing (6 ft) and always keep a mask on.")
        
        if (self.view.traitCollection.horizontalSizeClass == .regular && self.view.traitCollection.verticalSizeClass == .regular) {
        setBorderRadiusForIpad(view: CheckAgain)
        } else {
        setBorderRadiusForIphone(view: CheckAgain)
        }
        
        if (self.view.traitCollection.horizontalSizeClass == .regular && self.view.traitCollection.verticalSizeClass == .regular) {
        setBorderRadiusForIpad(view: FindTestingLocations)
        } else {
        setBorderRadiusForIphone(view: FindTestingLocations)
        }
        
    }
    
}
