class Timelimit
  livecheck do
    url "https://devel.ringlet.net/sysutils/timelimit/"
    regex(/latest release is .*?timelimit-([0-9.]+)</)
  end
end
