class DockerTools < Formula
  desc "Docker-related tools"
  homepage "https://github.com/splo/docker-tools"
  url "https://github.com/splo/docker-tools/archive/v1.0.0.tar.gz"
  sha256 "0957dfbb25da6aa7cca286b05aa1242313372ee57017956038370f8edc4717a5"
  head "https://github.com/splo/docker-tools.git"

  def install
    bin.install "bin/dc-restart"
    bin.install "bin/dc-start"
    bin.install "bin/dc-stop"
    bin.install "bin/docker-tags"
  end

  test do
    assert_match "/usr/local/bin/dc-restart", shell_output("which dc-restart")
    assert_match "/usr/local/bin/dc-start", shell_output("which dc-start")
    assert_match "/usr/local/bin/dc-stop", shell_output("which dc-stop")
    assert_match "/usr/local/bin/docker-tags", shell_output("which docker-tags")
  end
end
