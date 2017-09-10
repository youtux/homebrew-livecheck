class Lynis
  livecheck :url => "https://cisofy.com/downloads/lynis/",
            :regex => %r{href=.*?/lynis-([0-9\.]+)\.t}
end
