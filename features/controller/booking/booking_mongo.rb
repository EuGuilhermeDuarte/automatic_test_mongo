class BookingMongo
  def initialize()
    @db = Database.new('dev_booking')
  end

  def find(query)
    @db.find('Booking', query)
  end
end