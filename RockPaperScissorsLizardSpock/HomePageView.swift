
import SwiftUI


class HomePageView: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBOutlet weak var btn: UIButton!
    
    @IBAction func btnStartGame(_ sender: UIButton) {
        
            let vc = storyboard?.instantiateViewController(withIdentifier: "gameView") as! GameView
            present(vc, animated: true)
        
            print("btn");
        
    }
    
    
    
//    let vc = storyboard?.instantiateViewController(withIdentifier: "gameView") as! GameView
//    present(vc, animated: true)
//
//    print("btn");

    
    
    
}
