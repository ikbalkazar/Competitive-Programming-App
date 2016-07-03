//
//  SearchTableViewCell.swift
//  Unagi
//
//  Created by ikbal kazar on 31/03/16.
//  Copyright © 2016 harungunaydin. All rights reserved.
//

import UIKit
import Parse

class SearchTableViewCell: UITableViewCell {
    
    var delegate: UITableViewController?
    var problem: Problem?
    
    @IBOutlet var problemLogo: UIImageView!
    @IBOutlet var problemName: UILabel!
    
    @IBOutlet var tagsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func displayAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: title, style: .Default, handler: { (action) -> Void in
            self.delegate?.dismissViewControllerAnimated(true, completion: nil)
        }))
        
        delegate?.presentViewController(alert, animated: true, completion: nil)
    }
   
    // Adds the problem to user's to do list.
    @IBAction func addButton(sender: AnyObject) {
        userData.add(problem!, key: kTodoProblemsKey)
    }
    
    func setProblemForCell(problem: Problem) {
        self.problem = problem
        problemLogo.image = UIImage(named: problem.website.name + "_Logo.png")
        problemName.text = problem.name
        
        tagsLabel.text = ""
        var isFirst = true
        if let tags = problem.tags as? [String] {
            for tag in tags {
                if !isFirst {
                    tagsLabel.text! += ", "
                }
                isFirst = false
                tagsLabel.text! += tag
            }
        }
    }
}
