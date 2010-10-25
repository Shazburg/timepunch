class Punch
  include DataMapper::Resource
  belongs_to :employee

  # property <name>, <type>
  property :id, Serial
  property :in, Integer
  property :timestamp, DateTime
end
