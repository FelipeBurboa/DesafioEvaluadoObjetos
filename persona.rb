class Person
    def initialize(first, last, age, type)
        @first_name = first
        @last_name = last
        @age = age
        @type = type
    end

    def birthday
        @age += 1
    end
end
    
class Student < Person
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end
    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Teacher < Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end
    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person
    def talk
        puts "Aquí es la reunión de apoderados?"
    end
    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end

person1 = Student.new('Nombre1','Apellido1',17,'Student')
person2 = Teacher.new('Nombre2','Apellido2',25,'Teacher')
person3 = Parent.new('Nombre3','Apellido3',33,'Parent')

person1.talk
person1.introduce
puts " "
person2.talk
person2.introduce
puts " "
person3.talk
person3.introduce