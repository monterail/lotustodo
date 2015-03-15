class Todo
  include Lotus::Entity

  attributes :title, :done

  def done?
    done
  end
end
