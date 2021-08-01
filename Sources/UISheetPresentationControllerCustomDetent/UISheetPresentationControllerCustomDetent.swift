//
//  UISheetPresentationControllerCustomDetent.swift
//  UISheetPresentationControllerCustomDetent
//
//  Created by Alex Perez on 7/31/21.
//

import UISheetPresentationControllerCustomDetentObjc

public extension UISheetPresentationController.Detent.Identifier {

    /// Retrieves a unique identifier for the specified height
    /// @param height The height of the detent
    static func custom(_ height: Double) -> Self {
        return UISheetPresentationControllerDetentIdentifierCustom(height)
    }
}
