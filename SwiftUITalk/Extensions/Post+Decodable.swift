//
//  Post+Decodable.swift
//  SwiftUITalk
//
//  Created by Stefan Kofler on 10.10.19.
//  Copyright © 2019 QuickBird Studios GmbH. All rights reserved.
//

import Foundation

extension Post: Decodable {

    enum CodingKeys: String, CodingKey {
        case id
        case date
        case modified
        case link
        case title
        case content
        case excerpt
        case embedded = "_embedded"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)

        id = try values.decode(Int.self, forKey: .id)
        date = try values.decode(Date.self, forKey: .date)
        modified = try values.decode(Date.self, forKey: .modified)
        link = try values.decode(String.self, forKey: .link)

        let title = try values.nestedContainer(keyedBy: RenderedKeys.self, forKey: .title)
        self.title = try title.decode(String.self, forKey: .rendered)

        let content = try values.nestedContainer(keyedBy: RenderedKeys.self, forKey: .content)
        self.content = try content.decode(String.self, forKey: .rendered)

        let excerpt = try values.nestedContainer(keyedBy: RenderedKeys.self, forKey: .excerpt)
        self.excerpt = try excerpt.decode(String.self, forKey: .rendered)

        let embedded = try values.nestedContainer(keyedBy: EmbeddedKeys.self, forKey: .embedded)
        self.author = try embedded.decode([Author].self, forKey: .author)[0]
    }

    enum RenderedKeys: String, CodingKey {
        case rendered
    }

    enum EmbeddedKeys: String, CodingKey {
        case author
    }

}
