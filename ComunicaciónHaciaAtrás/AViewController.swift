

import UIKit

class AViewController: UIViewController, ColorSetteable {
    
    func changeBackgroundColor(to color: UIColor) {
        self.view.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let nextView = segue.destination as? BViewController
        
            else{
                return
        }
        
        nextView.delegate = self

    }
    
}



