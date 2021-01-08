

import Foundation



let model = textFileModel()

protocol PresenterView: class {
    func updateViewPM()
}

class presenterPM {
    
    weak var view: PresenterView?
    
    init(with view: PresenterView) {
        self.view = view
    }
    
    func loadUrlPM() {
        self.view?.updateViewPM()
    }
}

extension ViewController: PresenterView {
   func updateViewPM() {
    
    let modelPM = "\(String(describing: model.sentText()!))"

    let url = URL(string:modelPM)!
    
    webView.load(URLRequest(url: url))
}
}
