class PutmailQueue
  livecheck do
    url :stable
    regex(%r{url=.*?/putmail-queue-v?(\d+(?:\.\d+)+)\.t})
  end
end
