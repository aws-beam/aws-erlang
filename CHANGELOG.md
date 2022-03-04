# Changelog

## [Unreleased](https://github.com/aws-beam/aws-erlang/tree/HEAD)

[Full Changelog](https://github.com/aws-beam/aws-erlang/compare/0.5.0...HEAD)

**Merged pull requests:**

- Update services based on v1.43.11 of AWS Go SDK [\#89](https://github.com/aws-beam/aws-erlang/pull/89) ([github-actions[bot]](https://github.com/apps/github-actions))

## [0.5.0](https://github.com/aws-beam/aws-erlang/tree/0.5.0) (2022-03-03)

[Full Changelog](https://github.com/aws-beam/aws-erlang/compare/0.4.0...0.5.0)

**Merged pull requests:**

- Update services based on v1.43.10 of AWS Go SDK [\#88](https://github.com/aws-beam/aws-erlang/pull/88) ([github-actions[bot]](https://github.com/apps/github-actions))
- Update services based on v1.43.8 of AWS Go SDK [\#86](https://github.com/aws-beam/aws-erlang/pull/86) ([github-actions[bot]](https://github.com/apps/github-actions))
- Update services based on v1.43.7 of AWS Go SDK [\#85](https://github.com/aws-beam/aws-erlang/pull/85) ([github-actions[bot]](https://github.com/apps/github-actions))
- Update services based on v1.43.6 of AWS Go SDK [\#84](https://github.com/aws-beam/aws-erlang/pull/84) ([github-actions[bot]](https://github.com/apps/github-actions))
- Update services based on v1.43.5 of AWS Go SDK [\#83](https://github.com/aws-beam/aws-erlang/pull/83) ([github-actions[bot]](https://github.com/apps/github-actions))
- Update services based on v1.43.3 of AWS Go SDK [\#81](https://github.com/aws-beam/aws-erlang/pull/81) ([github-actions[bot]](https://github.com/apps/github-actions))
- Update services based on v1.43.2 of AWS Go SDK [\#80](https://github.com/aws-beam/aws-erlang/pull/80) ([github-actions[bot]](https://github.com/apps/github-actions))
- Update services based on v1.43.1 of AWS Go SDK [\#79](https://github.com/aws-beam/aws-erlang/pull/79) ([github-actions[bot]](https://github.com/apps/github-actions))
- Update services based on v1.43.0 of AWS Go SDK [\#78](https://github.com/aws-beam/aws-erlang/pull/78) ([github-actions[bot]](https://github.com/apps/github-actions))
- Ensure that the URL and CanonicalRequest use the same url and sorting of query parameters [\#77](https://github.com/aws-beam/aws-erlang/pull/77) ([onno-vos-dev](https://github.com/onno-vos-dev))
- Update services based on v1.42.53 of AWS Go SDK [\#76](https://github.com/aws-beam/aws-erlang/pull/76) ([github-actions[bot]](https://github.com/apps/github-actions))
- encode\_uri/1 should html encode with uppercase to handle special chars such as + [\#74](https://github.com/aws-beam/aws-erlang/pull/74) ([onno-vos-dev](https://github.com/onno-vos-dev))
- http\_uri:encode/1 does not handle paths containing \(\) which the encoding from aws-signature does [\#73](https://github.com/aws-beam/aws-erlang/pull/73) ([onno-vos-dev](https://github.com/onno-vos-dev))
- Update services based on v1.42.52 of AWS Go SDK [\#72](https://github.com/aws-beam/aws-erlang/pull/72) ([github-actions[bot]](https://github.com/apps/github-actions))
- Add another function clause to handle responses with only a StatusCode and ResponseHeaders [\#70](https://github.com/aws-beam/aws-erlang/pull/70) ([onno-vos-dev](https://github.com/onno-vos-dev))
- Update services based on v1.42.50 of AWS Go SDK [\#69](https://github.com/aws-beam/aws-erlang/pull/69) ([github-actions[bot]](https://github.com/apps/github-actions))
- Update services based on v1.42.49 of AWS Go SDK [\#68](https://github.com/aws-beam/aws-erlang/pull/68) ([github-actions[bot]](https://github.com/apps/github-actions))
- Update services based on v1.42.48 of AWS Go SDK [\#67](https://github.com/aws-beam/aws-erlang/pull/67) ([github-actions[bot]](https://github.com/apps/github-actions))
- Update services based on v1.42.47 of AWS Go SDK [\#66](https://github.com/aws-beam/aws-erlang/pull/66) ([github-actions[bot]](https://github.com/apps/github-actions))
- Open PR with changes on releases of AWS Go SDK [\#65](https://github.com/aws-beam/aws-erlang/pull/65) ([philss](https://github.com/philss))
- Sort querystring prior to signing [\#62](https://github.com/aws-beam/aws-erlang/pull/62) ([onno-vos-dev](https://github.com/onno-vos-dev))
- Fix querystring for query strings with no value [\#61](https://github.com/aws-beam/aws-erlang/pull/61) ([onno-vos-dev](https://github.com/onno-vos-dev))
- Update hackney to latest version [\#60](https://github.com/aws-beam/aws-erlang/pull/60) ([anha0825](https://github.com/anha0825))
- Update code after aws-codegen \#81 [\#59](https://github.com/aws-beam/aws-erlang/pull/59) ([onno-vos-dev](https://github.com/onno-vos-dev))

## [0.4.0](https://github.com/aws-beam/aws-erlang/tree/0.4.0) (2021-11-15)

[Full Changelog](https://github.com/aws-beam/aws-erlang/compare/0.3.1...0.4.0)

**Closed issues:**

- Function clause on `aws_s3:head_object/4` [\#51](https://github.com/aws-beam/aws-erlang/issues/51)

**Merged pull requests:**

- Add retry mechanism to aws erlang [\#57](https://github.com/aws-beam/aws-erlang/pull/57) ([onno-vos-dev](https://github.com/onno-vos-dev))
- Fix typespec of request/8 and response handling of a HEAD request [\#56](https://github.com/aws-beam/aws-erlang/pull/56) ([onno-vos-dev](https://github.com/onno-vos-dev))
- Add make\_local\_client/4 which allows specifying an endpoint like 0.0.0.0 [\#55](https://github.com/aws-beam/aws-erlang/pull/55) ([onno-vos-dev](https://github.com/onno-vos-dev))
- Update generated modules as per aws-sdk-go sha: 2582633 [\#54](https://github.com/aws-beam/aws-erlang/pull/54) ([onno-vos-dev](https://github.com/onno-vos-dev))
- Handle utf8 in aws\_util:decode\_xml/1 [\#53](https://github.com/aws-beam/aws-erlang/pull/53) ([anha0825](https://github.com/anha0825))
- The xmerl application is required by the aws\_util module [\#52](https://github.com/aws-beam/aws-erlang/pull/52) ([robertoaloi](https://github.com/robertoaloi))

## [0.3.1](https://github.com/aws-beam/aws-erlang/tree/0.3.1) (2021-09-17)

[Full Changelog](https://github.com/aws-beam/aws-erlang/compare/0.3.0...0.3.1)

**Merged pull requests:**

- Add support for S3 metadata [\#50](https://github.com/aws-beam/aws-erlang/pull/50) ([robertoaloi](https://github.com/robertoaloi))
- Add instructions to build docs locally [\#48](https://github.com/aws-beam/aws-erlang/pull/48) ([robertoaloi](https://github.com/robertoaloi))
- Minor fixes to the README [\#47](https://github.com/aws-beam/aws-erlang/pull/47) ([robertoaloi](https://github.com/robertoaloi))
- Improve readme [\#46](https://github.com/aws-beam/aws-erlang/pull/46) ([robertoaloi](https://github.com/robertoaloi))

## [0.3.0](https://github.com/aws-beam/aws-erlang/tree/0.3.0) (2021-03-23)

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

- Prepare release 0.3.0 [\#45](https://github.com/aws-beam/aws-erlang/pull/45) ([robertoaloi](https://github.com/robertoaloi))
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
