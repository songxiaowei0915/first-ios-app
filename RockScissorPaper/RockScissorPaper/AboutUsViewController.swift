//
//  AboutUsViewController.swift
//  RockScissorPaper
//
//  Created by 宋小伟 on 2022/9/28.
//

import UIKit

class AboutUsViewController: UIViewController {
    @IBOutlet weak var aboutUs: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let url = URL.init(string: "https://www.baidu.com")
        if let url = url {
            aboutUs.loadRequest(URLRequest.init(url: url))
        }
    }
    

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
