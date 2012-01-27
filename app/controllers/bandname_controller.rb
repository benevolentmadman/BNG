class BandnameController < ApplicationController
  def index
    @bandnames = Bandname.generate(10)
  end
  
  def bandname
    @bandname = Bandname.generate
    respond_to do |format|
      format.json { render :json => { :bandname => @bandname} }
    end
  end
end
