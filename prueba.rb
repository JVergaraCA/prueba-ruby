 

#Prueba
puts " "
puts "Ingresar una opcion"
puts "1 ) Alumnos y notas respectivas"
puts "2 ) Alumnos con inasistencia"
puts "3 ) Alumnos aprobados"
puts "4 ) Salir"

opcion1 = gets.chomp
case opcion1
   when"1"
	puts "Creando archivo con el nombre de cada alumno y el promedio de sus notas"
	
        system ("touch nota.txt")
        file = File.open("nota.txt", "w")
       #Juan
        dato1 = {"1" => 9, "2" => 2, "3" => 5, "4" => 1, "5" => 1}
        file.puts "Juan"
        file.puts dato1.inject(0.0) { |sum, (key, value)| sum + value} / dato1.size

       #Felipe
        dato2 = {"1" => 10, "2" => 2, "4" => 8, "5" => 1}
        file.puts "Felipe"
        file.puts dato2.inject(0.0) {|sum, (key, value)| sum + value} / dato2.size

       #Javiera
       dato3 = {"1" => 10, "2" => 10, "4" => 9, "5" => 9}
       file.puts "Javiera"
       file.puts dato3.inject(0.0) {|sum, (key, value)| sum + value} / dato3.size

       #Gonzalo
       dato4 = {"1" => 10, "2" => 10, "3" => 10 ,"4" => 10, "5" => 10}
       file.puts "Gonzalo"
       file.puts dato4.inject(0.0) {|sum, (key, value)| sum + value} / dato4.size
   when "2"
   	puts "Revisando inasistencias"
   	def show(nombre, inasistencia)
	     if type == "A"
		 puts "#{nombre} #{inasistencia}"
	     end
    end

    file = File.open("notas.txt")
    datas = file.readlines()
    file.close

    datas.each do |d|
	as = d.split(" ")
	as.each_slice(7) do |asi|
		show(*asi)
	end
  end
end
   when "3"
   	 datos = {"Juan" => 3.6, "Felipe" => 5.25, "Javiera" => 9.25, "Gonzalo" => 10}


      promedio = datos.each do |key, value|
      	if value > 5
      		puts "Aprobado"
      	else
      		puts "Reprobado"
    end
    puts promedio
   end
end
   when "4"
   	return opcion1


