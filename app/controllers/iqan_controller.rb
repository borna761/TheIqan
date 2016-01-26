class IqanController < ApplicationController
	def index
		@iqan = Iqan.all
	end

  def show
  	@iqan = Iqan.find_by_number(params[:id])
  end
end
