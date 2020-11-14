class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:create, :update, :destroy, :show]
  
  def index
    @exercises = Exercise.all
  end
  
  def show  
  end

  def new
    @exercise = Exercise.new  
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to exercise_path(@exercise)
    else
      render :new
    end
  end

  def update
    @exercise.update(exercise_params)
    redirect_to exercise_path(@exercise)  
  end

  def destroy
    @cocktail.destroy
    redirect_to exercises_path  
  end

  def edit  
  end

  private

  def set_exercise
    @exercise = Exercise.find(params[:id])
  end

  def exercise_params
    params.require(:exercise).permit(:name, :category)
  end
end
