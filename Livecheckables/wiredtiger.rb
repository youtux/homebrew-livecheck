class Wiredtiger
  livecheck :url   => "https://github.com/wiredtiger/wiredtiger/releases",
            :regex => %r{href="/wiredtiger/wiredtiger/tree/([0-9\.]+)}
end
