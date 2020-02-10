class SearchController < ApplicationController 
  def index
    render locals: {
      results: ResultsFacade.new(params[:house])
    }
  end
end

