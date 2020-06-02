class ElasticsearchAT56
  livecheck do
    url "https://github.com/elastic/elasticsearch.git"
    regex(/v?(5\.6[0-9.]+)/)
  end
end
