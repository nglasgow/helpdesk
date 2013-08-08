class TicketsController < ApplicationController
  def index
    @ticket = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(params[:project])
    if @ticket.save

      flash[:notice] = "Ticket has been created."
      redirect_to tickets_path
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end
end
