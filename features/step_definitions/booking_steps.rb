Quando("consulto o mongo do booking") do
    orderID = "******"
    query = BookingData.new.find(orderID)
    $bookingMongo = BookingMongo.new.find(query)
    expect($bookingMongo[:OrderID]).to eq(orderID)
end