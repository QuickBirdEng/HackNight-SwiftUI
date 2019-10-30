//
//  PostDetailView.swift
//  SwiftUITalk
//
//  Created by Stefan Kofler on 10.10.19.
//  Copyright © 2019 QuickBird Studios GmbH. All rights reserved.
//

import SwiftUI

struct PostDetailView: View {
    let post: Post

    var body: some View {
        WebView(htmlString: post.prettyHTML, baseURL: URL(string: "https://quickbirdstudios.com/blog"))
            .edgesIgnoringSafeArea([.bottom, .top])
    }

}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PostDetailView(post: DataService().getPosts().first!)
        }
    }
}
