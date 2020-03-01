class Htpdate
  livecheck :url   => "http://www.vervest.org/htp/download",
            :regex => %r{href=.*?/htpdate-([0-9\.]+)\.t}
end
