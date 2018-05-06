//
//  StringExtension.swift
//  ModularComponent
//
//  Created by Bruno Bulso on 06/05/2018.
//

import Foundation

extension String {
    
    func localized(bundle: Bundle) -> String {
        return NSLocalizedString(self, tableName: nil, bundle: bundle, value: "", comment: "")
    }
}
