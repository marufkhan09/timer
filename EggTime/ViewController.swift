//
//  ViewController.swift
//  EggTime
//
//  Created by Maruf Khan on 18/9/23.
//

import UIKit

class ViewController: UIViewController {
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    var loveScore = Int()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        loveScore = Int.random(in: 0...100)
        //  buttonName(name: sender.titleLabel!.text!)
        //loveCalculator(loveScore: loveScore)
        dayOfTheWeek(day: loveScore)
    }
    
    func  buttonName(name: String){
        switch name {
        case "Soft":
            print("\(softTime)")
        case "Medium":
            print("\(softTime)")
        case "Hard":
            print("\(softTime)")
        default:
            print("Error")
        }}
    
    func  loveCalculator(loveScore : Int){
        
        
        switch loveScore {
        case 81...100:
            print("love birds")
        case 40..<81:
            print("mentos and code")
        case ...40:
            print("forever alone")
        default:
            printContent("Error")
        }
        
    }
    
    func dayOfTheWeek(day: Int) {
        
        //Write your code inside this function.
        
        switch day {
        case 0:
            print("Sunday")
        case 1: print("Monday")
        case 2: print("Tuesday")
        case 3:print("Wednesday")
        case 4:print("Thrusday")
        case 5: print("Friday")
        case 6:print("Saturday")
        case 7... :print("Not a day")
            
        default:
            printContent("Error")
        }
        
    }
    
    
}

