class PutmailQueue
  livecheck do
    url :stable
    regex(%r{url=.*?/putmail-queue[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
