import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet var containerView : UIView? = nil
    var webView: WKWebView?
    
    override func loadView() {
        super.loadView()
        self.webView = WKWebView()
        self.view = self.webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(fileURLWithPath: "http://www.google.com")
        let req = NSURLRequest(URL: url)
        self.webView?.loadRequest(req)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}