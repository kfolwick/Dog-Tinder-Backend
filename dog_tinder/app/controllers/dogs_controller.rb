class DogsController < ApplicationController
  def index
      dogs = Dog.all
      render json: dogs
  end

  def create
      dog = Dog.create(dog_params)
      render json: dog
  end
  def dog_params
      params.require(:dog).permit(:name, :age, :size, :enjoys)
  end
  def destroy
      dog = Dog.find(params[:id])
        if dog.destroy
            render json: dog
        else
            render json: dog.errors
        end
  end
  def update
      dog = Dog.find(params[:id])
        if Dog.update dog_params
            render json: dog
        else
            render json: dog.errors
        end
    end
    def show
        dog = Dog.find(params[:id])
        render json: dog
    end
    def new
        dog = Dog.new(params[:id])
        render json: dog
    end
end
