//
//  ViewController.swift
//  NavNoSB
//
//  Created by Jan Zelaznog on 12/03/22.
//

import UIKit

class ViewController: UIViewController {
    let btn = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btn.frame = CGRect(x: 200, y: 250, width: 150, height: 35)
        btn.setTitle("Say Hi!", for: .normal)
        btn.addTarget(self, action:#selector(btnTouch), for:.touchUpInside)
        self.view.addSubview(btn)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        btn.center = self.view.center
    }
    
    @objc func btnTouch() {
        let instancia = ViewController2()
        self.navigationController?.pushViewController(instancia, animated: true)
    }
}

