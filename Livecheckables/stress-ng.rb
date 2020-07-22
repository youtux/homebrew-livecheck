class StressNg
  livecheck do
    url "https://kernel.ubuntu.com/~cking/tarballs/stress-ng/"
    regex(/href=.*?stress-ng-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
