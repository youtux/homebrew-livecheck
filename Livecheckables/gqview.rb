class Gqview
  # The "gqview" directory is where stable versions are found, so we use it in
  # the regex to avoid matching releases in the "unstable" directory.
  livecheck do
    url :stable
    regex(%r{url=.*?/gqview/[^/]+/gqview[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
