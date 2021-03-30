//
//  SevereSymptoms.swift
//  CovidScanner4.0Try3
//
//  Created by Ananth Kashyap on 8/29/20.
//  Copyright © 2020 Ananth Kashyap. All rights reserved.
//

import UIKit

class SevereSymptoms: UIViewController {
    
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
    
    var SeverSymptomsScore = 0
    var AgeRiskScore :Int!
    var RiskScore1 :Int!
    var RiskScore2 :Int!
    var SymptomScore :Int!
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
    
    @IBOutlet weak var ContinueToAgeGroups: UIButton!
    @IBOutlet var SevereSymptomsPage: UIView!
    
    @IBOutlet weak var StackViewView: UIView!
    
    @IBOutlet weak var SevereBreathingTrouble: UIButton!
    @IBOutlet weak var ChestPain: UIButton!
    @IBOutlet weak var None: UIButton!
    @IBOutlet weak var SuddenConfusion: UIButton!
    
    var SevisOn1 : Bool!
    var SevisOn2 : Bool!
    var SevisOn3 : Bool!
    var SevisOn4 : Bool!

    
    @IBOutlet var Symptoms1: [UIButton]!
    
    
    func setBorderRadiusForIphone(button: UIButton) {
         if (SevereSymptomsPage.traitCollection.horizontalSizeClass == .compact && SevereSymptomsPage.traitCollection.verticalSizeClass == .regular ) {
            button.layer.cornerRadius = 10
         }
    }
    
    func setBorderRadiusForIpad(button: UIButton) {
          if (SevereSymptomsPage.traitCollection.horizontalSizeClass == .regular && SevereSymptomsPage.traitCollection.verticalSizeClass == .regular ) {
               button.layer.cornerRadius = 30
          }
    }
                  
    func setBackgroundColor(button: UIButton) {
        button.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
    }
    
    func setBackgroundColor2(button: UIButton) {
        button.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
    }
    
    func setDefaultButtonForIphone(button: UIButton) {
        if (SevereSymptomsPage.traitCollection.horizontalSizeClass == .compact && SevereSymptomsPage.traitCollection.verticalSizeClass == .regular ){
         button.layer.borderWidth = 2
         
         button.backgroundColor = .white
         button.layer.borderColor = UIColor.black.cgColor
         button.setTitleColor(UIColor.link, for: .normal)
        }
    }
    
    func setDefaultButtonForIpad(button: UIButton) {
        if (SevereSymptomsPage.traitCollection.horizontalSizeClass == .regular && SevereSymptomsPage.traitCollection.verticalSizeClass == .regular ) {
           button.layer.borderWidth = 3
           
           button.backgroundColor = .white
           button.layer.borderColor = UIColor.black.cgColor
           button.setTitleColor(UIColor.link, for: .normal)
        }

    }
    
    func selectedButton(button: UIButton) {
        
           setBackgroundColor(button: button)
           button.setTitleColor(UIColor.white, for: .normal)
           
           button.layer.borderWidth = 0
        
    }
    
    func removeFromArray(index: NSInteger) {
        var severeSymptoms = [None, SuddenConfusion, SevereBreathingTrouble, ChestPain]
        let theSelectedButton = severeSymptoms[index]
        severeSymptoms.remove(at: index)
        for Symptom in severeSymptoms {
            
            setDefaultButtonForIpad(button: Symptom!)
            setDefaultButtonForIphone(button: Symptom!)
        }
        
        selectedButton(button: theSelectedButton!)
        severeSymptoms.insert(theSelectedButton, at: index)
    
    }
    
    func toggleTheButton(isOn: Bool, theButton: UIButton) {
        
        if (isOn == false) {
            setDefaultButtonForIpad(button: theButton)
            setDefaultButtonForIphone(button: theButton)
            if(SevisOn1 == false &&
             SevisOn2 == false &&
             SevisOn3 == false &&
             SevisOn4 == false ){
             ContinueToAgeGroups.backgroundColor = .systemGray5
             SeverSymptomsScore -= 5
            }
        } else {
            selectedButton(button: theButton)
            SevisOn4 = false
            setDefaultButtonForIpad(button: None)
            setDefaultButtonForIphone(button: None)
            setBackgroundColor2(button: ContinueToAgeGroups)
            SeverSymptomsScore += 5
        }

    }
    
    
    
    func changeLabelFontForTitle(label: UILabel) {
           if  (SevereSymptomsPage.traitCollection.horizontalSizeClass == .compact && SevereSymptomsPage.traitCollection.verticalSizeClass == .regular ) {
               if (label.bounds.size.height >= 135 && label.bounds.size.width >= 281) {
                   label.font = label.font.withSize(label.bounds.size.height/4)
               } else {
                   label.font = label.font.withSize(label.bounds.size.height/5)
               }
           } else {
               label.font.withSize(label.bounds.size.height/2.25)
           }
       }
       
    
       func changeFontToBeProportionate(button: UIButton){
           if (SevereSymptomsPage.traitCollection.horizontalSizeClass == .compact && SevereSymptomsPage.traitCollection.verticalSizeClass == .regular ){
           button.titleLabel?.font = button.titleLabel?.font.withSize(button.bounds.size.height/2)
           } else {
               button.titleLabel?.font = button.titleLabel?.font.withSize(button.bounds.size.height/1.2)
           }
       }
    
