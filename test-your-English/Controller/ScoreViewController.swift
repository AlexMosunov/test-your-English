//
//  ScoreViewController.swift
//  test-your-English
//
//  Created by Alex Mosunov on 2/6/20.
//  Copyright © 2020 Alex Mosunov. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {

    var score = 0
    var advise = ""
    var numOfQuestions = 0
    var level = ""
    
    @IBOutlet weak var resultTitle: UILabel!
    @IBOutlet weak var adviseTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultTitle.text = "\(score) / \(numOfQuestions)"
        adviseTitle.text = level

    }
    
    @IBAction func tryagainPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
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
