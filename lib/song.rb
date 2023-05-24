class Song
    # class variables start on a clean slate
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}
    
    # takes in three arguments: a name, artist and genre
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre  = genre

        @@count += 1
        # shovel to add to the array
        @@artists << artist
        @@genres << genre

        @@genre_count[genre] ||= 0
        @@genre_count[genre] += 1

        @@artist_count[artist] ||= 0
        @@artist_count[artist] += 1
    end


    # class method 
    def self.count
        @@count
      end
    
      def self.artists
        @@artists.uniq
      end
    # class method returns a unique array of genres of existing songs
      def self.genres
        @@genres.uniq
      end
    
      def self.genre_count
        @@genre_count
      end
    #   returns a hash of artists and the number of songs that have those artists
      def self.artist_count
        @@artist_count
      end


    
end

# Creating instances based on the test cases

hit_me = Song.new('hit me baby one more time', 'Brittany Spears', 'pop')
lucifer = Song.new('Lucifer', 'Jay-Z', 'rap')
ninety_nine_problems = Song.new('99 Problems', 'Jay-Z', 'rap')

