class Pod2man
  livecheck do
    url :homepage
    regex(/href=.*?podlators-([0-9.]+)\.t/)
  end
end
