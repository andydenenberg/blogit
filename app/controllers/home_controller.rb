class HomeController < ApplicationController
  def index
    @user = User.all
    @post = Post.all
    @my_post = Post.find( :all, :conditions => { :created_by => session[:name] } )
  end

  def login
    @users = User.all

    respond_to do |format|
     @users = User.find( :all, :conditions => { :name => params[:name] } )
       if @users.length > 0
        session[:name] = @users.first.name
        format.html
      else
        session[:name] = nil
        format.html { render action: "index" }
      end
    end
#        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
#        format.json { head :ok }
#      else
#        format.html { render action: "edit" }
#        format.json { render json: @post.errors, status: :unprocessable_entity }
#      end




  end

end
