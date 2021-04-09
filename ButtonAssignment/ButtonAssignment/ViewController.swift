//
//  ViewController.swift
//  ButtonAssignment
//
//  Created by Thejeswara Reddy on 08/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    private var stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Enable state button
        let buttonEnabledState = IconTextCustomButton(frame: CGRect(x: 20, y: 0, width: self.view.frame.width/1.2, height: HeightConstraints.height))
        view.addSubview(buttonEnabledState)
        buttonEnabledState.configure(with: CustomButtonViewModel(buttonTitle: CBTitles.title, buttonIcon: SFSymbols.lock, buttonState: ButtonState.enabled))
        buttonEnabledState.addTarget(self, action: #selector(isButtonEnabledAction), for: .touchUpInside)
        // Pressed state button
        let buttonPressedState = IconTextCustomButton(frame: CGRect(x: 20, y: buttonEnabledState.frame.height, width: self.view.frame.width/1.2, height: HeightConstraints.height))
        view.addSubview(buttonPressedState)
        buttonPressedState.configure(with: CustomButtonViewModel(buttonTitle: CBTitles.title, buttonIcon: SFSymbols.lock, buttonState: ButtonState.pressed))
        buttonPressedState.addTarget(self, action: #selector(isButtonPressedAction), for: .touchUpInside)
        // Disabled state button
        let buttonDisableState = IconTextCustomButton(frame: CGRect(x: 20, y: buttonPressedState.frame.height , width: self.view.frame.width/1.2, height: HeightConstraints.height))
        view.addSubview(buttonDisableState)
        buttonDisableState.configure(with: CustomButtonViewModel(buttonTitle: CBTitles.title, buttonIcon: SFSymbols.lock, buttonState: ButtonState.disabled))
        buttonDisableState.addTarget(self, action: #selector(isButtonDisableAction), for: .touchUpInside)
        // Displaying three button in a vertical stackview
        stackView = UIStackView(arrangedSubviews: [buttonEnabledState,buttonPressedState,buttonDisableState])
        stackviewUI()
    }
}
extension ViewController{
    private func stackviewUI(){
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20).isActive = true
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: HeightConstraints.stackviewheight).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
}
extension ViewController{
    @objc func isButtonEnabledAction(){
        // Implement button action here
    }
    @objc func isButtonPressedAction(){
        // Implement button action here
    }
    @objc func isButtonDisableAction(){
        // Implement button action here
    }
}
