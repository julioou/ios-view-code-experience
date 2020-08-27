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

class FeatureBaseView: UIView {
// MARK: PROPERTIES
    var image: UIImage
    var title: String
    var detail: String

// MARK: INITIALIZER
    init(image: UIImage, title: String, detail: String) {
        self.image = image
        self.title = title
        self.detail = detail
        super.init(frame: .zero)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension FeatureBaseView: ViewCodeProtocol {
// MARK: METHODS
    func show() {
        setUp()
    }

    func setHierarchy() {
        UIApplication.shared.keyWindow?.rootViewController?.view.addSubview(self)
//        addSubview(image)
    }

    func setStyle() {
        
    }

    func setConstraints() {
        self.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }


}
