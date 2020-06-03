# We check the GitHub repo tags instead of
# https://nlnetlabs.nl/downloads/ldns/ since the first-party site has a
# tendency to lead to an `execution expired` error.
class Ldns
  livecheck do
    url "https://github.com/NLnetLabs/ldns.git"
    regex(/^(?:release-)?v?(\d+(?:\.\d+)+)$/i)
  end
end
