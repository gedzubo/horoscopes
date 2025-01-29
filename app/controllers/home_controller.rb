class HomeController < ApplicationController
  allow_unauthenticated_access only: [ :index ]

  def index
    @signs = Sign.all
  end

  def aries
    render "sign"
  end

  def taurus
    render "sign"
  end

  def gemini
    render "sign"
  end

  def cancer
    render "sign"
  end

  def leo
    render "sign"
  end

  def virgo
    render "sign"
  end

  def libra
    render "sign"
  end

  def scorpio
    render "sign"
  end

  def sagittarius
    render "sign"
  end

  def capricorn
    render "sign"
  end

  def aquarius
    render "sign"
  end

  def pisces
    render "sign"
  end
end
