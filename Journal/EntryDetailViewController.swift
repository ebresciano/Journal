//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by Eva Marie Bresciano on 5/11/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController, UITextFieldDelegate {
   
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let entry = entry {
            updateWithEntry(entry)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        titleTextField.resignFirstResponder()
        return true 
        
    }
    
    func updateWithEntry(entry: Entry) {
        
        self.navigationItem.title = entry.title
        bodyTextView.text = entry.bodyText
        titleTextField.text = entry.title
        
        
    }
        
    
    
    // MARK: - Actions
    
    @IBAction func clearDetailLabel(sender: AnyObject) {
        titleTextField.text = ""
        bodyTextView.text = ""
        
    }
  
    @IBAction func saveDetailLabel(sender: AnyObject) {
        if let entry = entry {
         entry.title = titleTextField.text ?? ""
         entry.bodyText = bodyTextView.text ?? ""
        
        } else {
            let entry = Entry(title: titleTextField.text ?? "", timeStamp: NSDate() , bodyText: bodyTextView.text ?? "")
            EntryController.sharedController.addEntry(entry)
            self.entry = entry
        }
        
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    
    
    
    

    

    
    // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
//    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "toEntry" {
//            let EntryController = segue.destinationViewController as? EntryDetailViewController
//               if let indexPath = tableView.indexPathForSelectedRow {
//                let journalEntry = updateWithEntry.entriesArray[indexPath.row]
//                  EntryController?.entriesArray = journalEntry
//      
//                
//            }
//        }
    
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
}
 



