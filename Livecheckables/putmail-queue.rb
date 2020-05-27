class PutmailQueue
  livecheck do
    regex(%r{url=.+?/putmail-queue-v?(\d+(?:\.\d+)+)\.t})
  end
end
