//
//  Constants.swift
//  ModularComponent
//
//  Created by Bruno Bulso on 06/05/2018.
//

import Foundation

class Constants {
    
    static func bundle() -> Bundle {
        let path = Bundle(for: Constants.self).path(forResource: "ModularComponent", ofType: "bundle")!
        let bundle = Bundle(path: path) ?? Bundle.main
        return bundle 
    }
}
