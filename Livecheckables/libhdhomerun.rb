class Libhdhomerun
  livecheck do
    url :homepage
    regex(/href=.*?libhdhomerun_([0-9]+)\.t/i)
  end
end
