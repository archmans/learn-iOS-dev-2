//
//  ViewController.swift
//  Choose Your Destiny
//
//  Created by Muhamad Salman Hakim Alfarisi on 07/06/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var choiceButton1: UIButton!
    @IBOutlet weak var choiceButton2: UIButton!
    
    var destinyBrain = DestinyBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        UpdateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        destinyBrain.nextDestiny(userChoice: sender.currentTitle!)
        
        UpdateUI()
    }
    
    func UpdateUI() {
        label.text = destinyBrain.getDestiny()
        choiceButton1.setTitle(destinyBrain.getChoice1(), for: .normal)
        choiceButton2.setTitle(destinyBrain.getChoice2(), for: .normal)
    }


}

