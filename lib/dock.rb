class Dock
    attr_reader :name,
                :max_rental_time,
                :rented_list,
                :returned_list

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rented_list = []
    @returned_list = []
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
    checkout = @rented_list.find do |pair|
      pair[0] == boat
    end
    @returned_list << checkout
    @rented_list.delete(checkout)
  end

  def revenue
    @returned_list.sum do |pair|
      pair[0].cost
    end
  end
  
end
