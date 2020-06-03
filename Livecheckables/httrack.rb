class Httrack
  livecheck do
    url "https://mirror.httrack.com/historical/"
    regex(/httrack-([0-9.]+)\./)
  end
end
