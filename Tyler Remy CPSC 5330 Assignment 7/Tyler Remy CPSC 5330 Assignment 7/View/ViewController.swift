//
//  ViewController.swift
//  Tyler Remy CPSC 5330 Assignment 7
//
//  Created by user251942 on 2/24/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var schools = [
        SchoolRecord("Alabama","8-0"),
        SchoolRecord("Georgia","8-0"),
        SchoolRecord("Ole Miss","6-2"),
        SchoolRecord("Missouri","6-2"),
        SchoolRecord("LSU","6-2"),
        SchoolRecord("Alabama","8-0"),
        SchoolRecord("Tennessee","4-4"),
        SchoolRecord("Auburn","3-5"),
        SchoolRecord("Florida","3-5"),
        SchoolRecord("South Carolina","3-5"),
        SchoolRecord("Kentucky","3-5"),
        SchoolRecord("Mississippi State","1-7"),
        SchoolRecord("Arkansas","1-7"),
        SchoolRecord("Vanderbilt","0-8"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return schools.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = schools[indexPath.row].school
        content.secondaryText = schools[indexPath.row].record
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRow = indexPath.row
        performSegue(withIdentifier: "toTeamDetail", sender: selectedRow)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
            let navigation = segue.destination as! TeamDetail
            let selection = sender as! Int
            let nameToSend = schools[selection].school
            let recordToSend = schools[selection].record
            navigation.teamName = nameToSend
            navigation.teamRecord = recordToSend
        
    }
     
}

