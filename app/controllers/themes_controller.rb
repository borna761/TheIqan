class ThemesController < ApplicationController
  def index
  	@themes = Theme.all
  end

  def show
  	@theme = Theme.find_by_number(params[:id])
  end
end
