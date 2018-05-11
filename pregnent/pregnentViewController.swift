//
//  pregnentViewController.swift
//  pregnent
//
//  Created by Chang Sophia on 2018/5/11.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit
import GameKit

class pregnentViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var eldersisterImageview: UIImageView!
    let genders = ["boy", "girl", "twins"]
    @IBOutlet weak var babysisterButton: UIButton!
    

    
    func transparentButtons() {
        babysisterButton.alpha = 0.2
    }
    

   
    @IBAction func play(_ sender: UIButton) {
  
        let randomDistribution = GKRandomDistribution(lowestValue: 0, highestValue: genders.count - 1)
        let number = randomDistribution.nextInt()
        let gender = genders[number]
        eldersisterImageview.image = UIImage(named: gender)
        
        transparentButtons()
        var isWin = false
        
        if sender ==  babysisterButton {
            babysisterButton.alpha = 1
            
            if gender == "boy" {
                isWin = true
            }
            else if sender == babysisterButton {
                babysisterButton.alpha = 1
                
                if gender == "twins" {
                    isWin = true
                }
            }
        }  else if sender == babysisterButton {
                babysisterButton.alpha = 1
     
                if gender == "girl" {
                    isWin = true
             
                
                    
                }
        }
        
            if isWin {
                resultLabel.text = "這是上帝給你的考驗!"
            
            }else {
                resultLabel.text = "從她出生開始就會很開心，除了她出嫁那天"
        }
        }
            
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}

