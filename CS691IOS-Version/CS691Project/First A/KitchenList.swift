//
//  KitchenList.swift
//  CS691Project
//
//  Created by Kenneth Okereke on 5/13/19.
//  Copyright © 2019 Kenneth Okereke. All rights reserved.
//

import UIKit

class KitchenList: UIViewController {
    
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
        
        let Image1 = ImageObject(images: #imageLiteral(resourceName: "A02.jpg"), title: "Make a Right")
        let Image2 = ImageObject(images: #imageLiteral(resourceName: "A08.jpg"), title: "Go Straight")
        let Image3 = ImageObject(images: #imageLiteral(resourceName: "A15.jpg"), title: "Make a right")
        let Image4 = ImageObject(images: #imageLiteral(resourceName: "A18.jpg"), title: "Do you see chairs?")
        let Image5 = ImageObject(images: #imageLiteral(resourceName: "A23.jpg"), title: "Make a quick right")
         let Image6 = ImageObject(images: #imageLiteral(resourceName: "A24.jpg"), title: "Your destination is the kitchen")
        
        
        tempImages.append(Image1)
        tempImages.append(Image2)
        tempImages.append(Image3)
        tempImages.append(Image4)
        tempImages.append(Image5)
        tempImages.append(Image6)
        
        return tempImages
        
        
        
        
    }
    

}

extension KitchenList: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let images = image[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell") as! ImageCell
        
        cell.setImage(image: images)
        
        return cell
        
        
    }
    
  
}
