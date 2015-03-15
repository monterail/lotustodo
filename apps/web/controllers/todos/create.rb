module Web::Controllers::Todos
  class Create
    include Web::Action

    def initialize(repository = TodoRepository, routes = Web::Routes)
      @repository, @routes = repository, routes
    end

    # Nested attributes will come with 0.3.0
    params do
      param :title, presence: true
    end

    def call(params)
      halt 400 unless params.valid?

      todo = Todo.new(params)
      todo.done = false
      @repository.persist(todo)

      redirect_to @routes.url(:todos)
    end
  end
end
