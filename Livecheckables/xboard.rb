class Xboard
  livecheck :url   => "https://ftp.gnu.org/gnu/xboard/",
            :regex => /href="xboard-v?(\d+(?:\.\d+)+)\.t/
end
