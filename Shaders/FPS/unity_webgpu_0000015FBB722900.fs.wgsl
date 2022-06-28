struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb22 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat23 : f32;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat17 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_189 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_32 : f32 = u_xlat0.w;
  let x_42 : f32 = x_37.x_Color.w;
  SV_Target0.w = (x_32 * x_42);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_37.x_Color;
  u_xlat1 = (vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_56 : vec4<f32> = x_37.x_Color;
  let x_58 : vec4<f32> = u_xlat0;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.y, x_58.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_68 : f32 = x_37.x_Metallic;
  let x_70 : f32 = x_37.x_Metallic;
  let x_72 : f32 = x_37.x_Metallic;
  let x_73 : vec3<f32> = vec3<f32>(x_68, x_70, x_72);
  let x_78 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = ((vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_78.x, x_78.y, x_78.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : f32 = x_37.x_Metallic;
  u_xlat21 = ((-(x_88) * 0.959999979f) + 0.959999979f);
  let x_93 : f32 = u_xlat21;
  let x_95 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_93, x_93, x_93) * x_95);
  let x_98 : vec4<f32> = vs_TEXCOORD4;
  let x_100 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_103);
  let x_106 : f32 = u_xlat21;
  let x_108 : vec4<f32> = vs_TEXCOORD4;
  let x_110 : vec3<f32> = (vec3<f32>(x_106, x_106, x_106) * vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_114 : vec4<f32> = vs_TEXCOORD1;
  let x_116 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_114.x, x_114.y, x_114.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_119);
  let x_122 : f32 = u_xlat21;
  let x_124 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_122, x_122, x_122) * vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_133 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_133 == 1.0f);
  let x_136 : bool = u_xlatb22;
  if (x_136) {
    let x_141 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_141 == 1.0f);
    let x_146 : vec3<f32> = vs_TEXCOORD5;
    let x_150 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_152 : vec3<f32> = (vec3<f32>(x_146.y, x_146.y, x_146.y) * vec3<f32>(x_150.x, x_150.y, x_150.z));
    let x_153 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
    let x_157 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_159 : vec3<f32> = vs_TEXCOORD5;
    let x_162 : vec4<f32> = u_xlat4;
    let x_164 : vec3<f32> = ((vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(x_159.x, x_159.x, x_159.x)) + vec3<f32>(x_162.x, x_162.y, x_162.z));
    let x_165 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
    let x_168 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_170 : vec3<f32> = vs_TEXCOORD5;
    let x_173 : vec4<f32> = u_xlat4;
    let x_175 : vec3<f32> = ((vec3<f32>(x_168.x, x_168.y, x_168.z) * vec3<f32>(x_170.z, x_170.z, x_170.z)) + vec3<f32>(x_173.x, x_173.y, x_173.z));
    let x_176 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
    let x_178 : vec4<f32> = u_xlat4;
    let x_182 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_184 : vec3<f32> = (vec3<f32>(x_178.x, x_178.y, x_178.z) + vec3<f32>(x_182.x, x_182.y, x_182.z));
    let x_185 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
    let x_187 : bool = u_xlatb22;
    if (x_187) {
      let x_192 : vec4<f32> = u_xlat4;
      x_189 = vec3<f32>(x_192.x, x_192.y, x_192.z);
    } else {
      let x_195 : vec3<f32> = vs_TEXCOORD5;
      x_189 = x_195;
    }
    let x_196 : vec3<f32> = x_189;
    let x_197 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_199 : vec4<f32> = u_xlat4;
    let x_204 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_206 : vec3<f32> = (vec3<f32>(x_199.x, x_199.y, x_199.z) + -(x_204));
    let x_207 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
    let x_209 : vec4<f32> = u_xlat4;
    let x_212 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_213 : vec3<f32> = (vec3<f32>(x_209.x, x_209.y, x_209.z) * x_212);
    let x_214 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_214.x, x_213.x, x_213.y, x_213.z);
    let x_218 : f32 = u_xlat4.y;
    u_xlat22 = ((x_218 * 0.25f) + 0.75f);
    let x_226 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_226 * 0.5f) + 0.75f);
    let x_230 : f32 = u_xlat22;
    let x_231 : f32 = u_xlat23;
    u_xlat4.x = max(x_230, x_231);
    let x_242 : vec4<f32> = u_xlat4;
    let x_244 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_242.x, x_242.z, x_242.w));
    u_xlat4 = x_244;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_250, x_252);
  let x_254 : f32 = u_xlat22;
  u_xlat22 = clamp(x_254, 0.0f, 1.0f);
  let x_257 : f32 = u_xlat22;
  let x_261 : vec4<f32> = x_37.x_LightColor0;
  let x_263 : vec3<f32> = (vec3<f32>(x_257, x_257, x_257) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_268 : f32 = x_37.x_Glossiness;
  u_xlat22 = (-(x_268) + 1.0f);
  let x_275 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_275;
  let x_279 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_279;
  let x_282 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_282;
  let x_285 : vec4<f32> = vs_TEXCOORD1;
  let x_288 : f32 = u_xlat21;
  let x_291 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_285.x, x_285.y, x_285.z)) * vec3<f32>(x_288, x_288, x_288)) + x_291);
  let x_293 : vec3<f32> = u_xlat6;
  let x_294 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_293, x_294);
  let x_296 : f32 = u_xlat21;
  u_xlat21 = max(x_296, 0.001f);
  let x_299 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_299);
  let x_301 : f32 = u_xlat21;
  let x_303 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_301, x_301, x_301) * x_303);
  let x_305 : vec4<f32> = u_xlat2;
  let x_307 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_305.x, x_305.y, x_305.z), -(x_307));
  let x_310 : vec4<f32> = u_xlat2;
  let x_312 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_310.x, x_310.y, x_310.z), x_312);
  let x_314 : f32 = u_xlat23;
  u_xlat23 = clamp(x_314, 0.0f, 1.0f);
  let x_316 : vec4<f32> = u_xlat2;
  let x_318 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_316.x, x_316.y, x_316.z), x_318);
  let x_322 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_322, 0.0f, 1.0f);
  let x_326 : vec3<f32> = u_xlat5;
  let x_327 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(x_326, x_327);
  let x_329 : f32 = u_xlat9;
  u_xlat9 = clamp(x_329, 0.0f, 1.0f);
  let x_332 : f32 = u_xlat9;
  let x_333 : f32 = u_xlat9;
  u_xlat16 = (x_332 * x_333);
  let x_335 : f32 = u_xlat16;
  let x_337 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_335, x_335), vec2<f32>(x_337, x_337));
  let x_340 : f32 = u_xlat16;
  u_xlat16 = (x_340 + -0.5f);
  let x_343 : f32 = u_xlat23;
  u_xlat3.x = (-(x_343) + 1.0f);
  let x_349 : f32 = u_xlat3.x;
  let x_351 : f32 = u_xlat3.x;
  u_xlat10 = (x_349 * x_351);
  let x_353 : f32 = u_xlat10;
  let x_354 : f32 = u_xlat10;
  u_xlat10 = (x_353 * x_354);
  let x_357 : f32 = u_xlat3.x;
  let x_358 : f32 = u_xlat10;
  u_xlat3.x = (x_357 * x_358);
  let x_361 : f32 = u_xlat16;
  let x_363 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_361 * x_363) + 1.0f);
  let x_367 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_367)) + 1.0f);
  let x_372 : f32 = u_xlat10;
  let x_373 : f32 = u_xlat10;
  u_xlat17 = (x_372 * x_373);
  let x_375 : f32 = u_xlat17;
  let x_376 : f32 = u_xlat17;
  u_xlat17 = (x_375 * x_376);
  let x_378 : f32 = u_xlat10;
  let x_379 : f32 = u_xlat17;
  u_xlat10 = (x_378 * x_379);
  let x_381 : f32 = u_xlat16;
  let x_382 : f32 = u_xlat10;
  u_xlat16 = ((x_381 * x_382) + 1.0f);
  let x_385 : f32 = u_xlat16;
  let x_387 : f32 = u_xlat3.x;
  u_xlat16 = (x_385 * x_387);
  let x_389 : f32 = u_xlat23;
  let x_390 : f32 = u_xlat16;
  u_xlat16 = (x_389 * x_390);
  let x_392 : f32 = u_xlat22;
  let x_393 : f32 = u_xlat22;
  u_xlat22 = (x_392 * x_393);
  let x_395 : f32 = u_xlat22;
  u_xlat22 = max(x_395, 0.002f);
  let x_398 : f32 = u_xlat22;
  u_xlat3.x = (-(x_398) + 1.0f);
  let x_402 : f32 = u_xlat21;
  let x_405 : f32 = u_xlat3.x;
  let x_407 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_402) * x_405) + x_407);
  let x_409 : f32 = u_xlat23;
  let x_411 : f32 = u_xlat3.x;
  let x_413 : f32 = u_xlat22;
  u_xlat3.x = ((x_409 * x_411) + x_413);
  let x_416 : f32 = u_xlat21;
  let x_419 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_416) * x_419);
  let x_421 : f32 = u_xlat23;
  let x_422 : f32 = u_xlat10;
  let x_424 : f32 = u_xlat21;
  u_xlat21 = ((x_421 * x_422) + x_424);
  let x_426 : f32 = u_xlat21;
  u_xlat21 = (x_426 + 0.00001f);
  let x_429 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_429);
  let x_431 : f32 = u_xlat22;
  let x_432 : f32 = u_xlat22;
  u_xlat22 = (x_431 * x_432);
  let x_435 : f32 = u_xlat2.x;
  let x_436 : f32 = u_xlat22;
  let x_439 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_435 * x_436) + -(x_439));
  let x_444 : f32 = u_xlat3.x;
  let x_446 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_444 * x_446) + 1.0f);
  let x_450 : f32 = u_xlat22;
  u_xlat22 = (x_450 * 0.318309873f);
  let x_454 : f32 = u_xlat2.x;
  let x_456 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_454 * x_456) + 0.0000001f);
  let x_461 : f32 = u_xlat22;
  let x_463 : f32 = u_xlat2.x;
  u_xlat22 = (x_461 / x_463);
  let x_465 : f32 = u_xlat21;
  let x_466 : f32 = u_xlat22;
  u_xlat21 = (x_465 * x_466);
  let x_468 : f32 = u_xlat23;
  let x_469 : f32 = u_xlat21;
  u_xlat21 = (x_468 * x_469);
  let x_471 : f32 = u_xlat21;
  u_xlat21 = (x_471 * 3.141592741f);
  let x_474 : f32 = u_xlat21;
  u_xlat21 = max(x_474, 0.0f);
  let x_476 : vec4<f32> = u_xlat0;
  let x_478 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_476.x, x_476.y, x_476.z), vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_481 : f32 = u_xlat22;
  u_xlatb22 = !((x_481 == 0.0f));
  let x_483 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_483);
  let x_485 : f32 = u_xlat21;
  let x_486 : f32 = u_xlat22;
  u_xlat21 = (x_485 * x_486);
  let x_488 : f32 = u_xlat16;
  let x_490 : vec4<f32> = u_xlat4;
  let x_492 : vec3<f32> = (vec3<f32>(x_488, x_488, x_488) * vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_492.x, x_493.y, x_492.y, x_492.z);
  let x_495 : vec4<f32> = u_xlat4;
  let x_497 : f32 = u_xlat21;
  u_xlat3 = (vec3<f32>(x_495.x, x_495.y, x_495.z) * vec3<f32>(x_497, x_497, x_497));
  let x_500 : f32 = u_xlat9;
  u_xlat21 = (-(x_500) + 1.0f);
  let x_503 : f32 = u_xlat21;
  let x_504 : f32 = u_xlat21;
  u_xlat22 = (x_503 * x_504);
  let x_506 : f32 = u_xlat22;
  let x_507 : f32 = u_xlat22;
  u_xlat22 = (x_506 * x_507);
  let x_509 : f32 = u_xlat21;
  let x_510 : f32 = u_xlat22;
  u_xlat21 = (x_509 * x_510);
  let x_512 : vec4<f32> = u_xlat0;
  let x_516 : vec3<f32> = (-(vec3<f32>(x_512.x, x_512.y, x_512.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_517 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_519 : vec4<f32> = u_xlat4;
  let x_521 : f32 = u_xlat21;
  let x_524 : vec4<f32> = u_xlat0;
  let x_526 : vec3<f32> = ((vec3<f32>(x_519.x, x_519.y, x_519.z) * vec3<f32>(x_521, x_521, x_521)) + vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_529 : vec4<f32> = u_xlat0;
  let x_531 : vec3<f32> = u_xlat3;
  let x_532 : vec3<f32> = (vec3<f32>(x_529.x, x_529.y, x_529.z) * x_531);
  let x_533 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_535 : vec3<f32> = u_xlat1;
  let x_536 : vec4<f32> = u_xlat2;
  let x_539 : vec4<f32> = u_xlat0;
  let x_541 : vec3<f32> = ((x_535 * vec3<f32>(x_536.x, x_536.z, x_536.w)) + vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_542 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

