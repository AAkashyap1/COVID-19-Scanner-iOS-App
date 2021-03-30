//
//  File.swift
//  CovidScanner4.0Try3
//
//  Created by Ananth Kashyap on 8/27/20.
//  Copyright © 2020 Ananth Kashyap. All rights reserved.
//

import UIKit

class PreExistingConditions : UIViewController {
    
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
    
    @IBOutlet weak var StackViewView: UIView!
    
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
    
    @IBOutlet weak var CategoryLabel3: UILabel!
    @IBOutlet weak var TitleLabel3: UILabel!
    @IBOutlet var PreExistingConditionsPage: UIView!
    @IBOutlet weak var StackView: UIStackView!
    @IBOutlet weak var Type2Diabetes: UIButton!
    @IBOutlet weak var ContinueToPEC2: UIButton!
    @IBOutlet weak var SickleCellDiseases: UIButton!
    @IBOutlet weak var CKD: UIButton!
    @IBOutlet weak var NoneListed: UIButton!
    @IBOutlet weak var COPD: UIButton!
    @IBOutlet weak var Cancer: UIButton!
    @IBOutlet weak var Obesity: UIButton!
    @IBOutlet weak var PressSevereObesity: UIButton!
    @IBOutlet weak var WeakenedImmuneSystem: UIButton!
    @IBOutlet weak var SevereHeatConditions: UIButton!
    
    
    func setBorderRadiusForIphone(button: UIButton) {
         if (PreExistingConditionsPage.traitCollection.horizontalSizeClass == .compact && PreExistingConditionsPage.traitCollection.verticalSizeClass == .regular ) {
            button.layer.cornerRadius = 15
            
         }
    }
    
    
    func setBorderRadiusForIpad(button: UIButton) {
          if (PreExistingConditionsPage.traitCollection.horizontalSizeClass == .regular && PreExistingConditionsPage.traitCollection.verticalSizeClass == .regular ) {
               button.layer.cornerRadius = 30
          }
    }
                 
    
    func setBackgroundColor(button: UIButton) {
        button.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
    }
    
    
    func setDefaultButtonForIphone(button: UIButton) {
       if (PreExistingConditionsPage.traitCollection.horizontalSizeClass == .compact && PreExistingConditionsPage.traitCollection.verticalSizeClass == .regular ) {
         button.layer.borderWidth = 2
         
         button.backgroundColor = .white
         button.layer.borderColor = UIColor.black.cgColor
         button.setTitleColor(UIColor.link, for: .normal)
        }
    }
    
    
    func setDefaultButtonForIpad(button: UIButton) {
        if (PreExistingConditionsPage.traitCollection.horizontalSizeClass == .regular && PreExistingConditionsPage.traitCollection.verticalSizeClass == .regular ) {
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
           var PECs = [SickleCellDiseases,Type2Diabetes,Cancer,CKD,COPD,NoneListed,SevereHeatConditions,Obesity, WeakenedImmuneSystem, PressSevereObesity]
           let theSelectedButton = PECs[index]
           PECs.remove(at: index)
           for PEC in PECs {
               
               setDefaultButtonForIpad(button: PEC!)
               setDefaultButtonForIphone(button: PEC!)
           }
        selectedButton(button: theSelectedButton!)
        PECs.insert(theSelectedButton, at: index)
    }
    
    
    func toggleTheButton(isOn: Bool, theButton: UIButton) {
        if (isOn == false) {
            setDefaultButtonForIpad(button: theButton)
            setDefaultButtonForIphone(button: theButton)
            if(PECisOn1 == false &&
             PECisOn2 == false &&
             PECisOn3 == false &&
             PECisOn4 == false &&
             PECisOn5 == false &&
             PECisOn6 == false &&
             PECisOn7 == false &&
             PECisOn8 == false &&
             PECisOn9 == false &&
             PECisOn10 == false) {
             ContinueToPEC2.backgroundColor = .systemGray5
            }
             RiskScore1! -= 5
        } else {
            selectedButton(button: theButton)
            PECisOn10 = false
            setDefaultButtonForIpad(button: NoneListed)
            setDefaultButtonForIphone(button: NoneListed)
            setBackgroundColor(button: ContinueToPEC2)
            RiskScore1! += 5
            
        }

    }
    
    
    func changeLabelFontForTitle(label: UILabel) {
        if  (PreExistingConditionsPage.traitCollection.horizontalSizeClass == .compact && PreExistingConditionsPage.traitCollection.verticalSizeClass == .regular ) {
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
        if (PreExistingConditionsPage.traitCollection.horizontalSizeClass == .compact && PreExistingConditionsPage.traitCollection.verticalSizeClass == .regular ){
        button.titleLabel?.font = button.titleLabel?.font.withSize(button.bounds.size.height/2)
        } else {
            button.titleLabel?.font = button.titleLabel?.font.withSize(button.bounds.size.height/1.2)
        }
    }
    
    
    @IBAction func PressCancer(_ sender: Any) {
        PECisOn1.toggle()
        toggleTheButton(isOn: PECisOn1, theButton: Cancer)
    }
    
    @IBAction func Press2Diabetes(_ sender: Any) {
        PECisOn2.toggle()
        toggleTheButton(isOn: PECisOn2, theButton: Type2Diabetes)
    }
    
    @IBAction func PressObesity(_ sender: Any) {
        PECisOn3.toggle()
        toggleTheButton(isOn: PECisOn3, theButton: Obesity)
    }
    
    @IBAction func PressTheSevereObesity(_ sender: Any) {
        PECisOn4.toggle()
        toggleTheButton(isOn: PECisOn4, theButton: PressSevereObesity)
    }
    
    @IBAction func PressCOPD(_ sender: Any) {
        PECisOn5.toggle()
        toggleTheButton(isOn: PECisOn5, theButton: COPD)
    }
    
    @IBAction func PressSickle(_ sender: Any) {
        PECisOn6.toggle()
        toggleTheButton(isOn: PECisOn6, theButton: SickleCellDiseases)
    }
   
    @IBAction func PressCKD(_ sender: Any) {
        PECisOn7.toggle()
        toggleTheButton(isOn: PECisOn7, theButton: CKD)
    }
    
    @IBAction func PressWeakenedImmuneSystem(_ sender: Any) {
        PECisOn8.toggle()
        toggleTheButton(isOn: PECisOn8, theButton: WeakenedImmuneSystem)
    }
    
    @IBAction func SevereHeartConditions(_ sender: Any) {
        PECisOn9.toggle()
        toggleTheButton(isOn: PECisOn9, theButton: SevereHeatConditions)
    }
    
    
    @IBAction func PressNone2(_ sender: Any) {
        PECisOn10.toggle()
        if (PECisOn10 == true) {
            removeFromArray(index: 5)
            PECisOn1 = false
            PECisOn2 = false
            PECisOn3 = false
            PECisOn4 = false
            PECisOn5 = false
            PECisOn6 = false
            PECisOn7 = false
            PECisOn8 = false
            PECisOn9 = false
            setBackgroundColor(button: ContinueToPEC2)
            RiskScore1 = 0
        } else {
            setDefaultButtonForIpad(button: NoneListed)
            setDefaultButtonForIphone(button: NoneListed)
            if(PECisOn1 == false &&
            PECisOn2 == false &&
            PECisOn3 == false &&
            PECisOn4 == false &&
            PECisOn5 == false &&
            PECisOn6 == false &&
            PECisOn7 == false &&
            PECisOn8 == false &&
            PECisOn9 == false &&
            PECisOn10 == false) {
                ContinueToPEC2.backgroundColor = .systemGray5
            }
            
        }
    
        
        
    }
        
    
    @IBAction func PressContinue(_ sender: Any) {
       if (PECisOn1 == true ||
           PECisOn2 == true ||
           PECisOn3 == true ||
           PECisOn4 == true ||
           PECisOn5 == true ||
           PECisOn6 == true ||
           PECisOn7 == true ||
           PECisOn8 == true ||
           PECisOn9 == true ||
           PECisOn10 == true) {
           
               self.performSegue(withIdentifier: "continue", sender: nil)
           
       }
        
    }
    
    
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "continue" {
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
       } else if segue.identifier == "back" {
            let vc = segue.destination as! SevereSymptoms
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
        
        PreExistingConditionsPage.backgroundColor = UIColor(red: 15/255.0, green: 43/255.0, blue: 59/255.0, alpha: 1)
        StackViewView.layer.cornerRadius = 10
        StackViewView.layer.shadowColor = UIColor.black.cgColor
        StackViewView.layer.shadowOffset = CGSize(width: 5, height: 5)
        StackViewView.layer.shadowRadius = 2
        StackViewView.layer.shadowOpacity = 0.5
        let PECs = [Cancer, Type2Diabetes, Obesity,PressSevereObesity, COPD, SickleCellDiseases, CKD, WeakenedImmuneSystem,SevereHeatConditions,  NoneListed]
        let PECisOns = [PECisOn1, PECisOn2, PECisOn3, PECisOn4, PECisOn5, PECisOn6, PECisOn7, PECisOn8, PECisOn9, PECisOn10]
        
        for PEC in PECs {
            if (self.view.traitCollection.horizontalSizeClass == .compact && self.view.traitCollection.verticalSizeClass == .regular){
            PEC?.layer.cornerRadius = 5
            } else {
                PEC?.layer.cornerRadius = 10
            }
        }
        
        func makeStayOn(index: NSInteger, boolArr: [Bool?],  buttonArr: [UIButton?]) {
            
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
        
        setBorderRadiusForIpad(button: ContinueToPEC2)
        setBorderRadiusForIphone(button: ContinueToPEC2)
        
        
        calculateNumberOfFalses(arr: PECisOns, button: ContinueToPEC2)
        makeStayOn2(buttonArr: PECs, boolArr: PECisOns)
       
    }
    
}

