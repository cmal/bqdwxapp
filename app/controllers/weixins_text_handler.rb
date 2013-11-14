class WeixinsTextHandler < WeixinsHandler
  Commands = {"shibor" => {:method => :query_shibor},
              "Shibor" => {:method => :query_shibor}
             }
  def return
    if valid_command?
      send Commands[@content][:method]
    else
      @result = "请选择关键词：shibor,"
    end
    super
  end
  def valid_command?
    Commands.has_key? @content
  end
  def query_shibor
    @result = "http://www.shibor.org/shibor/web/html/shibor.html"
  end
end
