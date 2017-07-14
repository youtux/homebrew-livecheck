class Mongodb
  livecheck :url => "https://www.mongodb.org/downloads",
            :regex => /mongodb-src-r(\d+\.\d*[02468]\.\d+)\./
end
