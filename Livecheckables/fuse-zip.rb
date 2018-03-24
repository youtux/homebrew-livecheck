class FuseZip
  livecheck :url => "https://bitbucket.org/agalanin/fuse-zip/downloads/",
            :regex => %r{href=".*?/fuse-zip-([0-9\.]+)\.t}
end
