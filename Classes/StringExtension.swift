//
//  StringExtension.swift
//  ModularComponent
//
//  Created by Bruno Bulso on 06/05/2018.
//

import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Constants.bundle(), value: "", comment: "")
    }
}
