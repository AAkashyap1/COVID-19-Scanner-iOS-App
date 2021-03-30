//
//  Symptoms.swift
//  CovidScanner4.0Try3
//
//  Created by Ananth Kashyap on 8/29/20.
//  Copyright © 2020 Ananth Kashyap. All rights reserved.
//

import UIKit

class Symptoms : UIViewController {
    
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
    
    @IBOutlet var SymptomsView: UIView!
    @IBOutlet weak var ContinueToResults: UIButton!
    @IBOutlet weak var Fever: UIButton!
    @IBOutlet weak var NoneListed: UIButton!
    @IBOutlet weak var Congestion: UIButton!
    @IBOutlet weak var Diarrhea: UIButton!
    @IBOutlet weak var Fatigue: UIButton!
    @IBOutlet weak var SoreThroat: UIButton!
    @IBOutlet weak var BreathingTrouble: UIButton!
    @IBOutlet weak var LoseSenses2: UIButton!
    @IBOutlet weak var VomitingNausea: UIButton!
    @IBOutlet weak var MuscleAches: UIButton!
    @IBOutlet weak var Headache: UIButton!
    @IBOutlet weak var LoseSenses: UIButton!
    @IBOutlet weak var BluishLips: UIButton!
    @IBOutlet weak var Cough: UIButton!
    func setBorderRadiusForIphone(button: UIButton) {
        if (SymptomsView.traitCollection.verticalSizeClass == .regular && SymptomsView.traitCollection.horizontalSizeClass == .compact){
            button.layer.cornerRadius = 15
        }
       }
       
       func setBorderRadiusForIpad(button: UIButton) {
        if (SymptomsView.traitCollection.verticalSizeClass == .regular && SymptomsView.traitCollection.horizontalSizeClass == .regular) {
                  button.layer.cornerRadius = 30
        }
       }
                     
       func setBackgroundColor(button: UIButton) {
           button.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
       }
       
       func setDefaultButtonForIphone(button: UIButton) {
        if (SymptomsView.traitCollection.verticalSizeClass == .regular && SymptomsView.traitCollection.horizontalSizeClass == .compact) {
            button.layer.borderWidth = 2.0
           
            button.backgroundColor = .white
            button.layer.borderColor = UIColor.black.cgColor
            
        }
       }
       
       func setDefaultButtonForIpad(button: UIButton) {
        if (SymptomsView.traitCollection.verticalSizeClass == .regular && SymptomsView.traitCollection.horizontalSizeClass == .regular) {
              button.layer.borderWidth = 3.0
             
              button.backgroundColor = .white
              button.layer.borderColor = UIColor.black.cgColor
              
        }
       }
       
