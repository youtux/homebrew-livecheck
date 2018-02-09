class Libu2fServer
  livecheck :url => "https://developers.yubico.com/libu2f-server/Releases",
            :regex => /href="libu2f-server-([0-9\.]+)\.t/
end
