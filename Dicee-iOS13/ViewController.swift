//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomizeDice(imageView: diceImageView1)
        randomizeDice(imageView: diceImageView2)
    }

    func randomizeDice(imageView: UIImageView) {
        let diceValue = Int.random(in: 1...6)

        switch diceValue {
        case 1:
            imageView.image = UIImage(named: "DiceOne")
        case 2:
            imageView.image = UIImage(named: "DiceTwo")
        case 3:
            imageView.image = UIImage(named: "DiceThree")
        case 4:
            imageView.image = UIImage(named: "DiceFour")
        case 5:
            imageView.image = UIImage(named: "DiceFive")
        case 6:
            imageView.image = UIImage(named: "DiceSix")
        default:
            imageView.image = UIImage(named: "DiceOne")
        }
    }

}

