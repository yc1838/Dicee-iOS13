//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewTwo: UIImageView!
    @IBOutlet weak var diceImageViewOne: UIImageView!
    var leftDiceNumber = 1
    var rightDiceNumber = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // who.what = value
       //  diceImageViewOne.alpha = 0.5
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // every time the button is pressed, this function will run
        // [] is an array and [x, x ][index] means we can access the index-th item inside the previous array.
        let imageSets = [UIImage(imageLiteralResourceName: "DiceTwo"),
                        UIImage(imageLiteralResourceName: "DiceThree"),
                        UIImage(imageLiteralResourceName: "DiceFour"),
                        UIImage(imageLiteralResourceName: "DiceFive"),
                        UIImage(imageLiteralResourceName: "DiceSix"),
                        UIImage(imageLiteralResourceName: "DiceOne")]
        diceImageViewOne.image = imageSets[leftDiceNumber]
        leftDiceNumber = Int.random(in: 0...5)
        diceImageViewTwo.image = imageSets.randomElement() // same effect as last 2 lines

    }
    
}

