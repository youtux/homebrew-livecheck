require "formula"

class Watch
  def livecheck
    require "net/http"
    url = "http://sourceforge.net/projects/procps-ng/files/latest/download"

    redirect = Net::HTTP.get_response(URI(url))['location']

    Version.detect(URI(redirect).path)
  end
end
