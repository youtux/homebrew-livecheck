class Markdown
  livecheck do
    url :homepage
    regex(/href=.*?Markdown.v?(\d+(?:\.\d+)+)\.zip/i)
  end
end
