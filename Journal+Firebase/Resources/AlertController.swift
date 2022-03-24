//
//  AlertController.swift
//  Journal+Firebase
//
//  Created by Ivan Ramirez on 2/16/22.
//

import UIKit


struct AlertController {

    static func presentAlertControllerWith(alertTitle: String, alertMessage: String?, dismissActionTitle: String) -> UIAlertController {
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: dismissActionTitle, style: .cancel, handler: nil)
        alertController.addAction(dismissAction)

        return alertController
    }
}
