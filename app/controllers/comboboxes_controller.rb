class ComboboxesController < ApplicationController
  def index
    @user = User.first
    fresh_when last_modified: DateTime.parse("2024-03-07 00:00:00")
  end
end
