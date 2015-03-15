class TodoRepository
  include Lotus::Repository

  def self.not_done
    query do
      where(done: false)
    end
  end
end
