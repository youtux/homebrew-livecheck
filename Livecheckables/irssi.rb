class Irssi
  livecheck do
    url "https://irssi.org/download/"
    regex(%r{<p>Latest release version: <strong>([0-9,.]+)</strong>}i)
  end
end
