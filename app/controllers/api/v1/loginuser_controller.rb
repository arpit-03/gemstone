module Api 
	module V1 
        class LoginuserController< ApplicationController 
        	  skip_before_action :verify_authenticity_token
       def login
       	 
       	 if (User.find_by(email: params[:username]))
  	if(User.find_by(email: params[:username]).password==params[:password])
  	
    	
        return render json:{ msg: "success",
        user_id: User.find_by(email: params[:username]).id,
        username: User.find_by(email: params[:username]).email}
   

      else
    return render json:{ msg: "Wrong username or password"}    
       end
   
else
       return render json:{ msg: "Wrong username or password"}
end
       end
def loginadmin
   if (Admin.find_by(email: params[:username]))
    if(Admin.find_by(email: params[:username]).password==params[:password])
    
      
        return render json:{ msg: "success",
        user_id: Admin.find_by(email: params[:username]).id,
        username: Admin.find_by(email: params[:username]).email}
   

      else
    return render json:{ msg: "Wrong username or password"}    
       end
   
else
       return render json:{ msg: "Wrong username or password"}
end
end

    
        end
    end
end