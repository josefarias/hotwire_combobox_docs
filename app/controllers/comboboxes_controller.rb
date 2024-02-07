class ComboboxesController < ApplicationController
  def index
    @user = User.first
    fresh_when(@user)
  end
end
