class HomeController < ApplicationController
  allow_unauthenticated_access only: [ :index ]

  def index
    @signs = Sign.all
  end
end
