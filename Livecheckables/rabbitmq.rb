class Rabbitmq
  livecheck :url   => "https://dl.bintray.com/rabbitmq/binaries/",
            :regex => /rabbitmq-server-generic-unix-(\d+(?:\.\d+)*)/
end
