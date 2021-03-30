//
//  SwipingController.swift
//  CovidScanner4.0Try3
//
//  Created by Ananth Kashyap on 8/17/20.
//  Copyright © 2020 Ananth Kashyap. All rights reserved.
//

import UIKit

class AgeGroupPage : UIViewController {
    
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
    
    @IBOutlet var AgeGroupPage: UIView!
    var AgeRiskScore = 0
    var RiskScore1 = 0
    var RiskScore2 = 0
    var SymptomScore = 0
    
    @IBOutlet weak var StackViewView: UIView!
    func setBackgroundColor(button: UIButton) {
        button.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
    }
    
    func setDefaultButtonForIphone(button: UIButton) {
       if (AgeGroupPage.traitCollection.horizontalSizeClass == .compact && AgeGroupPage.traitCollection.verticalSizeClass == .regular ) {
         button.layer.borderWidth = 2
         
         button.backgroundColor = .white
         button.layer.borderColor = UIColor.black.cgColor
         button.setTitleColor(UIColor.link, for: .normal)
        }
    }
    
    func setDefaultButtonForIpad(button: UIButton) {
        if (AgeGroupPage.traitCollection.horizontalSizeClass == .regular && AgeGroupPage.traitCollection.verticalSizeClass == .regular ) {
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
    
    
    @IBOutlet weak var Category: UILabel!
    
    var isOn1 = false
    var isOn2 = false
    var isOn3 = false
    var isOn4 = false
    var SevisOn1 = false
    var SevisOn2 = false
    var SevisOn3 = false
    var SevisOn4 = false
    var PECisOn1 = false
    var PECisOn2 = false
    var PECisOn3 = false
    var PECisOn4 = false
    var PECisOn5 = false
    var PECisOn6 = false
    var PECisOn7 = false
    var PECisOn8 = false
    var PECisOn9 = false
    var PECisOn10 = false
    var PEC2isOn1 = false
    var PEC2isOn2 = false
    var PEC2isOn3 = false
    var PEC2isOn4 = false
    var PEC2isOn5 = false
    var PEC2isOn6 = false
    var PEC2isOn7 = false
    var PEC2isOn8 = false
    var PEC2isOn9 = false
    var PEC2isOn10 = false
    var SymptomisOn1 = false
    var SymptomisOn2 = false
    var SymptomisOn3 = false
    var SymptomisOn4 = false
    var SymptomisOn5 = false
    var SymptomisOn6 = false
    var SymptomisOn7 = false
    var SymptomisOn8 = false
    var SymptomisOn9 = false
    var SymptomisOn10 = false
    var SymptomisOn11 = false
    var SymptomisOn12 = false
    var SymptomisOn13 = false
    var SymptomisOn14 = false
    
    @IBOutlet var theAgeGroupPage: UIView!
    
    
    
    
    @IBAction func clickUnder60(_ sender: Any) {
        
        
        Under60.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
        Under60.setTitleColor(UIColor.white, for: .normal)
        Under60.layer.borderWidth = 0
        let buttonsSet1:[UIButton] = [Under35, Above60, Under18]
        for ageGroup in buttonsSet1 {
            ageGroup.backgroundColor = .white
            ageGroup.layer.borderColor = UIColor.black.cgColor
            if theAgeGroupPage.traitCollection.horizontalSizeClass == .compact && theAgeGroupPage.traitCollection.verticalSizeClass == .regular {
                ageGroup.layer.borderWidth = 2.0
            }else{
            ageGroup.layer.borderWidth = 3
            }
            
            ageGroup.setTitleColor(UIColor.link, for: .normal)
            setBackgroundColor(button: ContinueButton2)
             isOn1 = true
             isOn2 = false
             isOn3 = false
             isOn4 = false
            AgeRiskScore = 10
        }
        
    }
    
    @IBOutlet weak var SelectLabel: UILabel!
    @IBAction func clickUnder35(_ sender: Any) {
        Under35.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
        Under35.setTitleColor(UIColor.white, for: .normal)
        Under35.layer.borderWidth = 0
        let buttonsSet1:[UIButton] = [Under60, Above60, Under18]
        for ageGroup in buttonsSet1 {
            ageGroup.backgroundColor = .white
            ageGroup.layer.borderColor = UIColor.black.cgColor
            if theAgeGroupPage.traitCollection.horizontalSizeClass == .compact && theAgeGroupPage.traitCollection.verticalSizeClass == .regular {
                ageGroup.layer.borderWidth = 2.0
            } else {
            ageGroup.layer.borderWidth = 3
            }
            
            ageGroup.setTitleColor(UIColor.link, for: .normal)
            setBackgroundColor(button: ContinueButton2)
            isOn1 = false
            isOn2 = true
            isOn3 = false
            isOn4 = false
            AgeRiskScore = 5
        }
    }
    
    func showAlert() {
        let theAlert = UIAlertController(title: "You Cannot Use This Scanner", message: "You must be 18 years of age to use this scanner. Exit the app and have an adult contact your pediatrician if you are not within this age range." , preferredStyle: UIAlertController.Style.alert)
        //theAlert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            //theAlert.dismiss(animated: true, completion:nil)
        //}))
        self.present(theAlert, animated:true, completion:nil)

    }
    
    
    @IBAction func clicktheAbove60(_ sender: Any) {
        Above60.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
        Above60.setTitleColor(UIColor.white, for: .normal)
        Above60.layer.borderWidth = 0
        setBackgroundColor(button: ContinueButton2)
        let buttonsSet1:[UIButton] = [Under35, Under60, Under18]
        for ageGroup in buttonsSet1 {
            ageGroup.backgroundColor = .white
            ageGroup.layer.borderColor = UIColor.black.cgColor
            if theAgeGroupPage.traitCollection.horizontalSizeClass == .compact && theAgeGroupPage.traitCollection.verticalSizeClass == .regular {
                ageGroup.layer.borderWidth = 2.0
            } else {
            ageGroup.layer.borderWidth = 3
            }
            
            
            ageGroup.setTitleColor(UIColor.link, for: .normal)
            isOn1 = false
            isOn2 = false
            isOn3 = true
            isOn4 = false
            AgeRiskScore = 20
        }
    }
    
    
    @IBAction func clicktheUnder18(_ sender: Any) {
        Under18.backgroundColor = UIColor(red: 52/255.0, green: 92/255.0, blue: 175/255.0, alpha: 1.0)
        Under18.setTitleColor(UIColor.white, for: .normal)
        Under18.layer.borderWidth = 0
        let buttonsSet1:[UIButton] = [Under35, Above60, Under60]
        for ageGroup in buttonsSet1 {
            ageGroup.backgroundColor = .white
            ageGroup.layer.borderColor = UIColor.black.cgColor
            if theAgeGroupPage.traitCollection.horizontalSizeClass == .compact && theAgeGroupPage.traitCollection.verticalSizeClass == .regular {
                ageGroup.layer.borderWidth = 2.0
            } else {
            ageGroup.layer.borderWidth = 3
            }
                
            
            ageGroup.setTitleColor(UIColor.link, for: .normal)
            setBackgroundColor(button: ContinueButton2)
            showAlert()
            isOn1 = false
            isOn2 = false
            isOn3 = false
            isOn4 = true
        }
        

    }
    
    
    @IBAction func PressContinue(_ sender: Any) {
        if (isOn1 == true ||
        isOn2 == true ||
        isOn3 == true ||
        isOn4 == true){
            performSegue(withIdentifier: "continue", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "continue" {
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
    
    
    
    @IBOutlet weak var Above60: UIButton!
    @IBOutlet weak var Under60: UIButton!
    @IBOutlet weak var Under35: UIButton!
    @IBOutlet weak var Under18: UIButton!
    
    
    
    
    @IBOutlet weak var ContinueButton2: UIButton!
    //@IBOutlet weak var AgeOptionButton1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    StackViewView.layer.cornerRadius = 10
    StackViewView.layer.shadowColor = UIColor.black.cgColor
    StackViewView.layer.shadowOffset = CGSize(width: 5, height: 5)
    StackViewView.layer.shadowRadius = 2
    StackViewView.layer.shadowOpacity = 0.5
        AgeGroupPage.backgroundColor = UIColor(red: 15/255.0, green: 43/255.0, blue: 59/255.0, alpha: 1)
        
        
        func setBorderRadiusForIphone(button: UIButton) {
            button.layer.cornerRadius = 15
        }
               
        func setBorderRadiusForIpad(button: UIButton) {
            button.layer.cornerRadius = 30
        }
               
        
        func changeLabelFontForTitle(label: UILabel) {
               if  (theAgeGroupPage.traitCollection.horizontalSizeClass == .compact && theAgeGroupPage.traitCollection.verticalSizeClass == .regular ) {
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
               if (theAgeGroupPage.traitCollection.horizontalSizeClass == .compact && theAgeGroupPage.traitCollection.verticalSizeClass == .regular ){
               button.titleLabel?.font = button.titleLabel?.font.withSize(button.bounds.size.height/2)
               } else {
                   button.titleLabel?.font = button.titleLabel?.font.withSize(button.bounds.size.height/1.2)
               }
           }
        
        let ageGroups:[UIButton] = [Above60, Under18, Under35, Under60]
        let isOns = [isOn3, isOn4, isOn2, isOn1]
        
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
                setBackgroundColor(button: button)
            }
        }
        
        calculateNumberOfFalses(arr: isOns, button: ContinueButton2)
        makeStayOn2(buttonArr: ageGroups, boolArr: isOns)
               
        
        
        
               
        if (self.view.traitCollection.horizontalSizeClass == .compact && self.view.traitCollection.verticalSizeClass == .regular) {
            ContinueButton2.layer.cornerRadius = 15
                   
                  //headingLabel.layer.cornerRadius = headingLabel.frame.size.height/3
                  //headingLabel.layer.masksToBounds = true
        }
               
        if (self.view.traitCollection.horizontalSizeClass == .regular && self.view.traitCollection.verticalSizeClass == .regular) {
                   ContinueButton2.layer.cornerRadius = 30
                   
            
            
            //headingLabel.layer.cornerRadius = headingLabel.frame.size.height/2
            //headingLabel.layer.masksToBounds = true
        }
        //headingLabel.backgroundColor = UIColor.white
        
}
}
