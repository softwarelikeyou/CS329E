
import UIKit

class MyViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var imageView1 = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Remove
        //let imageName = "wonders1"
        //let image = UIImage(named: imageName)
        //imageView1 = UIImageView(image: image!)
        imageView1.frame = CGRect(x: 20, y: 200, width: 300, height: 300)
        imageView1.alpha = 1
        imageView1.isHidden = false
        //imageView1.backgroundColor = UIColor.blue
        self.view.addSubview(imageView1)
        
    }
    
    var wonder: String? {
        didSet {
            imageView1.image = UIImage(named: wonder!)
        }
    }
}
