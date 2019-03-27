class ChecklistController < ApplicationController
  def method_without_layout
    render layout: false
  end
end