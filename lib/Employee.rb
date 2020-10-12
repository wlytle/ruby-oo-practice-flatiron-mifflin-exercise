class Employee

    @@all = []

    def self.all
        @@all
    end

    def self.paid_over (amount)
        self.all.select { |emp| emp.salary > amount }
    end

    def self.find_by_department(department)
        manager = Manager.all.find { |man| man.department == department }
        self.all.select { |emp| emp.manager == manager }
    end

    attr_reader :name
    attr_accessor :manager, :salary

    def initialize(name, salary, manager)
        @name, @salary, @manager = name, salary, manager
        save
    end

    def manager_name
        @manager.name
    end

    def tax_bracket
        self.class.all.select do |emp|  
            emp.salary >= (@salary - 1000) && emp.salary <= (@salary + 1000) && emp != self
        end
    end

    private

    def save
        self.class.all << self
    end

end