    func changeLabelFontForTitle(label: UILabel) {
           if  (SymptomsView.traitCollection.horizontalSizeClass == .compact && SymptomsView.traitCollection.verticalSizeClass == .regular ) {
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
           if (SymptomsView.traitCollection.horizontalSizeClass == .compact && SymptomsView.traitCollection.verticalSizeClass == .regular ){
           button.titleLabel?.font = button.titleLabel?.font.withSize(button.bounds.size.height/2)
           } else {
               button.titleLabel?.font = button.titleLabel?.font.withSize(button.bounds.size.height/1.2)
           }
       }
    
       func selectedButton (button: UIButton) {
              setBackgroundColor(button: button)
              button.setTitleColor(UIColor.white, for: .normal)
              
              button.layer.borderWidth = 0
       }
    
    func removeFromArray(index: NSInteger) {
        var symptoms = [Fever, Headache,LoseSenses,LoseSenses2,Cough,MuscleAches,VomitingNausea,BreathingTrouble,Fatigue,SoreThroat,Diarrhea,Congestion,BluishLips,NoneListed]
        let theSelectedButton = symptoms[index]
        symptoms.remove(at: index)
        for Symptom in symptoms {
            
            setDefaultButtonForIpad(button: Symptom!)
            setDefaultButtonForIphone(button: Symptom!)
        }
        
        selectedButton(button: theSelectedButton!)
        symptoms.insert(theSelectedButton, at: index)
    
    }
    
    func toggleTheButton(isOn: Bool, theButton: UIButton) {
        
        if (isOn == false) {
            setDefaultButtonForIpad(button: theButton)
            setDefaultButtonForIphone(button: theButton)
            if(SymptomisOn1 == false &&
            SymptomisOn2 == false &&
             SymptomisOn3 == false &&
             SymptomisOn4 == false &&
             SymptomisOn5 == false &&
             SymptomisOn6 == false &&
             SymptomisOn7 == false &&
             SymptomisOn8 == false &&
             SymptomisOn9 == false &&
             SymptomisOn10 == false &&
             SymptomisOn11 == false &&
             SymptomisOn12 == false &&
                SymptomisOn13 == false &&
                SymptomisOn14 == false) {
                ContinueToResults.backgroundColor = .systemGray5
            }
            SymptomScore! -= 1
        } else {
            selectedButton(button: theButton)
            SymptomisOn12 = false
            setDefaultButtonForIpad(button: NoneListed)
            setDefaultButtonForIphone(button: NoneListed)
            setBackgroundColor(button: ContinueToResults)
            SymptomScore! += 1
        }

    }
    
    
    
    @IBAction func PressFever(_ sender: Any) {
        SymptomisOn1.toggle()
        toggleTheButton(isOn: SymptomisOn1, theButton: Fever)
    }
    @IBAction func PressHeadache(_ sender: Any) {
        SymptomisOn2.toggle()
        toggleTheButton(isOn: SymptomisOn2, theButton: Headache)

    }
    @IBAction func PressLossOfSenses(_ sender: Any) {
        SymptomisOn3.toggle()
        toggleTheButton(isOn: SymptomisOn3, theButton: LoseSenses)

    }
    @IBAction func PressLoseOfSenses2(_ sender: Any) {
        SymptomisOn4.toggle()
        toggleTheButton(isOn: SymptomisOn4, theButton: LoseSenses2)
    }
    @IBAction func PressCough(_ sender: Any) {
        SymptomisOn5.toggle()
        toggleTheButton(isOn: SymptomisOn5, theButton: Cough)

    }
    @IBAction func PressMuscleAches(_ sender: Any) {
        SymptomisOn6.toggle()
        toggleTheButton(isOn: SymptomisOn6, theButton: MuscleAches)

    }
    @IBAction func PressVomiting(_ sender: Any) {
        SymptomisOn7.toggle()
        toggleTheButton(isOn: SymptomisOn7, theButton: VomitingNausea)

    }
    
    
    
    @IBAction func PressMildBreathingTrouble(_ sender: Any) {
        SymptomisOn8.toggle()
        toggleTheButton(isOn: SymptomisOn8, theButton: BreathingTrouble)

    }
   
    @IBAction func PressFatigue(_ sender: Any) {
        SymptomisOn9.toggle()
        toggleTheButton(isOn: SymptomisOn9, theButton: Fatigue)

    }
    
    @IBAction func PressSoreThroat(_ sender: Any) {
        SymptomisOn10.toggle()
        toggleTheButton(isOn: SymptomisOn10, theButton: SoreThroat)

    }
    
    @IBAction func PressDiharrhea(_ sender: Any) {
        SymptomisOn11.toggle()
        toggleTheButton(isOn: SymptomisOn11, theButton: Diarrhea)

    }
    
    @IBAction func PressCongestion(_ sender: Any) {
        SymptomisOn12.toggle()
        toggleTheButton(isOn: SymptomisOn12, theButton: Congestion)

    }
    
    @IBAction func BluishLips(_ sender: Any) {
        SymptomisOn13.toggle()
        toggleTheButton(isOn: SymptomisOn13, theButton: BluishLips)
    }
    @IBAction func PressNone(_ sender: Any) {
        SymptomisOn14.toggle()
        if (SymptomisOn14 == true) {
            removeFromArray(index: 13)
            SymptomisOn1 = false
            SymptomisOn2 = false
            SymptomisOn3 = false
            SymptomisOn4 = false
            SymptomisOn5 = false
            SymptomisOn6 = false
            SymptomisOn7 = false
            SymptomisOn8 = false
            SymptomisOn9 = false
            SymptomisOn10 = false
            SymptomisOn11 = false
            SymptomisOn12 = false
            SymptomisOn13 = false
            setBackgroundColor(button: ContinueToResults)
            SymptomScore = 0
        } else {
            setDefaultButtonForIpad(button: NoneListed)
            setDefaultButtonForIphone(button: NoneListed)
            if(SymptomisOn1 == false &&
            SymptomisOn2 == false &&
            SymptomisOn3 == false &&
            SymptomisOn4 == false &&
            SymptomisOn5 == false &&
            SymptomisOn6 == false &&
            SymptomisOn7 == false &&
            SymptomisOn8 == false &&
            SymptomisOn9 == false &&
            SymptomisOn10 == false &&
            SymptomisOn11 == false &&
            SymptomisOn12 == false &&
            SymptomisOn13 == false &&
            SymptomisOn14 == false) {
                ContinueToResults.backgroundColor = .systemGray5
            }
        }
    }
    
    @IBAction func Continue(_ sender: Any) {
        if (SymptomisOn1 == true ||
            SymptomisOn2 == true ||
            SymptomisOn3 == true ||
            SymptomisOn4 == true ||
            SymptomisOn5 == true ||
            SymptomisOn6 == true ||
            SymptomisOn7 == true ||
            SymptomisOn8 == true ||
            SymptomisOn9 == true ||
            SymptomisOn10 == true ||
            SymptomisOn11 == true ||
            SymptomisOn12 == true ||
            SymptomisOn13 == true ||
            SymptomisOn14 == true) {
            
                self.performSegue(withIdentifier: "continue", sender: nil)
            
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "continue" {
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
            vc.PEC2isOn8 = PEC2isOn8
            vc.PEC2isOn1 = PEC2isOn1
            vc.PEC2isOn2 = PEC2isOn2
            vc.PEC2isOn3 = PEC2isOn3
            vc.PEC2isOn4 = PEC2isOn4
            vc.PEC2isOn5 = PEC2isOn5
            vc.PEC2isOn6 = PEC2isOn6
            vc.PEC2isOn7 = PEC2isOn7
            vc.PEC2isOn8 = PEC2isOn8
            vc.PECisOn9 = PECisOn9
            vc.PECisOn10 = PECisOn10
            vc.isOn1 = isOn1
            vc.isOn2 = isOn2
            vc.isOn3 = isOn3
            vc.isOn4 = isOn4
            vc.SevisOn1 = SevisOn1
            vc.SevisOn2 = SevisOn2
            vc.SevisOn3 = SevisOn3
            vc.SevisOn4 = SevisOn4
            
            
            
        } else if segue.identifier == "back" {
            let vc = segue.destination as! PreExistingConditions2
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
        setBorderRadiusForIpad(button: ContinueToResults)
        setBorderRadiusForIphone(button: ContinueToResults)
        StackViewView.layer.cornerRadius = 10
        StackViewView.layer.shadowColor = UIColor.black.cgColor
        StackViewView.layer.shadowOffset = CGSize(width: 5, height: 5)
        StackViewView.layer.shadowRadius = 2
        StackViewView.layer.shadowOpacity = 0.5
        SymptomsView.backgroundColor = UIColor(red: 15/255.0, green: 43/255.0, blue: 59/255.0, alpha: 1)
        let symptoms = [Fever, Headache,LoseSenses,LoseSenses2, Cough,MuscleAches,VomitingNausea,BreathingTrouble,Fatigue,SoreThroat,Diarrhea,Congestion,BluishLips,NoneListed]
        for symptom in symptoms{
            symptom?.layer.cornerRadius = 10
            
            
        }
        
        let SymptomsisOns :[Bool?] = [SymptomisOn1, SymptomisOn2, SymptomisOn3, SymptomisOn4, SymptomisOn5, SymptomisOn6, SymptomisOn7, SymptomisOn8, SymptomisOn9, SymptomisOn10, SymptomisOn11, SymptomisOn12,SymptomisOn13,SymptomisOn14]
        
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
             if(numberOfFalses == 14) {
                 button.backgroundColor = .systemGray5
             } else {
                 setBackgroundColor(button: button)
             }
        }
        
        makeStayOn2(buttonArr: symptoms, boolArr: SymptomsisOns)
        calculateNumberOfFalses(arr: SymptomsisOns, button: ContinueToResults)
        
        
        
        
    }
    
}
