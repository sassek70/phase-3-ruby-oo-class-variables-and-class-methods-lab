class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        #create empty hash
        genre_count = {}

        #iterate over all genres
        @@genres.each do |genre|
            #if genre doesn't exist in hash, add one to total count
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
        #return final count after iteration
        genre_count
    end

    def self.artist_count
        #create empty hash
        artist_count = {}

        #iterate over all genres
        @@artists.each do |artist|
            #if genre doesn't exist in hash, add one to total count
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
        artist_count
    end
end