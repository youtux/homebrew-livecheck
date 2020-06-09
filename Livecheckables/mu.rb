class Mu
  # We restrict matching to versions with an even-numbered minor version number,
  # as an odd-numbered minor version number indicates a development version:
  # https://github.com/djcb/mu/commit/23f4a64bdcdee3f9956a39b9a5a4fd0c5c2370ba
  livecheck do
    url :head
    regex(/^v?(\d+\.\d*[02468](?:\.\d+)*)$/i)
  end
end
