class LandsController < ApplicationController
  def index
    @lands=Land.all
  end
  def new
  end
end
