struct PGlobals {
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  @size(4)
  padding_1 : u32,
  x_Color : vec4<f32>,
  x_EdgeColor1 : vec4<f32>,
  x_Emission : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(9) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicSmooth : sampler;

@group(0) @binding(0) var<uniform> x_54 : PGlobals;

var<private> u_xlat24 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat3 : f32;

@group(0) @binding(4) var x_AO : texture_2d<f32>;

@group(0) @binding(12) var sampler_AO : sampler;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(10) var sampler_Normal : sampler;

var<private> SV_Target1 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_342 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_23.x, x_23.y));
  u_xlat0.x = x_25.x;
  let x_38 : vec4<f32> = vs_TEXCOORD0;
  let x_40 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_38.z, x_38.w));
  u_xlat8 = vec2<f32>(x_40.x, x_40.w);
  let x_43 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_43) + 1.0f);
  let x_49 : f32 = u_xlat0.x;
  let x_59 : f32 = x_54.x_Cutoff;
  u_xlat0.x = (x_49 + -(x_59));
  let x_66 : f32 = x_54.x_EdgeSize;
  u_xlat24 = (1.0f / -(x_66));
  let x_69 : f32 = u_xlat24;
  let x_71 : f32 = u_xlat0.x;
  u_xlat0.x = (x_69 * x_71);
  let x_75 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_75, 0.0f, 1.0f);
  let x_80 : f32 = u_xlat0.x;
  u_xlat24 = ((x_80 * -2.0f) + 3.0f);
  let x_86 : f32 = u_xlat0.x;
  let x_88 : f32 = u_xlat0.x;
  u_xlat0.x = (x_86 * x_88);
  let x_94 : f32 = u_xlat0.x;
  let x_95 : f32 = u_xlat24;
  u_xlat1.x = (x_94 * x_95);
  let x_104 : vec4<f32> = vs_TEXCOORD0;
  let x_106 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_104.z, x_104.w));
  u_xlat2 = x_106;
  let x_108 : vec4<f32> = u_xlat2;
  let x_113 : vec4<f32> = x_54.x_Color;
  u_xlat9 = (vec3<f32>(x_108.x, x_108.y, x_108.z) * vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_122 : vec4<f32> = vs_TEXCOORD0;
  let x_124 : vec4<f32> = textureSample(x_AO, sampler_AO, vec2<f32>(x_122.z, x_122.w));
  u_xlat3 = x_124.x;
  let x_127 : vec3<f32> = u_xlat1;
  let x_131 : vec4<f32> = x_54.x_EdgeColor1;
  u_xlat11 = (vec3<f32>(x_127.x, x_127.x, x_127.x) * vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_134 : vec4<f32> = u_xlat2;
  let x_138 : vec4<f32> = x_54.x_Emission;
  let x_141 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_134.w, x_134.w, x_134.w) * vec3<f32>(x_138.x, x_138.y, x_138.z)) + x_141);
  let x_149 : vec4<f32> = vs_TEXCOORD0;
  let x_151 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_149.z, x_149.w));
  let x_152 : vec3<f32> = vec3<f32>(x_151.x, x_151.y, x_151.w);
  let x_153 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_157 : f32 = u_xlat4.z;
  let x_159 : f32 = u_xlat4.x;
  u_xlat4.x = (x_157 * x_159);
  let x_162 : vec4<f32> = u_xlat4;
  let x_169 : vec2<f32> = ((vec2<f32>(x_162.x, x_162.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_170 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_169.x, x_169.y, x_170.z, x_170.w);
  let x_172 : vec4<f32> = u_xlat4;
  let x_174 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec2<f32>(x_172.x, x_172.y), vec2<f32>(x_174.x, x_174.y));
  let x_179 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_179, 1.0f);
  let x_183 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_183) + 1.0f);
  let x_188 : f32 = u_xlat1.x;
  u_xlat4.z = sqrt(x_188);
  let x_192 : f32 = u_xlat8.x;
  let x_195 : f32 = x_54.x_Metallic;
  u_xlat8.x = (x_192 * x_195);
  let x_202 : f32 = u_xlat8.y;
  let x_205 : f32 = x_54.x_Glossiness;
  SV_Target1.w = (x_202 * x_205);
  let x_210 : f32 = u_xlat24;
  let x_213 : f32 = u_xlat0.x;
  let x_216 : f32 = x_54.x_Cutoff;
  u_xlat0.x = ((-(x_210) * x_213) + -(x_216));
  let x_221 : f32 = u_xlat0.x;
  u_xlat0.x = (x_221 + 1.0f);
  let x_228 : f32 = u_xlat0.x;
  u_xlatb0 = (x_228 < 0.0f);
  let x_230 : bool = u_xlatb0;
  if (((select(0i, 1i, x_230) * -1i) != 0i)) {
    discard;
  }
  let x_242 : vec4<f32> = vs_TEXCOORD1;
  let x_244 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_249 : vec4<f32> = vs_TEXCOORD2;
  let x_251 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(vec3<f32>(x_249.x, x_249.y, x_249.z), vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_256 : vec4<f32> = vs_TEXCOORD3;
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(vec3<f32>(x_256.x, x_256.y, x_256.z), vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_262 : vec4<f32> = u_xlat5;
  let x_264 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(vec3<f32>(x_262.x, x_262.y, x_262.z), vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_269 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_269);
  let x_272 : vec4<f32> = u_xlat0;
  let x_274 : vec4<f32> = u_xlat5;
  let x_276 : vec3<f32> = (vec3<f32>(x_272.x, x_272.x, x_272.x) * vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_281 : f32 = x_54.unity_ProbeVolumeParams.x;
  u_xlatb0 = (x_281 == 1.0f);
  let x_283 : bool = u_xlatb0;
  if (x_283) {
    let x_287 : f32 = x_54.unity_ProbeVolumeParams.y;
    u_xlatb0 = (x_287 == 1.0f);
    let x_289 : vec4<f32> = vs_TEXCOORD2;
    let x_293 : vec4<f32> = x_54.unity_ProbeVolumeWorldToObject[1i];
    let x_295 : vec3<f32> = (vec3<f32>(x_289.w, x_289.w, x_289.w) * vec3<f32>(x_293.x, x_293.y, x_293.z));
    let x_296 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
    let x_299 : vec4<f32> = x_54.unity_ProbeVolumeWorldToObject[0i];
    let x_301 : vec4<f32> = vs_TEXCOORD1;
    let x_304 : vec4<f32> = u_xlat5;
    let x_306 : vec3<f32> = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.w, x_301.w, x_301.w)) + vec3<f32>(x_304.x, x_304.y, x_304.z));
    let x_307 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
    let x_311 : vec4<f32> = x_54.unity_ProbeVolumeWorldToObject[2i];
    let x_313 : vec4<f32> = vs_TEXCOORD3;
    let x_316 : vec4<f32> = u_xlat5;
    let x_318 : vec3<f32> = ((vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.w, x_313.w, x_313.w)) + vec3<f32>(x_316.x, x_316.y, x_316.z));
    let x_319 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
    let x_321 : vec4<f32> = u_xlat5;
    let x_324 : vec4<f32> = x_54.unity_ProbeVolumeWorldToObject[3i];
    let x_326 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) + vec3<f32>(x_324.x, x_324.y, x_324.z));
    let x_327 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
    let x_332 : f32 = vs_TEXCOORD1.w;
    u_xlat14.x = x_332;
    let x_335 : f32 = vs_TEXCOORD2.w;
    u_xlat14.y = x_335;
    let x_338 : f32 = vs_TEXCOORD3.w;
    u_xlat14.z = x_338;
    let x_340 : bool = u_xlatb0;
    if (x_340) {
      let x_345 : vec4<f32> = u_xlat5;
      x_342 = vec3<f32>(x_345.x, x_345.y, x_345.z);
    } else {
      let x_348 : vec3<f32> = u_xlat14;
      x_342 = x_348;
    }
    let x_349 : vec3<f32> = x_342;
    let x_350 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_349.x, x_350.y, x_349.y, x_349.z);
    let x_352 : vec4<f32> = u_xlat0;
    let x_357 : vec3<f32> = x_54.unity_ProbeVolumeMin;
    let x_359 : vec3<f32> = (vec3<f32>(x_352.x, x_352.z, x_352.w) + -(x_357));
    let x_360 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_359.x, x_360.y, x_359.y, x_359.z);
    let x_362 : vec4<f32> = u_xlat0;
    let x_366 : vec3<f32> = x_54.unity_ProbeVolumeSizeInv;
    let x_367 : vec3<f32> = (vec3<f32>(x_362.x, x_362.z, x_362.w) * x_366);
    let x_368 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_368.x, x_367.x, x_367.y, x_367.z);
    let x_371 : f32 = u_xlat5.y;
    u_xlat0.x = (x_371 * 0.25f);
    let x_377 : f32 = x_54.unity_ProbeVolumeParams.z;
    u_xlat16 = (x_377 * 0.5f);
    let x_381 : f32 = x_54.unity_ProbeVolumeParams.z;
    u_xlat24 = ((-(x_381) * 0.5f) + 0.25f);
    let x_385 : f32 = u_xlat16;
    let x_387 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_385, x_387);
    let x_390 : f32 = u_xlat24;
    let x_392 : f32 = u_xlat0.x;
    u_xlat5.x = min(x_390, x_392);
    let x_404 : vec4<f32> = u_xlat5;
    let x_406 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_404.x, x_404.z, x_404.w));
    u_xlat6 = x_406;
    let x_407 : vec4<f32> = u_xlat5;
    let x_410 : vec3<f32> = (vec3<f32>(x_407.x, x_407.z, x_407.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_411 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_410.x, x_411.y, x_410.y, x_410.z);
    let x_417 : vec4<f32> = u_xlat0;
    let x_419 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_417.x, x_417.z, x_417.w));
    u_xlat7 = x_419;
    let x_420 : vec4<f32> = u_xlat5;
    let x_423 : vec3<f32> = (vec3<f32>(x_420.x, x_420.z, x_420.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_424 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_423.x, x_424.y, x_423.y, x_423.z);
    let x_429 : vec4<f32> = u_xlat0;
    let x_431 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_429.x, x_429.z, x_429.w));
    u_xlat5 = x_431;
    u_xlat4.w = 1.0f;
    let x_433 : vec4<f32> = u_xlat6;
    let x_434 : vec4<f32> = u_xlat4;
    u_xlat6.x = dot(x_433, x_434);
    let x_437 : vec4<f32> = u_xlat7;
    let x_438 : vec4<f32> = u_xlat4;
    u_xlat6.y = dot(x_437, x_438);
    let x_441 : vec4<f32> = u_xlat5;
    let x_442 : vec4<f32> = u_xlat4;
    u_xlat6.z = dot(x_441, x_442);
  } else {
    u_xlat4.w = 1.0f;
    let x_448 : vec4<f32> = x_54.unity_SHAr;
    let x_449 : vec4<f32> = u_xlat4;
    u_xlat6.x = dot(x_448, x_449);
    let x_453 : vec4<f32> = x_54.unity_SHAg;
    let x_454 : vec4<f32> = u_xlat4;
    u_xlat6.y = dot(x_453, x_454);
    let x_458 : vec4<f32> = x_54.unity_SHAb;
    let x_459 : vec4<f32> = u_xlat4;
    u_xlat6.z = dot(x_458, x_459);
  }
  let x_462 : vec4<f32> = u_xlat6;
  let x_466 : vec3<f32> = vs_TEXCOORD6;
  let x_467 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) + x_466);
  let x_468 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_467.x, x_468.y, x_467.y, x_467.z);
  let x_470 : vec4<f32> = u_xlat0;
  let x_473 : vec3<f32> = max(vec3<f32>(x_470.x, x_470.z, x_470.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_474 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_473.x, x_474.y, x_473.y, x_473.z);
  let x_476 : f32 = u_xlat3;
  let x_478 : vec4<f32> = u_xlat0;
  let x_480 : vec3<f32> = (vec3<f32>(x_476, x_476, x_476) * vec3<f32>(x_478.x, x_478.z, x_478.w));
  let x_481 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_480.x, x_481.y, x_480.y, x_480.z);
  let x_483 : vec4<f32> = u_xlat2;
  let x_486 : vec4<f32> = x_54.x_Color;
  let x_491 : vec3<f32> = ((vec3<f32>(x_483.x, x_483.y, x_483.z) * vec3<f32>(x_486.x, x_486.y, x_486.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_492 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec2<f32> = u_xlat8;
  let x_496 : vec4<f32> = u_xlat2;
  let x_501 : vec3<f32> = ((vec3<f32>(x_494.x, x_494.x, x_494.x) * vec3<f32>(x_496.x, x_496.y, x_496.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_502 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_505 : f32 = u_xlat8.x;
  u_xlat8.x = ((-(x_505) * 0.959999979f) + 0.959999979f);
  let x_511 : vec2<f32> = u_xlat8;
  let x_513 : vec3<f32> = u_xlat9;
  u_xlat1 = (vec3<f32>(x_511.x, x_511.x, x_511.x) * x_513);
  let x_516 : vec4<f32> = u_xlat4;
  let x_520 : vec3<f32> = ((vec3<f32>(x_516.x, x_516.y, x_516.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_521 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_523 : vec3<f32> = u_xlat1;
  let x_524 : vec4<f32> = u_xlat0;
  let x_527 : vec3<f32> = u_xlat11;
  let x_528 : vec3<f32> = ((x_523 * vec3<f32>(x_524.x, x_524.z, x_524.w)) + x_527);
  let x_529 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_532 : vec4<f32> = u_xlat0;
  let x_535 : vec3<f32> = exp2(-(vec3<f32>(x_532.x, x_532.y, x_532.z)));
  let x_536 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_539 : f32 = u_xlat3;
  SV_Target0.w = x_539;
  let x_541 : vec3<f32> = u_xlat1;
  let x_542 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target2, SV_Target3, SV_Target0);
}

