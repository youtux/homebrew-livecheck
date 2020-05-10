class PutmailQueue
  livecheck :regex => %r{url=.+?/putmail-queue-v?(\d+(?:\.\d+)+)\.t}
end
