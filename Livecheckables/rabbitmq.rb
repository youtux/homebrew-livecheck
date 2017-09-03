class Rabbitmq
  livecheck :url => "http://www.rabbitmq.com/releases/rabbitmq-server/current/",
            :regex => /rabbitmq-server-(\d+(?:\.\d+)*)/
end
