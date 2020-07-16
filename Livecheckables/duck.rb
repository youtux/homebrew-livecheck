class Duck
  livecheck do
    url "https://cyberduck.io/changelog/"
    regex(/href=.*?Cyberduck-([0-9,.]+)\.zip/)
  end
end
