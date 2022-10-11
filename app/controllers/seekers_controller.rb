class SeekersController < ApplicationController
  def index
    @seekers = Seeker.all
  end

  def new
    @seeker = Seeker.new
    @seeker.skills.build(name: "Skill 1")
    @seeker.skills.build(name: "Skill 2")
  end

  def create
    @seeker = Seeker.new(seeker_params(:first_name, :last_name, :age, :sex, skills_attributes: [:name]))
    if @seeker.valid?
      @seeker.save
      redirect_to seekers_path
    else
      render :new
    end
  end

  def edit
    @seeker = Seeker.find(params[:id])
  end

  def update
    @seeker = Seeker.find(params[:id])
    if @seeker.update(seeker_params(:first_name, :last_name, :age, :sex, skills_attributes: [:name]))
      redirect_to seeker_path(@seeker)
    else
      render :edit
    end
  end

  def destroy
    Seeker.find(params[:id]).destroy
    redirect_to seekers_url
  end

  def show
    @seeker = Seeker.find(params[:id])
  end

  private

  def seeker_params(*args)
    params.require(:seeker).permit(*args)
  end
  
end
