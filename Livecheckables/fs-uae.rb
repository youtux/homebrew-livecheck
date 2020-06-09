class FsUae
  livecheck do
    url :homepage
    regex(%r{Latest Version.*?href="/download">([0-9.]+)<}m)
  end
end
