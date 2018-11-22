require_relative 'services/person_index.rb'

class Person

  def person_index_service
    PersonIndexService.new
  end

end

# response = Person.new.person_index_service
# puts response.get_people
