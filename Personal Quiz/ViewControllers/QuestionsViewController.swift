//
//  QuestionsViewController.swift
//  Personal Quiz
//
//  Created by Stepan Vasilyeu on 12/1/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singlButtons: [UIButton]!
    
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwitches: [UISwitch]!
    
    @IBOutlet var rangedStackView: UIStackView!
    @IBOutlet var rangedLabels: [UILabel]!
    @IBOutlet var rangedSlider: UISlider!
    
    @IBOutlet var questionProgressView: UIProgressView!
    
    // MARK: - Private Properties
    private var questions = Question.getQuestions()
    private var questionIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    deinit {
        print("QuestionsViewController is delocated")
    }
}



// MARK: - Private Methods
extension QuestionsViewController {
    
    private func updateUI() {
        // Hide everything
        for stackView in [singleStackView, multipleStackView, rangedStackView] {
            stackView?.isHidden = true
        }
        
        // Get Current Question
        let currentQuestion = questions[questionIndex]
        
        // Set Current Question for question Label
        questionLabel.text = currentQuestion.text
        
        // Calculate Progress
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        // Set Progress for questionProgressView
        questionProgressView.setProgress(totalProgress, animated: true)
    }
    
    
}
