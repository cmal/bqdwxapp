class WeixinsHandler < Object
  def initialize(content)
    content
  end
end

class WeixinsTextHandler < WeixinsHandler
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
