class PomsController < ApplicationController
  respond_to :html, :json
  
  def new
  end

  def create
  end

  def index
    @poms = Pom.all
    respond_with @poms
  end

  def show
    @pom = Pom.find params[:id]
    respond_with @pom
  end
end
