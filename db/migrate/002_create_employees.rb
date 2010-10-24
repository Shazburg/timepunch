migration 2, :create_employees do
  up do
    create_table :employees do
      column :id, DataMapper::Property::Integer, :serial => true
      column :last_name, DataMapper::Property::String
      column :first_name, DataMapper::Property::String
      column :enabled, DataMapper::Property::Boolean
    end
  end

  down do
    drop_table :employees
  end
end
