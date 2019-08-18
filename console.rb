require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')

require('pry')

film1 = Film.new({'title' => 'James Bond', 'price' => 7})
film1.save()

film2 = Film.new({'title' => 'Lord of the Rings', 'price' => 7})
film2.save()

film3 = Film.new({'title' => 'Harry Potter', 'price' => 3})
film3.save()

customer1 = Customer.new({'name' => 'John', 'funds' => 20})
customer1.save()

customer2 = Customer.new({'name' => 'Steven', 'funds' => 15})
customer2.save()

customer2.name = 'Not Steven'
customer2.update()

ticket1 = Ticket.new({
                      'customer_id' => customer1.id,
                      'film_id' => film1.id
})

ticket1.save

ticket2 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film2.id})
ticket2.save()




film3.delete()

# Film.delete_all()
# Customer.delete_all()
# Ticket.delete_all()



binding.pry
nil
