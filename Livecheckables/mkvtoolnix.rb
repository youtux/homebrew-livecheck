class Mkvtoolnix
  livecheck :url   => "https://mkvtoolnix.download/sources/",
            :regex => /href="[^"]*?mkvtoolnix-(\d+(?:\.\d+)+)\.t/
end
