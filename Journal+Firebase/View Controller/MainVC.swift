//
//  EntryVC.swift
//  Journal+Firebase
//
//  Created by Ivan Ramirez on 2/16/22.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var saveButton: IRButton!
    @IBOutlet weak var updateButton: IRButton!
    @IBOutlet weak var fetchAllButton: IRButton!
    @IBOutlet weak var fetchOneButton: IRButton!
    
    private var saveOption = 1
    private var updateOption = 2

    override func viewDidLoad() {
        super.viewDidLoad()
        view.verticalGradient()
    }
    
    // Alert Controller
    func presentAlert(updateOrSave option: Int) {
        
        var nameTextField: UITextField?
        var statusTextField: UITextField?
        var objectTextField: UITextField?

        
        let myCustomAlert = AlertController.presentAlertControllerWith(alertTitle: "Employee", alertMessage: "Enter in the description", dismissActionTitle: "Cancel")
        
        myCustomAlert.addTextField { itemName in
            itemName.placeholder = "Enter Name"
            nameTextField = itemName
        }
        
        myCustomAlert.addTextField { itemStatus in
            itemStatus.placeholder = "Enter Status"
            nameTextField = itemStatus
        }
        
        myCustomAlert.addTextField { itemKey in
            itemKey.placeholder = "Enter Key"
            nameTextField = itemKey
        }
        
        // Actions
        let saveUpdateItemDetails = UIAlertAction(title: "Continue", style: .default) { _ in
            
            guard let name = nameTextField?.text, !name.isEmpty,
                    let status = statusTextField?.text,
                    let key = objectTextField?.text else { return }
        }
        
        
        
        self.present(myCustomAlert, animated: true, completion: nil)
        
    }


    @IBAction func saveButtonTapped(_ sender: Any) {
        saveButton.shake()
    }

    @IBAction func updateButtonTapped(_ sender: Any) {
        updateButton.shake()
        
    }

    @IBAction func fetchAllButtonTapped(_ sender: Any) {
        fetchAllButton.shake()
        EmployeeController.shared.readAll()
    }

    @IBAction func fetchOneButtonTapped(_ sender: Any) {
        fetchOneButton.shake()
        EmployeeController.shared.readEmployeeValue()
    }
}


