class EmployeesController < ApplicationController
  def home
  end

  def index
    @employee=Employee.all
  end

  def show
    @employee=Employee.find(params[:id])
  end

  def new
    @employee=Employee.new
  end
  
  def create
      @employee = Employee.new(employee_params)
      if @employee.save
        flash[:success] = "New Employee Created"
        redirect_to @employee
      else
        render 'new'
      end
    end

  def edit
    @employee=Employee.find(params[:id])
  end
  
  def update
    @employee = Employee.find(params[:id])
      if @employee.update_attributes(employee_params)
        flash[:success] = "Profile updated"
              redirect_to @employee
      else
        render 'edit'
      end
  end
  
  def employee_params
        params.require(:employee).permit(:empid, :name, :email, :department,
                                     :position)
  end
  
  def destroy
      Employee.find(params[:id]).destroy
      flash[:success] = "Employee deleted"
      redirect_to employees_path
  end
  
  def search
    if params[:search].blank?  
        redirect_to(employees_path, alert: "Empty field!") and return  
      else  
        @employee = params[:search].downcase  
        @results = Employee.all.where("lower(name) LIKE :search", search: "%#{@employee}%")  
      end 
  end
  
end
