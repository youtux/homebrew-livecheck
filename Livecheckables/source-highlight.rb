class SourceHighlight
  livecheck do
    url :stable
    regex(/href=.*?source-highlight[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
