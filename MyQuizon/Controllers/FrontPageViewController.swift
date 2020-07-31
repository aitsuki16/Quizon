//
//  FrontPageViewController.swift
//  MyQuizon
//
//  Created by Ai on 2020/07/10.
//  Copyright © 2020 Igarashi Ai. All rights reserved.
//

import UIKit

class FrontPageViewController: UIViewController {
    var quizModule: Quiz = Quiz.init()

    @IBAction func StartPress(_ sender: Any) {
        performSegue(withIdentifier: "startToQuiz" , sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "startToQuiz"){
            var seg = segue.destination as! QuizViewController
            seg.quizModule = self.quizModule
        }
    }
  

}
