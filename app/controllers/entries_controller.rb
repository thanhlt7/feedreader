class EntriesController < ApplicationController
	before_action only: :index
  def index
  	@entries = Entry.all.order('content desc').paginate(page: params[:page], per_page: 10)
  end

  def show
  	@entry = Entry.find(params[:id])
  end

end
