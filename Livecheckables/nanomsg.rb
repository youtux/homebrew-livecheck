class Nanomsg
  livecheck :url   => "https://github.com/nanomsg/nanomsg/releases",
            :regex => %r{latest.*?href="/nanomsg/nanomsg/tree/([0-9\.]+)}m
end
