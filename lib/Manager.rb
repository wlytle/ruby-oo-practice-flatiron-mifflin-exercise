class Manager

    @@all = []

    def self.all
        @@all
    end

    def self.all_departments
        self.all.map { |man| man.department }
    end

    def self.average_age
        ages = self.all.map { |man| man.age.to_f }
        average_age = ages.sum/ages.size.to_f        
    end

    attr_reader :name
    attr_accessor :age, :department

    def initialize(name, department, age)
        @name, @department, @age = name, department, age
        save
    end

    def employees
        Employee.all.select { |emp| emp.manager == self }
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    private

    def save
        self.class.all << self
    end
end
