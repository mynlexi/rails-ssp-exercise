class TrainingsplansController < ApplicationController
  before_action :set_trainingsplan, only: [:show, :edit, :update, :destroy]
  def index
    @trainingsplans = Trainingsplan.all
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])  
  end

  def new
    @trainingsplan= Trainingsplan.new
    @user = User.find(params[:user_id])
    @trainingsplan.user = @user
  end

  def create
    @trainingsplan = Trainingsplan.new(trainingsplan_params)
    @user = User.find(params[:user_id])
    @trainingsplan.user = @user
    if @trainingsplan.save
      redirect_to user_trainingsplans_path(@user)
    else
      raise
    end
  end

  def edit
    @user = User.find(params[:user_id]) 
  end

  def destroy
    @trainingsplan.destroy
    redirect_to trainingsplans_path
  end

  def update
    @trainingsplan.update(trainingsplan_params)    
    redirect_to user_trainingsplan_path(@trainingsplan)
  end

  private

  def trainingsplan_params
    params.require(:trainingsplan).permit(:name, :goal)
  end

  def set_trainingsplan
    @trainingsplan = Trainingsplan.find(params[:id])
  end
end
