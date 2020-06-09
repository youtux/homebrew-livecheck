class Timelimit
  livecheck do
    url :homepage
    regex(/latest release is .*?timelimit-([0-9.]+)</)
  end
end
