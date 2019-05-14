//
//  TankRoomView.swift
//  CS691Project
//
//  Created by Kenneth Okereke on 5/13/19.
//  Copyright © 2019 Kenneth Okereke. All rights reserved.
//

import UIKit

class TankRoomView: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var image: [ImageObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image = createarray()
        tableview.delegate = self
        tableview.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }
    
    func createarray() -> [ImageObject] {
        
        var tempImages: [ImageObject] = []
        
        let Image1 = ImageObject(images: #imageLiteral(resourceName: "B01.jpg"), title: "Make a right")
        let Image2 = ImageObject(images: #imageLiteral(resourceName: "B06.jpg"), title: "Go straight")
        let Image3 = ImageObject(images: #imageLiteral(resourceName: "B10.jpg"), title: "You will see a door")
        let Image4 = ImageObject(images: #imageLiteral(resourceName: "B16.jpg"), title: "Make a left")
        let Image5 = ImageObject(images: #imageLiteral(resourceName: "B18.jpg"), title: "Go straight")
        let Image6 = ImageObject(images: #imageLiteral(resourceName: "B20.jpg"), title: "Make a quick right to classroom")
        
        
        tempImages.append(Image1)
        tempImages.append(Image2)
        tempImages.append(Image3)
        tempImages.append(Image4)
        tempImages.append(Image5)
        tempImages.append(Image6)
        
        return tempImages
        
        
        
        
    }
    
    
}

extension TankRoomView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let images = image[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BCell") as! BCell
        
        cell.setB(image: images)
        
        return cell
        
        
        
        
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "ARViewController")
//            as? ViewController
//        self.navigationController?.pushViewController(vc!, animated: true)
//        
//    }
//    
    
}
