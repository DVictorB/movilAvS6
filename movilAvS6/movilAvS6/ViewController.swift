//
//  ViewController.swift
//  movilAvS6
//
//  Created by Mac14 on 20/04/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    //Table View to Controller
    @IBOutlet weak var tableView: UITableView!
    
    let posts:[ Post] = [
        Post(userName: "Victor13", imgProfile: "testImage", imgPost: "digimon2"),
        Post(userName: "Dante61", imgProfile: "testImage", imgPost: "digimon2"),
        Post(userName: "Luca29", imgProfile: "testImage", imgPost: "digimon"),
        Post(userName: "ElRomerito555", imgProfile: "testImage", imgPost: "digimon"),
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        as! CarTableViewCell
        
        let post = posts[indexPath.row]
        
        cell.userName.text = post.userName
        cell.imgProfile.image = UIImage(named: post.imgProfile)
        cell.imgPost.image = UIImage(named: post.imgPost)
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    

}

