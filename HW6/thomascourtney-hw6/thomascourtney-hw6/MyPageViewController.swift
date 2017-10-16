
import UIKit

class MyPageViewController: UIPageViewController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "My Page View Controller"

        let pageControl = UIPageControl.appearance()
        pageControl.backgroundColor = UIColor.lightGray
        
        
    }
}