    @IBAction func PressSuddenConfusion(_ sender: Any) {
        
        SevisOn1.toggle()
        toggleTheButton(isOn: SevisOn1, theButton: SuddenConfusion)
        
    }
    
    
    
    @IBAction func PressNone(_ sender: Any) {
        SevisOn4.toggle()
        if (SevisOn4 == true) {
            removeFromArray(index: 0)
            SevisOn1 = false
            SevisOn2 = false
            SevisOn3 = false
            setBackgroundColor2(button: ContinueToAgeGroups)
            SeverSymptomsScore = 0
        } else {
            setDefaultButtonForIpad(button: None)
            setDefaultButtonForIphone(button: None)
            if(SevisOn1 == false &&
            SevisOn2 == false &&
            SevisOn3 == false &&
            SevisOn4 == false) {
                ContinueToAgeGroups.backgroundColor = .systemGray5
            }
        }
    }

    
    @IBAction func PressChestPain(_ sender: Any) {
        SevisOn3.toggle()
        toggleTheButton(isOn: SevisOn3, theButton: ChestPain)
    }
    
    @IBAction func PressSevereBreathing(_ sender: Any) {
        SevisOn2.toggle()
        toggleTheButton(isOn: SevisOn2, theButton: SevereBreathingTrouble)
    }
    
    
    
    @IBAction func PressContinue(_ sender: Any) {
        
        if (SevisOn1 == true ||
            SevisOn2 == true ||
            SevisOn3 == true ||
            SevisOn4 == true) {
            if (SeverSymptomsScore == 0) {
                self.performSegue(withIdentifier: "DoesNotExperience", sender: nil)
            } else {
                self.performSegue(withIdentifier: "ExperiencesEmergencySymptoms", sender: nil)
            }
            
        }
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "DoesNotExperience") {
            let vc = segue.destination as! PreExistingConditions
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
        } else if segue.identifier == "back" {
            let vc = segue.destination as! AgeGroupPage
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
        //chronicKidneyDisease.titleLabel?.numberOfLines = 3
        StackViewView.layer.cornerRadius = 10
        StackViewView.layer.shadowColor = UIColor.black.cgColor
        StackViewView.layer.shadowOffset = CGSize(width: 5, height: 5)
        StackViewView.layer.shadowRadius = 2
        StackViewView.layer.shadowOpacity = 0.5
        SevereSymptomsPage.backgroundColor = UIColor(red: 15/255.0, green: 43/255.0, blue: 59/255.0, alpha: 1)
        let severeSymptoms = [SuddenConfusion, SevereBreathingTrouble, ChestPain, None]
        let SevisOns = [SevisOn1, SevisOn2, SevisOn3, SevisOn4]
        for Symptom in severeSymptoms {
            Symptom?.layer.cornerRadius = 5
            changeFontToBeProportionate(button: Symptom!)
        }
        setBorderRadiusForIphone(button: ContinueToAgeGroups)
        setBorderRadiusForIpad(button: ContinueToAgeGroups)
        
        
        func makeStayOn(index: NSInteger, boolArr: [Bool?],  buttonArr: [UIButton?]) {
            for button in buttonArr {
                if (self.view.traitCollection.horizontalSizeClass == .compact && self.view.traitCollection.verticalSizeClass == .regular){
                button?.layer.cornerRadius = 5
                } else {
                    button?.layer.cornerRadius = 10
                }
            }
            if (boolArr[index] == true) {
                selectedButton(button: buttonArr[index]!)
                setBackgroundColor(button: buttonArr[index]!)
            } else {
                setDefaultButtonForIpad(button:  buttonArr[index]!)
                setDefaultButtonForIphone(button:  buttonArr[index]!)
            }
        }
        
        func makeStayOn2(buttonArr: [UIButton?], boolArr: [Bool?]) {
            for element in buttonArr {
                makeStayOn(index: buttonArr.firstIndex(of: element)!, boolArr: boolArr, buttonArr: buttonArr)
            }
        }
        
        func calculateNumberOfFalses(arr: [Bool?], button: UIButton) {
             var numberOfFalses : Int = 0
             for element in arr {
                 if (element == false) {
                     numberOfFalses += 1
                 }
             }
            if(numberOfFalses == 4) {
                button.backgroundColor = .systemGray5
            } else {
                setBackgroundColor2(button: button)
            }
        }
        
        makeStayOn2(buttonArr: severeSymptoms, boolArr: SevisOns)
        calculateNumberOfFalses(arr: SevisOns, button: ContinueToAgeGroups)
    }
    
    
}

