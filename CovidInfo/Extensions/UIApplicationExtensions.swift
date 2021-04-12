//
//  UIApplicationExtensions.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 7/4/21.
//

import UIKit

extension UIApplication {
    static var topMostViewController: UIViewController? {
        let keyWindow = UIApplication.shared.windows.first { $0.isKeyWindow }
        var viewController = keyWindow?.rootViewController
        while let presentedViewController = viewController?.presentedViewController {
            viewController = presentedViewController
        }
        return viewController
    }
}
