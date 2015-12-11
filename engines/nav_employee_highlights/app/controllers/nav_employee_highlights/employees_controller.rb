require_dependency "nav_employee_highlights/application_controller"
module NavEmployeeHighlights
  class EmployeesController < ApplicationController
    def show
      render "nav_employee_highlights/employees/#{params[:id]}"
    end
  end
end
