import UIKit

class AlertMsg {
    init(){}
    
    func errorMsg(activityController: UIActivityIndicatorView, msg: String) {
        let viewController = ViewController()
        activityController.stopAnimating()
        let alert = UIAlertController(title: "Alert", message: msg, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
        viewController.presentViewController(alert, animated: true, completion: nil)
    }
}
