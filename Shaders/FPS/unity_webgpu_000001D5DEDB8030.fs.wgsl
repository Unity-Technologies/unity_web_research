struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat18 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat19 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb20 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat21 : f32;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(4) var sampler_LightTexture0 : sampler;

var<private> u_xlat7 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlatb18 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_185 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD1;
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
  let x_39 : vec3<f32> = vs_TEXCOORD0;
  let x_40 : vec3<f32> = u_xlat1;
  u_xlat19 = dot(x_39, x_40);
  let x_42 : f32 = u_xlat19;
  u_xlat19 = log2(x_42);
  let x_44 : f32 = u_xlat19;
  u_xlat19 = (x_44 * 0.100000001f);
  let x_47 : f32 = u_xlat19;
  u_xlat19 = exp2(x_47);
  let x_49 : f32 = u_xlat19;
  u_xlat19 = (-(x_49) + 1.0f);
  let x_53 : f32 = u_xlat19;
  u_xlat19 = max(x_53, 0.0f);
  let x_57 : f32 = u_xlat19;
  let x_62 : vec4<f32> = x_18.x_Color;
  u_xlat2 = (vec3<f32>(x_57, x_57, x_57) * vec3<f32>(x_62.x, x_62.y, x_62.z));
  let x_70 : f32 = x_18.x_Time.x;
  u_xlat19 = (x_70 * 200.0f);
  let x_73 : f32 = u_xlat19;
  u_xlat19 = sin(x_73);
  let x_75 : f32 = u_xlat19;
  u_xlat19 = (x_75 + 1.0f);
  let x_77 : f32 = u_xlat19;
  u_xlat19 = (x_77 * 0.5f);
  let x_81 : f32 = u_xlat19;
  let x_83 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_81, x_81, x_81) * x_83);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_91 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_93 : vec2<f32> = (vec2<f32>(x_87.y, x_87.y) * vec2<f32>(x_91.x, x_91.y));
  let x_94 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_93.x, x_93.y, x_94.z);
  let x_97 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_99 : vec3<f32> = vs_TEXCOORD1;
  let x_102 : vec3<f32> = u_xlat4;
  let x_104 : vec2<f32> = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_99.x, x_99.x)) + vec2<f32>(x_102.x, x_102.y));
  let x_105 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_104.x, x_104.y, x_105.z);
  let x_109 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_111 : vec3<f32> = vs_TEXCOORD1;
  let x_114 : vec3<f32> = u_xlat4;
  let x_116 : vec2<f32> = ((vec2<f32>(x_109.x, x_109.y) * vec2<f32>(x_111.z, x_111.z)) + vec2<f32>(x_114.x, x_114.y));
  let x_117 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_116.x, x_116.y, x_117.z);
  let x_119 : vec3<f32> = u_xlat4;
  let x_123 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_125 : vec2<f32> = (vec2<f32>(x_119.x, x_119.y) + vec2<f32>(x_123.x, x_123.y));
  let x_126 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_125.x, x_125.y, x_126.z);
  let x_133 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb20 = (x_133 == 1.0f);
  let x_135 : bool = u_xlatb20;
  if (x_135) {
    let x_140 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb20 = (x_140 == 1.0f);
    let x_144 : vec3<f32> = vs_TEXCOORD1;
    let x_148 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_150 : vec3<f32> = (vec3<f32>(x_144.y, x_144.y, x_144.y) * vec3<f32>(x_148.x, x_148.y, x_148.z));
    let x_151 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
    let x_154 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_156 : vec3<f32> = vs_TEXCOORD1;
    let x_159 : vec4<f32> = u_xlat5;
    let x_161 : vec3<f32> = ((vec3<f32>(x_154.x, x_154.y, x_154.z) * vec3<f32>(x_156.x, x_156.x, x_156.x)) + vec3<f32>(x_159.x, x_159.y, x_159.z));
    let x_162 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
    let x_165 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_167 : vec3<f32> = vs_TEXCOORD1;
    let x_170 : vec4<f32> = u_xlat5;
    let x_172 : vec3<f32> = ((vec3<f32>(x_165.x, x_165.y, x_165.z) * vec3<f32>(x_167.z, x_167.z, x_167.z)) + vec3<f32>(x_170.x, x_170.y, x_170.z));
    let x_173 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
    let x_175 : vec4<f32> = u_xlat5;
    let x_178 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_180 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) + vec3<f32>(x_178.x, x_178.y, x_178.z));
    let x_181 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_183 : bool = u_xlatb20;
    if (x_183) {
      let x_188 : vec4<f32> = u_xlat5;
      x_185 = vec3<f32>(x_188.x, x_188.y, x_188.z);
    } else {
      let x_191 : vec3<f32> = vs_TEXCOORD1;
      x_185 = x_191;
    }
    let x_192 : vec3<f32> = x_185;
    let x_193 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
    let x_195 : vec4<f32> = u_xlat5;
    let x_199 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_201 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) + -(x_199));
    let x_202 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
    let x_204 : vec4<f32> = u_xlat5;
    let x_208 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_209 : vec3<f32> = (vec3<f32>(x_204.x, x_204.y, x_204.z) * x_208);
    let x_210 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_210.x, x_209.x, x_209.y, x_209.z);
    let x_214 : f32 = u_xlat5.y;
    u_xlat20 = ((x_214 * 0.25f) + 0.75f);
    let x_222 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat21 = ((x_222 * 0.5f) + 0.75f);
    let x_225 : f32 = u_xlat20;
    let x_226 : f32 = u_xlat21;
    u_xlat5.x = max(x_225, x_226);
    let x_239 : vec4<f32> = u_xlat5;
    let x_241 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_239.x, x_239.z, x_239.w));
    u_xlat5 = x_241;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_248 : vec4<f32> = u_xlat5;
  let x_250 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat20 = dot(x_248, x_250);
  let x_252 : f32 = u_xlat20;
  u_xlat20 = clamp(x_252, 0.0f, 1.0f);
  let x_262 : vec3<f32> = u_xlat4;
  let x_264 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_262.x, x_262.y));
  u_xlat21 = x_264.w;
  let x_266 : f32 = u_xlat20;
  let x_267 : f32 = u_xlat21;
  u_xlat20 = (x_266 * x_267);
  let x_269 : f32 = u_xlat20;
  let x_273 : vec4<f32> = x_18.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_269, x_269, x_269) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec3<f32> = vs_TEXCOORD0;
  let x_277 : vec3<f32> = vs_TEXCOORD0;
  u_xlat20 = dot(x_276, x_277);
  let x_279 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_279);
  let x_281 : f32 = u_xlat20;
  let x_283 : vec3<f32> = vs_TEXCOORD0;
  let x_284 : vec3<f32> = (vec3<f32>(x_281, x_281, x_281) * x_283);
  let x_285 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : vec3<f32> = u_xlat2;
  let x_288 : f32 = u_xlat19;
  u_xlat2 = ((x_287 * vec3<f32>(x_288, x_288, x_288)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_296 : f32 = x_18.x_Metallic;
  let x_298 : f32 = x_18.x_Metallic;
  let x_300 : f32 = x_18.x_Metallic;
  let x_301 : vec3<f32> = vec3<f32>(x_296, x_298, x_300);
  let x_306 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * x_306) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_312 : f32 = x_18.x_Metallic;
  u_xlat19 = ((-(x_312) * 0.959999979f) + 0.959999979f);
  let x_317 : f32 = u_xlat19;
  let x_319 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_317, x_317, x_317) * x_319);
  let x_323 : f32 = x_18.x_Glossiness;
  u_xlat19 = (-(x_323) + 1.0f);
  let x_326 : vec3<f32> = u_xlat0;
  let x_327 : f32 = u_xlat18;
  let x_331 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_326 * vec3<f32>(x_327, x_327, x_327)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec3<f32> = u_xlat0;
  let x_335 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_334, x_335);
  let x_337 : f32 = u_xlat18;
  u_xlat18 = max(x_337, 0.001f);
  let x_340 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_340);
  let x_342 : f32 = u_xlat18;
  let x_344 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_342, x_342, x_342) * x_344);
  let x_346 : vec4<f32> = u_xlat5;
  let x_348 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_346.x, x_346.y, x_346.z), x_348);
  let x_350 : vec4<f32> = u_xlat5;
  let x_353 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_350.x, x_350.y, x_350.z), vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_358 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_358, 0.0f, 1.0f);
  let x_362 : vec4<f32> = u_xlat5;
  let x_364 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(vec3<f32>(x_362.x, x_362.y, x_362.z), x_364);
  let x_366 : f32 = u_xlat7;
  u_xlat7 = clamp(x_366, 0.0f, 1.0f);
  let x_369 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_371 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_369.x, x_369.y, x_369.z), x_371);
  let x_375 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_375, 0.0f, 1.0f);
  let x_380 : f32 = u_xlat0.x;
  let x_382 : f32 = u_xlat0.x;
  u_xlat6.x = (x_380 * x_382);
  let x_385 : vec3<f32> = u_xlat6;
  let x_387 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_385.x, x_385.x), vec2<f32>(x_387, x_387));
  let x_392 : f32 = u_xlat6.x;
  u_xlat6.x = (x_392 + -0.5f);
  let x_398 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_398) + 1.0f);
  let x_402 : f32 = u_xlat12;
  let x_403 : f32 = u_xlat12;
  u_xlat13 = (x_402 * x_403);
  let x_405 : f32 = u_xlat13;
  let x_406 : f32 = u_xlat13;
  u_xlat13 = (x_405 * x_406);
  let x_408 : f32 = u_xlat12;
  let x_409 : f32 = u_xlat13;
  u_xlat12 = (x_408 * x_409);
  let x_412 : f32 = u_xlat6.x;
  let x_413 : f32 = u_xlat12;
  u_xlat12 = ((x_412 * x_413) + 1.0f);
  let x_416 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_416)) + 1.0f);
  let x_420 : f32 = u_xlat13;
  let x_421 : f32 = u_xlat13;
  u_xlat20 = (x_420 * x_421);
  let x_423 : f32 = u_xlat20;
  let x_424 : f32 = u_xlat20;
  u_xlat20 = (x_423 * x_424);
  let x_426 : f32 = u_xlat13;
  let x_427 : f32 = u_xlat20;
  u_xlat13 = (x_426 * x_427);
  let x_430 : f32 = u_xlat6.x;
  let x_431 : f32 = u_xlat13;
  u_xlat6.x = ((x_430 * x_431) + 1.0f);
  let x_436 : f32 = u_xlat6.x;
  let x_437 : f32 = u_xlat12;
  u_xlat6.x = (x_436 * x_437);
  let x_440 : f32 = u_xlat19;
  let x_441 : f32 = u_xlat19;
  u_xlat12 = (x_440 * x_441);
  let x_443 : f32 = u_xlat12;
  u_xlat12 = max(x_443, 0.002f);
  let x_446 : f32 = u_xlat12;
  u_xlat13 = (-(x_446) + 1.0f);
  let x_449 : f32 = u_xlat18;
  let x_451 : f32 = u_xlat13;
  let x_453 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_449) * x_451) + x_453);
  let x_456 : f32 = u_xlat1.x;
  let x_457 : f32 = u_xlat13;
  let x_459 : f32 = u_xlat12;
  u_xlat13 = ((x_456 * x_457) + x_459);
  let x_461 : f32 = u_xlat18;
  let x_463 : f32 = u_xlat13;
  u_xlat18 = (abs(x_461) * x_463);
  let x_466 : f32 = u_xlat1.x;
  let x_467 : f32 = u_xlat19;
  let x_469 : f32 = u_xlat18;
  u_xlat18 = ((x_466 * x_467) + x_469);
  let x_471 : f32 = u_xlat18;
  u_xlat18 = (x_471 + 0.00001f);
  let x_474 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_474);
  let x_476 : f32 = u_xlat12;
  let x_477 : f32 = u_xlat12;
  u_xlat12 = (x_476 * x_477);
  let x_479 : f32 = u_xlat7;
  let x_480 : f32 = u_xlat12;
  let x_482 : f32 = u_xlat7;
  u_xlat13 = ((x_479 * x_480) + -(x_482));
  let x_485 : f32 = u_xlat13;
  let x_486 : f32 = u_xlat7;
  u_xlat7 = ((x_485 * x_486) + 1.0f);
  let x_489 : f32 = u_xlat12;
  u_xlat12 = (x_489 * 0.318309873f);
  let x_492 : f32 = u_xlat7;
  let x_493 : f32 = u_xlat7;
  u_xlat7 = ((x_492 * x_493) + 0.0000001f);
  let x_497 : f32 = u_xlat12;
  let x_498 : f32 = u_xlat7;
  u_xlat12 = (x_497 / x_498);
  let x_500 : f32 = u_xlat12;
  let x_501 : f32 = u_xlat18;
  u_xlat6.y = (x_500 * x_501);
  let x_504 : vec3<f32> = u_xlat1;
  let x_506 : vec3<f32> = u_xlat6;
  let x_508 : vec2<f32> = (vec2<f32>(x_504.x, x_504.x) * vec2<f32>(x_506.x, x_506.y));
  let x_509 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_508.x, x_508.y, x_509.z);
  let x_512 : f32 = u_xlat6.y;
  u_xlat12 = (x_512 * 3.141592741f);
  let x_515 : f32 = u_xlat12;
  u_xlat12 = max(x_515, 0.0f);
  let x_517 : vec3<f32> = u_xlat2;
  let x_518 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(x_517, x_518);
  let x_521 : f32 = u_xlat18;
  u_xlatb18 = !((x_521 == 0.0f));
  let x_523 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_523);
  let x_525 : f32 = u_xlat18;
  let x_526 : f32 = u_xlat12;
  u_xlat12 = (x_525 * x_526);
  let x_528 : vec3<f32> = u_xlat6;
  let x_530 : vec3<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_528.x, x_528.x, x_528.x) * x_530);
  let x_532 : vec3<f32> = u_xlat4;
  let x_533 : f32 = u_xlat12;
  u_xlat6 = (x_532 * vec3<f32>(x_533, x_533, x_533));
  let x_537 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_537) + 1.0f);
  let x_542 : f32 = u_xlat0.x;
  let x_544 : f32 = u_xlat0.x;
  u_xlat19 = (x_542 * x_544);
  let x_546 : f32 = u_xlat19;
  let x_547 : f32 = u_xlat19;
  u_xlat19 = (x_546 * x_547);
  let x_550 : f32 = u_xlat0.x;
  let x_551 : f32 = u_xlat19;
  u_xlat0.x = (x_550 * x_551);
  let x_554 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_554) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_558 : vec3<f32> = u_xlat4;
  let x_559 : vec3<f32> = u_xlat0;
  let x_562 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_558 * vec3<f32>(x_559.x, x_559.x, x_559.x)) + x_562);
  let x_564 : vec3<f32> = u_xlat6;
  let x_565 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_564 * x_565);
  let x_569 : vec3<f32> = u_xlat3;
  let x_570 : vec3<f32> = u_xlat1;
  let x_572 : vec3<f32> = u_xlat0;
  let x_573 : vec3<f32> = ((x_569 * x_570) + x_572);
  let x_574 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

