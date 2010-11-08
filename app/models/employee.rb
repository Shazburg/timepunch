class Employee
  include DataMapper::Resource
  has n, :punches

  def display_name
    "#{last_name}, #{first_name}"
  end

  def total_hours(start_date, end_date)
    results = self.punches.all(:fields => [:in, :timestamp], :timestamp => (start_date..end_date))
    results.each do |result|
      case result
      when result.in = 0
        @time_out = time_out + result.timestamp
      when result.in = 1
        @time_in = time_in + result.timestamp
      end
    end
    return @time_out
  end

  # property <name>, <type>
  property :id, Serial
  property :last_name, String
  property :first_name, String
  property :enabled, Boolean
end
