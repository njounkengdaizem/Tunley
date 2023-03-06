//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
struct Track{
    let trackName: String
    let artistName: String
    let artworkUrl100: URL
    // Detail properties
    let collectionName: String
    let primaryGenreName: String
    let releaseDate: Date
    let trackTimeMillis: Int
}

extension Track {

    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(trackName: "Just Give Me a Reason (feat. Nate Ruess)",
              artistName: "P!nk",
              artworkUrl100: URL(string:"https://is2-ssl.mzstatic.com/image/thumb/Music115/v4/2c/b0/de/2cb0de7b-4559-d885-36f8-271c950cba34/886443562097.jpg/100x100bb.jpg")!,
              collectionName: "The Truth About Love",
              primaryGenreName: "Pop",
              releaseDate: Date(),
              trackTimeMillis: 242721),
        
        Track(trackName: "The Truth About Love",
              artistName:  "P!nk",
              artworkUrl100: URL(string: "https://is2-ssl.mzstatic.com/image/thumb/Music115/v4/2c/b0/de/2cb0de7b-4559-d885-36f8-271c950cba34/886443562097.jpg/100x100bb.jpg")!,
              collectionName: "The Truth About Love",
              primaryGenreName: "Pop",
              releaseDate: Date(),
              trackTimeMillis: 247912),
        
        Track(trackName: "Please Don't Leave Me",
              artistName: "P!nk",
              artworkUrl100: URL(string: "https://is3-ssl.mzstatic.com/image/thumb/Music/af/82/d4/mzi.eemuyafu.jpg/100x100bb.jpg")!,
              collectionName: "Funhouse (Deluxe Version)",
              primaryGenreName: "Pop",
              releaseDate: Date(),
              trackTimeMillis: 251533 )

    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}
