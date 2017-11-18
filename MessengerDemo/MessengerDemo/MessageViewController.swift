//
//  MessageViewController.swift
//  MessengerDemo
//
//  Created by Vidyadhar V. Thatte on 11/18/17.
//  Copyright © 2017 VdThatte. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var messagesTable: UITableView!
    @IBOutlet weak var composeTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    
    var messages : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return self.messages.count
        
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
        cell.textLabel?.text = self.messages[indexPath.row]
        return cell
    }
    
    @IBAction func sendTapped(_ sender: UIButton) {
        
    }


}
