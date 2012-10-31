class Admin::IndexController < ApplicationController
  def login

  end

  def show
 	
  end

  def index
		information = 'Plase login '
		render :text => information 
  end


  def logout
  end

  def main
  	render :layout => false
  end

  def left

  end

  def top
  	
  end

  def content
  	
  end
end
