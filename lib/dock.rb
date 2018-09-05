class Dock
    attr_reader :name,
                :max_rental_time,
                :rented_list

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rented_list = []
  end

  def rent(boat, renter)
    @rented_list << [boat, renter]
  end

  def log_hour
    @rented_list.map do |pair|
    pair[0].add_hour
    end
  end

  def return(boat)
    @rented_list.find do |pair|
      pair[0] == boat
    end
  end
end
