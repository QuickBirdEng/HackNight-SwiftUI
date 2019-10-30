//
//  AuthorsGridView.swift
//  SwiftUITalk
//
//  Created by Stefan Kofler on 10.10.19.
//  Copyright © 2019 QuickBird Studios GmbH. All rights reserved.
//

import SwiftUI
import UIKit

struct AuthorsGridView: View {
    let authors: [Author]

    @State var isDragging: Bool = false
    @State var dragOffset: CGSize = .zero

    var body: some View {
        ZStack(alignment: .bottom) {
            ForEach(0 ..< self.authors.count) { index in
                AuthorCardView(author: self.authors[index])
            }
        }
    }
}

struct AuthorCardView: View {
    let author: Author

    var body: some View {
        Image(uiImage: author.image)
            .resizable()
            .scaledToFit()
            .frame(width: 200)
            .mask(RoundedRectangle(cornerRadius: 20))
            .shadow(radius: 8)
    }

}

struct AuthorsGridView_Previews: PreviewProvider {
    static var previews: some View {
        let authors = DataService().getPosts().map { $0.author }
        let distinctAuthors = Array(Set(authors))
            .filter { $0.id != 10 }
            .sorted(by: { $0.id > $1.id })
        return AuthorsGridView(authors: distinctAuthors)
    }
}
