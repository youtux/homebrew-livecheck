class Bcpp
  livecheck do
    url "https://invisible-island.net/bcpp/CHANGES.html"
    regex(/href=.*?index[._-]t(\d{6,8})["' >]/i)
  end
end
