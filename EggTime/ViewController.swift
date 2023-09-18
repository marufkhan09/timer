//
//  ViewController.swift
//  EggTime
//
//  Created by Maruf Khan on 18/9/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        buttonName(name: sender.titleLabel!.text!)
    }
    
    
   
    func  buttonName(name: String){
      print(name)
    }
    
}

