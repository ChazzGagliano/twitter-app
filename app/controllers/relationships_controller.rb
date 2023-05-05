class RelationshipsController < ApplicationController
 
  def create
    other_user = User.find_by(params[:user_id])
   
    @relationship = Relationship.new(
   follower_id: current_user.id,
   followed_id: other_user.id
    )
  @relationship.save!
  redirect_to user_path(other_user)
  end
  def destroy
    @relationship = Relationship.find_by(id: params[:id])
    @relationship.destroy
    redirect_to user_path(@relationship.followed.id)
  end
end
