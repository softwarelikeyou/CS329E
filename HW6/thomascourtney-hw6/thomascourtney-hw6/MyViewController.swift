
import UIKit

class MyViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var wonder: String? {
        didSet {
            imageView?.image = UIImage(named: wonder!)
        }
    }
}
