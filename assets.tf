resource "sensu_asset" "monitoring_plugins_default" {

  name      = "monitoring-plugins"
  namespace = "default"
  build {
    url     = "https://assets.bonsai.sensu.io/e9e1d7172df2cd1fb4e48108d7dd89559ad75021/monitoring-plugins-centos7_2.5.2_linux_amd64.tar.gz"
    sha512  = "d359cb121e1eef06ad147fd1d63949f326be0ef07c49c768bf7e3550d5d8e91b710fffc808225a87bcb5a5b508c0b5bdbcd5675823d8bafbdf66c8d64c876b6d"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform == 'xcp-ng'",
      "entity.system.platform_version.split('.')[0] == '8'",
      "entity.system.arch == 'amd64'"
    ]
  }
  build {
    url     = "https://assets.bonsai.sensu.io/e9e1d7172df2cd1fb4e48108d7dd89559ad75021/monitoring-plugins-ubuntu2004_2.5.2_linux_amd64.tar.gz"
    sha512  = "1db4d4775729f2b74fac6751ce141bc765d26c5fdb6beb2beecf7e454babe61dcfe34cafbbf97628751b9adc676a2857fcf3083fc97205fa99686d0801c422ad"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform == 'ubuntu'",
      "entity.system.platform_version.split('.')[0] == '20'",
      "entity.system.arch == 'amd64'"
    ]
  }

  build {
    url     = "https://assets.bonsai.sensu.io/e9e1d7172df2cd1fb4e48108d7dd89559ad75021/monitoring-plugins-ubuntu1804_2.5.2_linux_amd64.tar.gz"
    sha512  = "eeb9331d76e34ea51d73204e8780b7914602a7424053d5b187a141ed9f879b6f2226c0d691e5e47233860da8923cea234f7917f0cb93cf17064d135580eff0e8"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform == 'ubuntu'",
      "entity.system.platform_version.split('.')[0] == '18'",
      "entity.system.arch == 'amd64'"
    ]
  }
  build {
    url     = "https://assets.bonsai.sensu.io/e9e1d7172df2cd1fb4e48108d7dd89559ad75021/monitoring-plugins-ubuntu1604_2.5.2_linux_amd64.tar.gz"
    sha512  = "df1b9012d8d9bf041e01c19496bd5b4882b98193d42c20d253c772c35c370b63564e13988269d2ce79b6e7632ada35097f7243a8950a682f926ba17766b41397"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform == 'ubuntu'",
      "entity.system.platform_version.split('.')[0] == '16'",
      "entity.system.arch == 'amd64'"
    ]
  }

  build {
    url     = "https://assets.bonsai.sensu.io/e9e1d7172df2cd1fb4e48108d7dd89559ad75021/monitoring-plugins-ubuntu1404_2.5.2_linux_amd64.tar.gz"
    sha512  = "d8a295fa4076403fa7252914d4cf8a2920f4563a11eeb84805794a0dd9c1494664137cfb4d985ea1157ce263224d97e45b44b5a02f6b2b4207fd3e419abd6543"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform == 'ubuntu'",
      "entity.system.platform_version.split('.')[0] == '14'",
      "entity.system.arch == 'amd64'"
    ]
  }

  build {
    url     = "https://assets.bonsai.sensu.io/e9e1d7172df2cd1fb4e48108d7dd89559ad75021/monitoring-plugins-debian10_2.5.2_linux_amd64.tar.gz"
    sha512  = "774c60cf1f9ffeb54891f71dcb4df7fb8f78d8a2670e89695ec035f5e914bf90f1e8af9fcecccb8ab3c7ac8c34ccf345edc2bc657a4bbe46d5c3a4a768eba99a"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform_family == 'debian'",
      "entity.system.platform_version.split('.')[0] == '10'",
      "entity.system.arch == 'amd64'"
    ]
  }

  build {
    url     = "https://assets.bonsai.sensu.io/e9e1d7172df2cd1fb4e48108d7dd89559ad75021/monitoring-plugins-debian9_2.5.2_linux_amd64.tar.gz"
    sha512  = "a909e5fb605f89ea5a2d70789c972840bf2497fb12c75b9702684335f5692ba31874cc35e7f931715f17d6497a7e9e56169fcfae0a51c54462fff6632fd13966"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform_family == 'debian'",
      "entity.system.platform_version.split('.')[0] == '9'",
      "entity.system.arch == 'amd64'"
    ]
  }

  build {
    url     = "https://assets.bonsai.sensu.io/e9e1d7172df2cd1fb4e48108d7dd89559ad75021/monitoring-plugins-debian8_2.5.2_linux_amd64.tar.gz"
    sha512  = "16ce8766c3e57128c99d6cdc10da710958ae015c150e8510c32d60d8f8b934fe60c9b4ce27c73a48d2f5002c959eaf7ea972c14a55b3760a6433da29b688fcb1"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform_family == 'debian'",
      "entity.system.platform_version.split('.')[0] == '8'",
      "entity.system.arch == 'amd64'"
    ]
  }

  build {
    url     = "https://assets.bonsai.sensu.io/e9e1d7172df2cd1fb4e48108d7dd89559ad75021/monitoring-plugins-centos8_2.5.2_linux_amd64.tar.gz"
    sha512  = "c6ccab0a7277cd90ed447d1670ee053d6b8b6f4edaa0c8b78d673a2ae4b1813faaf898596c40c3347032ee8d57493f26aab54a8fae11a8b822cf5533d5e07612"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform_family == 'rhel'",
      "entity.system.platform_version.split('.')[0] == '8'",
      "entity.system.arch == 'amd64'"
    ]
  }

  build {
    url     = "https://assets.bonsai.sensu.io/e9e1d7172df2cd1fb4e48108d7dd89559ad75021/monitoring-plugins-centos7_2.5.2_linux_amd64.tar.gz"
    sha512  = "d359cb121e1eef06ad147fd1d63949f326be0ef07c49c768bf7e3550d5d8e91b710fffc808225a87bcb5a5b508c0b5bdbcd5675823d8bafbdf66c8d64c876b6d"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform_family == 'rhel'",
      "entity.system.platform_version.split('.')[0] == '7'",
      "entity.system.arch == 'amd64'"
    ]
  }

  build {
    url     = "https://assets.bonsai.sensu.io/e9e1d7172df2cd1fb4e48108d7dd89559ad75021/monitoring-plugins-centos6_2.5.2_linux_amd64.tar.gz"
    sha512  = "a2c62db31ec7a6f15df3fe376b43df8ea2e02d34279db190fce2c5d01f3613a4d9948b58244e7d11c1f5a19c9f35007caf601b58c61742f61484f46b2522e3ad"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform_family == 'rhel'",
      "entity.system.platform_version.split('.')[0] == '6'",
      "entity.system.arch == 'amd64'"
    ]
  }

  build {
    url     = "https://assets.bonsai.sensu.io/e9e1d7172df2cd1fb4e48108d7dd89559ad75021/monitoring-plugins-amazon2_2.5.2_linux_amd64.tar.gz"
    sha512  = "246b21617319cae9598a2958887576f48a7d3218a640a3770a6cefea9aaeba5eda8ab042bdf6eb46f270904afe33e2dd518ad018710ba578d8cb62b7603235f7"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform == 'amazon'",
      "entity.system.platform_version == '2'",
      "entity.system.arch == 'amd64'"
    ]
  }

  build {
    url     = "https://assets.bonsai.sensu.io/e9e1d7172df2cd1fb4e48108d7dd89559ad75021/monitoring-plugins-amazon1_2.5.2_linux_amd64.tar.gz"
    sha512  = "b21c184e10060c77baa483adab13e0c24f9d1223bf7bc9050f907e9b352ac8c6e14a63acf4b84798525acceba4149877244659d01aee189b3f0dfb2d361ef608"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform == 'amazon'",
      "entity.system.platform_version.split('.')[0].indexOf('201') !== -1",
      "entity.system.arch == 'amd64'"
    ]
  }

  build {
    url     = "https://assets.bonsai.sensu.io/e9e1d7172df2cd1fb4e48108d7dd89559ad75021/monitoring-plugins-alpine_2.5.2_linux_amd64.tar.gz"
    sha512  = "4b078df8694005d8908eea2903ae5194f8407240875af16804f1fbd55abf9aaeb8019588c2eddfb4fa545f2fdaa957d024146265b99ea3be2fa8e4579e014889"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform == 'alpine'",
      "entity.system.arch == 'amd64'"
    ]
  }

  build {
    url     = "https://system-atlassian-sensuassets3bucket-izekz5a1hhji.s3-eu-west-1.amazonaws.com/asset/monitoring-plugins-alpine_2.6.0_linux_aarch64.tar.gz"
    sha512  = "5a6ae134a5ef0cdbb79e6a9bd66c59fd9623376189f15e0a2f9c392ec5e8191ed5627b413f67917fc9feac9619d4f62a99fbff16362f6ab494bf0dd083a3c5f3"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform == 'alpine'",
      "entity.system.arch == 'arm64'"
    ]
  }

  build {
    url     = "https://system-atlassian-sensuassets3bucket-izekz5a1hhji.s3-eu-west-1.amazonaws.com/asset/monitoring-plugins-amazon2023_2.10.5_linux_arm64.tar.gz"
    sha512  = "be972327edb7225d7f5487a2fd80f72df087ffad00067572ce9067051c5b385932c7dc923d1de5c4e8dda532a0dd6b5e6f34b09a3ca6a2bc8ed15bcf4d5c05aa"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform == 'amazon'",
      "entity.system.platform_version == '2023.5.20241001'",
      "entity.system.arch == 'arm64'"
    ]
  }

  build {
    url     = "https://assets.bonsai.sensu.io/a6f7661349ed5181a0542131dff05f0cd328f02f/monitoring-plugins-amazon2023_2.10.5_linux_amd64.tar.gz"
    sha512  = "c705a6caa64038709acc8f16509884a2788933d401295cb24e9ba7c0cd28dd5037c3ad715998abc7d2be31c27298dc16da5c87eaf5915741dfec007dafecf3cf"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.platform == 'amazon'",
      "entity.system.platform_version == '2023.5.20241001'",
      "entity.system.arch == 'amd64'"
    ]
  }
}

