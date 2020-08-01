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
        questionList = [Question.init(que: "(sabaahul khayr) صباح الخير", ans: "おはよう", c1: "おやすみ", c2: "ありがとう", c3: "おはよう", c4: "またね"), Question.init(que: " (kayfa haalak) كيف حالك؟", ans: "お元気ですか？", c1: "美味しいですか？", c2: "お元気ですか？", c3: "おやすみ", c4: "おはよう"), Question.init(que: "(masaa' al-khayr) مساء الخير　", ans: "今晩は", c1: "今晩は", c2: "ありがとう", c3: "どういたしまして", c4: "またね"), Question.init(que: "(tusbih ala khayr)تصبح على خير", ans: "おやすみ", c1: "大好きです", c2: "お元気ですか", c3: "すみません", c4: "おやすみ"), Question.init(que: "(aasif) أسف", ans: "ごめなさい", c1: "ありがとう", c2: "こんにちは", c3: "ごめなさい", c4: "おねがいします"),
            Question.init(que: "(ma-a as-salaama) مع السلامة", ans: "さようなら", c1: "さようなら", c2: "ありがとう", c3: "おやすみ", c4: "おはよう"),
        Question.init(que: "(sabaahul khayr) صباح الخير", ans: "おはよう", c1: "おやすみ", c2: "ありがとう", c3: "おはよう", c4: "またね"), Question.init(que: "(shukran) شكرا", ans: "ありがとう", c1: "ありがとう", c2: "どういたしまして", c3: "おやすみ", c4: "今晩は"),Question.init(que: "(al'afw) ألعفو", ans: "どういたしまして", c1: "お元気ですか？", c2: "また今度", c3: "ありがとう", c4: "どういたしまして"), Question.init(que: "(ana ouhibouk) أنا أحبك", ans: "大好きです", c1: "大好きです", c2: "おやすみ", c3: "ごめなさい", c4: "おねがいします"),]
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
    
    func giveIncorrectQuestionCount() -> Int{
        return incorrectCount
    }
    
    func givecurrentQuestionValue() -> Int{
        return (currentQuestion + 1)
    }
    
    func giveCorrectcount() -> Int{
        return correctCount 
    }
    
    func reset() {
        currentQuestion = 0
        incorrectCount = 0
        correctCount = 0
    }
}
