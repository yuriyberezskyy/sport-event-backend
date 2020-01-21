class ParticipationsController < ApplicationController
  def index
    @partcipations = Participation.all 
    render json: @partcipations 
  end

  def show
     @participation = Participation.find(params[:id])
     render json: @partcipation
  end

  def update
     @partcipation = Participation.find(params[:id])
     @partcipation.update(participation_params)
     render json: @partcipation
  end

   def create
     @participation = Participation.create(participation_params)
     @participation.update(haveParticipated: true)
     render json: @participation
  end

  def destroy
     @participation = Participation.find(params[:id])
     @participation.update(haveParticipated: false)
     @participation.destroy
     render json: @participation
  end 

end

private
def participation_params
   params.permit(:haveParticipated,:user_id,:event_id)
end