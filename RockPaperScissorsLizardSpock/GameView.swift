

import UIKit

class GameView: UIViewController {
    //Adding option to enter player name and a general explantion of which weapon is stronger
    

    @IBOutlet weak var ScorePlayer1: UILabel!
    @IBOutlet weak var ScorePlayer2: UILabel!
    @IBOutlet weak var numOfRounds: UILabel!
    @IBOutlet weak var CardPlayer2: UIImageView!
    @IBOutlet weak var CardPlayer1: UIImageView!
    @IBOutlet weak var winner: UILabel!
    
    @IBOutlet weak var Player2Img: UIImageView!
    @IBOutlet weak var Player1Img: UIImageView!
    
    @IBOutlet weak var gameRoleImg: UIImageView!
    
    var scorePlayer1 : Int = 0;
    var scorePlayer2 : Int = 0;
    var timer = Timer();
    var counter: Int = 0;
    
    
    let cards = [#imageLiteral(resourceName: "spock"), #imageLiteral(resourceName: "lizard"), #imageLiteral(resourceName: "stone"), #imageLiteral(resourceName: "scissors"),  #imageLiteral(resourceName: "paper")]; // 0 - spock  1 - liz  2 - rock  3 - scissors  4 - paper
    
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
    
    // 0 - spock  1 - liz  2 - rock  3 - scissors  4 - paper
    func checkRoundWinner(_ val1: Int, _ val2: Int) {
        if val1 == 0 {
            if val2 == 2 || val2 == 3 {
                scorePlayer1 += 1;
            }
            else if val2 == 1 || val2 == 4 {
                scorePlayer2 += 1;
            }
        }
        
        if val1 == 1 {
            if val2 == 0 || val2 == 4 {
                scorePlayer1 += 1;
            }
            else if val2 == 2 || val2 == 3 {
                scorePlayer2 += 1;
            }
        }
        
        if val1 == 2 {
            if val2 == 1 || val2 == 3 {
                scorePlayer1 += 1;
            }
            else if val2 == 0 || val2 == 4 {
                scorePlayer2 += 1;
            }
        }
        
        if val1 == 3 {
            if val2 == 1 || val2 == 4 {
                scorePlayer1 += 1;
            }
            else if val2 == 2 || val2 == 0 {
                scorePlayer2 += 1;
            }
        }
        
        if val1 == 4 {
            if val2 == 2 || val2 == 0 {
                scorePlayer1 += 1;
            }
            else if val2 == 1 || val2 == 3 {
                scorePlayer2 += 1;
            }
        }
        
        ScorePlayer1.text = "Score Player 1: \(scorePlayer1)";
        ScorePlayer2.text = "Score Player 1: \(scorePlayer2)";
        
    }


}
