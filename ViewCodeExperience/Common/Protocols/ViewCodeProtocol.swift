//
// +-----------------------------------------------------+
// |                                                     |
// |   Follow me on                                      |
// |       https://www.linkedin.com/in/julio-assis       |
// |       https://github.com/julioou                    |
// |                                                     |
// +-----------------------------------------------------+

import Foundation

protocol ViewCodeProtocol {
    func show()
    func setHierarchy()
    func setUp()
    func setStyle()
    func setConstraints()
}

extension ViewCodeProtocol {

    func setUp() {
        setHierarchy()
        setConstraints()
        setStyle()
    }
}
