//
//  QuizViewController.swift
//  MyQuizon
//
//  Created by Ai on 2020/07/10.
//  Copyright © 2020 Igarashi Ai. All rights reserved.
//

import UIKit

class QuizCell: UITableViewCell {
    var quizModule: Quiz!
    
    @IBOutlet weak var answerLabel: UILabel!
}

class QuizViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizAnswerList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "quizCell") as! QuizCell
        cell.answerLabel.text = quizAnswerList[indexPath.row]
        return cell
        
    }
    
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
