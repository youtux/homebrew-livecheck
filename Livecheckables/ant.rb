class Ant
  livecheck :url   => "https://downloads.apache.org/ant/binaries/",
            :regex => /href=.+?apache-ant-v?(\d+(?:\.\d+)+)(?:-bin)?\.t/
end
