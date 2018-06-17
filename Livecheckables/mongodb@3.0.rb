class MongodbAT30
  livecheck :url => "https://docs.mongodb.com/manual/release-notes/3.0-changelog/",
            :regex => /(\d+.\d+.\d+) Changelog/
end
