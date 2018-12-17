//
//  directions2ViewController.swift
//  project1CS691
//
//  Created by Kenneth Okereke on 12/15/18.
//  Copyright © 2018 Kenneth Okereke. All rights reserved.
//

import UIKit

class directions2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var goBack: UIButton!
    
    @IBOutlet weak var lbl_label: UILabel!
    
    var directions = ["Get out of the Elevator turn left","Walk straight", "Turn right", "Walk straight", "Turn right", "Walk straight", "Destination to the right", "Lecture Hall West"]
    var pictures = ["Startpng", "Hallway-1", "deadend", "Straightway", "threetrash", "walkstraight", "upstairs","Entrance2"]
    var arrow = ["Left","Straight", "Right", "Straight", "Right", "Straight", "Right", "destination"]
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        goBack.layer.cornerRadius = 10
        goBack.clipsToBounds = true
        
        lbl_label.text = "Elevator -> LH-West"
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return directions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as? CellTableView2
        cell?.lbl.text = directions[indexPath.row]
        cell?.imageview.image = UIImage(named: pictures[indexPath.row])
        cell?.directions.image = UIImage(named: arrow[indexPath.row])
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "directionVC") as? directionVC
        vc?.image = UIImage(named: pictures[indexPath.row])!
        vc?.name = directions[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func Goback(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}



