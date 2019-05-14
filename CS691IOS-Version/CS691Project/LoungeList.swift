//
//  LoungeList.swift
//  CS691Project
//
//  Created by Kenneth Okereke on 5/13/19.
//  Copyright © 2019 Kenneth Okereke. All rights reserved.
//

import UIKit

class LoungeList: UIViewController {

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
        
        let Image1 = ImageObject(images: #imageLiteral(resourceName: "C01.jpg"), title: "Start walking straight")
        let Image2 = ImageObject(images: #imageLiteral(resourceName: "C03.jpg"), title: "Keep going straight")
        let Image3 = ImageObject(images: #imageLiteral(resourceName: "C07.jpg"), title: "Stop")
        let Image4 = ImageObject(images: #imageLiteral(resourceName: "C11.jpg"), title: "Make a Right")
        let Image5 = ImageObject(images: #imageLiteral(resourceName: "C12.jpg"), title: "The Loungr")
      
        
        
        tempImages.append(Image1)
        tempImages.append(Image2)
        tempImages.append(Image3)
        tempImages.append(Image4)
        tempImages.append(Image5)
       
        
        return tempImages
        
        
        
        
    }
    
    
}

extension LoungeList: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let images = image[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CCell") as! CCell
        
        cell.setC(image: images)
        
        return cell
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ARViewController")
            as? ViewController
        self.navigationController?.pushViewController(vc!, animated: true)

    }
    
    
}

