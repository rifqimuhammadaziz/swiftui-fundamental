//
//  ContentView.swift
//  SwiftUI-ListView
//
//  Created by Rifqi Muhammad Aziz on 27/01/23.
//

import SwiftUI

struct ContentView: View {
    
    var videos: [Video] = VideoList.topVideos
    
    var body: some View {
        NavigationStack {
            List(videos, id: \.id) { video in
                HStack {
                    NavigationLink(
                        destination: VideoDetailView(video: video),
                        label: {
                            VideoCell(video: video)
                        }
                    )
                    
                }
            }
            .navigationTitle("Top Nature")
        }
    }
}

struct VideoCell: View {
    var video: Video
    
    var body: some View {
        HStack {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(4)
                .padding(.vertical, 3)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.8) // shrink text
                
                Text("27 Januari 2023")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
