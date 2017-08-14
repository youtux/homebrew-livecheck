class AflFuzz
  livecheck :url => "http://lcamtuf.coredump.cx/afl/releases/",
            :regex => /href="afl-([0-9\.]+b)\.t/
end
