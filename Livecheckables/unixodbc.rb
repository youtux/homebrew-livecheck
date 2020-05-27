class Unixodbc
  livecheck do
    url "http://www.unixodbc.org/unixODBC.html"
    regex(/\s+([0-9\.]+) Released/)
  end
end
