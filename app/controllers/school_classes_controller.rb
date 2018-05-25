class SchoolClassesController < ApplicationController
    def new
      @school_class = Student.new
    end

    def show
      @school_class = Student.find(params[:id])
    end

    def edit
      @school_class = Student.find(params[:id])
    end

    def create
      @school_class = Student.new(student_params)
      @school_class.save
      redirect_to student_path(@school_class)
    end

    def update
      @school_class = Student.find(params[:id])
      @school_class.update(student_params)
      @school_class.save
      redirect_to student_path(@school_class)
    end

    private
    def student_params
      params.require(:school_class).permit(:first_name, :last_name)
    end
  end
