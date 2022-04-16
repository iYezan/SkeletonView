//
//  Podcast.swift
//  SkeletonView
//
//  Created by iYezan on 15/04/2022.
//

import Foundation

struct Podcast {
    var trackName: String
    var artistName: String
    var trackCount: Int
    var artworkUrl600: String
}


extension Podcast {
    
    static let mockdata = [
        Podcast(trackName: "trackName", artistName: "artistName", trackCount: 2, artworkUrl600: "artworkUrl600"),
        Podcast(trackName: "trackName", artistName: "artistName", trackCount: 3, artworkUrl600: "artworkUrl600"),
        Podcast(trackName: "trackName", artistName: "artistName", trackCount: 4, artworkUrl600: "artworkUrl600")
    ]
}
