//
//  AlertError.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 12/4/21.
//

import UIKit

public enum ErrorType: String {
    case connection = "The network is not reachable"
    case allContinents = "All continents request error"
    case allCountries = "All countries request error"
}

class AlertError {
    public class func showAlertError(type: ErrorType, message: String?) {
        let alertController = UIAlertController(title: type.rawValue, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        UIApplication.topMostViewController?.present(alertController, animated: true, completion: nil)
    }
}
