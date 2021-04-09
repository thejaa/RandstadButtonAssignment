//
//  MyCustomButtonVM.swift
//  ButtonAssignment
//
//  Created by Thejeswara Reddy on 08/04/21.
//

import Foundation

enum ButtonState : String {
    case enabled = "Enabled"
    case pressed = "Pressed"
    case disabled = "Disabled"
}
struct CustomButtonViewModel {
    let buttonTitle : String
    let buttonIcon : String
    let buttonState : ButtonState?
}
