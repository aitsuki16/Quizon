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
        // get the navigation bar from the current navigation controller if there is one
        let navBar = self.navigationController?.navigationBar

        // change the bar tint color to change what the color of the bar itself looks like
        navBar?.barTintColor = UIColor.brown

        // tint color changes the color of the nav item colors eg. the back button
        navBar?.tintColor = UIColor.white

        // if you notice that your nav bar color is off by a bit, sometimes you will have to
        // change it to not translucent to get correct color
        navBar?.isTranslucent = false

        // the following attribute changes the title color
        navBar?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
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
