//
//  directionsViewController.swift
//  project1CS691
//
//  Created by Kenneth Okereke on 12/9/18.
//  Copyright © 2018 Kenneth Okereke. All rights reserved.
//

import UIKit

class directionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var goBack: UIButton!
    
    @IBOutlet weak var Directions: UILabel!
    
    
    var directions = ["Walk out of the classroom","Walk straight through the hallway", "Turn left", "Walk straight ahead", "Turn left", "Walk straight", "Destination to the right", "Elevator"]
    var pictures = ["StartEntrance", "Hallway", "WindowHallway", "secondhallway", "thirdhallway", "closedestination", "destination1","elevator"]
    var arrow = ["Straight","Straight", "Left", "Straight", "Left", "Straight", "Right", "destination"]
    
    
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        goBack.layer.cornerRadius = 10
        goBack.clipsToBounds = true
        Directions.text = "LH West -> Elevator"
        

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return directions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
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


