class ServletDocument <  WEBrick::HTTPServlet::AbstractServlet
#Simple servlet to server a single fixed WWW docuemnt
  def initialize(server, mimetype, content_string)
    @mimetype = mimetype
    @content = content_string
    super server
  end 
  
  def do_GET(req, rsp)
    rsp.status = 200
    rsp.body = @content
    rsp.content_type = @mimetype
  end
                                            
  alias :do_POST :do_GET
                                              
end
