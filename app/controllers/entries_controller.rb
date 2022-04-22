class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end
  
  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.save
    redirect_to root_path
  end
  
  private
    def entry_params
      params.require(:entry).permit(:description,:titel)
    end
end
