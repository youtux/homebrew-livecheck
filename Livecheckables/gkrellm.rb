class Gkrellm
  livecheck :url   => "http://gkrellm.srcbox.net/",
            :regex => %r{href="releases/gkrellm-([0-9,\.]+)\.t}
end
