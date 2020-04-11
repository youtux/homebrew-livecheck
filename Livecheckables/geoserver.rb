class Geoserver
  livecheck :url   => "https://sourceforge.net/projects/geoserver/",
            # exclude 2.17-RC
            # also rss feeds does not have 2.16.2-bin.zip
            :regex => /geoserver-(\d+(?:\.\d+)+)-[^RC]/
end
