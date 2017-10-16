
import UIKit

class MyPageViewController: UIPageViewController, UIPageViewControllerDataSource {

    let wonders = ["wonders1", "wonders2", "wonders3", "wonders4", "wonders5", "wonders6", "wonders7"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        view.backgroundColor = UIColor.lightGray
        
        let viewController = MyViewController()
        viewController.wonder = wonders.first
        
        let viewControllers = [viewController]
        setViewControllers(viewControllers, direction: .forward, animated: true, completion: nil)
        
        configurePageControl()
        
    }

    var pageControl = UIPageControl()
    
    func configurePageControl() {
        // The total number of pages that are available is based on how many available colors we have.
        pageControl = UIPageControl(frame: CGRect(x: 0,y: UIScreen.main.bounds.maxY - 50,width: UIScreen.main.bounds.width,height: 50))
        self.pageControl.numberOfPages = 7
        self.pageControl.currentPage = 0
        self.pageControl.tintColor = UIColor.white
        self.pageControl.pageIndicatorTintColor = UIColor.black
        self.pageControl.currentPageIndicatorTintColor = UIColor.green
        self.view.addSubview(pageControl)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let wonder = (viewController as! MyViewController).wonder
        
        print(wonder)

        let index = wonders.index(of: wonder!)
        
        pageControl.currentPage = index!
        
        if index! > 0 {
            let viewController = MyViewController()
            viewController.wonder = wonders[index! - 1]
            return viewController
        }
    
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let wonder = (viewController as! MyViewController).wonder
        
        print(wonder)
        
        let index = wonders.index(of: wonder!)
        
        pageControl.currentPage = index!

        if index! < wonders.count - 1 {
            let viewController = MyViewController()
            viewController.wonder = wonders[index! + 1]
            return viewController
        }
        
        return nil
    }
}
