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
        self.snp.makeConstraints { (mkr) in
            mkr.edges.equalToSuperview()
        }
        setUp()
    }
    
    func setHierarchy() {
        self.addSubview(walletCard)
        self.addSubview(notificationIcon)
    }

    func setContraints() {
        notificationIcon.snp.makeConstraints { (mkr) in
            mkr.top.equalToSuperview().offset(40)
            mkr.right.equalToSuperview().offset(-30)
            mkr.size.equalTo(30)
        }

        walletCard.snp.makeConstraints { (mkr) in
            mkr.left.right.equalToSuperview().inset(40)
            mkr.top.equalTo(notificationIcon.snp.bottomMargin).offset(40)
            mkr.bottom.equalTo(self.snp.centerY)
        }
    }
    
    func setNotificationIcon() {
        if let path = Bundle.main.path(forResource: "notification_icon", ofType: "png") {
            notificationIcon.image = UIImage(contentsOfFile: path)
        }
    }

    func setStyle() {
        walletCard.backgroundColor = UIColor.flatSkyBlue()
//        self.backgroundColor = UIColor.flatMint()
        walletCard.layer.cornerRadius = 10
        setNotificationIcon()
    }
}
