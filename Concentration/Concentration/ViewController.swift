//
//  ViewController.swift
//  Concentration
//
//  Created by Sabbir Ahmed on 5/9/18.
//  Copyright © 2018 Sabbir  Ahmed. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    
    var flipCount = 0 {
        didSet{
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoice = ["🎃", "👻", "🎃", "👻" ]
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoice[cardNumber], on: sender)
            //print("Card number: \(cardNumber)")
        }else{
            print("Chosen card was not in card button")
        }
       
        
        
        
        
        
    }
    

    
    
    func flipCard(withEmoji emoji: String, on button: UIButton ){
        
        if button.currentTitle == emoji {
            
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.5120026372, blue: 0.07434374232, alpha: 1)
            
            
        }else {
            
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
            
        }
        
        
        
        
    }
    
    
    

}

