class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    @entry = Entry.new
  end

  def create
    puts "create"
    @entry = Entry.new(entry_params)
    @entry.save
    redirect_to root_path
  end
  
  private
    def entry_params
      params.require(:entry).permit(:title,:description,:photo)
    end
end
