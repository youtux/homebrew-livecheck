class Wapm
  # There is a "3.2" tag in the Git repo that we avoid by only matching versions
  # with 3+ parts (e.g., 0.1.2)
  livecheck :regex => /^v?(\d+(?:\.\d+){2,})/
end
