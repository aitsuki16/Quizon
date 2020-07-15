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

        // Do any additional setup after loading the view.
    }
    

   

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "startToQuiz"){
            var seg = segue.destination as! QuizViewController
            
        }
    }
   

}
