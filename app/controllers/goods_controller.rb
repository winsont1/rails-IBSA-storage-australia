class GoodsController < ApplicationController
  def index
    if params[:query].present?
      @goods = Good.where("good_type ILIKE ?", "%#{params[:query]}%")
    else
      @goods = Good.all
    end
  end
end
