class SearchController < ApplicationController 
  def index
    binding.pry
    render locals: {
        results: ResultsFacade.new()
    }
  end
end

