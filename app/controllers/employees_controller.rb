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

  def edit
  end
end
