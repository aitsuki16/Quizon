//
//  FrontPageViewController.swift
//  MyQuizon
//
//  Created by Ai on 2020/07/10.
//  Copyright © 2020 Igarashi Ai. All rights reserved.
//

import UIKit

class FrontPageViewController: UIViewController {

    @IBAction func StartPress(_ sender: Any) {
        performSegue(withIdentifier: "startToQuiz" , sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
