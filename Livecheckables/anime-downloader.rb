class AnimeDownloader
  livecheck :url => "https://www.github.com/vn-ki/anime-downloader/releases",
            :regex => %r{href="/vn-ki/anime-downloader/tree/([0-9\.])+"}
end
