class Cvsync
  livecheck :url => "http://www.cvsync.org",
            :regex => %r{href="http://www.cvsync.org/dist/cvsync-([0-9\.]+)\.t}
end
