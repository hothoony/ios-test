import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!

    override func loadView() {
        print("## loadView")
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("## viewDidLoad")
        
        let myURL = URL(string: "https://developer.apple.com/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }

}
