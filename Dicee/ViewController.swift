//
//  ViewController.swift
//  Dicee
//
//  Created by Carlos Georgescu on 2020-05-22.
//  Copyright © 2020 Carlos Georgescu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    //gets triggered when screen loads up
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        //range between 0 -> 5
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        //change the dice images dynamically
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
        
    }
}

