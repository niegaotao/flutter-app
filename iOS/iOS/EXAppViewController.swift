//
//  EXAppViewController.swift
//  iOS
//
//  Created by 聂高涛 on 2022/2/18.
//

import UIKit

class EXAppViewController: EXViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "ViewController"
        
        let button = UIButton(frame: CGRect(x: (self.view.frame.width - 100)/2.0, y: 200, width: 100, height: 44))
        button.backgroundColor = .green
        button.setTitle("Tap", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(onTap), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func onTap() {
        let vc = EXFlutterViewController()
        vc.path = "/a"
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

