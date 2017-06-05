/*
protocol HasArea {
            var area: Double { get }
		}
        
        class Circle: HasArea {
            let pi = 3.1415927
            var radius: Double
            var area: Double { return pi * radius * radius }
            init(radius: Double) { self.radius = radius }
        }
        
        class Country: HasArea {
            var area: Double
            init(area: Double) { self.area = area }
		}
        
        class Animal {
            var legs: Int
            init(legs: Int) { self.legs = legs }
		}
        
        let objects: [AnyObject] = [Circle(radius: 2.0), Country(area: 243_610), Animal(legs: 4)]
        
        for object in objects {
            if let objectWithArea = object as? HasArea {
                print("Area is \(objectWithArea.area)")
            } else {
                print("Something that doesn't have an area")
		    }
		}
  */
        
        class MediaItem {
            var name: String
            init(name: String) {
                self.name = name
		    }
		}
        
        class Movie: MediaItem {
            var director: String
            init(name: String, director: String) {
                self.director = director
                super.init(name: name)
            }
        }
        
        class Song: MediaItem {
            var artist: String
            init(name: String, artist: String) {
                self.artist = artist
                super.init(name: name)
		    }
		}
class xxx:Movie{
    }

        let library = [
            Movie(name: "Casablanca", director: "Michael Curtiz"),
            Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
            Movie(name: "Citizen Kane", director: "Orson Welles"),
            Song(name: "The One And Only", artist: "Chesney Hawkes"),
            Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
        ]
        
        for item in library {
            if let movie = item as? xxx {
                print("Movie: \(movie.name), dir. \(movie.director)")
            } else if let song = item as? Song {
                print("Song: \(song.name), by \(song.artist)")
		    }
		}
