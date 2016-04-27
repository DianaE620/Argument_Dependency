# # Sin keyword arguments
# class Dog
#   def initialize(name, age, vaccinated)
#     ...
#   end
# end

# dog = Dog.new("Fido", 3, false)
# # BIEN
# # dog = Dog.new("Fido", false, 3)
# # MAL!

# # Con keyword arguments
# class Dog
#   def initialize(name:, age:, vaccinated:)
#     ...
#   end
# end

# # Ambos BIEN
# dog = Dog.new(name: "Fido", age: 3, vaccinated: false)
# dog = Dog.new(name: "Fido", vaccinated: false, age: 3)

# ------------------------------------------------------------------------------------------------------------------

# class Person
#   def initialize(args)
#     @name = args.fetch(:name)
#     @age = args.fetch(:age)
#   end
# end

# class Dog
#   def initialize(args)
#     @name = args.fetch(:name)
#     @age = args.fetch(:age)
#     @vaccinated = args.fetch(:vaccinated)
#     puts "El nombre del perro es #{@name} su edad es de #{@age} y esta vacuna
#     do: #{@vaccinated}"
#   end
# end


# p dog = Dog.new(name: "Fido", vaccinated: false, age: 3)

#-----------------------------------------------------------------------------------------------------------------------

# class Person
#   def initialize(name: , age: 15)
#     @name = name
#     @age = age
#     puts "Tu nombre es #{@name} y tienes #{@age} años"
#   end
# end

# persona = Person.new(name: "Diana")

# p persona 

#-----------------------------------------------------------------------------------------------------------------------

class ContactInformation

  def initialize(nombre:, telefono:, celular:, email:, referencia:, colonia:, municipio:, ciudad:, estado:, codigo_postal:, calle:, num_ext:, num_int: nil, pais: "México", mayor_de_edad: false)
    @nombre = nombre
    @telefono = telefono
    @celular = celular
    @email = email
    @referencia = referencia
    @colonia = colonia
    @municipio = municipio
    @ciudad = ciudad
    @estado = estado
    @codigo_postal = codigo_postal
    @calle = calle
    @num_ext = num_ext
    @num_int = num_int
    @pais = pais
    @mayor_de_edad = mayor_de_edad
  end

  def to_s
    "Nombre: #{@nombre}#{mayor_de_edad}, telefono: (#{@telefono}), celular: (#{@celular}), email: <#{@email}> \n Dirección: #{@calle} #{numero}, #{@colonia}, #{@municipio}, #{@ciudad}, #{@estado}, #{@codigo_postal}, #{@pais} \n Referencia: #{@referencia}"
  end

  def numero
    "#{@num_ext}#{"-#{@num_int}" if @num_int}"
  end

  def mayor_de_edad
    unless @mayor_de_edad
      "*"
    end
  end
end

puts ContactInformation.new(nombre: "Juan Perez Jr", telefono: "3891089238", celular: "04455832189491", email: "juanito@gmail.com", referencia: "entre calles x, z", colonia: "Cuauhtémoc", municipio: "Benito Juárez", ciudad: "México", estado: "Distrito Federal", codigo_postal: "07500", calle:"Chapultepec", num_ext: "500", num_int: "B")

puts ContactInformation.new(nombre: "Juan Perez", telefono: "3891089238", celular: "04455832189491", email: "juanito@gmail.com", referencia: "entre calles x, z", colonia: "Cuauhtémoc", municipio: "Benito Juárez", ciudad:"México", estado: "Distrito Federal", codigo_postal: "07500", calle: "Chapultepec", num_ext: "500", num_int: nil, pais: "México", mayor_de_edad: true)