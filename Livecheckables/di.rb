class Di
  livecheck do
    url "https://gentoo.com/di/"
    regex(%r{<p>Current Version: ([0-9,.]+)</p>})
  end
end
