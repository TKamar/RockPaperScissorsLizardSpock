//
//  GameView.swift
//  RockPaperScissorsLizardSpock
//
//  Created by user216739 on 4/23/22.
//

import SwiftUI

class GameView: UIViewController {
    //Adding option to enter player name and a general explantion of which weapon is stronger
    
    @IBOutlet weak var ScorePlayer1: UILabel!
    @IBOutlet weak var ScorePlayer2: UILabel!
    @IBOutlet weak var numOfRounds: UILabel!
    @IBOutlet weak var CardPlayer2: UIImageView!
    @IBOutlet weak var CardPlayer1: UIImageView!
    @IBOutlet weak var winner: UILabel!
    
    
    
    var scorePlayer1 : Int = 0;
    var scorePlayer2 : Int = 0;
    var timer = Timer();
    var counter: Int = 0;
    
    
    let cards = [#imageLiteral(resourceName: "spock"), #imageLiteral(resourceName: "lizard"), #imageLiteral(resourceName: "stone"), #imageLiteral(resourceName: "scissors"),  #imageLiteral(resourceName: "paper")];
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.timer = Timer.scheduledTimer(withTimeInterval: 2 , repeats: true, block: {_ in
            self.runGame();
            self.counter += 1;
            self.numOfRounds.text = "Number Of Rounds: \(self.counter)/15";
            
            if self.counter == 15 {
                self.timer.invalidate();
                self.checkWinner();
            }
     })
    }
    
    /**
     Start Game
     */
    func runGame() {
        CardPlayer1.image = cards.randomElement();
        CardPlayer2.image = cards.randomElement();
        let card1Index: Int = cards.firstIndex(of: CardPlayer1.image!)!
        let card2Index: Int = cards.firstIndex(of: CardPlayer2.image!)!
        checkRoundWinner(card1Index, card2Index);
    }


  
    func checkWinner() {
        if scorePlayer1 > scorePlayer2 {
            winner.text = "Player 1 Won!";
        }
        else if scorePlayer1 < scorePlayer2 {
            winner.text = "Player 2 Won!";
        }
        else {
            winner.text = "It's a TIE";
        }
    
    }
    
    
    func checkRoundWinner(_ val1: Int, _ val2: Int) {
        print("val player 1: \(val1)");
        print("val player 2: \(val2)");
    }


}
