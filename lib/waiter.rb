require 'pry'
class Waiter
    attr_accessor :name, :yrs_experience
 
  @@all = []
 
  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
   end
<<<<<<< HEAD

   def meals 
    Meal.all.select {|meal| meal.waiter == self}
   end

   def best_tipper
    best_tipped_meal = meals.max do |meal_a, meal_b|
      meal_a.tip <=> meal_b.tip
     end
    best_tipped_meal.customer
   end

   def most_frequent_customer 
    customer = []
    most_frequent_customer = nil
    meals.each do |meal| 
        if meal.customer > most_frequent_customer
        customer << meal.customer
       
    end
    customer.name
end


=======
>>>>>>> 2199e001fb070385d5325f6c59de20453b56c30f
end