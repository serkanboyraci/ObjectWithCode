//
//  ViewController.swift
//  ObjectWithCode
//
//  Created by Ali serkan Boyracı  on 1.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let height = view.frame.size.height
        let width = view.frame.size.width
        
        
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2 , y: height * 0.5 - 50,
                               width: width * 0.8, height: 100)
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("My Button", for: .normal)
        myButton.setTitleColor(UIColor.cyan, for: .normal)
        myButton.frame = CGRect(x: width * 0.5-50, y: height * 0.7-50,
                                width: 100, height: 100)
        view.addSubview(myButton)
        
        //button eklediysen addtarget yani ne yapacağını yazmalısın
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: .touchUpInside)
    }
    
    @objc func myAction() {
        myLabel.text = "Tapped" //mylabelin yerini değiştirerek yapabilirsin.
    }
        
    
    

    
    


}

