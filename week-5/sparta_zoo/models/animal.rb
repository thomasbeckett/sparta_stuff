class Animal

  attr_accessor :id, :name, :fact

  def self.open_connection
    conn = PG.connect( dbname: 'animals' )
  end

  # index page - get all information
  def self.all
    conn = self.open_connection

    sql = "SELECT * FROM animals ORDER BY name"
    results = conn.exec(sql)

    results.map do |animal|
      self.hydrate animal
    end
  end


  # show + edit - get individual animal information
  def self.find animal_id
    conn = self.open_connection

    sql = "SELECT * FROM animals WHERE id=#{animal_id} LIMIT 1"

    animals = conn.exec(sql)

    animal = self.hydrate animals[0]
  end


  # create new data entry

  def save
    conn = Animal.open_connection

    if !self.id
      sql = "INSERT INTO animals (name,fact) VALUES ('#{self.name}','#{self.fact}')"
    else
      # update previous data entry
      sql = "UPDATE animals SET name='#{self.name}',fact='#{self.fact}' WHERE id=#{self.id}"
    end

    conn.exec(sql)
  end


  # delete data entry

  def self.destroy id
    conn = self.open_connection

    sql = "DELETE FROM animals WHERE id=#{id}"

    conn.exec(sql)
  end

  def self.hydrate data
    animal = Animal.new

    animal.id = data['id']
    animal.name = data['name']
    animal.fact = data['fact']

    animal
  end


end
