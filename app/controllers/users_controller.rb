

class UsersController < ApplicationController
require 'mtg_sdk'

  def show
    @card = MTG::Card.find(386616)

  end
end
