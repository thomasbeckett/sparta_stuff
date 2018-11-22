class Movie

  # We use attr_accessor so that when we create an instance of Movie in our controller we can access the properties using dot notation (.id, .year etc)
  attr_accessor :id, :title, :year, :actors

  # We use this method to connect to our database - the 'self' means it's a CLASS method rather than an INSTANCE method, meaning we DON'T have to do something like Movie.new before we can use the method, we can run it straight away
  def self.open_conection
    conn = PG.connect( dbname: 'movies' )
  end

  # In the controller, we'll call the save method like newMovie.save
  def save
    # Establish a connection
    conn = Movie.open_conection

    # IF the class instance that we're running the save method on does NOT have an ID then create, else update
    if !self.id
      sql = "INSERT INTO movies (title, year, actors) VALUES ('#{self.title}', #{self.year}, '#{self.actors}')"
    else
      sql = "UPDATE movies SET title='#{self.title}', year=#{self.year},actors='#{self.actors}' WHERE id='#{self.id}'"
    end

    # send the SQL command to the database
    conn.exec(sql)

  end

  def self.all

    # Establish a connection
    conn = self.open_conection
    # Get all movies from our table
    sql = "SELECT * FROM movies ORDER BY id"
    # send the SQL command to the database
    results = conn.exec(sql)

    # loop through results and 'clean' each one then return the 'clean' movie array
    movies = results.map do |movie|
      self.hydrate movie
    end

    movies

  end

  def self.find id

    # Establish a connection
    conn = self.open_conection
    # Get our movie from our table
    sql = "SELECT * FROM movies WHERE id=#{id}"
    # send the SQL command to the database
    results = conn.exec(sql)

    movie = self.hydrate results[0]

    movie

  end

  def self.destroy id
      # Establish a connection
    conn = self.open_conection
    # Delete our movie from our table
    sql = "DELETE FROM movies WHERE id=#{id}"
    # send the SQL command to the database
    conn.exec(sql)
  end

  # Hydrate is a weird one - basically, when we make a request from our DB it will return us a Postgras instance, which isn't particularly useful to us. What we need to do is 'clean' our response and return it in our self.all and self.find methods above. It;s just to ensure that all our individual resources are instances of our Movie model class
  def self.hydrate movie_data
    movie = Movie.new

    movie.id = movie_data['id']
    movie.title = movie_data['title']
    movie.year = movie_data['year']
    movie.actors = movie_data['actors']

    movie

  end

end
