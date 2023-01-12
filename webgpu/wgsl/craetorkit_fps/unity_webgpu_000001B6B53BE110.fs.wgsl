struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(5) var sampler_Normal : sampler;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD8 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlatb19 : bool;
  var u_xlat5 : vec4<f32>;
  var x_229 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat7 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat13 : f32;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat18;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_52 : vec4<f32> = vs_TEXCOORD0;
  let x_54 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_52.x, x_52.y));
  u_xlat2 = x_54;
  let x_55 : vec4<f32> = u_xlat2;
  let x_60 : vec4<f32> = x_18.x_Color;
  let x_62 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_63 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  let x_66 : vec4<f32> = u_xlat2;
  let x_69 : vec4<f32> = vs_COLOR0;
  u_xlat3 = (vec3<f32>(x_66.x, x_66.y, x_66.z) * vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_78 : f32 = x_18.x_Time.x;
  let x_81 : f32 = x_18.x_MovementSpeed;
  let x_86 : f32 = vs_TEXCOORD0.z;
  u_xlat4.x = ((x_78 * x_81) + x_86);
  let x_90 : f32 = x_18.x_Time.x;
  let x_93 : f32 = x_18.x_MovementSpeed;
  let x_97 : f32 = vs_TEXCOORD0.w;
  u_xlat4.y = ((-(x_90) * x_93) + x_97);
  let x_106 : vec3<f32> = u_xlat4;
  let x_108 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_106.x, x_106.y));
  u_xlat4 = vec3<f32>(x_108.x, x_108.y, x_108.w);
  let x_111 : f32 = u_xlat4.z;
  let x_113 : f32 = u_xlat4.x;
  u_xlat4.x = (x_111 * x_113);
  let x_116 : vec3<f32> = u_xlat4;
  let x_123 : vec2<f32> = ((vec2<f32>(x_116.x, x_116.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_124 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_123.x, x_123.y, x_124.z);
  let x_126 : vec3<f32> = u_xlat4;
  let x_130 : f32 = x_18.x_NormalSacle;
  let x_132 : vec2<f32> = (vec2<f32>(x_126.x, x_126.y) * vec2<f32>(x_130, x_130));
  let x_133 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_132.x, x_132.y, x_133.z);
  let x_136 : vec3<f32> = u_xlat4;
  let x_138 : vec3<f32> = u_xlat4;
  u_xlat19 = dot(vec2<f32>(x_136.x, x_136.y), vec2<f32>(x_138.x, x_138.y));
  let x_141 : f32 = u_xlat19;
  u_xlat19 = min(x_141, 1.0f);
  let x_144 : f32 = u_xlat19;
  u_xlat19 = (-(x_144) + 1.0f);
  let x_147 : f32 = u_xlat19;
  u_xlat4.z = sqrt(x_147);
  let x_151 : f32 = vs_COLOR0.w;
  u_xlat19 = (-(x_151) + 1.0f);
  let x_155 : f32 = u_xlat2.w;
  let x_157 : f32 = x_18.x_Color.w;
  let x_159 : f32 = u_xlat19;
  u_xlat19 = ((x_155 * x_157) + -(x_159));
  let x_165 : f32 = u_xlat19;
  u_xlatb19 = (x_165 < 0.0f);
  let x_168 : bool = u_xlatb19;
  if (((select(0i, 1i, x_168) * -1i) != 0i)) {
    discard;
  }
  let x_178 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_178 == 1.0f);
  let x_180 : bool = u_xlatb19;
  if (x_180) {
    let x_184 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_184 == 1.0f);
    let x_187 : vec3<f32> = vs_TEXCOORD4;
    let x_191 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_193 : vec3<f32> = (vec3<f32>(x_187.y, x_187.y, x_187.y) * vec3<f32>(x_191.x, x_191.y, x_191.z));
    let x_194 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
    let x_197 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_199 : vec3<f32> = vs_TEXCOORD4;
    let x_202 : vec4<f32> = u_xlat5;
    let x_204 : vec3<f32> = ((vec3<f32>(x_197.x, x_197.y, x_197.z) * vec3<f32>(x_199.x, x_199.x, x_199.x)) + vec3<f32>(x_202.x, x_202.y, x_202.z));
    let x_205 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    let x_209 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_211 : vec3<f32> = vs_TEXCOORD4;
    let x_214 : vec4<f32> = u_xlat5;
    let x_216 : vec3<f32> = ((vec3<f32>(x_209.x, x_209.y, x_209.z) * vec3<f32>(x_211.z, x_211.z, x_211.z)) + vec3<f32>(x_214.x, x_214.y, x_214.z));
    let x_217 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
    let x_219 : vec4<f32> = u_xlat5;
    let x_223 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_225 : vec3<f32> = (vec3<f32>(x_219.x, x_219.y, x_219.z) + vec3<f32>(x_223.x, x_223.y, x_223.z));
    let x_226 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
    let x_228 : bool = u_xlatb19;
    if (x_228) {
      let x_232 : vec4<f32> = u_xlat5;
      x_229 = vec3<f32>(x_232.x, x_232.y, x_232.z);
    } else {
      let x_235 : vec3<f32> = vs_TEXCOORD4;
      x_229 = x_235;
    }
    let x_236 : vec3<f32> = x_229;
    let x_237 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
    let x_239 : vec4<f32> = u_xlat5;
    let x_243 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_245 : vec3<f32> = (vec3<f32>(x_239.x, x_239.y, x_239.z) + -(x_243));
    let x_246 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
    let x_248 : vec4<f32> = u_xlat5;
    let x_252 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_253 : vec3<f32> = (vec3<f32>(x_248.x, x_248.y, x_248.z) * x_252);
    let x_254 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_254.x, x_253.x, x_253.y, x_253.z);
    let x_257 : f32 = u_xlat5.y;
    u_xlat19 = ((x_257 * 0.25f) + 0.75f);
    let x_264 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_264 * 0.5f) + 0.75f);
    let x_268 : f32 = u_xlat19;
    let x_269 : f32 = u_xlat20;
    u_xlat5.x = max(x_268, x_269);
    let x_280 : vec4<f32> = u_xlat5;
    let x_282 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_280.x, x_280.z, x_280.w));
    u_xlat5 = x_282;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_288 : vec4<f32> = u_xlat5;
  let x_291 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_288, x_291);
  let x_293 : f32 = u_xlat19;
  u_xlat19 = clamp(x_293, 0.0f, 1.0f);
  let x_296 : vec3<f32> = vs_TEXCOORD1;
  let x_297 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_296, x_297);
  let x_301 : vec3<f32> = vs_TEXCOORD2;
  let x_302 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_301, x_302);
  let x_306 : vec3<f32> = vs_TEXCOORD3;
  let x_307 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_306, x_307);
  let x_310 : vec4<f32> = u_xlat5;
  let x_312 : vec4<f32> = u_xlat5;
  u_xlat20 = dot(vec3<f32>(x_310.x, x_310.y, x_310.z), vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_315);
  let x_317 : f32 = u_xlat20;
  let x_319 : vec4<f32> = u_xlat5;
  u_xlat4 = (vec3<f32>(x_317, x_317, x_317) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : f32 = u_xlat19;
  let x_326 : vec4<f32> = x_18.x_LightColor0;
  let x_328 : vec3<f32> = (vec3<f32>(x_322, x_322, x_322) * vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat2;
  let x_333 : vec4<f32> = vs_COLOR0;
  let x_338 : vec3<f32> = ((vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(x_333.x, x_333.y, x_333.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_343 : f32 = x_18.x_Metallic;
  let x_345 : f32 = x_18.x_Metallic;
  let x_347 : f32 = x_18.x_Metallic;
  let x_348 : vec3<f32> = vec3<f32>(x_343, x_345, x_347);
  let x_353 : vec4<f32> = u_xlat2;
  let x_358 : vec3<f32> = ((vec3<f32>(x_348.x, x_348.y, x_348.z) * vec3<f32>(x_353.x, x_353.y, x_353.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_359 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_362 : f32 = x_18.x_Metallic;
  u_xlat19 = ((-(x_362) * 0.959999979f) + 0.959999979f);
  let x_367 : f32 = u_xlat19;
  let x_369 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_367, x_367, x_367) * x_369);
  let x_373 : f32 = x_18.x_Glossiness;
  u_xlat19 = (-(x_373) + 1.0f);
  let x_376 : vec3<f32> = u_xlat0;
  let x_377 : f32 = u_xlat18;
  let x_381 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_376 * vec3<f32>(x_377, x_377, x_377)) + vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec3<f32> = u_xlat0;
  let x_385 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_384, x_385);
  let x_387 : f32 = u_xlat18;
  u_xlat18 = max(x_387, 0.001f);
  let x_390 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_390);
  let x_392 : f32 = u_xlat18;
  let x_394 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_392, x_392, x_392) * x_394);
  let x_396 : vec3<f32> = u_xlat4;
  let x_397 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_396, x_397);
  let x_399 : vec3<f32> = u_xlat4;
  let x_401 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_399, vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_406 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_406, 0.0f, 1.0f);
  let x_410 : vec3<f32> = u_xlat4;
  let x_411 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(x_410, x_411);
  let x_413 : f32 = u_xlat7;
  u_xlat7 = clamp(x_413, 0.0f, 1.0f);
  let x_416 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_418 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_416.x, x_416.y, x_416.z), x_418);
  let x_422 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_422, 0.0f, 1.0f);
  let x_427 : f32 = u_xlat0.x;
  let x_429 : f32 = u_xlat0.x;
  u_xlat6.x = (x_427 * x_429);
  let x_432 : vec3<f32> = u_xlat6;
  let x_434 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_432.x, x_432.x), vec2<f32>(x_434, x_434));
  let x_439 : f32 = u_xlat6.x;
  u_xlat6.x = (x_439 + -0.5f);
  let x_445 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_445) + 1.0f);
  let x_449 : f32 = u_xlat12;
  let x_450 : f32 = u_xlat12;
  u_xlat13 = (x_449 * x_450);
  let x_452 : f32 = u_xlat13;
  let x_453 : f32 = u_xlat13;
  u_xlat13 = (x_452 * x_453);
  let x_455 : f32 = u_xlat12;
  let x_456 : f32 = u_xlat13;
  u_xlat12 = (x_455 * x_456);
  let x_459 : f32 = u_xlat6.x;
  let x_460 : f32 = u_xlat12;
  u_xlat12 = ((x_459 * x_460) + 1.0f);
  let x_463 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_463)) + 1.0f);
  let x_467 : f32 = u_xlat13;
  let x_468 : f32 = u_xlat13;
  u_xlat20 = (x_467 * x_468);
  let x_470 : f32 = u_xlat20;
  let x_471 : f32 = u_xlat20;
  u_xlat20 = (x_470 * x_471);
  let x_473 : f32 = u_xlat13;
  let x_474 : f32 = u_xlat20;
  u_xlat13 = (x_473 * x_474);
  let x_477 : f32 = u_xlat6.x;
  let x_478 : f32 = u_xlat13;
  u_xlat6.x = ((x_477 * x_478) + 1.0f);
  let x_483 : f32 = u_xlat6.x;
  let x_484 : f32 = u_xlat12;
  u_xlat6.x = (x_483 * x_484);
  let x_487 : f32 = u_xlat19;
  let x_488 : f32 = u_xlat19;
  u_xlat12 = (x_487 * x_488);
  let x_490 : f32 = u_xlat12;
  u_xlat12 = max(x_490, 0.002f);
  let x_493 : f32 = u_xlat12;
  u_xlat13 = (-(x_493) + 1.0f);
  let x_496 : f32 = u_xlat18;
  let x_498 : f32 = u_xlat13;
  let x_500 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_496) * x_498) + x_500);
  let x_503 : f32 = u_xlat1.x;
  let x_504 : f32 = u_xlat13;
  let x_506 : f32 = u_xlat12;
  u_xlat13 = ((x_503 * x_504) + x_506);
  let x_508 : f32 = u_xlat18;
  let x_510 : f32 = u_xlat13;
  u_xlat18 = (abs(x_508) * x_510);
  let x_513 : f32 = u_xlat1.x;
  let x_514 : f32 = u_xlat19;
  let x_516 : f32 = u_xlat18;
  u_xlat18 = ((x_513 * x_514) + x_516);
  let x_518 : f32 = u_xlat18;
  u_xlat18 = (x_518 + 0.00001f);
  let x_521 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_521);
  let x_523 : f32 = u_xlat12;
  let x_524 : f32 = u_xlat12;
  u_xlat12 = (x_523 * x_524);
  let x_526 : f32 = u_xlat7;
  let x_527 : f32 = u_xlat12;
  let x_529 : f32 = u_xlat7;
  u_xlat13 = ((x_526 * x_527) + -(x_529));
  let x_532 : f32 = u_xlat13;
  let x_533 : f32 = u_xlat7;
  u_xlat7 = ((x_532 * x_533) + 1.0f);
  let x_536 : f32 = u_xlat12;
  u_xlat12 = (x_536 * 0.318309873f);
  let x_539 : f32 = u_xlat7;
  let x_540 : f32 = u_xlat7;
  u_xlat7 = ((x_539 * x_540) + 0.0000001f);
  let x_544 : f32 = u_xlat12;
  let x_545 : f32 = u_xlat7;
  u_xlat12 = (x_544 / x_545);
  let x_547 : f32 = u_xlat12;
  let x_548 : f32 = u_xlat18;
  u_xlat6.y = (x_547 * x_548);
  let x_551 : vec3<f32> = u_xlat1;
  let x_553 : vec3<f32> = u_xlat6;
  let x_555 : vec2<f32> = (vec2<f32>(x_551.x, x_551.x) * vec2<f32>(x_553.x, x_553.y));
  let x_556 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_555.x, x_555.y, x_556.z);
  let x_559 : f32 = u_xlat6.y;
  u_xlat12 = (x_559 * 3.141592741f);
  let x_562 : f32 = u_xlat12;
  u_xlat12 = max(x_562, 0.0f);
  let x_564 : vec4<f32> = u_xlat2;
  let x_566 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_564.x, x_564.y, x_564.z), vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_570 : f32 = u_xlat18;
  u_xlatb18 = !((x_570 == 0.0f));
  let x_572 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_572);
  let x_574 : f32 = u_xlat18;
  let x_575 : f32 = u_xlat12;
  u_xlat12 = (x_574 * x_575);
  let x_577 : vec3<f32> = u_xlat6;
  let x_579 : vec4<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_577.x, x_577.x, x_577.x) * vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec4<f32> = u_xlat5;
  let x_584 : f32 = u_xlat12;
  u_xlat6 = (vec3<f32>(x_582.x, x_582.y, x_582.z) * vec3<f32>(x_584, x_584, x_584));
  let x_588 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_588) + 1.0f);
  let x_593 : f32 = u_xlat0.x;
  let x_595 : f32 = u_xlat0.x;
  u_xlat19 = (x_593 * x_595);
  let x_597 : f32 = u_xlat19;
  let x_598 : f32 = u_xlat19;
  u_xlat19 = (x_597 * x_598);
  let x_601 : f32 = u_xlat0.x;
  let x_602 : f32 = u_xlat19;
  u_xlat0.x = (x_601 * x_602);
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec3<f32>(x_605.x, x_605.y, x_605.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_610 : vec3<f32> = u_xlat4;
  let x_611 : vec3<f32> = u_xlat0;
  let x_614 : vec4<f32> = u_xlat2;
  let x_616 : vec3<f32> = ((x_610 * vec3<f32>(x_611.x, x_611.x, x_611.x)) + vec3<f32>(x_614.x, x_614.y, x_614.z));
  let x_617 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec3<f32> = u_xlat6;
  let x_620 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_619 * vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_623 : vec3<f32> = u_xlat3;
  let x_624 : vec3<f32> = u_xlat1;
  let x_626 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_623 * x_624) + x_626);
  let x_629 : f32 = vs_TEXCOORD8;
  let x_631 : f32 = x_18.x_ProjectionParams.y;
  u_xlat18 = (x_629 / x_631);
  let x_633 : f32 = u_xlat18;
  u_xlat18 = (-(x_633) + 1.0f);
  let x_636 : f32 = u_xlat18;
  let x_638 : f32 = x_18.x_ProjectionParams.z;
  u_xlat18 = (x_636 * x_638);
  let x_640 : f32 = u_xlat18;
  u_xlat18 = max(x_640, 0.0f);
  let x_642 : f32 = u_xlat18;
  let x_645 : f32 = x_18.unity_FogParams.x;
  u_xlat18 = (x_642 * x_645);
  let x_647 : f32 = u_xlat18;
  let x_648 : f32 = u_xlat18;
  u_xlat18 = (x_647 * -(x_648));
  let x_651 : f32 = u_xlat18;
  u_xlat18 = exp2(x_651);
  let x_655 : vec3<f32> = u_xlat0;
  let x_656 : f32 = u_xlat18;
  let x_658 : vec3<f32> = (x_655 * vec3<f32>(x_656, x_656, x_656));
  let x_659 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(6) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD8_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

