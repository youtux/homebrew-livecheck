class Cfengine
  livecheck :url => "https://cfengine.com/product/community/source-code/",
            :regex => %r{href=".*?/cfengine-([0-9\.]+)\.t}
end
