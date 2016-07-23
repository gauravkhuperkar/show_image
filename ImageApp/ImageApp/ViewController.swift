import UIKit

class ViewController: UIViewController {
    
    // MARK : abcd
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var downloadedImage: UIImageView!
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBAction func submit(sender: UIButton) {
        
        let inputUrl = NSURL(string: urlTextField.text!)
        
        func load(data: NSData?) -> UIImage?{
            if let imageData = data {
                if let myImage = UIImage(data: imageData){
                    return myImage
                } else {
                    return nil
                }
            }
            return nil
        }
        
        if let url = inputUrl {
            startLoaderAnimation()
            let request = NSURLRequest(URL: url)
            let session = NSURLSession.sharedSession()
            
            session.dataTaskWithRequest(request, completionHandler: { (data, responce, error) in
                dispatch_async(dispatch_get_main_queue(),{
                    
                    if let myImage = LoadImage().load(data) {
                        self.downloadedImage.image = myImage
//                        self.activityController.stopAnimating()
                    } else {
                        print("else wala part")
                        self.giveError("Invalid")
                    }
                })
            }).resume()
            
        } else {
            print("no... url with space")
            self.giveError("Invalid !!!")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // private methods
    func startLoaderAnimation() {
//        activityController.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.WhiteLarge
//        activityController.startAnimating()
    }
    
    func giveError(msg: String){
//        errorInfoLable.text = msg;
    }
    
    func alertError(activityController: UIActivityIndicatorView, msg: String) {
        let viewController = ViewController()
        activityController.stopAnimating()
        let alert = UIAlertController(title: "Alert", message: msg, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
        viewController.presentViewController(alert, animated: true, completion: nil)
    }
    
}

