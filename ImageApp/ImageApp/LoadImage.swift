import UIKit

class LoadImage {
    init(){}
    
//    func loadingTask(url: NSURL, downloadedImage: UIImageView, activityController: UIActivityIndicatorView, errorInfoLable: UILabel) -> NSURLSessionDataTask {
//        
////        let alert = AlertMsg()
//        let lableMsg = SetErrorMsgToLable()
//        let request = NSURLRequest(URL: url)
//        let session = NSURLSession.sharedSession()
//        
//        return session.dataTaskWithRequest(request, completionHandler: { (data, responce, error) in
//            dispatch_async(dispatch_get_main_queue(),{
//                
//                if let imageData = data {
//                    if let myImage = UIImage(data: imageData){
//                        downloadedImage.image = myImage
//                        print("if is here")
//                        activityController.stopAnimating()
//                    } else {
//                        print("Else is here")
////                        alert.errorMsg(activityController, msg: "Invalid url.. Please check your url")
//                        lableMsg.showErr(errorInfoLable, msg: "Invalid")
//
//                    }
//                }
//            })
//        })
//    }
    
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
}
