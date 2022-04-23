
import SwiftUI


class HomePageView: UIViewController {

    
    @IBOutlet weak var btnStartGame: UIButton!
    @IBAction func btnStartGame(_ sender: UIButton) {
            let vc = storyboard?.instantiateViewController(withIdentifier: "GameView") as! GameView
            present(vc, animated: true)
            
            print("btn");
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    



    
    
    
}
