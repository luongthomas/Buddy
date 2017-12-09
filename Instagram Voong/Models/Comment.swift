//
//  Comment.swift
//  Instagram Voong
//
//  Created by Puroof on 8/19/17.
//  Copyright © 2017 ModalApps. All rights reserved.
//

import Foundation

struct Comment {
    var user: User?
    let text: String
    let uid: String
    
    init(user: User, dictionary: [String: Any]) {
        self.user = user
        self.text = dictionary["text"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
}
