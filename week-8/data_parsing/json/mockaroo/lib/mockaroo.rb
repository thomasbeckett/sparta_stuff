require 'json'

class Mockaroo


  attr_accessor :mockaroo

  def initialize json_file
    @mockaroo = JSON.parse(File.read(json_file))
  end

  def get_company
    @mockaroo.each do |company|
      unless company["Company"].is_a? String
        return false
      end
    end
    return true
  end

  def get_features comp
    @mockaroo.each do |company|
      if company["Company"] == comp
        return company["Features"]
      end
    end
    return false
  end

  def get_staff key
    @mockaroo.each do |company|
      company["Staff"].each do |staff|
        unless staff.key? key
          return false
        end
      end
    end
    return true
  end

  def get_numbers
    @mockaroo.each do |company|
      company["Staff"].each do |staff|
        unless staff["numbers"].is_a? Hash
          return false
        end
      end
    end
    return true
  end

  def staff_num
    @mockaroo.each do |company|
      company["Staff"].each do |staff|
        unless staff["numbers"]["row"].is_a? Integer
          return false
        end
      end
    end
    return true
  end

  def unique_id
    previous = ""
    @mockaroo.each do |company|
      company["Staff"].each do |staff|
        if staff["numbers"]["id"] == previous
          return false
        end
        previous = staff["numbers"]["id"]
      end
    end
    return true
  end

  def get_pets
    @mockaroo.each do |company|
      company["Staff"].each do |staff|
        unless staff["pets"].is_a? Array
          return false
        end
      end
    end
    return true
  end

  def pets_age
    @mockaroo.each do |company|
      company["Staff"].each do |staff|
        staff["pets"].each do |pet|
          unless pet["age"].is_a? Integer
            return false
          end
        end
      end
    end
    return true
  end

  def pets_type
    @mockaroo.each do |company|
      company["Staff"].each do |staff|
        staff["pets"].each do |pet|
          unless pet["animal"].is_a? String
            return false
          end
        end
      end
    end
    return true
  end

  def get_name
    @mockaroo[1]["Staff"][1]["lastName"]
  end

  def get_job title
    people = []
    @mockaroo.each do |company|
      company["Staff"].each do |staff|
        if staff["job"] == title
          people.push "#{staff["firstName"]} #{staff["lastName"]}"
        end
      end
    end
    if people.empty?
      return false
    else
      return people
    end
  end
end
