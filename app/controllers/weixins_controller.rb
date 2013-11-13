class WeixinsController < ApplicationController
	skip_before_filter :verify_authenticity_token
	#before_filter :check_weixin_legality
	def show
		render :text=> params[:echostr]
    #render "echo",:format=>:xml
	end
	
	def create
		#logger.debug "text:#{params[:xml]}"
		#if params[:xml][:MsgType]=="text"
    @return_content = WeixinsHandler.const_get("Weixins#{params[:xml][:MsgType].capitalize}Handler").new(params[:xml][:Content]).return
		render "echo",:format=>:xml
		#end
	end

	def check_weixin_legality
	  #logger.debug params[:timestamp]
		array =["9c49b86f2d18b762983d9d76b257a257",params[:timestamp],params[:nonce]].sort
		render :text => "Forbidden",:status => 403 if params[:signature]!=Digest::SHA1.hexdigest(array.join)
	end
end

