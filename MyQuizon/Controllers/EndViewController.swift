//
//  EndViewController.swift
//  MyQuizon
//
//  Created by Ai on 2020/07/10.
//  Copyright © 2020 Igarashi Ai. All rights reserved.
//

import UIKit

class EndViewController: UIViewController {

    var quizModule: Quiz!

    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var incorrectLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settup()

        // Do any additional setup after loading the view.
    }
    
    func settup(){
        setCorrect()
        setIncorrect()
        setTotal()
    }
    
    func setCorrect(){
        correctLabel.text = String(quizModule.giveCorrectcount())
    }
    
    func setIncorrect(){
        incorrectLabel.text = String(quizModule.giveIncorrectQuestionCount())
        
    }
    
    func setTotal(){
        totalLabel.text = String(quizModule.giveTotalQuestionCount())
    }
}
