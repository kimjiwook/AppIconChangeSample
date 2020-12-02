//
//  ViewController.swift
//  supportsAlternateIconsSample
//
//  Created by JW_Macbook on 2020/12/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    /// iCon J Change
    @IBAction func changeIConJ(_ sender: Any) {
        changeICon(iconName: "iConJ")
    }
    
    /// iCon W Change
    @IBAction func changeIConW(_ sender: Any) {
        changeICon(iconName: "iConW")
    }
    
    /// iCon Q Change
    @IBAction func changeIConQ(_ sender: Any) {
        changeICon(iconName: "iConQ")
    }
    
    /// Change icon Name
    /// - Parameter iconName: image Name
    func changeICon(iconName:String) {
        
        // 1. 필수 체크 (멀티 icon 지원여부 체크)
        guard UIApplication.shared.supportsAlternateIcons else {
            return
        }
        
        
        // 2. 변경하기
        UIApplication.shared.setAlternateIconName(iconName) { (iconChangeError) in
            
            if let error = iconChangeError {
                // 에러
                print(error.localizedDescription)
            }
            
            else {
                print("Success")
            }
            
        }
    }
    
}
