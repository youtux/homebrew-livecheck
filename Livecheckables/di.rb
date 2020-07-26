class Di
  livecheck do
    url :homepage
    regex(%r{<p>Current Version: v?(\d+(?:\.\d+)+)</p>}i)
  end
end
