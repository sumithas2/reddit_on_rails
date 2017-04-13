class LinksController < ApplicationController

 def index

 end

  def show
  	@link = Link.where(:user_id => current_user.id).all
  end

  def new
  	@link = Link.new

  end

  def create
  	@link = Link.new(link_params)
  	@link.user_id = current_user.id 

  	respond_to do |format|
  		if @link.save
  			format.html{redirect_to @link, notice: "Link was successfully posted"}
  			format.json{render json: @link, status: :created, location: @link}
  		else
  			format.html{render action:"new"}
  			format.json{render json: @link.errors, status: :unprocessable_entity}
  		end
  	end
  end

private

def link_params

	params.require(:link).permit(:url, :title, :user_id )
end
 

end
