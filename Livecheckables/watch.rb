require "net/http"

class Watch
  def livecheck
    url = "http://sourceforge.net/projects/procps-ng/files/latest/download"
    redirect = Net::HTTP.get_response(URI(url))['location']

    return Version.detect(URI(redirect).path)
  end
end
