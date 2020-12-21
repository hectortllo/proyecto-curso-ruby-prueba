require './src/task.rb'

class Manager
  $manager = []
  
  def initialize
    @task = Task.new
  end

  def menu
    op = 0
    while(op != 10)
      system 'clear'
      puts "1. Crear tarea"
      puts "2. Listar todas las tareas"
      puts "3. Buscar tarea por nombre"
      puts "4. Editar tarea"
      puts "5. Marcar como en proceso"
      puts "6. Marcar como terminada"
      puts "7. Ver todas las tareas creadas"
      puts "8. Ver todas las tareas en proceso"
      puts "9. Ver todas las tareas finalizadas"
      puts "10. Salir"
      puts "Escoja una opción: "
      op = gets.to_i
      case op
        when 1
          system 'clear'
          create_task
        when 2
          system 'clear'
          get_tasks
        when 3
          system 'clear'
          get_task_by_name
        when 4
          system 'clear'
          update_task
        when 5
          system 'clear'
          mark_as_in_process
        when 6
          system 'clear'
          mark_as_done
        when 7
          system 'clear'
          get_all_created
        when 8
          system 'clear'
          get_all_process
        when 9
          system 'clear'
          get_all_done
      end
    end
  end

=begin
  Función especializada en crear una tarea
  La tarea se inicializará con estado 0 (por hacer)
=end
  def create_task
    puts "Nombre de la tarea: "
    name = gets.chomp
    @task.create(name, 0)
    gets
  end

=begin
  Función que retorna una lista de tareas
=end
  def get_tasks
    puts $manager
    gets
  end

=begin
  Función que se encarga de buscar dentro del array
  de tareas, una tarea en específico, por nombre
=end
  def get_task_by_name
    puts "Ingrese el nombre de la tarea: "
    name = gets.chomp
    @task.show_by_name(name)
    gets
  end

=begin
  Función para actualizar el nombre de una tarea
=end
  def update_task
    puts "Ingrese el nombre de la tarea: "
    name = gets.chomp
    @task.update(name)
    gets
  end

  def mark_as_in_process
    puts "Ingrese el nombre de la tarea a iniciar: "
    name = gets.chomp
    @task.mark_as_in_process(name)
    gets
  end

  def mark_as_done
    puts "Ingrese el nombre de la tarea a iniciar: "
    name = gets.chomp
    @task.mark_as_done(name)
  end

  def get_all_created
    puts @task.get_all_created
    gets
  end

  def get_all_process
    puts @task.get_all_process
    gets
  end

  def get_all_done
    puts @task.get_all_done
    gets
  end

end