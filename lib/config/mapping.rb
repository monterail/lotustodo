collection :todos do
  entity     Todo
  repository TodoRepository

  attribute :id,    Integer
  attribute :title, String
  attribute :done,  Boolean
end
