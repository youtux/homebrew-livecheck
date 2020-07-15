class Gkrellm
  livecheck do
    url "http://gkrellm.srcbox.net/"
    regex(/href=.*?gkrellm-([0-9,.]+)\.t/)
  end
end
