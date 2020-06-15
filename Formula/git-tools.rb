class GitTools < Formula
  desc "Helpful Git tools"
  homepage "https://github.com/splo/git-tools"
  url "https://github.com/splo/git-tools/archive/v2.0.0.tar.gz"
  sha256 "fa5133bc16b52fb080d6c1249678dee7d745019911879cfb1bb16fa161b27c9d"
  head "https://github.com/splo/git-tools.git"

  def install
    bin.install "bin/git-foreach"
  end

  test do
    assert_match "/usr/local/bin/git-foreach", shell_output("which git-foreach")
  end
end
