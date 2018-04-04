//
//  ViewController.swift
//  Dicee
//
//  Created by Graham Kelly on 04/04/2018.
//  Copyright © 2018 Graham Kelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIdx1: Int = 0
    var randomDiceIdx2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {

        randomDiceIdx1 = Int(arc4random_uniform(6))
        randomDiceIdx2 = Int(arc4random_uniform(6))

        print(randomDiceIdx1, " / ", randomDiceIdx2)
    }

}
