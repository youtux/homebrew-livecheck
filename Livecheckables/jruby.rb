class Jruby
  livecheck :url   => "http://jruby.org/download",
            :regex => %r{href=.*?/jruby-dist-([0-9\.]+)-bin\.t}
end
