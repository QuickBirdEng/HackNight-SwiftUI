//
//  DataService.swift
//  SwiftUITalk
//
//  Created by Stefan Kofler on 24.09.19.
//  Copyright © 2019 QuickBird Studios GmbH. All rights reserved.
//

import Foundation
import UIKit

class DataService {

    func getPosts() -> [Post] {
        let postsURL = Bundle.main.url(forResource: "Posts", withExtension: "json")!

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"

        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .formatted(dateFormatter)

        let postsData = try! Data(contentsOf: postsURL)
        return try! jsonDecoder.decode([Post].self, from: postsData)
    }

    func getDistinctAuthors() -> [Author] {
        let authors = getPosts().map { $0.author }
        return Array(Set(authors)).filter { $0.id != 10 }
    }

}
