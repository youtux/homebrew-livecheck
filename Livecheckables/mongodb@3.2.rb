class MongodbAT32
  livecheck :url => "https://docs.mongodb.com/manual/release-notes/3.2-changelog/",
            :regex => /(\d+.\d+.\d+) Changelog/
end
