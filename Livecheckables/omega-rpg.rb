class OmegaRpg
  livecheck do
    url "http://www.alcyone.com/max/projects/omega/"
    regex(/latest.*?>([0-9\.]+)</)
  end
end
