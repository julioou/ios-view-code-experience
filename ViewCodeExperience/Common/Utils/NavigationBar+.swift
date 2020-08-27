//
// +-----------------------------------------------------+
// |                                                     |
// |   Follow me on                                      |
// |       https://www.linkedin.com/in/julio-assis       |
// |       https://github.com/julioou                    |
// |                                                     |
// +-----------------------------------------------------+

import Foundation

extension UINavigationBar {
    static func instantiateNavigationBar(onTopOf superview: UIView?) -> UINavigationBar {
        let emptyNavigationBar = UINavigationBar()
        guard let superviewWidth = superview?.frame.size.width else { return emptyNavigationBar }

        let rect = CGRect(x: 0,
                          y: UIApplication.shared.statusBarFrame.size.height,
                          width: superviewWidth,
                          height: 44)
        let navigationBar = UINavigationBar(frame: rect)

        return navigationBar
    }
}
