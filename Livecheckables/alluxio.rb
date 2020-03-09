class Alluxio
  livecheck :url   => "https://downloads.alluxio.io/downloads/files/",
            :regex => %r{href="(\d+(?:\.\d+)+)/?"}
end
