class WelcomeController < ApplicationController
skip_before_action :authenticate_user!, only: :index
layout "application", only: [:index]
  def index
  end
end
