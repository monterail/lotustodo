module Web::Controllers::Todos
  class Index
    include Web::Action

    expose :todos
    expose :todos_count

    def initialize(repository = TodoRepository)
      @repository = repository
    end

    def call(params)
      @todos = @repository.all
      @todos_count = @repository.not_done.count
    end
  end
end
