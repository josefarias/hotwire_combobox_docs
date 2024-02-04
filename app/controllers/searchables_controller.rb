class SearchablesController < ApplicationController
  before_action :set_page

  def index
  end

  private
    def set_page
      set_page_and_extract_portion_from Searchable.search(params[:q]).by_kind.alphabetically, per_page: 10
    end
end
