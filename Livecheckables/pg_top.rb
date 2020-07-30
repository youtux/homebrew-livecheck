class PgTop
  # We're currently checking the pg_top GitLab repository, since there are new
  # 4.0.0 prerelease versions there that aren't at the existing stable source
  # (i.e., https://ftp.postgresql.org/pub/projects/pgFoundry/ptop/pg_top/).
  livecheck do
    url "https://gitlab.com/pg_top/pg_top.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
