//
//  WalletView.swift
//  ViewCodeExperience
//
//  Created by Julio Cesar on 03/08/20.
//  Copyright © 2020 Julio Cesar. All rights reserved.
//

import UIKit
import SnapKit

class WalletView: UIView {
    
    var rootView: UIView
    
    lazy var walletCard: UIView = {
        let view = UIView()
        return view
    }()
    
    init(rootView: UIView) {
        self.rootView = rootView
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func show() {
        UIApplication.shared.keyWindow?.rootViewController?.view.addSubview(rootView)
        
        setHierarchy()
        setUp()
        setStyle()
    }
    
    func setHierarchy() {
        self.addSubview(walletCard)
    }
    
    func setUp() {
        setStyle()
        setContraints()
    }
    
    func setContraints() {
        walletCard.snp.makeConstraints { (mkr) in
            mkr.left.right.equalToSuperview().offset(40)
            mkr.top.equalToSuperview().offset(40)
            mkr.bottom.equalTo(superview?.snp.centerX as! ConstraintRelatableTarget)
        }
    }
    
    func setStyle() {
        walletCard.backgroundColor = UIColor.blue
    }
}
