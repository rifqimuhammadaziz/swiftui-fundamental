//
//  Video.swift
//  SwiftUI-ListView
//
//  Created by Rifqi Muhammad Aziz on 27/01/23.
//

import SwiftUI

// Custom Object
struct Video: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let viewCount: Int
    let uploadDate: String
    let url: URL
}

struct VideoList {
    static let topVideos = [
        Video(imageName: "forest-river",
              title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce feugiat eros sed vulputate vestibulum. Pellentesque luctus, orci sodales dapibus vulputate. ",
              description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed placerat arcu. Quisque consectetur lectus tortor, non porttitor sem consequat ac.",
              viewCount: 9900,
              uploadDate: "27 Januari 2023",
              url: URL(string: "https://www.youtube.com/watch?v=k5rupivxnMA")!),
        
        Video(imageName: "mountain-1",
              title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed placerat arcu. Quisque consectetur lectus tortor, non porttitor sem consequat ac.",
              description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed placerat arcu. Quisque consectetur lectus tortor, non porttitor sem consequat ac.",
              viewCount: 8928,
              uploadDate: "1 Januari 2023",
              url: URL(string: "https://www.youtube.com/watch?v=k5rupivxnMA")!),
        
        Video(imageName: "mountain-2",
              title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed placerat arcu. Quisque consectetur lectus tortor, non porttitor sem consequat ac.",
              description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed placerat arcu. Quisque consectetur lectus tortor, non porttitor sem consequat ac.",
              viewCount: 12324,
              uploadDate: "21 Mei 2023",
              url: URL(string: "https://www.youtube.com/watch?v=k5rupivxnMA")!),
        
        Video(imageName: "mountain-3",
              title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed placerat arcu. Quisque consectetur lectus tortor, non porttitor sem consequat ac.",
              description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed placerat arcu. Quisque consectetur lectus tortor, non porttitor sem consequat ac.",
              viewCount: 4423,
              uploadDate: "9 Februari 2022",
              url: URL(string: "https://www.youtube.com/watch?v=k5rupivxnMA")!),
        
        Video(imageName: "river-1",
              title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed placerat arcu. Quisque consectetur lectus tortor, non porttitor sem consequat ac.",
              description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed placerat arcu. Quisque consectetur lectus tortor, non porttitor sem consequat ac.",
              viewCount: 4444,
              uploadDate: "8 April 2022",
              url: URL(string: "https://www.youtube.com/watch?v=k5rupivxnMA")!),
        
        Video(imageName: "sahara-1",
              title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed placerat arcu. Quisque consectetur lectus tortor, non porttitor sem consequat ac.",
              description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed placerat arcu. Quisque consectetur lectus tortor, non porttitor sem consequat ac.",
              viewCount: 5575,
              uploadDate: "31 Agustus 2022",
              url: URL(string: "https://www.youtube.com/watch?v=k5rupivxnMA")!),
        
        Video(imageName: "village-1",
              title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed placerat arcu. Quisque consectetur lectus tortor, non porttitor sem consequat ac.",
              description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed placerat arcu. Quisque consectetur lectus tortor, non porttitor sem consequat ac.",
              viewCount: 2398,
              uploadDate: "27 Desember 2022",
              url: URL(string: "https://www.youtube.com/watch?v=k5rupivxnMA")!)
    ]
}
