//
//  Question.swift
//  CodeHistory
//
//  Created by Scott Rome on 3/3/22.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
           Question(questionText: "Who invented the world wide web?",
                     possibleAnswers: [
                        "Steve Jobs",
                        "Linus Torvald",
                        "Bill Gates",
                        "Tim Berners"],
                     correctAnswerIndex: 3),       
            
            Question(questionText: "What was the first object oriented programming language?",
                     possibleAnswers: [
                        "Simula",
                        "Python",
                        "Swift"],
                     correctAnswerIndex: 0),
           
            Question(questionText: "Who is the smelliest person of all time?",
                     possibleAnswers: [
                        "Me",
                        "Ally",
                        "My mom",
                        "Colty"],
                     correctAnswerIndex: 1),
           
           Question(questionText: "What would have been a great dog name?",
                    possibleAnswers: [
                       "Spot",
                       "Lobo",
                       "Wolf",
                       "Frank"],
                    correctAnswerIndex: 1),
           
           Question(questionText: "Who wrote the C Book?",
                    possibleAnswers: [
                       "I did",
                       "Kernighan & Ritchie",
                       "Carnigan & Ricky",
                       "Corrigan & Richards"],
                    correctAnswerIndex: 1)
        ]
}
