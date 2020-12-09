require 'byebug'
class Task

  @name = ''
  @state = ''
  @task = {
    name: '',
    state: ''
  }

  def update(name)
    @task = show_by_name(name)
    puts "Ingrese el nuevo nombre: "
    @name = gets.chomp
    byebug
    @task[0][:name] = @name
  end
  
  def show_by_name(name)
    $manager.each do |task|
      if task[:name] == name
        puts task
      else
        puts "Tarea no encontrada"
      end
    end
  end

  def create(name, state)
    @name = name
    @state = state
    @task = {
      name: @name,
      state: @state
    }
    $manager.append(@task)
  end

  def show
    $manager
  end

  def mark_as_in_process(name)
    $manager.find do |task|
      if (task[:name] == name)
        task[:state] = 1
      end
    end
  end

  def mark_as_done(name)
    $manager.find do |task|
      if (task[:name] == name)
        task[:state] = 2
      end
    end
  end

  def get_all_created
    @created = []
    $manager.each do |task|
      @created.append(task) if task[:state] == 0
    end
    @created
  end

  def get_all_process
    @in_process = []
    $manager.each do |task|
      @in_process.append(task) if task[:state] == 1
    end
    @in_process
  end

  def get_all_done
    @done = []
    $manager.each do |task|
      @done.append(task) if task[:state] == 2
    end
    @done
  end
end