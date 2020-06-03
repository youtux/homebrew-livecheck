class FsUae
  livecheck do
    url "https://fs-uae.net/"
    regex(%r{Latest Version.*?href="/download">([0-9.]+)<}m)
  end
end
