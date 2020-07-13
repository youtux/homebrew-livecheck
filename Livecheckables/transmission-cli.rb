class TransmissionCli
  livecheck do
    url "https://github.com/transmission/transmission-releases/"
    regex(/href=.*?transmission[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
