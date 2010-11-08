Admin.controllers :timesheets do

  get :index do
    @employees = Employee.all(:enabled => true, :order => :last_name)
    @start_date = params[:start_date] || (Date.today.beginning_of_week - 7).to_s
    @end_date = params[:end_date] || (Date.today.beginning_of_week - 1).to_s
    @date_range = @start_date..@end_date
    render 'timesheets/index'
  end

end
