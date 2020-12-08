require './src/task.rb'

class Manager
  $manager = []
  def menu
    op = 0
    while(op != 6)
      puts "1. Listar todas las tareas"
      puts "2. Editar tarea"
      puts "3. Marcar como terminada"
      puts "4. Marcar como en proceso"
      puts "5. Crear tarea"
      puts "6. Salir"
      puts "Escoja una opción: "
      op = gets.to_i
      case op
        when 1
          get_tasks
        when 5
          create_task
      end
    end
  end

  def get_tasks
    puts $manager
  end

  def create_task
    puts "Nombre de la tarea: "
    name = gets.chomp
    @task = Task.new(name, 0)
    @task.create
  end

end