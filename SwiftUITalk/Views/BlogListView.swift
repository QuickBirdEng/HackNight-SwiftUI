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
        Image(uiImage: post.header)
            .resizable()
            .scaledToFit()

        // Exercise 2: Create a nice looking UI for the cells like shown on the slides

        // Hint 1: Stacks are really helpful to create a UI like this
        // Hint 2: Use predefined Colors like .primary and .secondary
    }

}

struct BlogListView_Previews: PreviewProvider {
    static var previews: some View {
        BlogListView(posts: DataService().getPosts())

    }
}
