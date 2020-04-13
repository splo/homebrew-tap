class DockerTools < Formula
  desc "Docker-related tools"
  homepage "https://github.com/splo/docker-tools"
  url "https://github.com/splo/docker-tools/archive/v1.1.0.tar.gz"
  sha256 "282e1b2822a2d5ec4b33f0daf5b501600544f3a053dc14076c08d4151677d636"
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
