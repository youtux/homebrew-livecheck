class Gkrellm
  livecheck do
    url "http://gkrellm.srcbox.net/releases/"
    regex(/href=.*?gkrellm-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
