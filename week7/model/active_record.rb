class ActiveRecord
  attr_accessor :attributes

  PRIMARY_KEY = :id
  @@database = []

  def initialize(attributes = {})
    @attributes = attributes.merge({PRIMARY_KEY => generate_id})
  end

  def save

    @@database << self
    puts "Saving #{self.class.name} with attributes: #{@attributes}"
  end

  def update(new_attributes)
    @attributes.merge!(new_attributes)
    save
  end

  def delete
    @@database.delete(self)
    puts "Deleting #{self.class.name} with attributes: #{@attributes}"
  end

  class << self

    def find_by(attributes)
      @@database.find { |record| attributes.all? { |key, value| record.attributes[key] == value } }
    end
  end

  private
  def generate_id
    @@database.size + 1
  end
end