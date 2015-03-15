module Web::Controllers::Todos
  class Complete
    include Web::Action

    def initialize(repository = TodoRepository, routes = Web::Routes)
      @repository, @routes = repository, routes
    end

    params do
      param :id, presence: true, type: Integer
    end

    def call(params)
      todo = @repository.find(params[:id])
      todo.done = true
      @repository.update(todo)

      redirect_to @routes.url(:todos)
    end
  end
end
