class SstpClient
  livecheck do
    url :stable
    regex(%r{url=.*?/sstp-client-v?(\d+(?:\.\d+)+)\.t})
  end
end
