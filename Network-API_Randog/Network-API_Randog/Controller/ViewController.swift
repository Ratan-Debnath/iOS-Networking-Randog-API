//
//  ViewController.swift
//  Network-API_Randog
//
//  Created by Flow Lab on 2/11/20.
//  Copyright © 2020 Flow Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
         print("test project")
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
        
        //set url as constant
        let randomImageEndpoint = DogAPI.Endpoint.randomImageFromAllDogsCollection.url
        
        // data task using Web API
        let task = URLSession.shared.dataTask(with: randomImageEndpoint) { (data, response, error) in
            guard let data = data else{
                return
            }
            print(data)
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                let url = json["message"] as! String
                print(url)
                
            } catch {
                print(error)
            }
            
            
        }
        task.resume()
        
        
    }
}




