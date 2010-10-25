Admin.controllers :punches do

  get :index do
    @punches = Punch.all
    render 'punches/index'
  end

  get :new do
    @punch = Punch.new
    render 'punches/new'
  end

  post :create do
    @punch = Punch.new(params[:punch])
    if @punch.save
      flash[:notice] = 'Punch was successfully created.'
      redirect url(:punches, :edit, :id => @punch.id)
    else
      render 'punches/new'
    end
  end

  get :edit, :with => :id do
    @punch = Punch.get(params[:id])
    render 'punches/edit'
  end

  put :update, :with => :id do
    @punch = Punch.get(params[:id])
    if @punch.update(params[:punch])
      flash[:notice] = 'Punch was successfully updated.'
      redirect url(:punches, :edit, :id => @punch.id)
    else
      render 'punches/edit'
    end
  end

  delete :destroy, :with => :id do
    punch = Punch.get(params[:id])
    if punch.destroy
      flash[:notice] = 'Punch was successfully destroyed.'
    else
      flash[:error] = 'Impossible destroy Punch!'
    end
    redirect url(:punches, :index)
  end
end