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
        print("Page displayed. Updating dice faces")
        updateDiceFaces()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Roll button selected. Updated dice faces")
        updateDiceFaces()
    }

    func updateDiceFaces() {
        updateDiceFaces(randomDie(), randomDie())
    }

    func updateDiceFaces(_ face1: Int, _ face2: Int) {
        let img1 = setImg(diceImageView1, face1)
        let img2 = setImg(diceImageView2, face2)
        print("\tImages set to '\(imageName(diceImageView1))': '\(img1)' and '\(imageName(diceImageView2))': '\(img2)'")
    }

    func imageName(_ imgView: UIImageView) -> String {
        return imgView.accessibilityIdentifier ?? "unknown dice"
    }

    func setImg(_ imgView: UIImageView, _ diceTop: Int) -> String {
        let imgName = diceArray[diceTop-1]
        imgView.image = UIImage(named: imgName)
        return imgName
    }

    func randomDie(sides: Int = 6) -> Int {
        return Int(arc4random_uniform(UInt32(sides))) + 1
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        print("Phone shaken. Updating dice")
        updateDiceFaces()
    }

}
