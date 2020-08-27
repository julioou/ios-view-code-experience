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

class WalletView: UIView, ViewCodeProtocol {
    lazy var navigationBar: UINavigationBar = {
        let navBar = UINavigationBar.instantiateNavigationBar(onTopOf: superview)
        return navBar
    }()

    lazy var notificationBox: UIView = {
        let box = UIView()
        return box
    }()

    lazy var notificationIcon: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()

    lazy var cardHeader: UIView = {
       let view = UIView()
            return view
    }()

    lazy var walletCard: UIView = {
        let view = UIView()
        return view
    }()

    init() {
        super.init(frame: .zero)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func show() {
        UIApplication.shared.keyWindow?.rootViewController?.view.addSubview(self)
        self.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        setUp()
    }

    func setHierarchy() {
        addSubview(navigationBar)
        addSubview(walletCard)
        addSubview(notificationBox)
        addSubview(notificationIcon)
    }

    func setConstraints() {
        walletCard.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview().inset(40)
            make.top.equalTo(navigationBar.snp.bottom).offset(20)
            make.bottom.equalTo(self.snp.centerY)
        }
    }

    func setImage(for imageView: UIImageView, withResource resource: String, ofType type: String) {
        if let path = Bundle.main.path(forResource: resource, ofType: type) {
            imageView.image = UIImage(contentsOfFile: path)
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
