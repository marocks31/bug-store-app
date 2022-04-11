class BugsController < ApplicationController

def index
  bugs = Bug.all 
  render json: bugs.as_json
end

def create
  bug = Bug.new(
    breed: params[:breed],
    age: params[:age],
    description: params[:description],
    price: params[:price],
  )
  bug.save
  render json: bug.as_json
end

def show
  bug = Bug.find_by(id: params[:id])
  render json: bug.as_json
end

def update
  bug = Bug.find_by(id: params[:id])
  bug.breed = params[:breed] || bug.breed
  bug.age = params[:age] || bug.age
  bug.description = params[:description] || bug.description
  bug.price = params[:price] || bug.price
  bug.save
  render json: bug.as_json
end

def delete
  bug = Bug.find_by(id: params[:id])
  bug.destroy
  render json: {message: "This bug has been adopted."}
end 


end
