//
//  ModelPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 21/01/23.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString // create random uuid as string every create model
    let displayName: String
    let username: String
    let followerCount: Int
}

struct ModelPractice: View {
    
    @State var users: [UserModel] = [
        //        "Andreas", "Heldy", "Frozenost", "Xenosty", "Christopher"
        UserModel(displayName: "Rifqi Muhammad", username: "rifqimuhammad", followerCount: 581),
        UserModel(displayName: "Xenosty Theord", username: "xenosty", followerCount: 991),
        UserModel(displayName: "Bagas Dwi", username: "anthos", followerCount: 256),
        UserModel(displayName: "Rizqi Virgiawan", username: "yellowflash", followerCount: 872)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                //                ForEach(users, id: \.self) { name in
                //                    HStack {
                //                        Circle()
                //                            .frame(width: 35, height: 35)
                //                        Text(name)
                //                    }
                //                    .padding(.vertical, 10)
                //                }
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        Text(user.id)
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("User")
        }
    }
}

struct ModelPractice_Previews: PreviewProvider {
    static var previews: some View {
        ModelPractice()
    }
}
