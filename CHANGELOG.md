# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

## [2.0.0](https://github.com/nzhussup/server-infra/compare/v1.8.0...v2.0.0) (2026-10-14)


### Features

* add arch diagram ([d12d3f7](https://github.com/nzhussup/server-infra/commit/d12d3f7440df3c7cf9d983751a74391f07a69b7e))
* add full node exporter dashboard ([b4b37e7](https://github.com/nzhussup/server-infra/commit/b4b37e7084bc3ce46c37dde13b99557cfbff62a1))
* add github token reference to base-service ([540eb15](https://github.com/nzhussup/server-infra/commit/540eb158cb3b6dd99bd0adfeb5f0ef92246cfc37))
* add log monitoring ([0faed85](https://github.com/nzhussup/server-infra/commit/0faed8576b2e66ba8431eaba3b13e8acbf931305))
* add logs explorer dashboard ([fb11879](https://github.com/nzhussup/server-infra/commit/fb1187933db1c41557b6c0ddbf73a5ed456ba90c))
* tighten memory and cpu usage for java services ([bfc1712](https://github.com/nzhussup/server-infra/commit/bfc171245b3d43ad69c5d6831229794e13ce5e2d))


### Bug Fixes

* fs error on grafana ([3f0235a](https://github.com/nzhussup/server-infra/commit/3f0235a23ca2ad878f5e151cbd5f42f48aee4378))
* fs error on grafana ([69d29d4](https://github.com/nzhussup/server-infra/commit/69d29d4233e8f0c64f8f6c63402f199c2502b311))
* https routing to gateway ([ae6a0ec](https://github.com/nzhussup/server-infra/commit/ae6a0ec8fcb7c43a92fe2ad643149479c11513ea))
* increase memory limits on image service to avoid OOMKilled ([622467a](https://github.com/nzhussup/server-infra/commit/622467a6fe0985350fdaa4f136ad62f33c9852ae))
* logs dashboard ([e0875ca](https://github.com/nzhussup/server-infra/commit/e0875caacc246e06e2d5c9499df6496c1c10d39a))
* logs dashboard ([471564b](https://github.com/nzhussup/server-infra/commit/471564b96cf094dbd2ef1d247faa9f1276df1c58))
* logs dashboard ([a46b73a](https://github.com/nzhussup/server-infra/commit/a46b73a6cb0914dc77c71b39ab13ef9f3f7b4973))
* loki definition ([4a1698b](https://github.com/nzhussup/server-infra/commit/4a1698b75847e5168ac72995cd9c40b9b0e8ade2))
* loki definition ([04e2c76](https://github.com/nzhussup/server-infra/commit/04e2c763308c509db88353f9ee29baa1b50459ab))
* loki definition ([142d8d8](https://github.com/nzhussup/server-infra/commit/142d8d8f4570ab0eb06ee901a83fbde8e8ed93bf))
* move project yml to apps to track changes ([82d765b](https://github.com/nzhussup/server-infra/commit/82d765b30e9819f3a54fa1300538aa1402c2735a))
* move project yml to apps to track changes ([f566d08](https://github.com/nzhussup/server-infra/commit/f566d086bae4a4c59c2e3b1c1ede454d9ab50172))
* tls secrets ([1d1e4ff](https://github.com/nzhussup/server-infra/commit/1d1e4ff1c14cf5d19a8a072e3d9cb426efc74fb7))
* tls secrets ([c0bd452](https://github.com/nzhussup/server-infra/commit/c0bd452bacc023b17cb2224991e23160cbeca5ca))
* too many outstanding requests ([d329e92](https://github.com/nzhussup/server-infra/commit/d329e92c02844c1bd6f889442ab0c4db8d044037))
* too many outstanding requests ([0f460ce](https://github.com/nzhussup/server-infra/commit/0f460cecb151b81788c8bed85803aa1f17b49b90))
* too many outstanding requests ([138b91c](https://github.com/nzhussup/server-infra/commit/138b91ce74956efde83c1f07eb97bad1207fb9d2))

## [1.8.0](https://github.com/nzhussup/server-infra/compare/v1.7.0...v1.8.0) (2026-04-03)


### Features

* add custom dashboards ([6fc7752](https://github.com/nzhussup/server-infra/commit/6fc775214c6a6eec0c183d6ddf2fefed910d5a2c))
* add orphan resource monitor in argo ([195d00a](https://github.com/nzhussup/server-infra/commit/195d00a351d4a0abb0afacdd5eeaf3ba71927ad1))
* argo ignore json and shell ([a9bbafe](https://github.com/nzhussup/server-infra/commit/a9bbafe162b38361184343b60997df02ad08bad3))


### Bug Fixes

* datasource for custom dashboards ([42b097a](https://github.com/nzhussup/server-infra/commit/42b097ab8a3bc757b230687e78f1cb9c6080bb47))
* datasource issues ([fff3f71](https://github.com/nzhussup/server-infra/commit/fff3f71007c46f956e95154dbacf7df0094bd80f))
* move dashboards into k8s root ([b994c0e](https://github.com/nzhussup/server-infra/commit/b994c0e9a95d634e2e9f863ee8426727054cb940))
* server side apply for custom dashboars ([fb448ae](https://github.com/nzhussup/server-infra/commit/fb448aebe0358f9c60b8ead192548afbbed4cb36))

## [1.7.0](https://github.com/nzhussup/server-infra/compare/v1.6.0...v1.7.0) (2026-04-03)


### Features

* add grafana and ingress to it ([9da9006](https://github.com/nzhussup/server-infra/commit/9da9006067fdd8576ba1b5d756d55c3561e782c0))
* add kube-prometheus ([317dc92](https://github.com/nzhussup/server-infra/commit/317dc9211facd389999cbd94a172a52299e853a2))
* add pvc and envvars for grafana ([30d9e17](https://github.com/nzhussup/server-infra/commit/30d9e17b3d43ec44431492bd09104931db854487))


### Bug Fixes

* add kube-system namespace ([22f9e71](https://github.com/nzhussup/server-infra/commit/22f9e7150ed1caceab6b40a69c3f1b044e272348))
* add pvc ([b08687e](https://github.com/nzhussup/server-infra/commit/b08687ed6ac3c89a577dc4a6c116a2257a9be5b2))
* add server side apply for crds ([31bcfe5](https://github.com/nzhussup/server-infra/commit/31bcfe517bef41e6f0f581bf3ad48dfda021ae3d))
* add version to file names ([a647eaa](https://github.com/nzhussup/server-infra/commit/a647eaa9fed18720fd4445383b0f8841f68f5eb1))
* allow network policy from different namespace ([a7cf107](https://github.com/nzhussup/server-infra/commit/a7cf107fa1bb45a8ea14d9b958631ad4aafeb3c3))
* bind pvc to depl ([17ac97d](https://github.com/nzhussup/server-infra/commit/17ac97d7bc64ef374d8c53c95ff5af2196b82f6f))
* discontinue grafana ([37731bb](https://github.com/nzhussup/server-infra/commit/37731bbb42301e391ab0236382190ae5edb44b85))
* gitkeep stack ([a7addd9](https://github.com/nzhussup/server-infra/commit/a7addd998aa45ad8663f8ef8dbd8f5d3e0b986c2))
* ingress scraping ([3c9e41c](https://github.com/nzhussup/server-infra/commit/3c9e41c1a29c96e219015816a88c062195478109))
* its yml not yaml :) ([57f0681](https://github.com/nzhussup/server-infra/commit/57f068178ff93ada116cda73aaae6d7a7970d255))
* readd grafana ([389d245](https://github.com/nzhussup/server-infra/commit/389d245e22e300a5f3e4a42ceed00e857c813158))
* readd pvc ([4f57280](https://github.com/nzhussup/server-infra/commit/4f572804b75695b3676f010117ff5e00d31824d4))
* remove pvc ([de98da7](https://github.com/nzhussup/server-infra/commit/de98da7df0ec2a9758101f96cff5c690c0f3a596))
* reset stack and persistence ([6b14119](https://github.com/nzhussup/server-infra/commit/6b14119d74d97cd29c29e2eb72b2afd60bc1af5b))

## [1.6.0](https://github.com/nzhussup/server-infra/compare/v1.5.0...v1.6.0) (2026-04-03)


### Features

* add argocd badges ([ed8c75d](https://github.com/nzhussup/server-infra/commit/ed8c75d231254c31f4ecedb0bf8f8c2401b4dd3a))
* add argocd config ([3d20e07](https://github.com/nzhussup/server-infra/commit/3d20e07a18b6fe9e43a0878669cc76a644a93c40))
* add argocd ui ([cbd1812](https://github.com/nzhussup/server-infra/commit/cbd18124554b27f2185f2e4837a564f335c4b525))
* fine tune k8s requests and limits ([a22d252](https://github.com/nzhussup/server-infra/commit/a22d2522a3ec170e384c2f334306a8b7f4146105))
* move configmaps to github ([f34fdba](https://github.com/nzhussup/server-infra/commit/f34fdba0c50b178d667de3422ab2cf3d3a9dae20))


### Bug Fixes

* config ([8485dc6](https://github.com/nzhussup/server-infra/commit/8485dc6c47359fb47724a8bd140c0121088ec83f))
* move bootstrap files to its own untracked folder ([c34316e](https://github.com/nzhussup/server-infra/commit/c34316e798b460b198d690a22a2e6c1a076b3071))
* move db config to secrets ([fd42077](https://github.com/nzhussup/server-infra/commit/fd42077568c177bf9b986f316088d587be345696))
* self track argo stuff ([05866f2](https://github.com/nzhussup/server-infra/commit/05866f20b814ff1c81ea6ee02c467ccd3ef16792))

## [1.5.0](https://github.com/nzhussup/server-infra/compare/v1.4.0...v1.5.0) (2026-04-02)


### Features

* add account-service manifest ([78f991e](https://github.com/nzhussup/server-infra/commit/78f991e622e88da02bbe93221cf7836f4182bcfd))
* add resolver into nginx ([56a9835](https://github.com/nzhussup/server-infra/commit/56a98355f1348804fbe9cf03d036a91772ecd518))
* remove .com references ([fb18777](https://github.com/nzhussup/server-infra/commit/fb187771bd695c2d77313b4e3deb451b4fd5b27c))


### Bug Fixes

* add resolver into nginx ([49fa352](https://github.com/nzhussup/server-infra/commit/49fa352f6a53c46df6c3c479f6a83aec51c7a67f))
* fix acocunt service ([e1e5e7b](https://github.com/nzhussup/server-infra/commit/e1e5e7b76cf197bd50b68542516fca861ac969d5))
* remove resolver from nginx ([ca35976](https://github.com/nzhussup/server-infra/commit/ca35976392c1ebfb635b03c958b7b965df099545))

## [1.4.0](https://github.com/nzhussup/server-infra/compare/v1.3.0...v1.4.0) (2026-03-20)


### Features

* add nginx and rework envvars ([ad19a6e](https://github.com/nzhussup/server-infra/commit/ad19a6e321ee42277bf66712f92467cae31ee2e4))

## [1.3.0](https://github.com/nzhussup/server-infra/compare/v1.2.0...v1.3.0) (2026-03-19)


### Features

* add keycloak deployment and ingress ([f06f776](https://github.com/nzhussup/server-infra/commit/f06f776beaa60fd418f54f7a9dbebade0d376bbb))


### Bug Fixes

* backend keycloak reference ([a10cd2d](https://github.com/nzhussup/server-infra/commit/a10cd2d7aa8a89e6bb27e6f492f77a2aca1e7254))
* backend keycloak reference ([4f107a3](https://github.com/nzhussup/server-infra/commit/4f107a36230b8141a3715afea31fc780ca51b74b))
* delete local-dev folder, update readme ([da97f68](https://github.com/nzhussup/server-infra/commit/da97f68ded4fc2ec41725b6d06d1d22a6ee0d7b0))
* final keycloak touches ([2403661](https://github.com/nzhussup/server-infra/commit/240366188b452d9af20b6a0d79c1c0171d416b94))
* fix envvar references ([329666f](https://github.com/nzhussup/server-infra/commit/329666f492be48bf5c16eae07979fc087fb78a6f))
* reference redis directly from opensource image ([7d24b60](https://github.com/nzhussup/server-infra/commit/7d24b608767c1814dc710bdb3922a5f39eb3101d))
* rename keycloak to be consistent with namings of external services ([8c0b74b](https://github.com/nzhussup/server-infra/commit/8c0b74b128ab4e15879c9198560c1c20de4c70b8))

## [1.2.0](https://github.com/nzhussup/server-infra/compare/v1.1.1...v1.2.0) (2026-03-19)


### Features

* add valentine config ([a673376](https://github.com/nzhussup/server-infra/commit/a673376e190c12f7fbe591c1f6e5b3ab9007acca))
* update domain ([4214e3e](https://github.com/nzhussup/server-infra/commit/4214e3eae6272d4f6ea18decae5ccd1b23a02dbc))


### Bug Fixes

* cicd ([30da9ff](https://github.com/nzhussup/server-infra/commit/30da9ff9515c0326c8ea3edf374a29730e3fabd0))
* config and secrets reference ([26a6fd8](https://github.com/nzhussup/server-infra/commit/26a6fd87d30d9a63308defc00488b046cef294f5))
* fix ingress controller and add scripts ([3ede7b4](https://github.com/nzhussup/server-infra/commit/3ede7b4fe14c4a796c1acece7f61a7321f6a4bc2))
* fix ingress controller and add scripts ([39753e9](https://github.com/nzhussup/server-infra/commit/39753e92c4d8c885742a5dced55b28f317193ace))
* restructure ([5350c7f](https://github.com/nzhussup/server-infra/commit/5350c7f09bfa9b24df861b9b65b07098a2c15472))
* unify cicd and release ([7eb8b4e](https://github.com/nzhussup/server-infra/commit/7eb8b4e1b9d903cb37b166c278ad90481c7826ee))

### [1.1.1](https://github.com/nzhussup/server-infra/compare/v1.1.0...v1.1.1) (2025-09-10)


### Bug Fixes

* discontinue wedding service ([624bb08](https://github.com/nzhussup/server-infra/commit/624bb08508691016ead95035b357dcf2b5fecccb))
* fix configmap variable references ([355d640](https://github.com/nzhussup/server-infra/commit/355d6409bcac4c566364956e11e89b60bd3cfd67))
* refactor redis config ([36ddbaf](https://github.com/nzhussup/server-infra/commit/36ddbaf6e1a7198c111d4b168ac91e6a9fe223b5))
* rename summarizer to llm ([389f92f](https://github.com/nzhussup/server-infra/commit/389f92f393eee249840a3c8a4ab944441b0d6eee))

## [1.1.0](https://github.com/nzhussup/server-infra/compare/v1.0.0...v1.1.0) (2025-06-19)


### Features

* add documentation ([fbfad9b](https://github.com/nzhussup/server-infra/commit/fbfad9b8de6819a977db137333c531935771a18f))
* add scripts folder to easily configure new server or new laptop ([3fc787c](https://github.com/nzhussup/server-infra/commit/3fc787c8bbe7b0ec04fcf6bc92fda86468884f05))
* add summarizer service ([5eacff6](https://github.com/nzhussup/server-infra/commit/5eacff6ae33ae08cccbd833c6455b96e55729e59))

## 1.0.0 (2025-06-06)
