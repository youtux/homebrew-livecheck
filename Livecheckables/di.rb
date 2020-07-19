class Di
  livecheck do
    url :homepage
    regex(%r{<p>Current Version: ([0-9,.]+)</p>}i)
  end
end
