//
// +-----------------------------------------------------+
// |                                                     |
// |   Follow me on                                      |
// |       https://www.linkedin.com/in/julio-assis       |
// |       https://github.com/julioou                    |
// |                                                     |
// +-----------------------------------------------------+

import UIKit

class ViewController: UIViewController {
    lazy var wallet: WalletView = {
       let view = WalletView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        DispatchQueue.main.async {
            self.wallet.show()
            self.view.addSubview(self.wallet)
        }
    }
}
