class UsersController < ApplicationController
  def show
  @user = User.find_by_id(params["id"])
    if @user == nil
      redirect_to "/error"
    end
  end

  def new 
  end
  
  def create
    @user = User.new
    @user.name=params["name"]
    @user.join_date=params["date"]
    @user.descrip=params["descrip"]
    @user.image=params["image"]
    @user.location=params["loc"]
    @user.save
    if @user.save
      redirect_to "/user/#{ @user.id }"
    else
      render "new"
    end
  end
  
  def edit
    @user = User.find_by_id(params["id"])
  end 
  
  def edit_user
    @user = User.find_by_id(params["id"])
    if params["name"] != ""
      @user.name=params["name"]
    end
    if params["date"] != ""
      @user.join_date=params["date"]
    end
    if params["descrip"] != ""
      @user.descrip=params["descrip"]
    end
    if params["image"] != ""
      @user.image=params["image"]
    end
    if params["loc"] != ""
    @user.location=params["loc"]
    end
    if @user.save
      redirect_to "/user/#{ @user.id }"
    else
      render "edit"
    end
  end
  
  def destroy
    @user = User.find_by_id(params['id'])
    @user.destroy 
    redirect_to "/user/all"
  end
  
  def index 
    @users = User.all
  end
  
  def error
  end
end