resource "sensu_asset" "sensuPagerdutyHandler" {
  name      = "sensuPagerdutyHandler"
  namespace = "default"
  build {
    url     = "https://github.com/francispereira/sensu-pagerduty-handler/releases/download/2.5.4/sensu-pagerduty-handler_2.5.4_linux_amd64.tar.gz"
    sha512  = "60a4426172ca34b00dc2fcb4645b9feb2be84cfca45ed20c8aaefc9dd687c0a710735fa83905c1d878e69e7131548c78ceff9765b5cdb3adf1580585b7538ad5"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.arch == 'amd64'"
    ]
  }
}

resource "sensu_asset" "sensu_dependencies_filter_default" {
  name      = "sensu-dependencies-filter"
  namespace = "default"
  build {
    url    = "https://assets.bonsai.sensu.io/aacbcf82f94481d58483baac33b96647e50cdbdf/sensu-dependencies-filter_0.0.6.tar.gz"
    sha512 = "134a79a8f667808e2055ac5b3656599fb1ec6a9db68d6e39759496f6fa377f3e80adfe2f10274b6c02371190942cd2fb4937b6f92f43b69df6a7b32933817e91"
  }
}

resource "sensu_asset" "sensu_go_fatigue_check_filter_default" {
  name      = "sensu-go-fatigue-check-filter"
  namespace = "default"
  build {
    url    = "https://assets.bonsai.sensu.io/9d58cca88863fcf6fbc50c560daeb78429b6009e/sensu-go-fatigue-check-filter_0.6.2.tar.gz"
    sha512 = "da861daf54032c28d9131a3800c0a8de122f591cd2bc7b9601e11e529e63a1fd3227fe67c5e3a800164224111fbe477dadee59196287d6b2e9c183b99b03f37d"
  }
}

