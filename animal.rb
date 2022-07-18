module Habilidades
    module Volador
        def volar
        'Estoy volandooooo!'
        end
        def aterrizar
        'Estoy cansado de volar, voy a aterrizar'
        end
    end
    
    module Nadador
        def nadar
        'Estoy nadando!'
        end
        def sumergir
        'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
        'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
        'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
        'Puedo comer carne!'
        end
    end
end

class Animal
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

class Ave < Animal
end
class Mamifero < Animal
end
class Insecto < Animal
end

class Pinguino < Ave
    include Habilidades:: Nadador
    include Habilidades:: Caminante
    include Alimentacion:: Carnivoro
end
class Paloma < Ave
    include Habilidades:: Volador
    include Habilidades:: Caminante
    include Alimentacion:: Herbivoro
end
class Pato < Ave
    include Habilidades:: Volador
    include Habilidades:: Caminante
    include Alimentacion:: Herbivoro
end

class Perro < Mamifero
    include Habilidades:: Nadador
    include Habilidades:: Caminante
    include Alimentacion:: Carnivoro
end
class Gato < Mamifero
    include Habilidades:: Nadador
    include Habilidades:: Caminante
    include Alimentacion:: Carnivoro
end
class Vaca < Mamifero
    include Habilidades:: Caminante
    include Alimentacion:: Herbivoro
end

class Mosca < Insecto
    include Habilidades:: Volador
    include Habilidades:: Caminante
    include Alimentacion:: Carnivoro
end
class Mariposa < Insecto
    include Habilidades:: Volador
    include Habilidades:: Caminante
    include Alimentacion:: Herbivoro
end
class Abeja < Insecto
    include Habilidades:: Volador
    include Habilidades:: Caminante
    include Alimentacion:: Herbivoro
end




animal1 = Pinguino.new('animal1')
puts animal1.nadar
puts animal1.caminar
puts animal1.comer
#puts animal1.name