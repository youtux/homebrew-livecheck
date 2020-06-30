class TidyHtml5
  livecheck do
    url :head
    regex(/^v?(\d+\.\d*?[02468]\.\d+)$/)
  end
end
