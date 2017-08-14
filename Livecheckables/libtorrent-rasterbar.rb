class LibtorrentRasterbar
  livecheck :url => "http://libtorrent.org/",
            :regex => %r{<tr><th class="docinfo-name">Version:</th>\n<td>([0-9\.]+)</td></tr>}
end
