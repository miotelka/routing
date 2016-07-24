class Employee < ApplicationRecord
    
    scope :get_employee_with_highest_salary, -> { order("salary").last }
    scope :get_over_20k, -> (value = 20000) { where("salary>=:s", s: value)}
    
    def get_full_name
        self.name + " " + self.surname
    end
    
    def get_full_salary
        self.salary = 0 if self.salary.nil?
        self.commision = 0 if self.commision.nil?
        
        (self.salary - self.commision).to_s
    end
    
#    def self.get_employee_with_highest_salary
##        Employee.where("salary>=:salary", salary: 10000)
##        Employee.where("salary>= ?", 10000)
##        
#        Employee.all.order("salary").last
#    end
#    
#    def self.get_over_20k(value = 20000) # możemy podać jakąś wartość. domyślnie ustawione 20000 ale jak podamy inną to wywali inną
#        Employee.where("salary>=:s", s: value)
#    end
end
