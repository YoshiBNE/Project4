class CompaniesController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    Company.find(params[:id]).destroy
    redirect_to company_url
  end

  def show
  end

  def index
  end
end
