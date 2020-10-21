class HomeController < ApplicationController
  before_action :authorize_user , except:[:admin,:signout,:login,:index,:createsession,:createsession1,:createuser,:createuser1]
  before_action :authorize_admin , only:[:createuser,:createuser1]
  def index
  end
  def login
  	
  end
def test
end
  def removemd
  Md.find(params[:id]).destroy
  redirect_to stone_path
  end
  def removeamd
  Amd.find(params[:id]).destroy
  redirect_to stone_path
end

  def createsession
session[:user_id] = params[:id]
session[:email]=params[:email]
redirect_to stone_path
  end
  def createsession1
    session[:admin_id] = params[:id]
session[:aemail]=params[:email]
redirect_to createuser_path
  end
  def signout
  reset_session
  redirect_to root_path
  end
  def createuser
  @user=User.new
  end
  def createuser1
  User.create(email: params[:user][:email],password: params[:user][:password])
  redirect_to root_path
  end
  def stone
if session[:user_id]
	@md=Md.all
	@amd=Amd.all
else
	redirect_to root_path
end

  end
  def createamd
  	Amd.create(sno: params[:amd][:sno],name: params[:amd][:name],location: params[:amd][:location],contactp: params[:amd][:contactp], mobile: params[:amd][:mobile],email: params[:amd][:email],toc: params[:amd][:toc],status: params[:amd][:status],blead: params[:amd][:blead])
  redirect_to stone_path
  end
  def createmd
  Md.create(sno: params[:md][:sno],client: params[:md][:client],location: params[:md][:location],contactp: params[:md][:contactp], mobile: params[:md][:mobile],email: params[:md][:email],scope: params[:md][:scope],status: params[:md][:status],accmanager: params[:md][:accmanager])
  redirect_to stone_path
  end
  def addmd
  @md=Md.new
  end
  def addamd
  	@amd=Amd.new
end
def authorize_user
if session[:user_id]
else
	redirect_to login_path
end
end
def admin
end
def authorize_admin
if session[:admin_id]

else
  redirect_to admin_path
end
end
end
