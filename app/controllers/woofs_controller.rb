class WoofsController < ApplicationController
  def index
    @woofs = Woof.all
    render json: {message: "hello"}
  end
end
