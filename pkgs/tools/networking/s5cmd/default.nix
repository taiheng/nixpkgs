{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "s5cmd";
  version = "2.0.0";

  src = fetchFromGitHub {
    owner = "peak";
    repo = "s5cmd";
    rev = "v${version}";
    sha256 = "18zpsxadwq7fz8nj30kmj48mq91q6z9p5wxfdqmy4qabqd40cvgl";
  };

  vendorSha256 = null;

  meta = with lib; {
    homepage = "https://github.com/peak/s5cmd";
    description = "Parallel S3 and local filesystem execution tool";
    license = licenses.mit;
    maintainers = with maintainers; [
      tomberek
      taiheng
    ];
  };
}
