//
//  IconTextCustomButton.swift
//  ButtonAssignment
//
//  Created by Thejeswara Reddy on 08/04/21.
//

import Foundation
import UIKit

class IconTextCustomButton : UIButton{
        
    private let buttonTitle : UILabel = {
        let title = UILabel()
        title.numberOfLines = 1
        title.textAlignment = .center
        title.textColor = .white
        title.font = .systemFont(ofSize: 18, weight: .semibold)
       return title
    }()
    
    private let buttonicon : UIImageView = {
        let icon = UIImageView()
        icon.tintColor = .white
        icon.contentMode = .scaleAspectFit
        icon.clipsToBounds = true
       return icon
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(buttonicon)
        addSubview(buttonTitle)
        defaultUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        buttonTitle.sizeToFit()
        let iconsize : CGFloat = 20
        let iconRightPadding : CGFloat = 10
        let iconx : CGFloat = (frame.size.width - buttonTitle.frame.size.width - iconsize - iconRightPadding) / 2
        
        buttonicon.frame = CGRect(x: iconx, y: (frame.size.height - iconsize)/2, width: iconsize, height: iconsize)
        
        buttonTitle.frame = CGRect(x: iconx + iconsize + iconRightPadding, y: 0, width: buttonTitle.frame.size.width, height: frame.size.height)
    }
    
    private func defaultUI(){
        clipsToBounds = true
        layer.cornerRadius = 20
        layer.borderWidth = 1
        layer.borderColor = UIColor.secondarySystemBackground.cgColor
    }
    
    func configure(with viewmodel:CustomButtonViewModel){
        buttonTitle.text = viewmodel.buttonTitle
        buttonicon.image = UIImage(named: viewmodel.buttonIcon)?.withRenderingMode(.alwaysTemplate)
        let buttonState = viewmodel.buttonState
        switch buttonState {
        case .enabled:
            backgroundColor = UIColor(red: 0.129, green: 0.459, blue: 0.851, alpha:1)
        case .pressed:
            backgroundColor = UIColor(red: 0.090, green: 0.318, blue: 0.592, alpha:1)
        case .disabled:
            backgroundColor = UIColor(red: 0.851, green: 0.855, blue: 0.871, alpha:1)
            buttonTitle.textColor =  UIColor(red: 0.439, green: 0.459, blue: 0.545, alpha:1)
            buttonicon.tintColor = UIColor(red: 0.439, green: 0.459, blue: 0.545, alpha:1)
        case .none:
            break
        }
    }
    
}
