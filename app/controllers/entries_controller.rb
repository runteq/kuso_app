class EntriesController < ApplicationController
  def index
    @entries = Entry.all.order(created_at: :asc)
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    @entries = Entry.all
    respond_to do |format|
      if @entry.save
        format.html { redirect_to root_url }
        format.turbo_stream {
          @entry = Entry.new
        }
      else
        format.html { render action: :index, status: :unprocessable_entity }
        format.turbo_stream
      end
    end
  end

  private
    def entry_params
      params.require(:entry).permit(:name,:email,:title,:description,:photo)
    end
end
