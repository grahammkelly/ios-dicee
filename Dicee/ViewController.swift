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

    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceFaces()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceFaces()
    }

    func updateDiceFaces() {
        updateDiceFaces(randomDie(), randomDie())
    }

    func updateDiceFaces(_ face1: Int, _ face2: Int) {
        setImg(diceImageView1, face1)
        setImg(diceImageView2, face2)
    }

    func setImg(_ imgView: UIImageView, _ diceTop: Int) {
        print("Setting dice '\(imgView.accessibilityIdentifier ?? "Unknown dice")' to 'dice\(diceTop)'")
//        imgView.image = UIImage(named: diceArray[diceTop-1])
        imgView.image = UIImage(named: "dice\(diceTop)")
    }

    func randomDie(sides: Int = 6) -> Int {
        return Int(arc4random_uniform(UInt32(sides))) + 1
    }

}
