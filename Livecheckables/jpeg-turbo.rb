class JpegTurbo
  livecheck :url => "https://github.com/libjpeg-turbo/libjpeg-turbo/releases",
            :regex => %r{href="/libjpeg-turbo/libjpeg-turbo/tree/([0-9\.]+)}
end
