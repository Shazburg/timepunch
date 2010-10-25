Admin.controllers :employees do

  get :index do
    @employees = Employee.all
    render 'employees/index'
  end

  get :new do
    @employee = Employee.new
    render 'employees/new'
  end

  post :create do
    @employee = Employee.new(params[:employee])
    if @employee.save
      flash[:notice] = 'Employee was successfully created.'
      redirect url(:employees, :edit, :id => @employee.id)
    else
      render 'employees/new'
    end
  end

  get :edit, :with => :id do
    @employee = Employee.get(params[:id])
    render 'employees/edit'
  end

  put :update, :with => :id do
    @employee = Employee.get(params[:id])
    if @employee.update(params[:employee])
      flash[:notice] = 'Employee was successfully updated.'
      redirect url(:employees, :edit, :id => @employee.id)
    else
      render 'employees/edit'
    end
  end

  delete :destroy, :with => :id do
    employee = Employee.get(params[:id])
    if employee.destroy
      flash[:notice] = 'Employee was successfully destroyed.'
    else
      flash[:error] = 'Impossible destroy Employee!'
    end
    redirect url(:employees, :index)
  end
end