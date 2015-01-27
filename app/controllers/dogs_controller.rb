class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    dog = Dog.create(dog_params)
      redirect_to dog
  end

private

  def dog_params
    params.require(:name).permit(:breed, :age)
  end

end
