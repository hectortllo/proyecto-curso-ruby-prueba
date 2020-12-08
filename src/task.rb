class Task
  @name = ''
  @state = ''
  @task = {
    name: '',
    state: ''
  }
  def initialize(name, state)
    @name = name
    @state = state
  end

  def update
    
  end

  def create
    @task = {
      name: @name,
      state: @state
    }
    $manager.append(@task)
  end

  def show
    $manager
  end
end