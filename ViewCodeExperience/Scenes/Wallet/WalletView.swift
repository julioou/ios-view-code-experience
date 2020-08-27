//
// +-----------------------------------------------------+
// |                                                     |
// |   Follow me on                                      |
// |       https://www.linkedin.com/in/julio-assis       |
// |       https://github.com/julioou                    |
// |                                                     |
// +-----------------------------------------------------+

import UIKit
import SnapKit
import ChameleonFramework
//import Colours

class WalletView: UIView {
// MARK: PROPERTIES
    lazy var navigationBar: UINavigationBar = {
        let navBar = UINavigationBar.instantiateNavigationBar(onTopOf: superview)
        return navBar
    }()

    var notificationBox: UIView = {
        let box = UIView()
        return box
    }()

    var notificationIcon: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()

    var cardHeader: UIView = {
       let view = UIView()
            return view
    }()

    var walletCard: UIView = {
        let view = UIView()
        return view
    }()

    var image: UIImage

    var featureBox: FeatureBaseView {
        return FeatureBaseView(image: image, title: "Send Money", detail: "Instant fund transfer between bank accounts")
    }
    init(image: UIImage) {
        self.image = image
        super.init(frame: .zero)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

//
//    func setImage(for imageView: UIImageView, withResource resource: String, ofType type: String) {
//        if let path = Bundle.main.path(forResource: resource, ofType: type) {
//            imageView.image = UIImage(contentsOfFile: path)
//        }
//    }
    func setCardStyle() {

    }

    func setFeatureButtonStyle() {

    }

}

// MARK: - VIEWCODEPROTOCOLS METHODS
extension WalletView: ViewCodeProtocol {
    func show() {
        setUp()
    }

    func setHierarchy() {
        UIApplication.shared.keyWindow?.rootViewController?.view.addSubview(self)
        addSubview(navigationBar)
        addSubview(walletCard)
        addSubview(notificationBox)
        addSubview(notificationIcon)
    }

    func setConstraints() {
        self.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }

        walletCard.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview().inset(40)
            make.top.equalTo(navigationBar.snp.bottom).offset(20)
            make.bottom.equalTo(self.snp.centerY)
        }
    }

    func setStyle() {
        walletCard.backgroundColor = UIColor.flatSkyBlue()
        walletCard.layer.cornerRadius = 10
        let navigationItem = UINavigationItem()
        navigationItem.title = "Wallet"
        navigationBar.items = [navigationItem]
    }
}
