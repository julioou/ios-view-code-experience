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
        let image = UIImage()
        let view = WalletView(image: image)
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
