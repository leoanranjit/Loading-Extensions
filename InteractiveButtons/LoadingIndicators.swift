//
//  LoadingIndicators.swift
//  Khabari
//
//  Created by Leoan Ranjit on 5/13/22.
//

import Foundation
import UIKit

class InteractiveButtons: UIButton{
    
    let indicator = UIActivityIndicatorView(style: .medium)
    var btnTitle = ""
    
    func startLoading(color: UIColor){
        UIView.animate(withDuration: 0.3) {
            self.btnTitle = self.title(for: .normal) ?? ""
            self.indicator.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(self.indicator)
            self.indicator.startAnimating()
            self.indicator.color = color
            self.indicator.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
            self.indicator.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
            self.isUserInteractionEnabled = false
            self.setTitle("", for: .normal)
        }
    }
    
    func stopLoading(){
        indicator.removeFromSuperview()
        self.isUserInteractionEnabled = true
        self.setTitle(btnTitle, for: .normal)
    }
}

extension UIViewController{
    
    func startLoading(color: UIColor) {
        let indicator = UIActivityIndicatorView(style: .medium)
        indicator.color = color
        indicator.startAnimating()
        let barButton = UIBarButtonItem(customView: indicator)
        self.navigationItem.setRightBarButton(barButton, animated: true)
    }
    
    func stopLoading(){
        self.navigationItem.setRightBarButton(UIBarButtonItem(), animated: true)
    }
}