resource "sensu_asset" "remediation_handler_asset" {
  name      = "sensu-remediation-handler"
  namespace = "default"
  build {
    url    = "https://github.com/calebhailey/sensu-go-remediation-handler/releases/download/1.0.0/sensu-remediation-handler_1.0.0_linux_amd64.tar.gz"
    sha512 = "1d0b2e09aa43705978e3c9eb0cee5935611b31885778028d08ca62b4eb2970f98ea02ae8a358512d4e1e617b00d0b21be1d0562dfaeda73623227151f324b09f"
  }
}

resource "sensu_asset" "sensu_go_assetsv2_default" {
  name      = "sensu-go-assetsv2"
  namespace = "default"
  build {
    url     = "https://asutoshgha.s3.eu-west-1.amazonaws.com/asset/sensu-go-assets-amd64.tar.gz"
    sha512  = "3f7a16125d7ba0320348459675207e89d07d1af218073cf04d2ad30f5f2604af5fb08599d83b666eb7c07dfe9578496fd5460ee3f093508a22656ace8fa4ec35"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.arch == 'amd64'"
    ]
  }

  build {
    url     = "https://asutoshgha.s3.eu-west-1.amazonaws.com/asset/sensu-go-assets-arm64.tar.gz"
    sha512  = "8304a8696240110664a58faaacafed02b3292e38b01cb92d49e14bd6fa7ee4e7275c1f9d589d9822aa2b46ff4aa9ebf934838c317368a52a3a0f221a7502a5b2"
    filters = [
      "entity.system.os == 'linux'",
      "entity.system.arch == 'arm64'"
    ]
  }
}