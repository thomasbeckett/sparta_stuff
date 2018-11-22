require_relative 'services/philosopher_index.rb'

class Philosopher

  def philosopher_index_service
    PhilosopherIndexService.new
  end

end
