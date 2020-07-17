//
//  QuizViewController.swift
//  MyQuizon
//
//  Created by Ai on 2020/07/10.
//  Copyright © 2020 Igarashi Ai. All rights reserved.
//

import UIKit

class QuizCell: UITableViewCell {
    
    
    @IBOutlet weak var answerLabel: UILabel!
}

class QuizViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var quizModule: Quiz!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizAnswerList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        answerCheck = quizAnswerList[indexPath.row]
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "quizCell") as! QuizCell
        cell.answerLabel.text = quizAnswerList[indexPath.row]
        return cell
        
    }
    var answerCheck = "nothing"
    var quizAnswerList = ["answer 1", "answer 2", "answer 3", "answer 4"]
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBAction func actionSubmit(_ sender: Any) {
    }
    
    @IBOutlet weak var quizTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        quizTable.delegate = self
        quizTable.dataSource = self
        settup(check: quizModule.moveToNextQuestion())

    }
    
    func setCount() {
        var temp = ""
        temp.append(String (quizModule.givecurrentQuestionValue()))
        temp.append("/")
        temp.append(String (quizModule.giveTotalQuestionCount()))
        
        countLabel.text = temp

    }
    
    func settup(check:Bool){
        if(check){
            setCount()
            setQuestion()
            setChoices()
            quizTable.reloadData()
        }else {
          performSegue(withIdentifier: "QuizToEnd", sender: nil)
        }
    }
   
    
    func setQuestion() {
        questionLabel.text = quizModule.giveCurrentQuestion().giveQuestion()
    }
    
    func setChoices () {
        quizAnswerList = quizModule.giveCurrentQuestion().giveChoices()
        answerCheck = quizAnswerList[0]
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
