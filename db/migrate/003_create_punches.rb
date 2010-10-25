migration 3, :create_punches do
  up do
    create_table :punches do
      column :id, DataMapper::Property::Integer, :serial => true
      column :in, DataMapper::Property::Integer
      column :timestamp, DataMapper::Property::DateTime
      column :employee_id, DataMapper::Property::Integer
    end
  end

  down do
    drop_table :punches
  end
end
