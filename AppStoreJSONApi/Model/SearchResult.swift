//
//  SearchResult.swift
//  AppStoreJSONApi
//
//  Created by Rayen on 07.10.2021.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Decodable {
    let trackName: String
    let primaryGenreName: String
    var averageUserRating: Float?
    let screenshotUrls: [String]
    let artworkUrl100: String 
}
