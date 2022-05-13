//
//  ViewController.swift
//  InteractiveButtons
//
//  Created by Leoan Ranjit on 5/13/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btnLoad: InteractiveButtons!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLoadAction(_ sender: Any) {
        startLoading(color: .black)
        btnLoad.startLoading(color: .white)
    }
    @IBAction func btnStopLoading(_ sender: Any) {
        stopLoading()
        btnLoad.stopLoading()
    }
    
}

