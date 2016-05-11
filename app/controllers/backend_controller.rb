# Controller for backend pages
class BackendController < ApplicationController
  before_action :set_current_person
  layout 'backend'
  def show
  end

  private

  def set_current_person
    @current_person = current_person
  end
end
