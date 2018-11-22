class Airport

  attr_accessor :name, :country, :terminals

  def initialize name, country

    @name = name
    @country = country
    @terminals = []

  end

  def list_terminals

    # list terminals
    self.terminals.each_with_index do |terminal, index|
      puts "#{index}) #{terminal.name}"
    end

  end

end