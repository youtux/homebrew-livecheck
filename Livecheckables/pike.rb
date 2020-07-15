class Pike
  livecheck do
    url :homepage
    regex(/href=.*?Pike-v([0-9.]+)\.t/)
  end
end
