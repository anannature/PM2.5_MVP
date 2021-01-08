

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    lazy var presenter = presenterPM(with: self)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.loadUrlPM()

    }


}

