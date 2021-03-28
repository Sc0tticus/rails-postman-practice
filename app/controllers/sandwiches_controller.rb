# frozen_string_literal: true

class SandwichesController < ApplicationController
  # /sandwiches GET
  def index
    @sandwiches = Sandwich.all

    render json: @sandwiches
  end

  def update
    # /sanwiches/:id PATCH - PUT
    @sandwich = Sandwich.find(params[:id])
    @sandwich.update(rating: params[:rating])
    render json: @sandwich
  end
end
