class TopController < ApplicationController
  before_action :authenticate_user!

  def index
    pp "####################################"
    pp session["devise.user_attributes"].inspect
  end
end
