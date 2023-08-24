//
//  ViewController.swift
//  ios app
//
//  Created by Pavel Bagdalov on 24.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        parseJSON()
    }

    private func parseJSON(){
        guard let path = Bundle.main.path(forResource: "data", ofType: "json") else {
            return
        }
        let url = URL(fileURLWithPath: path)
        var result: Result?
        do{
            let jsonData = try Data(contentsOf: url)
            result = try JSONDecoder().decode(Result.self, from: jsonData)
            
            if let result = result {
                print(result)
            } else {
                print("Failed to parse")
            }
        }
        catch {
            print("Error: \(error)")
        }
    }

}
