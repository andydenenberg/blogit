class HomeController < ApplicationController
  def index
    @post = Post.all
    @user = User.all
    @me = User.find( :all, :conditions => { :name => session[:name] } )
    @my_post = Post.find( :all, :conditions => { :created_by => session[:name] } )
  end

  def login
    respond_to do |format|
     @users = User.find( :all, :conditions => { :name => params[:name] } )
       if @users.length > 0
        session[:name] = @users.first.name
        format.html { redirect_to root_path }
      else
        session[:name] = nil
        format.html { render action: "index" }
      end
    end
  end

end
