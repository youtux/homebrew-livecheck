class Fortune
  livecheck do
    url "https://www.ibiblio.org/pub/linux/games/amusements/fortune/"
    regex(/href=.*?fortune-mod-v?(\d+(?:\.\d+)*)\.t/)
  end
end
