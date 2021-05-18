//
//  MyTableViewController.swift
//  HeaderFooter
//
//  Created by Igor Polousov on 03.04.2021.
//

import UIKit

class MyTableViewController: UITableViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 && !a.isEmpty{
            return "A"
        } else if section == 1 && !b.isEmpty {
            return "B"
        } else if section == 2 && !c.isEmpty {
            return "C"
        } else if section == 3 && !d.isEmpty {
            return "D"
        } else if section == 4 && !e.isEmpty {
            return "E"
        } else if section == 5 && !f.isEmpty {
            return "F"
        } else if section == 6 && !g.isEmpty {
            return "G"
        }
        return nil
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return namesArray.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return a.count
        } else  if section == 1 {
            return b.count
        } else  if section == 2 {
            return c.count
        } else  if section == 3 {
            return d.count
        } else  if section == 4 {
            return f.count
        } else  if section == 5 {
            return g.count
        } else  if section == 6 {
            return g.count
        }
        return 0
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyTableViewCell

            cell.friendName.text = a[indexPath.row]
            return cell
        }
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyTableViewCell
            
            cell.friendName.text = b[indexPath.row]
            return cell
        }
        if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyTableViewCell
            
            cell.friendName.text = c[indexPath.row]
            return cell
            
        }
        if indexPath.section == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyTableViewCell
            cell.friendName.text = d[indexPath.row]
            return cell
        }
        if indexPath.section == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyTableViewCell
            cell.friendName.text = e[indexPath.row]
            return cell
        }
        if indexPath.section == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyTableViewCell
            
            cell.friendName.text = f[indexPath.row]
            return cell
        }
        if indexPath.section == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyTableViewCell
            
            cell.friendName.text = g[indexPath.row]
            return cell
            
        } else {
            return UITableViewCell()
        }
    }
    
    
}

