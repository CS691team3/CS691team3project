//
//  directions4ViewController.swift
//  project1CS691
//
//  Created by Kenneth Okereke on 12/15/18.
//  Copyright © 2018 Kenneth Okereke. All rights reserved.
//

import UIKit

class directions4ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var Cafeteria: UILabel!
    @IBOutlet weak var goBack: UIButton!
    var directions = ["cafeteria", "Look for Stair F","Walk upstairs","Second stairs", "Stop at F2 door", "Walkthrough door", "Turn left", "Walk straight", "Make left", "Walk straight", "Entrance to classroom"]
    var pictures = ["cafeteira", "Fdoor", "upstairss", "secondfloorstairs", "Doorf2", "Lockerroom", "StraightLocker", "lockerwalk", "Straight2","Straight22", "Loecturehall" ]
    var arrow = ["Straight","Straight", "Straight", "Straight", "Straight", "Straight", "Left", "Straight", "Left", "Straight", "Straight"]
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        goBack.layer.cornerRadius = 10
        goBack.clipsToBounds = true
        Cafeteria.text = "Cafeteria -> LH-West"
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return directions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell4", for: indexPath) as? CellTableViewCell4
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



