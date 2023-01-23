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
    let isVerified: Bool
}

struct ModelPractice: View {
    
    @State var users: [UserModel] = [
        //        "Andreas", "Heldy", "Frozenost", "Xenosty", "Christopher"
        UserModel(displayName: "Rifqi Muhammad", username: "rifqimuhammad", followerCount: 581, isVerified: true),
        UserModel(displayName: "Xenosty Theord", username: "xenosty", followerCount: 991, isVerified: false),
        UserModel(displayName: "Bagas Dwi", username: "anthos", followerCount: 256, isVerified: true),
        UserModel(displayName: "Rizqi Virgiawan", username: "yellowflash", followerCount: 872, isVerified: false)
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
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                            Text("@\(user.username)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
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
