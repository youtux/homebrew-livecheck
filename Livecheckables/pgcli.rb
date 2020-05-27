class Pgcli
  livecheck do
    url "https://pypi.org/simple/pgcli/"
    regex(/href=".*pgcli-([0-9,\.]+)\.tar/)
  end
end
