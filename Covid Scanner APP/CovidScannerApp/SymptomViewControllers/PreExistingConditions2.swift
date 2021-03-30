//
//  PreExistingConditions2.swift
//  CovidScanner4.0Try3
//
//  Created by Ananth Kashyap on 9/2/20.
//  Copyright © 2020 Ananth Kashyap. All rights reserved.
//

import UIKit

class PreExistingConditions2 : UIViewController {
    
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
    
    @IBOutlet weak var StackView: UIStackView!
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
    var SevisOn1 :Bool!
    var SevisOn2 :Bool!
    var SevisOn3 :Bool!
    var SevisOn4 :Bool!
    
    @IBOutlet var PEC2: UIView!
    
    
    @IBOutlet weak var A1: UIButton!
    @IBOutlet weak var A2: UIButton!
    @IBOutlet weak var A3: UIButton!
    @IBOutlet weak var A4: UIButton!
    @IBOutlet weak var A5: UIButton!
    @IBOutlet weak var A6: UIButton!
    @IBOutlet weak var A7: UIButton!
    @IBOutlet weak var A8: UIButton!
    @IBOutlet weak var A10: UIButton!
    @IBOutlet weak var A9: UIButton!
    
    @IBOutlet weak var StackViewView: UIView!
    
    @IBOutlet weak var ContinueToSymptoms: UIButton!
    func setBorderRadiusForIphone(button: UIButton) {
        if (PEC2.traitCollection.horizontalSizeClass == .compact && PEC2.traitCollection.verticalSizeClass == .regular){
            button.layer.cornerRadius = 15
        }
       }
       
       func setBorderRadiusForIpad(button: UIButton) {
        if (PEC2.traitCollection.horizontalSizeClass == .regular && PEC2.traitCollection.verticalSizeClass == .regular){
                  button.layer.cornerRadius = 30
        }
       }
                     
       func setBackgroundColor(button: UIButton) {
           button.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
       }
       
       func setDefaultButtonForIphone(button: UIButton) {
        if (PEC2.traitCollection.horizontalSizeClass == .compact && PEC2.traitCollection.verticalSizeClass == .regular) {
            
            button.layer.borderWidth = 2.0
           
            button.backgroundColor = .white
            button.layer.borderColor = UIColor.black.cgColor
            button.setTitleColor(UIColor.link, for: .normal)
        }
       }
       
       func setDefaultButtonForIpad(button: UIButton) {
        if (PEC2.traitCollection.horizontalSizeClass == .regular && PEC2.traitCollection.verticalSizeClass == .regular) {
              button.layer.borderWidth = 3.0
              
              button.backgroundColor = .white
              button.layer.borderColor = UIColor.black.cgColor
              button.setTitleColor(UIColor.link, for: .normal)
        }
       }
       
       func selectedButton (button: UIButton) {
              setBackgroundColor(button: button)
              button.setTitleColor(UIColor.white, for: .normal)
              
              button.layer.borderWidth = 0
       }
    
    func removeFromArray(index: NSInteger) {
        var UnderlyingConditions2 = [A1, A2,A3,A4,A5,A6,A7,A9,A10,A8]
        let theSelectedButton = UnderlyingConditions2[index]
           UnderlyingConditions2.remove(at: index)
           for UnderlyingCondition in UnderlyingConditions2 {
               
            setDefaultButtonForIpad(button: UnderlyingCondition!)
            setDefaultButtonForIphone(button: UnderlyingCondition!)
           }
        selectedButton(button: theSelectedButton!)
        UnderlyingConditions2.insert(theSelectedButton, at: index)
    }
     
