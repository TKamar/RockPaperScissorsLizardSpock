//
//  GameView.swift
//  RockPaperScissorsLizardSpock
//
//  Created by user216739 on 4/23/22.
//

import SwiftUI

class GameView: UIViewController {
    //Adding option to enter player name and a general explantion of which weapon is stronger
    
    @IBOutlet weak var CardPlayer1: UIImageView!
    @IBOutlet weak var CardPlayer2: UIImageView!
    
    @IBOutlet weak var numOfRounds: UILabel!
    
    @IBOutlet weak var ScorePlayer1: UILabel!
    @IBOutlet weak var ScorePlayer2: UILabel!
    var score1 : Int = 0;
    var score2 : Int = 0;
    
    @IBOutlet weak var lbl_winner: UILabel!
    
    let cards = [#imageLiteral(resourceName: "spock"), #imageLiteral(resourceName: "lizard"), #imageLiteral(resourceName: "stone"), #imageLiteral(resourceName: "scissors"),  #imageLiteral(resourceName: "paper")];
                                                                
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    
}
