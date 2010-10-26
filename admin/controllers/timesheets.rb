Admin.controllers :timesheets do

  get :index do
    @employees = Employee.all(:enabled => true, :order => :last_name)
    render 'timesheets/index'
  end

end
