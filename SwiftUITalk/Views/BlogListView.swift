//
//  BlogListView.swift
//  SwiftUITalk
//
//  Created by Stefan Kofler on 10.10.19.
//  Copyright © 2019 QuickBird Studios GmbH. All rights reserved.
//

import SwiftUI

struct BlogListView: View {
    let posts: [Post]

    var body: some View {
        List(posts) { post in
            NavigationLink(destination: PostDetailView(post: post)) {
                PostCell(post: post)
            }
        }
        .navigationBarTitle("Posts")
    }
}

struct PostCell: View {
    let post: Post

    var body: some View {
        VStack(spacing: 8) {
            Image(uiImage: post.header)
                .resizable()
                .scaledToFit()
                .frame(minWidth: 0, maxWidth: .infinity)

        }.padding(.vertical, 16)
    }

}

struct BlogListView_Previews: PreviewProvider {
    static var previews: some View {
        BlogListView(posts: DataService().getPosts())
    }
}
