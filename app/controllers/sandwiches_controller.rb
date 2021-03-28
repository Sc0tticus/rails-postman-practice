# frozen_string_literal: true

class SandwichesController < ApplicationController
  # /sandwiches GET
  def index
    @sandwiches = Sandwich.all

    render json: @sandwiches
  end

  # /sandwiches/:id GET
  def show
    @sandwich = Sandwich.find(params[:id])

    render json: @sandwich
  end

  def update
    # /sanwiches/:id PATCH - PUT
    @sandwich = Sandwich.find(params[:id])
    @sandwich.update(rating: params[:rating])
    render json: @sandwich
  end

  def create
    # /sandwiches/:id POST - CREATE
    @sandwich = Sandwich.create(
      name: params[:name],
      rating: params[:rating]
    )

    render json: @sandwich
  end

  def destroy
    # /sandwiches/:id DELETE
    @sandwich = Sandwich.find(params[:id])

    @sandwich.destroy

    render json: "Sandwich #{@sandwich.id} has been destroyed"
  end
end
