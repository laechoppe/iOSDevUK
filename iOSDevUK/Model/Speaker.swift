//
//  Speaker.swift
//  iOSDevUK
//
//  Created by David Kababyan on 10/09/2022.
//

import Foundation

struct Weblink: Codable, Hashable {
    let name: String
    let recordName: String
    let url: String
    
    var webUrl: URL? {
        URL(string: url)
    }

}

struct Speaker: Codable, Identifiable, Hashable, Comparable {

    let id: String
    let name: String
    let biography: String
    let linkedIn: String?
    let twitterId: String?
    let imageLink: String
    let webLinks: [Weblink]?
    
    var imageUrl: URL? {
        URL(string: imageLink)
    }
    
    static func < (lhs: Speaker, rhs: Speaker) -> Bool {
        lhs.name < rhs.name
    }
}
