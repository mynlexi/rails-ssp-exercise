class CollectionsController < ApplicationController

  def create
    @trainingsplan = Trainingsplan.find(params[:trainingsplan_id])
    @collection = Collection.new(collection_params)
    @collection.trainingsplan = @trainingsplan
    if @collection.save
      redirect_to trainingsplan_path(@trainingsplan)
    else
      render "trainingsplan/show"
    end
  end

  def destroy
    @collection.destroy
    render "trainingsplan/show"
  end

  private

  def collection_params
    params.require(:collection).permit(:description, :exercise_id)
  end
end
