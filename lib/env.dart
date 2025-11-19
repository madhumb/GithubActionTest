import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'PROD_BASE_URL', obfuscate: true)
  static final String prodBaseUrl = _Env.prodBaseUrl;
  @EnviedField(varName: 'PROD_OLD_BASE_URL', obfuscate: true)
  static final String prodOldBaseUrl = _Env.prodOldBaseUrl;
  @EnviedField(varName: 'PROD_PUBLIC_LOG_EVENT', obfuscate: true)
  static final String prodPublicLogEvent = _Env.prodPublicLogEvent;
  @EnviedField(varName: 'SECRET_IV', obfuscate: true)
  static final String secretIv = _Env.secretIv;
  @EnviedField(varName: 'SECRET_KEY', obfuscate: true)
  static final String secretKey = _Env.secretKey;
  @EnviedField(varName: 'STAGE_BASE_URL', obfuscate: true)
  static final String stageBaseUrl = _Env.stageBaseUrl;
  @EnviedField(varName: 'STAGE_OLD_BASE_URL', obfuscate: true)
  static final String stageOldBaseUrl = _Env.stageOldBaseUrl;
  @EnviedField(varName: 'STAGE_PUBLIC_LOG_EVENT', obfuscate: true)
  static final String stagePublicLogEvent = _Env.stagePublicLogEvent;
  @EnviedField(varName: 'TENOR_API_KEY', obfuscate: true)
  static final String tenorApikey = _Env.tenorApikey;
}
