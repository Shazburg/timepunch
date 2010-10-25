class Employee
  include DataMapper::Resource
  has n, :punches

  def display_name
    "#{last_name}, #{first_name}"
  end

  # property <name>, <type>
  property :id, Serial
  property :last_name, String
  property :first_name, String
  property :enabled, Boolean
end
