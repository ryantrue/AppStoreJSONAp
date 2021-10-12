//
//  AppGroup.swift
//  AppStoreJSONApi
//
//  Created by Rayen on 12.10.2021.
//

import Foundation

struct AppGroup: Decodable {
    let feed: Feed
}

struct Feed: Decodable {
    let title: String
    let results: [FeedResult]
}

struct FeedResult: Decodable {
    let name, artistName, artworkUrl100: String
}
