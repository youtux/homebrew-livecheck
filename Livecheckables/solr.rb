class Solr
  livecheck :url   => "https://lucene.apache.org/solr/",
            :regex => /Solr ([0-9\.]+) available/
end
