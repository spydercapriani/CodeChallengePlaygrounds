//: [Previous](@previous)

import Foundation

class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [
    taylorSwift,
    fearless,
    iTunesLive
]

for album in allAlbums {
    print(album.getPerformance())
    
    if let studioAlbum = album as? StudioAlbum {
        print("Studio: \(studioAlbum.studio)")
    }else if let liveAlbum = album as? LiveAlbum {
        print("Location: \(liveAlbum.location)")
    }
}

//: [Next](@next)
