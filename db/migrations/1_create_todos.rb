class CreateTodos < Sequel::Migration
  def up
    create_table :todos do
      primary_key :id
      String :title
      Boolean :done, null: false, default: false
    end
  end

  def down
    drop_table :todos
  end
end
