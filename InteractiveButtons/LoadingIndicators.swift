//
//  LoadingIndicators.swift
//  Khabari
//
//  Created by Leoan Ranjit on 5/13/22.
//

import Foundation
import UIKit

extension UIButton{
    
    func startLoading(){
        let indicator = UIActivityIndicatorView(style: .medium)
        indicator.hidesWhenStopped = true
        indicator.startAnimating()
        indicator.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        indicator.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        self.addSubview(indicator)
        self.setTitle("", for: .normal)
    }
    func stopLoading(){
        self.setTitle(self.title(for: .normal), for: .normal)
    }
}
