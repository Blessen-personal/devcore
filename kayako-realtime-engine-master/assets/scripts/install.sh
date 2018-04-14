yum update -y
yum install -y epel-release
yum install -y  gcc gcc-c++ glibc-devel make ncurses-devel openssl-devel autoconf java-1.8.0-openjdk-devel git wget wxBase.x86_64 curl make sudo locales && yum group install "Development Tools" -y
yum install -y erlang-dev erlang-parsetools
cd /code
tar -xvf realtime.tar.gz && rm -rf realtime.tar.gz

rpm -Uvh erlang-solutions-1.0-1.noarch.rpm && yum -y update && yum install -y erlang

unzip -d /usr/local/elixir -x Precompiled.zip && rm -f Precompiled.zip

yes | mix local.hex  && yes | mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new-1.1.4.ez

mix local.hex --force
mix local.rebar --force
mix deps.clean --all
mix deps.get
mix deps.compile
chmod +x ./kre
