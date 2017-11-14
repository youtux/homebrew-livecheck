class KitchenSync
  livecheck :url => "https://github.com/willbryant/kitchen_sync/releases",
            :regex => %r{href="/.*/kitchen_sync/releases/tag/([0-9\.]+)"}
end
