class Pike
  livecheck do
    url "https://pike.lysator.liu.se/download/pub/pike/latest-stable/"
    regex(/href=.*?Pike-v([0-9.]+)\.t/i)
  end
end
