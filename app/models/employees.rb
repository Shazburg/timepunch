class Employees
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :last_name, String
  property :first_name, String
  property :enabled, Boolean
end
