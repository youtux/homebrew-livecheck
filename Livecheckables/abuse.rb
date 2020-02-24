class Abuse
  livecheck :url => "http://abuse.zoy.org/wiki/download",
            :regex => /abuse-(\d+(?:\.\d+)+)\.tar/
end
