struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
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
  x_OcclusionStrength : f32,
  @size(4)
  padding_2 : u32,
  x_EmissionColor : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_33 : PGlobals;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb41 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb10 : vec3<bool>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat44 : f32;

var<private> u_xlatb45 : bool;

var<private> u_xlat45 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb12 : vec3<bool>;

@group(0) @binding(5) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat29 : f32;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_189 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_384 : f32;
  var x_396 : f32;
  var x_408 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_570 : f32;
  var x_582 : f32;
  var x_594 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat39 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat39;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_81 : vec4<f32> = vs_TEXCOORD4;
  let x_83 : vec4<f32> = vs_TEXCOORD4;
  u_xlat40 = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_86);
  let x_89 : f32 = u_xlat40;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_95 : vec4<f32> = vs_TEXCOORD1;
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  u_xlat40 = dot(vec3<f32>(x_95.x, x_95.y, x_95.z), vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_100 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_100);
  let x_104 : f32 = u_xlat40;
  let x_106 : vec4<f32> = vs_TEXCOORD1;
  let x_108 : vec3<f32> = (vec3<f32>(x_104, x_104, x_104) * vec3<f32>(x_106.x, x_106.y, x_106.z));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_118 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb41 = (x_118 == 1.0f);
  let x_121 : bool = u_xlatb41;
  if (x_121) {
    let x_126 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb41 = (x_126 == 1.0f);
    let x_130 : vec4<f32> = vs_TEXCOORD3;
    let x_135 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_137 : vec3<f32> = (vec3<f32>(x_130.w, x_130.w, x_130.w) * vec3<f32>(x_135.x, x_135.y, x_135.z));
    let x_138 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_137.x, x_137.y, x_137.z, x_138.w);
    let x_142 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_145 : vec4<f32> = vs_TEXCOORD2;
    let x_148 : vec4<f32> = u_xlat4;
    let x_150 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_145.w, x_145.w, x_145.w)) + vec3<f32>(x_148.x, x_148.y, x_148.z));
    let x_151 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
    let x_155 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_157 : vec4<f32> = vs_TEXCOORD4;
    let x_160 : vec4<f32> = u_xlat4;
    let x_162 : vec3<f32> = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_157.w, x_157.w, x_157.w)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
    let x_163 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
    let x_165 : vec4<f32> = u_xlat4;
    let x_169 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_171 : vec3<f32> = (vec3<f32>(x_165.x, x_165.y, x_165.z) + vec3<f32>(x_169.x, x_169.y, x_169.z));
    let x_172 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_178 : f32 = vs_TEXCOORD2.w;
    u_xlat18.x = x_178;
    let x_181 : f32 = vs_TEXCOORD3.w;
    u_xlat18.y = x_181;
    let x_184 : f32 = vs_TEXCOORD4.w;
    u_xlat18.z = x_184;
    let x_187 : bool = u_xlatb41;
    if (x_187) {
      let x_192 : vec4<f32> = u_xlat4;
      x_189 = vec3<f32>(x_192.x, x_192.y, x_192.z);
    } else {
      let x_195 : vec3<f32> = u_xlat18;
      x_189 = x_195;
    }
    let x_196 : vec3<f32> = x_189;
    let x_197 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_199 : vec4<f32> = u_xlat4;
    let x_204 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_206 : vec3<f32> = (vec3<f32>(x_199.x, x_199.y, x_199.z) + -(x_204));
    let x_207 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
    let x_209 : vec4<f32> = u_xlat4;
    let x_213 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_214 : vec3<f32> = (vec3<f32>(x_209.x, x_209.y, x_209.z) * x_213);
    let x_215 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_215.x, x_214.x, x_214.y, x_214.z);
    let x_219 : f32 = u_xlat4.y;
    u_xlat41 = ((x_219 * 0.25f) + 0.75f);
    let x_226 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat42 = ((x_226 * 0.5f) + 0.75f);
    let x_230 : f32 = u_xlat41;
    let x_231 : f32 = u_xlat42;
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
  let x_252 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat41 = dot(x_250, x_252);
  let x_254 : f32 = u_xlat41;
  u_xlat41 = clamp(x_254, 0.0f, 1.0f);
  let x_262 : vec4<f32> = vs_TEXCOORD0;
  let x_264 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_262.x, x_262.y));
  u_xlat42 = x_264.y;
  let x_268 : f32 = x_33.x_OcclusionStrength;
  u_xlat4.x = (-(x_268) + 1.0f);
  let x_272 : f32 = u_xlat42;
  let x_274 : f32 = x_33.x_OcclusionStrength;
  let x_277 : f32 = u_xlat4.x;
  u_xlat42 = ((x_272 * x_274) + x_277);
  let x_281 : f32 = x_33.x_Glossiness;
  u_xlat4.x = (-(x_281) + 1.0f);
  let x_286 : vec4<f32> = u_xlat3;
  let x_288 : vec3<f32> = u_xlat2;
  u_xlat17.x = dot(vec3<f32>(x_286.x, x_286.y, x_286.z), x_288);
  let x_292 : f32 = u_xlat17.x;
  let x_294 : f32 = u_xlat17.x;
  u_xlat17.x = (x_292 + x_294);
  let x_297 : vec3<f32> = u_xlat2;
  let x_298 : vec3<f32> = u_xlat17;
  let x_302 : vec4<f32> = u_xlat3;
  u_xlat17 = ((x_297 * -(vec3<f32>(x_298.x, x_298.x, x_298.x))) + vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_306 : f32 = u_xlat41;
  let x_310 : vec4<f32> = x_33.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_306, x_306, x_306) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_315 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb41 = (0.0f < x_315);
  let x_317 : bool = u_xlatb41;
  if (x_317) {
    let x_320 : vec3<f32> = u_xlat17;
    let x_321 : vec3<f32> = u_xlat17;
    u_xlat41 = dot(x_320, x_321);
    let x_323 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_323);
    let x_326 : f32 = u_xlat41;
    let x_328 : vec3<f32> = u_xlat17;
    let x_329 : vec3<f32> = (vec3<f32>(x_326, x_326, x_326) * x_328);
    let x_330 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
    let x_334 : f32 = vs_TEXCOORD2.w;
    u_xlat7.x = x_334;
    let x_337 : f32 = vs_TEXCOORD3.w;
    u_xlat7.y = x_337;
    let x_340 : f32 = vs_TEXCOORD4.w;
    u_xlat7.z = x_340;
    let x_343 : vec3<f32> = u_xlat7;
    let x_346 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    let x_348 : vec3<f32> = (-(x_343) + vec3<f32>(x_346.x, x_346.y, x_346.z));
    let x_349 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
    let x_351 : vec4<f32> = u_xlat8;
    let x_353 : vec4<f32> = u_xlat6;
    let x_355 : vec3<f32> = (vec3<f32>(x_351.x, x_351.y, x_351.z) / vec3<f32>(x_353.x, x_353.y, x_353.z));
    let x_356 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
    let x_359 : vec3<f32> = u_xlat7;
    let x_362 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    u_xlat9 = (-(x_359) + vec3<f32>(x_362.x, x_362.y, x_362.z));
    let x_365 : vec3<f32> = u_xlat9;
    let x_366 : vec4<f32> = u_xlat6;
    u_xlat9 = (x_365 / vec3<f32>(x_366.x, x_366.y, x_366.z));
    let x_373 : vec4<f32> = u_xlat6;
    let x_376 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_373.x, x_373.y, x_373.z, x_373.x));
    u_xlatb10 = vec3<bool>(x_376.x, x_376.y, x_376.z);
    let x_380 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_380;
    let x_382 : bool = u_xlatb10.x;
    if (x_382) {
      let x_388 : f32 = u_xlat8.x;
      x_384 = x_388;
    } else {
      let x_391 : f32 = u_xlat9.x;
      x_384 = x_391;
    }
    let x_392 : f32 = x_384;
    hlslcc_movcTemp.x = x_392;
    let x_395 : bool = u_xlatb10.y;
    if (x_395) {
      let x_400 : f32 = u_xlat8.y;
      x_396 = x_400;
    } else {
      let x_403 : f32 = u_xlat9.y;
      x_396 = x_403;
    }
    let x_404 : f32 = x_396;
    hlslcc_movcTemp.y = x_404;
    let x_407 : bool = u_xlatb10.z;
    if (x_407) {
      let x_412 : f32 = u_xlat8.z;
      x_408 = x_412;
    } else {
      let x_415 : f32 = u_xlat9.z;
      x_408 = x_415;
    }
    let x_416 : f32 = x_408;
    hlslcc_movcTemp.z = x_416;
    let x_418 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_418;
    let x_420 : f32 = u_xlat8.y;
    let x_422 : f32 = u_xlat8.x;
    u_xlat41 = min(x_420, x_422);
    let x_425 : f32 = u_xlat8.z;
    let x_426 : f32 = u_xlat41;
    u_xlat41 = min(x_425, x_426);
    let x_428 : vec3<f32> = u_xlat7;
    let x_430 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    u_xlat7 = (x_428 + -(vec3<f32>(x_430.x, x_430.y, x_430.z)));
    let x_434 : vec4<f32> = u_xlat6;
    let x_436 : f32 = u_xlat41;
    let x_439 : vec3<f32> = u_xlat7;
    let x_440 : vec3<f32> = ((vec3<f32>(x_434.x, x_434.y, x_434.z) * vec3<f32>(x_436, x_436, x_436)) + x_439);
    let x_441 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  } else {
    let x_444 : vec3<f32> = u_xlat17;
    let x_445 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  }
  let x_448 : f32 = u_xlat4.x;
  u_xlat41 = ((-(x_448) * 0.699999988f) + 1.700000048f);
  let x_454 : f32 = u_xlat41;
  let x_456 : f32 = u_xlat4.x;
  u_xlat41 = (x_454 * x_456);
  let x_458 : f32 = u_xlat41;
  u_xlat41 = (x_458 * 6.0f);
  let x_469 : vec4<f32> = u_xlat6;
  let x_471 : f32 = u_xlat41;
  let x_472 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_469.x, x_469.y, x_469.z), x_471);
  u_xlat6 = x_472;
  let x_475 : f32 = u_xlat6.w;
  u_xlat44 = (x_475 + -1.0f);
  let x_480 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_481 : f32 = u_xlat44;
  u_xlat44 = ((x_480 * x_481) + 1.0f);
  let x_484 : f32 = u_xlat44;
  u_xlat44 = log2(x_484);
  let x_486 : f32 = u_xlat44;
  let x_488 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_486 * x_488);
  let x_490 : f32 = u_xlat44;
  u_xlat44 = exp2(x_490);
  let x_492 : f32 = u_xlat44;
  let x_494 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_492 * x_494);
  let x_496 : vec4<f32> = u_xlat6;
  let x_498 : f32 = u_xlat44;
  u_xlat7 = (vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(x_498, x_498, x_498));
  let x_503 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb45 = (x_503 < 0.999989986f);
  let x_506 : bool = u_xlatb45;
  if (x_506) {
    let x_511 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb45 = (0.0f < x_511);
    let x_513 : bool = u_xlatb45;
    if (x_513) {
      let x_517 : vec3<f32> = u_xlat17;
      let x_518 : vec3<f32> = u_xlat17;
      u_xlat45 = dot(x_517, x_518);
      let x_520 : f32 = u_xlat45;
      u_xlat45 = inverseSqrt(x_520);
      let x_522 : vec3<f32> = u_xlat17;
      let x_523 : f32 = u_xlat45;
      let x_525 : vec3<f32> = (x_522 * vec3<f32>(x_523, x_523, x_523));
      let x_526 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
      let x_529 : f32 = vs_TEXCOORD2.w;
      u_xlat9.x = x_529;
      let x_532 : f32 = vs_TEXCOORD3.w;
      u_xlat9.y = x_532;
      let x_535 : f32 = vs_TEXCOORD4.w;
      u_xlat9.z = x_535;
      let x_538 : vec3<f32> = u_xlat9;
      let x_542 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_538) + vec3<f32>(x_542.x, x_542.y, x_542.z));
      let x_545 : vec3<f32> = u_xlat10;
      let x_546 : vec4<f32> = u_xlat8;
      u_xlat10 = (x_545 / vec3<f32>(x_546.x, x_546.y, x_546.z));
      let x_550 : vec3<f32> = u_xlat9;
      let x_554 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_550) + vec3<f32>(x_554.x, x_554.y, x_554.z));
      let x_557 : vec3<f32> = u_xlat11;
      let x_558 : vec4<f32> = u_xlat8;
      u_xlat11 = (x_557 / vec3<f32>(x_558.x, x_558.y, x_558.z));
      let x_562 : vec4<f32> = u_xlat8;
      let x_564 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_562.x, x_562.y, x_562.z, x_562.x));
      u_xlatb12 = vec3<bool>(x_564.x, x_564.y, x_564.z);
      let x_567 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_567;
      let x_569 : bool = u_xlatb12.x;
      if (x_569) {
        let x_574 : f32 = u_xlat10.x;
        x_570 = x_574;
      } else {
        let x_577 : f32 = u_xlat11.x;
        x_570 = x_577;
      }
      let x_578 : f32 = x_570;
      hlslcc_movcTemp_1.x = x_578;
      let x_581 : bool = u_xlatb12.y;
      if (x_581) {
        let x_586 : f32 = u_xlat10.y;
        x_582 = x_586;
      } else {
        let x_589 : f32 = u_xlat11.y;
        x_582 = x_589;
      }
      let x_590 : f32 = x_582;
      hlslcc_movcTemp_1.y = x_590;
      let x_593 : bool = u_xlatb12.z;
      if (x_593) {
        let x_598 : f32 = u_xlat10.z;
        x_594 = x_598;
      } else {
        let x_601 : f32 = u_xlat11.z;
        x_594 = x_601;
      }
      let x_602 : f32 = x_594;
      hlslcc_movcTemp_1.z = x_602;
      let x_604 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_604;
      let x_606 : f32 = u_xlat10.y;
      let x_608 : f32 = u_xlat10.x;
      u_xlat45 = min(x_606, x_608);
      let x_611 : f32 = u_xlat10.z;
      let x_612 : f32 = u_xlat45;
      u_xlat45 = min(x_611, x_612);
      let x_614 : vec3<f32> = u_xlat9;
      let x_616 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      u_xlat9 = (x_614 + -(vec3<f32>(x_616.x, x_616.y, x_616.z)));
      let x_620 : vec4<f32> = u_xlat8;
      let x_622 : f32 = u_xlat45;
      let x_625 : vec3<f32> = u_xlat9;
      u_xlat17 = ((vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(x_622, x_622, x_622)) + x_625);
    }
    let x_631 : vec3<f32> = u_xlat17;
    let x_632 : f32 = u_xlat41;
    let x_633 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_631, x_632);
    u_xlat8 = x_633;
    let x_635 : f32 = u_xlat8.w;
    u_xlat41 = (x_635 + -1.0f);
    let x_639 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_640 : f32 = u_xlat41;
    u_xlat41 = ((x_639 * x_640) + 1.0f);
    let x_643 : f32 = u_xlat41;
    u_xlat41 = log2(x_643);
    let x_645 : f32 = u_xlat41;
    let x_647 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat41 = (x_645 * x_647);
    let x_649 : f32 = u_xlat41;
    u_xlat41 = exp2(x_649);
    let x_651 : f32 = u_xlat41;
    let x_653 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat41 = (x_651 * x_653);
    let x_655 : vec4<f32> = u_xlat8;
    let x_657 : f32 = u_xlat41;
    u_xlat17 = (vec3<f32>(x_655.x, x_655.y, x_655.z) * vec3<f32>(x_657, x_657, x_657));
    let x_660 : f32 = u_xlat44;
    let x_662 : vec4<f32> = u_xlat6;
    let x_665 : vec3<f32> = u_xlat17;
    let x_667 : vec3<f32> = ((vec3<f32>(x_660, x_660, x_660) * vec3<f32>(x_662.x, x_662.y, x_662.z)) + -(x_665));
    let x_668 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
    let x_671 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_673 : vec4<f32> = u_xlat6;
    let x_676 : vec3<f32> = u_xlat17;
    u_xlat7 = ((vec3<f32>(x_671.w, x_671.w, x_671.w) * vec3<f32>(x_673.x, x_673.y, x_673.z)) + x_676);
  }
  let x_678 : f32 = u_xlat42;
  let x_680 : vec3<f32> = u_xlat7;
  u_xlat17 = (vec3<f32>(x_678, x_678, x_678) * x_680);
  let x_682 : vec4<f32> = vs_TEXCOORD1;
  let x_685 : f32 = u_xlat40;
  let x_689 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_691 : vec3<f32> = ((-(vec3<f32>(x_682.x, x_682.y, x_682.z)) * vec3<f32>(x_685, x_685, x_685)) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat6;
  let x_696 : vec4<f32> = u_xlat6;
  u_xlat40 = dot(vec3<f32>(x_694.x, x_694.y, x_694.z), vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : f32 = u_xlat40;
  u_xlat40 = max(x_699, 0.001f);
  let x_702 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_702);
  let x_704 : f32 = u_xlat40;
  let x_706 : vec4<f32> = u_xlat6;
  let x_708 : vec3<f32> = (vec3<f32>(x_704, x_704, x_704) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec3<f32> = u_xlat2;
  let x_712 : vec4<f32> = u_xlat3;
  u_xlat40 = dot(x_711, -(vec3<f32>(x_712.x, x_712.y, x_712.z)));
  let x_716 : vec3<f32> = u_xlat2;
  let x_718 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat41 = dot(x_716, vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : f32 = u_xlat41;
  u_xlat41 = clamp(x_721, 0.0f, 1.0f);
  let x_723 : vec3<f32> = u_xlat2;
  let x_724 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(x_723, vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_729 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_729, 0.0f, 1.0f);
  let x_734 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_736 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_734.x, x_734.y, x_734.z), vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_741 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_741, 0.0f, 1.0f);
  let x_746 : f32 = u_xlat15.x;
  let x_748 : f32 = u_xlat15.x;
  u_xlat28 = (x_746 * x_748);
  let x_750 : f32 = u_xlat28;
  let x_752 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec2<f32>(x_750, x_750), vec2<f32>(x_752.x, x_752.x));
  let x_755 : f32 = u_xlat28;
  u_xlat28 = (x_755 + -0.5f);
  let x_758 : f32 = u_xlat41;
  u_xlat3.x = (-(x_758) + 1.0f);
  let x_764 : f32 = u_xlat3.x;
  let x_766 : f32 = u_xlat3.x;
  u_xlat16 = (x_764 * x_766);
  let x_768 : f32 = u_xlat16;
  let x_769 : f32 = u_xlat16;
  u_xlat16 = (x_768 * x_769);
  let x_772 : f32 = u_xlat3.x;
  let x_773 : f32 = u_xlat16;
  u_xlat3.x = (x_772 * x_773);
  let x_776 : f32 = u_xlat28;
  let x_778 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_776 * x_778) + 1.0f);
  let x_782 : f32 = u_xlat40;
  u_xlat16 = (-(abs(x_782)) + 1.0f);
  let x_787 : f32 = u_xlat16;
  let x_788 : f32 = u_xlat16;
  u_xlat29 = (x_787 * x_788);
  let x_790 : f32 = u_xlat29;
  let x_791 : f32 = u_xlat29;
  u_xlat29 = (x_790 * x_791);
  let x_793 : f32 = u_xlat16;
  let x_794 : f32 = u_xlat29;
  u_xlat16 = (x_793 * x_794);
  let x_796 : f32 = u_xlat28;
  let x_797 : f32 = u_xlat16;
  u_xlat28 = ((x_796 * x_797) + 1.0f);
  let x_800 : f32 = u_xlat28;
  let x_802 : f32 = u_xlat3.x;
  u_xlat28 = (x_800 * x_802);
  let x_804 : f32 = u_xlat41;
  let x_805 : f32 = u_xlat28;
  u_xlat28 = (x_804 * x_805);
  let x_808 : f32 = u_xlat4.x;
  let x_810 : f32 = u_xlat4.x;
  u_xlat3.x = (x_808 * x_810);
  let x_814 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_814, 0.002f);
  let x_819 : f32 = u_xlat3.x;
  u_xlat29 = (-(x_819) + 1.0f);
  let x_822 : f32 = u_xlat40;
  let x_824 : f32 = u_xlat29;
  let x_827 : f32 = u_xlat3.x;
  u_xlat42 = ((abs(x_822) * x_824) + x_827);
  let x_829 : f32 = u_xlat41;
  let x_830 : f32 = u_xlat29;
  let x_833 : f32 = u_xlat3.x;
  u_xlat29 = ((x_829 * x_830) + x_833);
  let x_835 : f32 = u_xlat40;
  let x_837 : f32 = u_xlat29;
  u_xlat40 = (abs(x_835) * x_837);
  let x_839 : f32 = u_xlat41;
  let x_840 : f32 = u_xlat42;
  let x_842 : f32 = u_xlat40;
  u_xlat40 = ((x_839 * x_840) + x_842);
  let x_844 : f32 = u_xlat40;
  u_xlat40 = (x_844 + 0.00001f);
  let x_847 : f32 = u_xlat40;
  u_xlat40 = (0.5f / x_847);
  let x_850 : f32 = u_xlat3.x;
  let x_852 : f32 = u_xlat3.x;
  u_xlat29 = (x_850 * x_852);
  let x_855 : f32 = u_xlat2.x;
  let x_856 : f32 = u_xlat29;
  let x_859 : f32 = u_xlat2.x;
  u_xlat42 = ((x_855 * x_856) + -(x_859));
  let x_862 : f32 = u_xlat42;
  let x_864 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_862 * x_864) + 1.0f);
  let x_868 : f32 = u_xlat29;
  u_xlat29 = (x_868 * 0.318309873f);
  let x_872 : f32 = u_xlat2.x;
  let x_874 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_872 * x_874) + 0.0000001f);
  let x_879 : f32 = u_xlat29;
  let x_881 : f32 = u_xlat2.x;
  u_xlat2.x = (x_879 / x_881);
  let x_884 : f32 = u_xlat40;
  let x_886 : f32 = u_xlat2.x;
  u_xlat40 = (x_884 * x_886);
  let x_888 : f32 = u_xlat41;
  let x_889 : f32 = u_xlat40;
  u_xlat40 = (x_888 * x_889);
  let x_891 : f32 = u_xlat40;
  u_xlat40 = (x_891 * 3.141592741f);
  let x_894 : f32 = u_xlat40;
  u_xlat40 = max(x_894, 0.0f);
  let x_897 : f32 = u_xlat3.x;
  let x_899 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_897 * x_899) + 1.0f);
  let x_904 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_904);
  let x_907 : vec3<f32> = u_xlat0;
  let x_908 : vec3<f32> = u_xlat0;
  u_xlat41 = dot(x_907, x_908);
  let x_910 : f32 = u_xlat41;
  u_xlatb41 = !((x_910 == 0.0f));
  let x_912 : bool = u_xlatb41;
  u_xlat41 = select(0.0f, 1.0f, x_912);
  let x_914 : f32 = u_xlat40;
  let x_915 : f32 = u_xlat41;
  u_xlat40 = (x_914 * x_915);
  let x_917 : f32 = u_xlat39;
  let x_920 : f32 = x_33.x_Glossiness;
  u_xlat39 = (-(x_917) + x_920);
  let x_922 : f32 = u_xlat39;
  u_xlat39 = (x_922 + 1.0f);
  let x_924 : f32 = u_xlat39;
  u_xlat39 = clamp(x_924, 0.0f, 1.0f);
  let x_926 : f32 = u_xlat28;
  let x_928 : vec3<f32> = u_xlat5;
  let x_929 : vec3<f32> = (vec3<f32>(x_926, x_926, x_926) * x_928);
  let x_930 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_929.x, x_930.y, x_929.y, x_929.z);
  let x_932 : vec3<f32> = u_xlat5;
  let x_933 : f32 = u_xlat40;
  u_xlat5 = (x_932 * vec3<f32>(x_933, x_933, x_933));
  let x_937 : f32 = u_xlat15.x;
  u_xlat40 = (-(x_937) + 1.0f);
  let x_940 : f32 = u_xlat40;
  let x_941 : f32 = u_xlat40;
  u_xlat15.x = (x_940 * x_941);
  let x_945 : f32 = u_xlat15.x;
  let x_947 : f32 = u_xlat15.x;
  u_xlat15.x = (x_945 * x_947);
  let x_950 : f32 = u_xlat40;
  let x_952 : f32 = u_xlat15.x;
  u_xlat40 = (x_950 * x_952);
  let x_954 : vec3<f32> = u_xlat0;
  u_xlat15 = (-(x_954) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_958 : vec3<f32> = u_xlat15;
  let x_959 : f32 = u_xlat40;
  let x_962 : vec3<f32> = u_xlat0;
  u_xlat15 = ((x_958 * vec3<f32>(x_959, x_959, x_959)) + x_962);
  let x_964 : vec3<f32> = u_xlat15;
  let x_965 : vec3<f32> = u_xlat5;
  u_xlat15 = (x_964 * x_965);
  let x_967 : vec3<f32> = u_xlat1;
  let x_968 : vec4<f32> = u_xlat3;
  let x_971 : vec3<f32> = u_xlat15;
  u_xlat1 = ((x_967 * vec3<f32>(x_968.x, x_968.z, x_968.w)) + x_971);
  let x_973 : vec3<f32> = u_xlat17;
  let x_974 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_973 * vec3<f32>(x_974.x, x_974.x, x_974.x));
  let x_977 : vec3<f32> = u_xlat0;
  let x_979 : f32 = u_xlat39;
  let x_981 : vec3<f32> = (-(x_977) + vec3<f32>(x_979, x_979, x_979));
  let x_982 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_981.x, x_982.y, x_981.y, x_981.z);
  let x_984 : f32 = u_xlat16;
  let x_986 : vec4<f32> = u_xlat3;
  let x_989 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_984, x_984, x_984) * vec3<f32>(x_986.x, x_986.z, x_986.w)) + x_989);
  let x_991 : vec3<f32> = u_xlat2;
  let x_992 : vec3<f32> = u_xlat0;
  let x_994 : vec3<f32> = u_xlat1;
  u_xlat0 = ((x_991 * x_992) + x_994);
  let x_1001 : vec4<f32> = vs_TEXCOORD0;
  let x_1003 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_1001.x, x_1001.y));
  u_xlat1 = vec3<f32>(x_1003.x, x_1003.y, x_1003.z);
  let x_1007 : vec3<f32> = u_xlat1;
  let x_1010 : vec4<f32> = x_33.x_EmissionColor;
  let x_1013 : vec3<f32> = u_xlat0;
  let x_1014 : vec3<f32> = ((x_1007 * vec3<f32>(x_1010.x, x_1010.y, x_1010.z)) + x_1013);
  let x_1015 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

