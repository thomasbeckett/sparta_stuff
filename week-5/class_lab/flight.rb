class Flight

  attr_accessor :from, :to, :airline, :passengers

  def initialize from , to, airline
    @from = from
    @to = to
    @airline = airline
    @passengers = []
  end

  def list_passengers

    self.passengers.each_with_index do |passenger, index|
      puts "#{index}) #{passenger.first_name} #{passenger.last_name} : #{passenger.dob}"
    end

  end

end