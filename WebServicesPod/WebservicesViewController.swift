//
//  WebservicesViewController.swift
//  WebServicesPod
//
//  Created by Vmoksha on 08/03/18.
//  Copyright © 2018 Vmoksha. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class WebservicesViewController: UIViewController {

    @IBOutlet weak var postResultLbl: UILabel!
    @IBOutlet weak var getResultlbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func getAction(_ sender: Any) {
        
         let urlString = "https://jsonplaceholder.typicode.com/users"
        Alamofire.request(urlString, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
        print("\(response)")
            
            do{
                let  responseString = try JSON(response.data!)
                print(responseString)
                
                self.getResultlbl.text = "\(responseString)"
            }
            catch{
                print(error.localizedDescription)
            }
        }
        
    }
    
    @IBAction func postAction(_ sender: Any) {
        
        let parameters = ["username": "@kilo_loco", "tweet": "HelloWorld"]
        
        let urlString = "https://jsonplaceholder.typicode.com/posts"
        
        Alamofire.request(urlString, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil).response {
            
            (response) in
            
            do{
                
                let jsonresponse = try JSON(response.data!)
                print(jsonresponse)
                
                self.postResultLbl.text = "\(jsonresponse)"
                
                
            }
            catch{
                print(error.localizedDescription)
            }
            
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
