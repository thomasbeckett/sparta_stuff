class Terminal

  attr_accessor :name, :capacity, :flights

  def initialize name, capacity
      @name = name
      @capacity = capacity
      @flights = []
  end

  def list_flights

    self.flights.each_with_index do |flight, index|
      puts "#{index}) #{flight.airline} : #{flight.from.name} - #{flight.to.name}"
    end

  end

end