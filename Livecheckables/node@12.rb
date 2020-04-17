class NodeAT12
  livecheck :url   => "https://nodejs.org/dist/",
            :regex => %r{href=.*?v?(12(?:\.\d+){2})/?['"]}
end
