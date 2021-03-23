# Changelog

## [0.3.0](https://github.com/aws-beam/aws-erlang/tree/0.3.0) (2020-03-23)

[Full Changelog](https://github.com/aws-beam/aws-erlang/compare/0.2.0...0.3.0)

**Fixed bugs:**

- Error when providing multiple querystring parameters [\#30](https://github.com/aws-beam/aws-erlang/issues/30)
- Support integer values in query protocol [\#23](https://github.com/aws-beam/aws-erlang/issues/23)

**Closed issues:**

- Bump jsx to 3.0.0 [\#32](https://github.com/aws-beam/aws-erlang/issues/32)
- Replace Travis CI badge with GitHub actions badge [\#21](https://github.com/aws-beam/aws-erlang/issues/21)
- Build pipeline using GitHub actions [\#19](https://github.com/aws-beam/aws-erlang/issues/19)
- Generate APIs using the rest-xml protocol [\#16](https://github.com/aws-beam/aws-erlang/issues/16)
- Generate APIs using the query protocol [\#14](https://github.com/aws-beam/aws-erlang/issues/14)
- Create release and publish [\#8](https://github.com/aws-beam/aws-erlang/issues/8)
- aws\_request:sign\_request/5 fails due to undefined value for service in aws\_client map [\#4](https://github.com/aws-beam/aws-erlang/issues/4)

**Merged pull requests:**

- Upgrade generated modules [\#44](https://github.com/aws-beam/aws-erlang/pull/44) ([robertoaloi](https://github.com/robertoaloi))
- Fix variable name in README [\#43](https://github.com/aws-beam/aws-erlang/pull/43) ([robertoaloi](https://github.com/robertoaloi))
- Update generated modules [\#42](https://github.com/aws-beam/aws-erlang/pull/42) ([robertoaloi](https://github.com/robertoaloi))
- aws\_util: use newer crypto API for OTP \>= 23 [\#41](https://github.com/aws-beam/aws-erlang/pull/41) ([mikpe](https://github.com/mikpe))
- Update generated modules. [\#40](https://github.com/aws-beam/aws-erlang/pull/40) ([robertoaloi](https://github.com/robertoaloi))
- Send body as binary for some services [\#39](https://github.com/aws-beam/aws-erlang/pull/39) ([philss](https://github.com/philss))
- Fix acronyms in function names [\#38](https://github.com/aws-beam/aws-erlang/pull/38) ([philss](https://github.com/philss))
- Improve generated Erlang docs [\#37](https://github.com/aws-beam/aws-erlang/pull/37) ([philss](https://github.com/philss))
- Bump hackney to 1.16.0, upgrade rebar.lock file [\#36](https://github.com/aws-beam/aws-erlang/pull/36) ([robertoaloi](https://github.com/robertoaloi))
- Generate clients for all AWS services \(EC2 missing\) [\#35](https://github.com/aws-beam/aws-erlang/pull/35) ([jfacorro](https://github.com/jfacorro))
- Update generated modules [\#34](https://github.com/aws-beam/aws-erlang/pull/34) ([jfacorro](https://github.com/jfacorro))
- \[\#32\] Bump jsx to 3.0.0 which returns maps by default [\#33](https://github.com/aws-beam/aws-erlang/pull/33) ([jfacorro](https://github.com/jfacorro))
- \[\#30\] Maintain the order of the query parameters [\#31](https://github.com/aws-beam/aws-erlang/pull/31) ([jfacorro](https://github.com/jfacorro))
- Remove Elixir files [\#28](https://github.com/aws-beam/aws-erlang/pull/28) ([jfacorro](https://github.com/jfacorro))
- Handle querystring parameters [\#27](https://github.com/aws-beam/aws-erlang/pull/27) ([jfacorro](https://github.com/jfacorro))
- Include additional headers only if they don't already exist [\#26](https://github.com/aws-beam/aws-erlang/pull/26) ([jfacorro](https://github.com/jfacorro))
- Remove empty lines [\#25](https://github.com/aws-beam/aws-erlang/pull/25) ([jfacorro](https://github.com/jfacorro))
- \[\#23\] Support integer values query protocol [\#24](https://github.com/aws-beam/aws-erlang/pull/24) ([jfacorro](https://github.com/jfacorro))
- \[\#21\] Replace Travis CI badge [\#22](https://github.com/aws-beam/aws-erlang/pull/22) ([jfacorro](https://github.com/jfacorro))
- \[\#19\] Add GitHub workflow for building and testing [\#20](https://github.com/aws-beam/aws-erlang/pull/20) ([jfacorro](https://github.com/jfacorro))
- Correctly handle multi-segment URI parameters [\#18](https://github.com/aws-beam/aws-erlang/pull/18) ([jfacorro](https://github.com/jfacorro))
- \[\#16\] rest-xml protocol [\#17](https://github.com/aws-beam/aws-erlang/pull/17) ([jfacorro](https://github.com/jfacorro))
- \[\#14\] Query protocol apis [\#15](https://github.com/aws-beam/aws-erlang/pull/15) ([jfacorro](https://github.com/jfacorro))
- Add GitHub link in .app.src [\#13](https://github.com/aws-beam/aws-erlang/pull/13) ([jfacorro](https://github.com/jfacorro))

## [0.2.0](https://github.com/aws-beam/aws-erlang/tree/0.2.0) (2020-08-07)

[Full Changelog](https://github.com/aws-beam/aws-erlang/compare/0.1.1...0.2.0)

**Closed issues:**

- InvalidSignatureException when using temporary client [\#6](https://github.com/aws-beam/aws-erlang/issues/6)
- API codegen / Feature Request: Lambda [\#5](https://github.com/aws-beam/aws-erlang/issues/5)

**Merged pull requests:**

- Add package name, license and build tools to .app.src [\#12](https://github.com/aws-beam/aws-erlang/pull/12) ([jfacorro](https://github.com/jfacorro))
- Prepare release  0.2.0 [\#11](https://github.com/aws-beam/aws-erlang/pull/11) ([jfacorro](https://github.com/jfacorro))
- Regenerate to add missing apis [\#10](https://github.com/aws-beam/aws-erlang/pull/10) ([jfacorro](https://github.com/jfacorro))
- Regenerate clients [\#9](https://github.com/aws-beam/aws-erlang/pull/9) ([jkakar](https://github.com/jkakar))
- Invalid request signature [\#7](https://github.com/aws-beam/aws-erlang/pull/7) ([jfacorro](https://github.com/jfacorro))
- Regenerate code to upgrade to Go AWS SDK v1.25.14 [\#3](https://github.com/aws-beam/aws-erlang/pull/3) ([jcomellas](https://github.com/jcomellas))
- Update APIs to aws/go-aws-sdk commit \#6c40606 [\#2](https://github.com/aws-beam/aws-erlang/pull/2) ([jmettes](https://github.com/jmettes))
- Some upgrades [\#1](https://github.com/aws-beam/aws-erlang/pull/1) ([ypaq](https://github.com/ypaq))

## [0.1.1](https://github.com/aws-beam/aws-erlang/tree/0.1.1) (2016-02-10)

[Full Changelog](https://github.com/aws-beam/aws-erlang/compare/0.1.0...0.1.1)

## [0.1.0](https://github.com/aws-beam/aws-erlang/tree/0.1.0) (2016-01-26)

[Full Changelog](https://github.com/aws-beam/aws-erlang/compare/0ef36f645166f0094701c237d584c34ed107ff22...0.1.0)



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
