class Fortune
  # The URL below should be modified to use HTTPS again after the upstream
  # server fixes their SSL certificate issue.
  livecheck do
    url "http://www.ibiblio.org/pub/linux/games/amusements/fortune/"
    regex(/href=.*?fortune-mod[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
