//
//  AuthorView.swift
//  SwiftUITalk
//
//  Created by Stefan Kofler on 10.10.19.
//  Copyright © 2019 QuickBird Studios GmbH. All rights reserved.
//

import SwiftUI

struct AuthorView: View {
    let author: Author

    var body: some View {
        VStack(spacing: 24) {
            Image(uiImage: author.image)
                .resizable()
                .scaledToFit()
                .mask(Circle())
                .shadow(radius: 12)

            Text(author.name)
                .font(.title)

            Text(author.longDescription)
                .font(.caption)
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 32)
    }
}

struct AuthorView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorView(author: DataService().getDistinctAuthors()[0])
    }
}
