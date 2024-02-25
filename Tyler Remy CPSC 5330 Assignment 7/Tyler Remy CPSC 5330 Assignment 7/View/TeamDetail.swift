//
//  TeamDetail.swift
//  Tyler Remy CPSC 5330 Assignment 7
//
//  Created by user251942 on 2/24/24.
//

import UIKit

class TeamDetail: UIViewController {

    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var teamLabel: UILabel!
    
    var teamName = ""
    var teamRecord = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teamLabel.text = teamName 
        recordLabel.text = teamRecord
        // Do any additional setup after loading the view.
    }
    
    @IBAction func returnButton(_ sender: UIButton) {
        dismiss(animated: true)
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
