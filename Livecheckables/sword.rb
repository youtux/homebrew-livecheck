class Sword
  livecheck :url => "https://www.crosswire.org/sword/index.jsp",
            :regex => %r{href=".*?/sword-([0-9\.]+)\.t}
end
