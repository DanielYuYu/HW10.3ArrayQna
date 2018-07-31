//
//  ViewController.swift
//  HW10.3ArrayQna
//
//  Created by Daniel on 2018/7/31.
//  Copyright © 2018年 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        hashQuestion()
      
        // Do any additional setup after loading the view, typically from a nib.
    }
    struct Qna {
        let question : String
        let answer : String
    }
    
    var stringArrays = [Qna(question: "有一個白癡搭飛機，把飛機上的馬桶拆下來丟了，猜為什麼?", answer: "因為他是白痴"),
                             Qna(question: "三分熟的牛排跟五分熟的牛排，為什麼見面的時候都不說話呢？", answer: "因為牛排不會說話"),
                             Qna(question: "喝水有什麼好處？", answer: "解渴"),
                             Qna(question: "什麼時候1+1不等於二?", answer: "算錯的時候"),
                             Qna(question: "什麼東西遠看像水桶 近看破一個洞？", answer: "破水桶"),
                             Qna(question: "什麼魚不會走路？", answer: "美人魚"),
                             Qna(question: "什麼路不能走？", answer: "網路"),
                             Qna(question: "為什麼北極熊要冬眠六個月？", answer: "因為沒人敢去叫牠"),
                             Qna(question: "木魚掉到水裡變什麼？", answer: "濕木魚"),
                             Qna(question: "什麼動物會被貼在牆上？", answer: "海報"),
                             Qna(question: "大樹跟小樹差在哪裡？", answer: "…插在土裡"),
                             Qna(question: "人類只要一閉上眼睛就會怎樣？", answer: "…就什麼也看不見")]
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func answerButton(_ sender: UIButton) {
        //按下答案鈕才顯示
        answerLabel.isHidden = false
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        hashQuestion()
    }
    
    func hashQuestion(){
        //用array亂數去給各個label
        //先把答案給Hidden
        let stringArray = stringArrays.randomElement()
        questionLabel.text = stringArray?.question
        answerLabel.text = stringArray?.answer
        answerLabel.isHidden = true
        questionLabel.isHidden = false
    }
}

