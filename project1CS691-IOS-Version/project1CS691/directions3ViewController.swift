//
//  directions3ViewController.swift
//  project1CS691
//
//  Created by Kenneth Okereke on 12/15/18.
//  Copyright © 2018 Kenneth Okereke. All rights reserved.
//

import UIKit

class directions3ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var LHtoCafe: UILabel!
    @IBOutlet weak var goBack: UIButton!
    var directions = ["Walk out of the classroom","Walk straight", "Turn right", "Walk straight ahead", "Turn right", "First door to the right", "Open door", "take stairs", "To the first floor", "Open door", "Cafeteria"]
    var pictures = ["StartEntrance", "Hallwaypower", "deadend", "heading1-1", "locker1", "locker2","exitdoor", "stairs2", "understairs", "doors", "cafeteira" ]
    var arrow = ["Straight", "Straight", "Right","Straight","Right",  "Right", "Right", "Straight", "Straight","Straight","destination"]
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        goBack.layer.cornerRadius = 10
        goBack.clipsToBounds = true
        
        LHtoCafe.text = "LH-West -> Cafeteria"
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return directions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as? CellTableViewCell3
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



