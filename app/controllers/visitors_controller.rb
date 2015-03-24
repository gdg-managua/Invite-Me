class VisitorsController < ApplicationController

  def new
    @visitor = Visitor.new
    @speakers = Speaker.all
    @talks = Talk.all
  end

  def create
    @visitor = Visitor.new(secure_params)
    if @visitor.valid?
      @visitor.subscribe
      flash[:notice] = "Gracias #{@visitor.email} por Suscribirte"
      redirect_to "/complete"
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:visitor).permit(:email,:f_name,:l_name)
  end

end
