//
//  ContentView.swift
//  TriviaExample
//
//  Created by BCCS 2022 on 11/20/24.
//

import SwiftUI

struct ContentView: View {
    
    //    var questions = [
    //        [
    //            "question": "What is 1 + 1?",
    //            "answers" : [
    //                1,
    //                2,
    //                3,
    //                4
    //            ],
    //            "correctAnswer": 2
    //        ],
    //        [
    //            "question": "What is 2 - 2?",
    //            "answers" : [
    //                0,
    //                2,
    //                -2,
    //                4
    //            ],
    //            "correctAnswer": 0
    //        ]
    //    ]
        
    let questions = [
        "What is 1 + 1?",
        "What is 1 - 1?"
    ]
    
    let answers = [
        [
            ["1", "Wrong"],
            ["2", "Correct"],
            ["3", "Wrong"],
            ["4", "Wrong"]
        ],
        [
            ["-2", "Wrong"],
            ["-1", "Wrong"],
            ["0", "Correct"],
            ["2", "Wrong"]
        ]
    ]

    @State private var questionIndex = 0
    
    @State private var message = "What is 1 + 1?"
    
    var body: some View {
        VStack {
            Text("TRIVIA GAME")

            Text(message)

            Button {
                checkAnswer(ans: 0)
            } label: {
                Text(answers[questionIndex][0][0])
            }

            Button {
                checkAnswer(ans: 1)
            } label: {
                Text(answers[questionIndex][1][0])
            }

            Button {
                checkAnswer(ans: 2)
            } label: {
                Text(answers[questionIndex][2][0])
            }

            Button {
                checkAnswer(ans: 3)
            } label: {
                Text(answers[questionIndex][3][0])
            }

            Button {
                nextQuestion()
            } label: {
                Text("Next Question")
            }

        }
    }
    
    func nextQuestion() {
        questionIndex += 1
        message = questions[questionIndex]
    }
    
    func checkAnswer(ans: Int){
        if (answers[questionIndex][ans][1] == "Correct") {
            message = "CORRECT"
        } else {
            message = "WRONG"
        }
    }
}

#Preview {
    ContentView()
}
