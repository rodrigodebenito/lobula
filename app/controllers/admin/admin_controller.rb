class Admin::AdminController < ApplicationController
  layout "admin/admin"
  before_filter :authenticate_user!

  def index
    render "admin/index"
  end
end
