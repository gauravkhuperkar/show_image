import UIKit

class ViewController: UIViewController {
    
    // MARK : abcd
    @IBOutlet weak var activityController: UIActivityIndicatorView!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var downloadedImage: UIImageView!
    @IBOutlet weak var errorInfoLable: UILabel!
    
    @IBAction func submit(sender: UIButton) {
        
        let lableMsg = SetErrorMsgToLable()
        let inputUrl = NSURL(string: urlTextField.text!)
        
        if let url = inputUrl {
            startLoaderAnimation()
            let request = NSURLRequest(URL: url)
            let session = NSURLSession.sharedSession()
            
            session.dataTaskWithRequest(request, completionHandler: { (data, responce, error) in
                dispatch_async(dispatch_get_main_queue(),{
                    
                    if let myImage = LoadImage().load(data) {
                        self.downloadedImage.image = myImage
                        self.activityController.stopAnimating()
                    } else {
                        print("else wala part")
                        lableMsg.showErr(self.errorInfoLable, msg: "Invalid")
                    }
                })
            }).resume()
            
        } else {
            print("no... url with space")
            lableMsg.showErr(errorInfoLable, msg: "Invalid !!!")
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
        activityController.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.WhiteLarge
        activityController.startAnimating()
    }
}

