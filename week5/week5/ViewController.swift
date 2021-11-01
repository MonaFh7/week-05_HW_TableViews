//
//  ViewController.swift
//  week5
//
//  Created by Monafh on 26/03/1443 AH.

import UIKit

class ViewController: UIViewController {

    var myCitites = [["ABHA", "RIYADH", "MEKKAH"], ["TABUK", "JEDDAH", "KHOBAR"]]
    var myImageCitites = [["ABHA","alriyadh","Makkah"],["tabuk","jeddah","khobar"]]
    let sections = ["Citites visited", "Cities want to visit"]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    @IBAction func edting(_ sender: UIBarButtonItem) {
        
        if tableView.isEditing {
            tableView.isEditing = false
        } else {
            tableView.isEditing = true
        }
        
    }
}
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCustomCell") as! TableViewCellMine
        
        cell.myLabel.text = myCitites[indexPath.section][indexPath.row]
        cell.myImage.image = UIImage(named: myImageCitites[indexPath.section][indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCitites[section].count
    }
    func numberOfSections(in tableView: UITableView) -> Int  {
        
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}
