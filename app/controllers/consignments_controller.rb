class ConsignmentsController < ApplicationController
  def redirect(url, text)
    redirect_to url, notice: text
  end

  def import
    if params[:file]
      Consignment.import(params[:file])
      redirect(root_url, "Consignment form imported!")
    else
      redirect(new_consignment_path, "Please upload a CSV file")
    end
  end
end
