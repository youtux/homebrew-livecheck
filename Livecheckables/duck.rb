class Duck
  livecheck do
    url "https://cyberduck.io/changelog/"
    regex(%r{href=https://update.cyberduck.io/Cyberduck-([0-9,.]+)\.zip})
  end
end
