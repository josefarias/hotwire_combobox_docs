class ComboboxesController < ApplicationController
  def index
    @user = User.first
  end
end
