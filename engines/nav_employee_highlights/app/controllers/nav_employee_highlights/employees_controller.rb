require_dependency "nav_employee_highlights/application_controller"

module NavEmployeeHighlights
  class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :edit, :update, :destroy]

    # GET /employees
    def index
      @employees = Employee.all
    end

    # GET /employees/1
    def show
    end

    # GET /employees/new
    def new
      @employee = Employee.new
    end

    # GET /employees/1/edit
    def edit
    end

    # POST /employees
    def create
      @employee = Employee.new(employee_params)

      if @employee.save
        redirect_to @employee, notice: 'Employee was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /employees/1
    def update
      if @employee.update(employee_params)
        redirect_to @employee, notice: 'Employee was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /employees/1
    def destroy
      @employee.destroy
      redirect_to employees_url, notice: 'Employee was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_employee
        @employee = Employee.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def employee_params
        params[:employee].permit(:email, :bio, :name, :display_image_path)
      end
  end
end
