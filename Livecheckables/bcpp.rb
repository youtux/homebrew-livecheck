class Bcpp
  livecheck do
    url "https://invisible-island.net/bcpp/CHANGES.html"
    regex(/id=.*?t(\d{6,8})["' >]/im)
  end
end
