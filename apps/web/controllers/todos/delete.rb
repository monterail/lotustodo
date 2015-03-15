module Web::Controllers::Todos
  class Destroy
    include Web::Action

    def initialize(repository = TodoRepository, routes = Web::Routes)
      @repository, @routes = repository, routes
    end

    def call(params)
      todo = Todo.new(params)
      @repository.delete(todo)

      redirect_to @routes.url(:todos)
    end
  end
end
