//
//  Quiz.swift
//  MyQuizon
//
//  Created by Ai on 2020/07/12.
//  Copyright © 2020 Igarashi Ai. All rights reserved.
//

import Foundation

class Quiz {
    private var questionList: [Question]
    private var currentQuestion: Int
    private var correctCount: Int
    private var incorrectCount: Int
    
    init(){
        currentQuestion = 0
        correctCount = 0
        incorrectCount = 0
        questionList = [Question.init(que: "what is 2 + 2?", ans: "4", c1: "5", c2: "6", c3: "4", c4: "1"), Question.init(que: "what is the capitol of indiana", ans: "indianapolis", c1: "indianapolis", c2: "michigan", c3: "new york", c4: "indiana"), Question.init(que: "what is 2 * 2", ans: "4", c1: "3", c2: "6", c3: "4", c4: "8"), Question.init(que: "how many fingers does a hand have?", ans: "5", c1: "10", c2: "4", c3: "6", c4: "5"), Question.init(que: "what came first the chiken or the egg", ans: "egg", c1: "rooster", c2: "me", c3: "chiken", c4: "egg")]
    }
    
    func giveCurrentQuestion() -> Question{
        return questionList[currentQuestion]
    }
    
    func InputAnswer(input: Bool){
        if(input){
            correctCount += 1
        } else{
            incorrectCount += 1
        }
    }
    
    func moveToNextQuestion() -> Bool {
        if(currentQuestion == questionList.count - 1){
            return false
        } else{
            currentQuestion += 1
            return true
        }
    }
    
    func giveTotalQuestionCount() -> Int{
        return questionList.count
    }
    
    func givecurrentQuestionValue() -> Int{
        return (currentQuestion + 1)
    }
    
    func giveCorrectcount() -> Int{
        return correctCount 
    }
}
