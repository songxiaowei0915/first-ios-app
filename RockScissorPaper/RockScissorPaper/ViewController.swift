//
//  ViewController.swift
//  RockScissorPaper
//
//  Created by 宋小伟 on 2022/9/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var doraChoice: UIImageView!
    @IBOutlet weak var yourChoice: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var choices = ["rock", "scissor","paper"]
    
    func getResult(choiceIndex: Int) -> String {
        if choiceIndex == 0 {
            return "Equal"
        }
        else if choiceIndex == 1 {
            return "Doraemon wins"
        }
        
        return "You wins"
    }
    
    @IBAction func gameBegin(_ sender: UIButton) {
        let title = "Gmae Result"
        
        
        doraChoice.image = UIImage(named: "rock")
        let choiceIndex = Int.random(in: 0...2)
        yourChoice.image = UIImage(named: choices[choiceIndex])
        
        let message = getResult(choiceIndex: choiceIndex)
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}

