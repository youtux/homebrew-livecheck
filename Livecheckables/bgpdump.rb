class Bgpdump
  livecheck :url => "https://bitbucket.org/ripencc/bgpdump/downloads/?tab=tags",
            :regex => /href="\/ripencc\/bgpdump\/get\/(\d+.\d+.\d+)\./
end
