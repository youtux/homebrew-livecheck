class Gkrellm
  livecheck do
    url "http://gkrellm.srcbox.net/releases/"
    regex(/href=.*?gkrellm-([0-9,.]+)\.t/)
  end
end
