//
//  ViewController.swift
//  EggTime
//
//  Created by Maruf Khan on 18/9/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    let timesDictionary = ["Soft":5,"Medium":7,"Hard":12]
    var loveScore = Int()
    var totalTime = 0
    var secondPassed = 0
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var timerlabel: UILabel!
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        timerlabel.text = ""
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        //loveScore = Int.random(in: 0...100)
        //  buttonName(name: sender.titleLabel!.text!)
        //loveCalculator(loveScore: loveScore)
        //dayOfTheWeek(day: loveScore)
        buttonName(name: sender.titleLabel!.text!)
        countdownTimer()
    }
    
    func  buttonName(name: String){
        switch name {
        case "Soft":
            print("\(softTime)")
            totalTime = softTime
           
            
            
        case "Medium":
            print("\(mediumTime)")
            totalTime = mediumTime
          
        case "Hard":
            print("\(hardTime)")
            totalTime = hardTime
         
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
    
    func countdownTimer()
    {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.secondPassed < self.totalTime {
               
                self.secondPassed += 1
                var progress = Float(self.secondPassed)/Float(self.totalTime)
                self.progressBar.setProgress(progress, animated: true)
                self.timerlabel.text =   "\(self.totalTime - self.secondPassed) seconds left"
            
            } else {
                self.timerlabel.text = "Done"
                self.playSound(input: "alarm_sound")
                self.secondPassed = 0
                self.progressBar.setProgress(0.0, animated: true)
                Timer.invalidate()
            }
        }
        
    }
    func playSound(input: String) {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
}

