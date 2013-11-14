class WeixinsHandler < Object
  def initialize(content)
    @content = content
  end

  def return
    @result
  end
end
class WeixinsImageHandler < WeixinsHandler
end

class WeixinsVoiceHandler < WeixinsHandler
end

class WeixinsVideoHandler < WeixinsHandler
end

class WeixinsMusicHandler < WeixinsHandler
end

class WeixinsNewsHandler < WeixinsHandler
end
