//
//  ContentView.swift
//  SwiftUITalk
//
//  Created by Stefan Kofler on 09.10.19.
//  Copyright © 2019 QuickBird Studios GmbH. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""

    var body: some View {
        NavigationView {
            VStack {
                Image("qb_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                    .padding(.vertical, 24)

                Form {
                    Section(header: Text("Credentials")) {
                        TextField("Username", text: $username)
                        SecureField("Password", text: $password)
                    }

                    NavigationLink("Submit", destination: BlogListView(posts: DataService().getPosts()))
                        .disabled(username.isEmpty || password.isEmpty)
                }.navigationBarTitle("Login", displayMode: .inline)
            }.background(Color(.systemGroupedBackground))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
