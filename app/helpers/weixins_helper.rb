module WeixinsHelper
  def say
    "大山的回声: " + params[:xml][:Content]
  end
end
