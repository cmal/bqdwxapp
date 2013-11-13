module WeixinsHelper
  def say
    params[:xml][:Content]
    #"计财部的回声: " + content
  end
end
