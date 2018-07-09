//
//  ViewController.swift
//  SoalNo1
//
//  Created by Jeri Purnama Maulid on 07/07/18.
//  Copyright © 2018 Jeri Purnama Maulid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var total: Int = 1
    let multiple = [1, 0, 3]
    var sum: Int = 0
    
    func kuadrat(nilai: Int, kuadrat: Int) -> Int {
        for k in 1...kuadrat {
            total = total * nilai
        }
        return total
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hasil: \(kuadrat(nilai: 2, kuadrat: 20))")
        print("Hasil: \(total)")
        print("Hasil: \(total.array)")
        
        let sumTotal = total.array.reduce(0, +)
        print("Hasil: \(sumTotal )")
     
    }

}

extension Int {
    var array: [Int] {
        return String(self).characters.flatMap{ Int(String($0))}
    }
}

