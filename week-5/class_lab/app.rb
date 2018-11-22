require_relative "airport.rb"
require_relative "flight.rb"
require_relative "passenger.rb"
require_relative "terminal.rb"
require_relative "data.rb"
require_relative "menu.rb"

# Setup the dummy data
airports = Data.get_airports

  # CHOOSE AIRPORT
  Menu.clear_screen

  airports.each_with_index do |airport , index|
      puts "#{index}) #{airport.name}"
  end

  airport_index = Menu.display_airports_menu

  # set the current airport
  current_airport = airports[airport_index]



  # CHOOSE TERMINAL
  Menu.clear_screen

  # # list the terminals
  # current_airport.list_terminals
  #
  # terminal_index = Menu.display_terminal_menu

  # set the current terminal
  # current_terminal = current_airport.terminals[terminal_index]

  begin
    terminal_option = Menu.display_terminals_option

    Menu.clear_screen

    case terminal_option
    when 1
      puts "Terminals"
      Menu.spacer
      current_airport.list_terminals
      terminal_index = Menu.display_terminal_menu
      current_terminal = current_airport.terminals[terminal_index]
      x = false

    when 2
      puts "Add a terminal"
      Menu.spacer

      puts "Name: "

      name = gets

      puts ""
      puts "Capacity: "
      capacity = gets


      # create new passenger
      terminal = Terminal.new name, capacity

      # add them to the flight
      current_airport.terminals.push terminal
      x = true

    when 3
      puts "Choose a terminal to remove:"
      Menu.spacer

      # list the passengers
      current_terminals.list_terminal

      # get passenger id
      terminal_id = gets.chomp.to_i

      # remove from the flight
      current_airport.terminals.delete_at terminal_id
      x = true

    end
    # Menu.spacer
    # puts "Press a key"
    # gets
  end while x == true


  # CHOOSE FLIGHT
  Menu.clear_screen

  # list the flights
  # current_terminal.list_flights
  x = false
  begin
    flight_option = Menu.display_flights_option

    Menu.clear_screen

    case flight_option
    when 1
      puts "Flights"
      Menu.spacer
      current_terminal.list_flights
      flight_index = Menu.display_flights_menu
      current_flight = current_terminal.flights[flight_index]
      x = false

    when 2
      puts "Add a flight"
      Menu.spacer

      puts "From:"

      from = Menu.display_airports_menu

      puts ""
      puts "To:"
      to = Menu.display_airports_menu

      puts ""
      puts "Airline:"
      airline = gets.chomp

      # create new passenger
      flight = Flight.new airports[from], airports[to], airline

      # add them to the flight
      current_terminal.flights.push flight
      x = true

    when 3
      puts "Choose a flight to remove:"
      Menu.spacer

      # list the passengers
      current_terminal.list_flights

      # get passenger id
      flights_id = gets.chomp.to_i

      # remove from the flight
      current_terminal.flights.delete_at flights_id
      x = true

    end
    # Menu.spacer
    # puts "Press a key"
    # gets
  end while x == true


  # set the current flight
  # current_flight = current_terminal.flights[flight_index]
  # q=false
  # looping menu
  loop do

    option = Menu.display_options_menu

    Menu.clear_screen

    case option

    when 1

        puts "Passenger Manifest"
        Menu.spacer

        # list the passengers
        current_flight.list_passengers

    when 2

        puts "Add a passenger"
        Menu.spacer

        puts "First Name:"
        first_name = gets.chomp

        puts ""
        puts "Last Name:"
        last_name = gets.chomp

        puts ""
        puts "DOB:"
        dob = gets.chomp

        # create new passenger
        passenger = Passenger.new first_name, last_name, dob

        # add them to the flight
        current_flight.passengers.push passenger

        Menu.spacer
        puts "Passenger Added!"

    when 3

        puts "Choose a passenger to remove:"
        Menu.spacer

        # list the passengers
        current_flight.list_passengers

        # get passenger id
        passenger_id = gets.chomp.to_i

        # remove from the flight
        current_flight.passengers.delete_at passenger_id

    when 4
      break

    end

    # wait
    Menu.spacer
    puts "Press a key"
    gets

  end
