import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var downloadedImage: UIImageView!
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBAction func submit(sender: UIButton) {
        startLoaderAnimation()
        print(".............................")
        if let text = urlTextField.text {
            print(text)
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // private methods
    private func startLoaderAnimation() {
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.WhiteLarge
        activityIndicator.startAnimating()
    }
    
    private func giveError(msg: String){
        errorLabel.text = msg;
    }
    
    private func alertError(activityController: UIActivityIndicatorView, msg: String) {
        let viewController = ViewController()
        activityController.stopAnimating()
        let alert = UIAlertController(title: "Alert", message: msg, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
        viewController.presentViewController(alert, animated: true, completion: nil)
    }
}