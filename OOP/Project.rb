#method 1
# class Project
#     # getters and setters combine
#     attr_accessor :name, :description

#     def initialize(name,description)
#         @name = name
#         @description = description
#     end

#     def elavator_pitch
#         puts "#{@name}, #{@description}"
#     end
# end

#method 2
class Project
   
    # creating separete getters and setters
    

    def initialize(name,description)
        @name = name
        @description = description
        yield
    end

    #getters
    def name
       return @name
    end
    
    def description
        @description
    end
    
    #setters
    def name=(name)
        @name = name
    end

    def description=(description)
        @description = description
    end



    def elavator_pitch
        puts "#{@name}, #{@description}"
    end
end

project1 = Project.new("Project 1", "Description 1"){puts "method 2"}
# project1.name = "AA"
puts project1.name
puts project1.description
project1.elavator_pitch