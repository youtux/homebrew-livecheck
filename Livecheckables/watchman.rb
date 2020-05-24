class Watchman
  # The Git repo contains a few tags like `2020.05.18.00`, so we have to
  # restrict matching to versions with two to three parts (e.g., 1.2, 1.2.3).
  livecheck :regex => /^v?(\d+(?:\.\d+){,2})$/i
end
