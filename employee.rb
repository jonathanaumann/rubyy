

module HourlyEmployee 
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      @hourly_rate * @hours_worked
    end
end

module SalariedEmployee 
    def initialize(name, email, annual_pay)
        @name = name
        @email = email
        @annual_pay = annual_pay
    end

    def calculate_salary
      @annual_pay / 52
    end
end

class Employee
    include SalariedEmployee
    include HourlyEmplyee
    attr_accessor :name, :email
    def initialize(name, email)
        @name =name 
        @email= email
    end
end

class MultiPaymentEmployee < Employee
    def initialize(name, email, base_pay, hourly_rate, hours_worked)
        @name = name
        @email = email
        @base_pay = base_pay
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      (@base_pay/52) + ((@hours_worked-40)*@hourly_rate)
    end
end


