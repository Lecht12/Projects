class InfosController < ApplicationController
  def index
  end

    def create
      info = Information.new(user_infos)
      if info.save
        session[:info_id] = info.id
        redirect_to '/dash2'
      else
        flash[:register_errors] = info.errors.full_messages
        redirect_to '/'
      end
    end
    private 
        def user_infos
            params.require(:info).permit(:name,:family_name,:date,:gender,:address,:country,:city,:class_c,:year)
  
        end

  
  
end
