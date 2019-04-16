class ConsignmentsController < ApplicationController
  def import
    Consignment.import(params[:file])
    redirect_to root_url, notice: "Consignment form imported!"
  end
end
