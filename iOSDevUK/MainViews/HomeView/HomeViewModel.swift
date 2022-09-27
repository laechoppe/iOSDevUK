//
//  HomeViewModel.swift
//  iOSDevUK
//
//  Created by David Kababyan on 10/09/2022.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    @Environment(\.openURL) var openURL

    let aboutString = "iOSDevUK is a conference organised by the Computer Science Department at Aberystwyth University. iOS, iPhone, iPad, Apple Watch, watchOS, Apple TV and tvOS are trademarks of Apple Inc. For the avoidance of doubt, Apple Inc. has no association with this conference."
    
    let eventNotification = "iOSDevUK 10 has finished. Follow @iOSDevUK for details about next year."
    
    func showTwitterAccount(_ twitterId: String) {
        guard let url = URL(string: "https://twitter.com/\(twitterId)") else { return }
        self.openURL(url)
    }
}