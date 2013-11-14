class WeixinsHandler < Object
  def initialize(content)
    @content = content
  end

  def return
    "请选择关键词：shibor,"
  end
end

class WeixinsTextHandler < WeixinsHandler
  commands = {"shibor" => {:method => :query_shibor},
              "Shibor" => {:method => :query_shibor}
             }
  def return
    if valid_command?
      send commands[@content][:method]
      @content
    else
      super
    end
  end
  def valid_command?
    commands.has_key? @content
  end
  def query_shibor
    @content = "http://www.shibor.org/shibor/web/html/shibor.html"
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
