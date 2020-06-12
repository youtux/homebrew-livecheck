class Markdown
  livecheck do
    url :homepage
    regex(/href=.*?Markdown_v?(\d+(?:\.\d+)+)\.zip/i)
  end
end
