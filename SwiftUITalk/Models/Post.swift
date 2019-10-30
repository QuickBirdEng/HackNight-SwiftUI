//
//  Post.swift
//  SwiftUITest
//
//  Created by Stefan Kofler on 24.09.19.
//  Copyright © 2019 QuickBird Studios GmbH. All rights reserved.
//

import Foundation
import UIKit

struct Post {
    let id: Int
    let date: Date
    let modified: Date
    let link: String
    let title: String
    let content: String
    let excerpt: String
    let author: Author
}

extension Post: Identifiable {}

extension Post {

    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: date)
    }

    var header: UIImage {
        UIImage(named: "\(id)")!
    }

    var prettyHTML: String {
        let htmlURL = Bundle.main.url(forResource: "index", withExtension: "html")!
        let htmlTemplateCode = try! String(contentsOf: htmlURL)
        return htmlTemplateCode.replacingOccurrences(of: "$PLACEHOLDER$", with: content)
    }

}

