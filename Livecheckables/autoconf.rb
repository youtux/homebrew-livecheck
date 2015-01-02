class Autoconf
  def livecheck
    head_url = "git://git.sv.gnu.org/autoconf"
    git_tags(head_url, filter=/^v.*$/).map { |v|
      Version.detect(head_url, {:tag => v})
    }.max
  end
end
