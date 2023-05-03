class WoofsController < ApplicationController
 
  def index
    @woofs = Woof.all
  
  end
  def show
    @woof = Woof.find_by(id: params[:id])
    render :show
  end
  def new
    @woof = Woof.new
    
  end

  def create
    @woof = Woof.new(
      user_id = current_user.id,
      text: params[:woof][:text],
      image: params[:woof][:image]
    )
    @woof.save!
    redirect_to "/woofs/#{@woof.id}"
  end
end
