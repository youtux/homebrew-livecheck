class Pike
  livecheck do
    url "https://pike.lysator.liu.se/download/pub/pike/latest-stable/"
    regex(/href=.*?Pike-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
