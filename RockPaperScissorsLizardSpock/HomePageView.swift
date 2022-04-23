
import UIKit


class HomePageView: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    

    @IBAction func btnStartGame(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "gameView") as! GameView
        present(vc, animated: true)
    }
    

    
    
    
}
