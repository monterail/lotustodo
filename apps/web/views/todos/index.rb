module Web::Views::Todos
  class Index
    include Web::View

    def create_path
      routes.url(:todos)
    end

    def complete_path(id)
      routes.url(:complete_todos, id: id)
    end

    def delete_path(id)
      routes.url(:todos, id: id)
    end

    def todos
      locals[:todos].map { |todo| TodoPresenter.new(todo) }
    end

    private

    def routes
      Web::Routes
    end
  end

  class TodoPresenter
    include Lotus::Presenter

    def element_class
      if done?
        'completed'
      end
    end
  end
end
