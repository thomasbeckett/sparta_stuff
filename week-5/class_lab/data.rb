class Data

  def self.get_airports

    # add airports
    airports = [
      Airport.new("London Heathrow" , "England"),
      Airport.new("London Gatwick" , "England"),
      Airport.new("JFK", "USA"),
      Airport.new("LAX" , "USA"),
      Airport.new("AMS" , "Amsterdam")
    ]

    # add terminals
    airports[0].terminals.push Terminal.new("South Terminal" , 1000)
    airports[0].terminals.push Terminal.new("North Terminal" , 1000)

    # add flights
    airports[0].terminals[0].flights.push Flight.new(airports[0] , airports[1], "Virgin")
    airports[0].terminals[0].flights.push Flight.new(airports[0] , airports[2], "Virgin")
    airports[0].terminals[1].flights.push Flight.new(airports[0] , airports[1], "BA")
    airports[0].terminals[1].flights.push Flight.new(airports[0] , airports[3], "EasyJet")
    airports[0].terminals[1].flights.push Flight.new(airports[0] , airports[4], "Whizz")

    # add passengers
    airports[0].terminals[0].flights[0].passengers.push Passenger.new "Stephen" , "Reid" , "14/09/1983"
    airports[0].terminals[0].flights[0].passengers.push Passenger.new "Niall" , "Wallace" , "21/01/2010"
    airports[0].terminals[0].flights[1].passengers.push Passenger.new "Lexie" , "Papaspyrou" , "29/01/1989"

    # return airports
    airports

  end

end