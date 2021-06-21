//
//  QuizViewController.swift
//  QuizApp
//
//  Created by 髙野拓弥 on 2021/06/21.
//

import UIKit

class QuizViewController: UIViewController {
    
    var csvArry: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnAction(sender: UIButton) {
        print(sender.tag)
    }
    
    func loadCSV(fileName: String) -> [String] {
        let csvBundle = Bundle.main.path(forResource: fileName, ofType: "csv")!
        do {
            let csvData = try String(contentsOfFile: csvBundle, encoding: String.Encoding.utf8)
            let lineChange = csvData.replacingOccurrences(of: "\r", with: "\n")
            csvArry = lineChange.components(separatedBy: "\n")
            csvArry.removeLast()
        } catch {
            print("エラー")
        }
        return csvArry
    }

}