    func changeLabelFontForTitle(label: UILabel) {
           if  (PEC2.traitCollection.horizontalSizeClass == .compact && PEC2.traitCollection.verticalSizeClass == .regular ) {
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
           if (PEC2.traitCollection.horizontalSizeClass == .compact && PEC2.traitCollection.verticalSizeClass == .regular ){
           button.titleLabel?.font = button.titleLabel?.font.withSize(button.bounds.size.height/2)
           } else {
               button.titleLabel?.font = button.titleLabel?.font.withSize(button.bounds.size.height/1.2)
           }
       }
    
    func toggleTheButton(isOn: Bool, theButton: UIButton) {
        
        if (isOn == false) {
            setDefaultButtonForIpad(button: theButton)
            setDefaultButtonForIphone(button: theButton)
            if(PEC2isOn1 == false &&
             PEC2isOn2 == false &&
             PEC2isOn3 == false &&
             PEC2isOn4 == false &&
             PEC2isOn5 == false &&
             PEC2isOn6 == false &&
             PEC2isOn7 == false &&
             PEC2isOn8 == false &&
             PEC2isOn9 == false &&
             PEC2isOn10 == false) {
                ContinueToSymptoms.backgroundColor = .systemGray5
            }
            RiskScore2! -= 2
        } else {
           
            selectedButton(button: theButton)
            PEC2isOn8 = false
            setDefaultButtonForIpad(button: A8)
            setDefaultButtonForIphone(button: A8)
            setBackgroundColor(button: ContinueToSymptoms)
            RiskScore2! += 2
        }

    }
    

   
    @IBAction func PressAsthama(_ sender: Any) {
        PEC2isOn1.toggle()
        toggleTheButton(isOn: PEC2isOn1, theButton: A1)
    }
    
    @IBAction func PressHBP(_ sender: Any) {
        PEC2isOn2.toggle()
        toggleTheButton(isOn: PEC2isOn2, theButton: A2)
    }
    
    @IBAction func PressType2(_ sender: Any) {
       PEC2isOn3.toggle()
        toggleTheButton(isOn: PEC2isOn3, theButton: A3)
    }
    
    
    @IBAction func PressPregnancy(_ sender: Any) {
        PEC2isOn4.toggle()
        toggleTheButton(isOn: PEC2isOn4, theButton: A4)
    }
    

    @IBAction func PressFrequentSmoking(_ sender: Any) {
        PEC2isOn5.toggle()
        toggleTheButton(isOn: PEC2isOn5, theButton: A5)
    }
    
    @IBAction func PressFibrosis(_ sender: Any) {
       PEC2isOn6.toggle()
        toggleTheButton(isOn: PEC2isOn6, theButton: A6)
    }
    
    @IBAction func PressDementia(_ sender: Any) {
        PEC2isOn7.toggle()
        toggleTheButton(isOn: PEC2isOn7, theButton: A7)
    }
    
    @IBAction func PressHIV(_ sender: Any) {
        PEC2isOn9.toggle()
        toggleTheButton(isOn: PEC2isOn9, theButton: A9)
    }
    @IBAction func PressLiverDisease(_ sender: Any) {
        PEC2isOn10.toggle()
        toggleTheButton(isOn: PEC2isOn10, theButton: A10)
    }
    
    @IBAction func PressNoneListed(_ sender: Any) {
        PEC2isOn8.toggle()
        if (PEC2isOn8 == true) {
            removeFromArray(index: 9)
            PEC2isOn1 = false
            PEC2isOn2 = false
            PEC2isOn3 = false
            PEC2isOn4 = false
            PEC2isOn5 = false
            PEC2isOn6 = false
            PEC2isOn7 = false
            PEC2isOn9 = false
            PEC2isOn10 = false
            setBackgroundColor(button: ContinueToSymptoms)
            RiskScore2 = 0
            } else {
                setDefaultButtonForIpad(button: A8)
                setDefaultButtonForIphone(button: A8)
                
                if (PEC2isOn1 == false &&
                PEC2isOn2 == false &&
                PEC2isOn3 == false &&
                PEC2isOn4 == false &&
                PEC2isOn5 == false &&
                PEC2isOn6 == false &&
                PEC2isOn7 == false &&
                PEC2isOn8 == false &&
                PEC2isOn9 == false &&
                PEC2isOn10 == false) {
                    ContinueToSymptoms.backgroundColor = .systemGray5
                }
        }
        
        
    }
    
    
    
    @IBAction func Continue(_ sender: Any) {
        if (PEC2isOn1 == true ||
            PEC2isOn2 == true ||
            PEC2isOn3 == true ||
            PEC2isOn4 == true ||
            PEC2isOn5 == true ||
            PEC2isOn6 == true ||
            PEC2isOn7 == true ||
            PEC2isOn8 == true ||
            PEC2isOn9 == true ||
            PEC2isOn10 == true) {
            
                self.performSegue(withIdentifier: "continue", sender: nil)
            
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "continue" {
            let vc = segue.destination as! Symptoms
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
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //chronicKidneyDisease.titleLabel?.numberOfLines = 3
        PEC2.backgroundColor = UIColor(red: 15/255.0, green: 43/255.0, blue: 59/255.0, alpha: 1)
        StackViewView.layer.cornerRadius = 10
        StackViewView.layer.shadowColor = UIColor.black.cgColor
        StackViewView.layer.shadowOffset = CGSize(width: 5, height: 5)
        StackViewView.layer.shadowRadius = 2
        StackViewView.layer.shadowOpacity = 0.5
        
        let PEC2isOns = [PEC2isOn1, PEC2isOn2, PEC2isOn3, PEC2isOn4, PEC2isOn5, PEC2isOn6, PEC2isOn7, PEC2isOn9, PEC2isOn10, PEC2isOn8]
        let UnderlyingConditions2 = [A1, A2,A3,A4,A5,A6,A7,A9, A10,A8]
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
            if(numberOfFalses == 10) {
                button.backgroundColor = .systemGray5
            } else {
                setBackgroundColor(button: button)
            }
        }
        
        makeStayOn2(buttonArr: UnderlyingConditions2, boolArr: PEC2isOns)
        calculateNumberOfFalses(arr: PEC2isOns, button: ContinueToSymptoms)
        
        
        setBorderRadiusForIpad(button: ContinueToSymptoms)
        setBorderRadiusForIphone(button: ContinueToSymptoms)
        
    }
   
}
