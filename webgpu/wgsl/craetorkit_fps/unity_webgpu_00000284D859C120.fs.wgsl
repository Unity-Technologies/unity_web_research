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
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb41 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat18 : vec3<f32>;
  var x_251 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb10 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_444 : f32;
  var x_456 : f32;
  var x_468 : f32;
  var u_xlat44 : f32;
  var u_xlatb45 : bool;
  var u_xlat45 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_629 : f32;
  var x_641 : f32;
  var x_653 : f32;
  var u_xlat28 : f32;
  var u_xlat16 : f32;
  var u_xlat29 : f32;
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
  let x_85 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_85.x, x_85.y));
  u_xlat2 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_92 : f32 = u_xlat2.z;
  let x_95 : f32 = u_xlat2.x;
  u_xlat2.x = (x_92 * x_95);
  let x_98 : vec3<f32> = u_xlat2;
  let x_105 : vec2<f32> = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_105.x, x_105.y, x_106.z);
  let x_108 : vec3<f32> = u_xlat2;
  let x_112 : f32 = x_33.x_BumpScale;
  let x_114 : vec2<f32> = (vec2<f32>(x_108.x, x_108.y) * vec2<f32>(x_112, x_112));
  let x_115 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_114.x, x_114.y, x_115.z);
  let x_118 : vec3<f32> = u_xlat2;
  let x_120 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(vec2<f32>(x_118.x, x_118.y), vec2<f32>(x_120.x, x_120.y));
  let x_123 : f32 = u_xlat40;
  u_xlat40 = min(x_123, 1.0f);
  let x_126 : f32 = u_xlat40;
  u_xlat40 = (-(x_126) + 1.0f);
  let x_129 : f32 = u_xlat40;
  u_xlat40 = sqrt(x_129);
  let x_132 : vec3<f32> = u_xlat2;
  let x_135 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_132.y, x_132.y, x_132.y) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_139 : vec4<f32> = vs_TEXCOORD2;
  let x_141 : vec3<f32> = u_xlat2;
  let x_144 : vec3<f32> = u_xlat15;
  u_xlat2 = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + x_144);
  let x_147 : vec4<f32> = vs_TEXCOORD4;
  let x_149 : f32 = u_xlat40;
  let x_152 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_147.x, x_147.y, x_147.z) * vec3<f32>(x_149, x_149, x_149)) + x_152);
  let x_154 : vec3<f32> = u_xlat2;
  let x_155 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(x_154, x_155);
  let x_157 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_157);
  let x_159 : f32 = u_xlat40;
  let x_161 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_159, x_159, x_159) * x_161);
  let x_164 : vec4<f32> = vs_TEXCOORD1;
  let x_166 : vec4<f32> = vs_TEXCOORD1;
  u_xlat40 = dot(vec3<f32>(x_164.x, x_164.y, x_164.z), vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_169);
  let x_173 : f32 = u_xlat40;
  let x_175 : vec4<f32> = vs_TEXCOORD1;
  let x_177 : vec3<f32> = (vec3<f32>(x_173, x_173, x_173) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_185 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb41 = (x_185 == 1.0f);
  let x_187 : bool = u_xlatb41;
  if (x_187) {
    let x_192 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb41 = (x_192 == 1.0f);
    let x_195 : vec4<f32> = vs_TEXCOORD3;
    let x_200 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_202 : vec3<f32> = (vec3<f32>(x_195.w, x_195.w, x_195.w) * vec3<f32>(x_200.x, x_200.y, x_200.z));
    let x_203 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
    let x_207 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_209 : vec4<f32> = vs_TEXCOORD2;
    let x_212 : vec4<f32> = u_xlat4;
    let x_214 : vec3<f32> = ((vec3<f32>(x_207.x, x_207.y, x_207.z) * vec3<f32>(x_209.w, x_209.w, x_209.w)) + vec3<f32>(x_212.x, x_212.y, x_212.z));
    let x_215 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
    let x_219 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_221 : vec4<f32> = vs_TEXCOORD4;
    let x_224 : vec4<f32> = u_xlat4;
    let x_226 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_221.w, x_221.w, x_221.w)) + vec3<f32>(x_224.x, x_224.y, x_224.z));
    let x_227 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
    let x_229 : vec4<f32> = u_xlat4;
    let x_233 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_235 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) + vec3<f32>(x_233.x, x_233.y, x_233.z));
    let x_236 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
    let x_242 : f32 = vs_TEXCOORD2.w;
    u_xlat18.x = x_242;
    let x_245 : f32 = vs_TEXCOORD3.w;
    u_xlat18.y = x_245;
    let x_248 : f32 = vs_TEXCOORD4.w;
    u_xlat18.z = x_248;
    let x_250 : bool = u_xlatb41;
    if (x_250) {
      let x_254 : vec4<f32> = u_xlat4;
      x_251 = vec3<f32>(x_254.x, x_254.y, x_254.z);
    } else {
      let x_257 : vec3<f32> = u_xlat18;
      x_251 = x_257;
    }
    let x_258 : vec3<f32> = x_251;
    let x_259 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_261 : vec4<f32> = u_xlat4;
    let x_266 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_268 : vec3<f32> = (vec3<f32>(x_261.x, x_261.y, x_261.z) + -(x_266));
    let x_269 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat4;
    let x_275 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_276 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) * x_275);
    let x_277 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_277.x, x_276.x, x_276.y, x_276.z);
    let x_281 : f32 = u_xlat4.y;
    u_xlat41 = ((x_281 * 0.25f) + 0.75f);
    let x_288 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat42 = ((x_288 * 0.5f) + 0.75f);
    let x_292 : f32 = u_xlat41;
    let x_293 : f32 = u_xlat42;
    u_xlat4.x = max(x_292, x_293);
    let x_304 : vec4<f32> = u_xlat4;
    let x_306 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_304.x, x_304.z, x_304.w));
    u_xlat4 = x_306;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_312 : vec4<f32> = u_xlat4;
  let x_314 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat41 = dot(x_312, x_314);
  let x_316 : f32 = u_xlat41;
  u_xlat41 = clamp(x_316, 0.0f, 1.0f);
  let x_324 : vec4<f32> = vs_TEXCOORD0;
  let x_326 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_324.x, x_324.y));
  u_xlat42 = x_326.y;
  let x_330 : f32 = x_33.x_OcclusionStrength;
  u_xlat4.x = (-(x_330) + 1.0f);
  let x_334 : f32 = u_xlat42;
  let x_336 : f32 = x_33.x_OcclusionStrength;
  let x_339 : f32 = u_xlat4.x;
  u_xlat42 = ((x_334 * x_336) + x_339);
  let x_343 : f32 = x_33.x_Glossiness;
  u_xlat4.x = (-(x_343) + 1.0f);
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : vec3<f32> = u_xlat2;
  u_xlat17.x = dot(vec3<f32>(x_348.x, x_348.y, x_348.z), x_350);
  let x_354 : f32 = u_xlat17.x;
  let x_356 : f32 = u_xlat17.x;
  u_xlat17.x = (x_354 + x_356);
  let x_359 : vec3<f32> = u_xlat2;
  let x_360 : vec3<f32> = u_xlat17;
  let x_364 : vec4<f32> = u_xlat3;
  u_xlat17 = ((x_359 * -(vec3<f32>(x_360.x, x_360.x, x_360.x))) + vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_368 : f32 = u_xlat41;
  let x_372 : vec4<f32> = x_33.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_368, x_368, x_368) * vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_377 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb41 = (0.0f < x_377);
  let x_379 : bool = u_xlatb41;
  if (x_379) {
    let x_382 : vec3<f32> = u_xlat17;
    let x_383 : vec3<f32> = u_xlat17;
    u_xlat41 = dot(x_382, x_383);
    let x_385 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_385);
    let x_388 : f32 = u_xlat41;
    let x_390 : vec3<f32> = u_xlat17;
    let x_391 : vec3<f32> = (vec3<f32>(x_388, x_388, x_388) * x_390);
    let x_392 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
    let x_396 : f32 = vs_TEXCOORD2.w;
    u_xlat7.x = x_396;
    let x_399 : f32 = vs_TEXCOORD3.w;
    u_xlat7.y = x_399;
    let x_402 : f32 = vs_TEXCOORD4.w;
    u_xlat7.z = x_402;
    let x_405 : vec3<f32> = u_xlat7;
    let x_408 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    let x_410 : vec3<f32> = (-(x_405) + vec3<f32>(x_408.x, x_408.y, x_408.z));
    let x_411 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
    let x_413 : vec4<f32> = u_xlat8;
    let x_415 : vec4<f32> = u_xlat6;
    let x_417 : vec3<f32> = (vec3<f32>(x_413.x, x_413.y, x_413.z) / vec3<f32>(x_415.x, x_415.y, x_415.z));
    let x_418 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
    let x_421 : vec3<f32> = u_xlat7;
    let x_424 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    u_xlat9 = (-(x_421) + vec3<f32>(x_424.x, x_424.y, x_424.z));
    let x_427 : vec3<f32> = u_xlat9;
    let x_428 : vec4<f32> = u_xlat6;
    u_xlat9 = (x_427 / vec3<f32>(x_428.x, x_428.y, x_428.z));
    let x_435 : vec4<f32> = u_xlat6;
    let x_438 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_435.x, x_435.y, x_435.z, x_435.x));
    u_xlatb10 = vec3<bool>(x_438.x, x_438.y, x_438.z);
    let x_441 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_441;
    let x_443 : bool = u_xlatb10.x;
    if (x_443) {
      let x_448 : f32 = u_xlat8.x;
      x_444 = x_448;
    } else {
      let x_451 : f32 = u_xlat9.x;
      x_444 = x_451;
    }
    let x_452 : f32 = x_444;
    hlslcc_movcTemp.x = x_452;
    let x_455 : bool = u_xlatb10.y;
    if (x_455) {
      let x_460 : f32 = u_xlat8.y;
      x_456 = x_460;
    } else {
      let x_463 : f32 = u_xlat9.y;
      x_456 = x_463;
    }
    let x_464 : f32 = x_456;
    hlslcc_movcTemp.y = x_464;
    let x_467 : bool = u_xlatb10.z;
    if (x_467) {
      let x_472 : f32 = u_xlat8.z;
      x_468 = x_472;
    } else {
      let x_475 : f32 = u_xlat9.z;
      x_468 = x_475;
    }
    let x_476 : f32 = x_468;
    hlslcc_movcTemp.z = x_476;
    let x_478 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_478;
    let x_480 : f32 = u_xlat8.y;
    let x_482 : f32 = u_xlat8.x;
    u_xlat41 = min(x_480, x_482);
    let x_485 : f32 = u_xlat8.z;
    let x_486 : f32 = u_xlat41;
    u_xlat41 = min(x_485, x_486);
    let x_488 : vec3<f32> = u_xlat7;
    let x_490 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    u_xlat7 = (x_488 + -(vec3<f32>(x_490.x, x_490.y, x_490.z)));
    let x_494 : vec4<f32> = u_xlat6;
    let x_496 : f32 = u_xlat41;
    let x_499 : vec3<f32> = u_xlat7;
    let x_500 : vec3<f32> = ((vec3<f32>(x_494.x, x_494.y, x_494.z) * vec3<f32>(x_496, x_496, x_496)) + x_499);
    let x_501 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  } else {
    let x_504 : vec3<f32> = u_xlat17;
    let x_505 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  }
  let x_508 : f32 = u_xlat4.x;
  u_xlat41 = ((-(x_508) * 0.699999988f) + 1.700000048f);
  let x_514 : f32 = u_xlat41;
  let x_516 : f32 = u_xlat4.x;
  u_xlat41 = (x_514 * x_516);
  let x_518 : f32 = u_xlat41;
  u_xlat41 = (x_518 * 6.0f);
  let x_529 : vec4<f32> = u_xlat6;
  let x_531 : f32 = u_xlat41;
  let x_532 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_529.x, x_529.y, x_529.z), x_531);
  u_xlat6 = x_532;
  let x_535 : f32 = u_xlat6.w;
  u_xlat44 = (x_535 + -1.0f);
  let x_539 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_540 : f32 = u_xlat44;
  u_xlat44 = ((x_539 * x_540) + 1.0f);
  let x_543 : f32 = u_xlat44;
  u_xlat44 = log2(x_543);
  let x_545 : f32 = u_xlat44;
  let x_547 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_545 * x_547);
  let x_549 : f32 = u_xlat44;
  u_xlat44 = exp2(x_549);
  let x_551 : f32 = u_xlat44;
  let x_553 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_551 * x_553);
  let x_555 : vec4<f32> = u_xlat6;
  let x_557 : f32 = u_xlat44;
  u_xlat7 = (vec3<f32>(x_555.x, x_555.y, x_555.z) * vec3<f32>(x_557, x_557, x_557));
  let x_562 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb45 = (x_562 < 0.999989986f);
  let x_565 : bool = u_xlatb45;
  if (x_565) {
    let x_570 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb45 = (0.0f < x_570);
    let x_572 : bool = u_xlatb45;
    if (x_572) {
      let x_576 : vec3<f32> = u_xlat17;
      let x_577 : vec3<f32> = u_xlat17;
      u_xlat45 = dot(x_576, x_577);
      let x_579 : f32 = u_xlat45;
      u_xlat45 = inverseSqrt(x_579);
      let x_581 : vec3<f32> = u_xlat17;
      let x_582 : f32 = u_xlat45;
      let x_584 : vec3<f32> = (x_581 * vec3<f32>(x_582, x_582, x_582));
      let x_585 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
      let x_588 : f32 = vs_TEXCOORD2.w;
      u_xlat9.x = x_588;
      let x_591 : f32 = vs_TEXCOORD3.w;
      u_xlat9.y = x_591;
      let x_594 : f32 = vs_TEXCOORD4.w;
      u_xlat9.z = x_594;
      let x_597 : vec3<f32> = u_xlat9;
      let x_601 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_597) + vec3<f32>(x_601.x, x_601.y, x_601.z));
      let x_604 : vec3<f32> = u_xlat10;
      let x_605 : vec4<f32> = u_xlat8;
      u_xlat10 = (x_604 / vec3<f32>(x_605.x, x_605.y, x_605.z));
      let x_609 : vec3<f32> = u_xlat9;
      let x_613 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_609) + vec3<f32>(x_613.x, x_613.y, x_613.z));
      let x_616 : vec3<f32> = u_xlat11;
      let x_617 : vec4<f32> = u_xlat8;
      u_xlat11 = (x_616 / vec3<f32>(x_617.x, x_617.y, x_617.z));
      let x_621 : vec4<f32> = u_xlat8;
      let x_623 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_621.x, x_621.y, x_621.z, x_621.x));
      u_xlatb12 = vec3<bool>(x_623.x, x_623.y, x_623.z);
      let x_626 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_626;
      let x_628 : bool = u_xlatb12.x;
      if (x_628) {
        let x_633 : f32 = u_xlat10.x;
        x_629 = x_633;
      } else {
        let x_636 : f32 = u_xlat11.x;
        x_629 = x_636;
      }
      let x_637 : f32 = x_629;
      hlslcc_movcTemp_1.x = x_637;
      let x_640 : bool = u_xlatb12.y;
      if (x_640) {
        let x_645 : f32 = u_xlat10.y;
        x_641 = x_645;
      } else {
        let x_648 : f32 = u_xlat11.y;
        x_641 = x_648;
      }
      let x_649 : f32 = x_641;
      hlslcc_movcTemp_1.y = x_649;
      let x_652 : bool = u_xlatb12.z;
      if (x_652) {
        let x_657 : f32 = u_xlat10.z;
        x_653 = x_657;
      } else {
        let x_660 : f32 = u_xlat11.z;
        x_653 = x_660;
      }
      let x_661 : f32 = x_653;
      hlslcc_movcTemp_1.z = x_661;
      let x_663 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_663;
      let x_665 : f32 = u_xlat10.y;
      let x_667 : f32 = u_xlat10.x;
      u_xlat45 = min(x_665, x_667);
      let x_670 : f32 = u_xlat10.z;
      let x_671 : f32 = u_xlat45;
      u_xlat45 = min(x_670, x_671);
      let x_673 : vec3<f32> = u_xlat9;
      let x_675 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      u_xlat9 = (x_673 + -(vec3<f32>(x_675.x, x_675.y, x_675.z)));
      let x_679 : vec4<f32> = u_xlat8;
      let x_681 : f32 = u_xlat45;
      let x_684 : vec3<f32> = u_xlat9;
      u_xlat17 = ((vec3<f32>(x_679.x, x_679.y, x_679.z) * vec3<f32>(x_681, x_681, x_681)) + x_684);
    }
    let x_690 : vec3<f32> = u_xlat17;
    let x_691 : f32 = u_xlat41;
    let x_692 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_690, x_691);
    u_xlat8 = x_692;
    let x_694 : f32 = u_xlat8.w;
    u_xlat41 = (x_694 + -1.0f);
    let x_698 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_699 : f32 = u_xlat41;
    u_xlat41 = ((x_698 * x_699) + 1.0f);
    let x_702 : f32 = u_xlat41;
    u_xlat41 = log2(x_702);
    let x_704 : f32 = u_xlat41;
    let x_706 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat41 = (x_704 * x_706);
    let x_708 : f32 = u_xlat41;
    u_xlat41 = exp2(x_708);
    let x_710 : f32 = u_xlat41;
    let x_712 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat41 = (x_710 * x_712);
    let x_714 : vec4<f32> = u_xlat8;
    let x_716 : f32 = u_xlat41;
    u_xlat17 = (vec3<f32>(x_714.x, x_714.y, x_714.z) * vec3<f32>(x_716, x_716, x_716));
    let x_719 : f32 = u_xlat44;
    let x_721 : vec4<f32> = u_xlat6;
    let x_724 : vec3<f32> = u_xlat17;
    let x_726 : vec3<f32> = ((vec3<f32>(x_719, x_719, x_719) * vec3<f32>(x_721.x, x_721.y, x_721.z)) + -(x_724));
    let x_727 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
    let x_730 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_732 : vec4<f32> = u_xlat6;
    let x_735 : vec3<f32> = u_xlat17;
    u_xlat7 = ((vec3<f32>(x_730.w, x_730.w, x_730.w) * vec3<f32>(x_732.x, x_732.y, x_732.z)) + x_735);
  }
  let x_737 : f32 = u_xlat42;
  let x_739 : vec3<f32> = u_xlat7;
  u_xlat17 = (vec3<f32>(x_737, x_737, x_737) * x_739);
  let x_741 : vec4<f32> = vs_TEXCOORD1;
  let x_744 : f32 = u_xlat40;
  let x_748 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_750 : vec3<f32> = ((-(vec3<f32>(x_741.x, x_741.y, x_741.z)) * vec3<f32>(x_744, x_744, x_744)) + vec3<f32>(x_748.x, x_748.y, x_748.z));
  let x_751 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  let x_753 : vec4<f32> = u_xlat6;
  let x_755 : vec4<f32> = u_xlat6;
  u_xlat40 = dot(vec3<f32>(x_753.x, x_753.y, x_753.z), vec3<f32>(x_755.x, x_755.y, x_755.z));
  let x_758 : f32 = u_xlat40;
  u_xlat40 = max(x_758, 0.001f);
  let x_761 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_761);
  let x_763 : f32 = u_xlat40;
  let x_765 : vec4<f32> = u_xlat6;
  let x_767 : vec3<f32> = (vec3<f32>(x_763, x_763, x_763) * vec3<f32>(x_765.x, x_765.y, x_765.z));
  let x_768 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec3<f32> = u_xlat2;
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat40 = dot(x_770, -(vec3<f32>(x_771.x, x_771.y, x_771.z)));
  let x_775 : vec3<f32> = u_xlat2;
  let x_777 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat41 = dot(x_775, vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : f32 = u_xlat41;
  u_xlat41 = clamp(x_780, 0.0f, 1.0f);
  let x_782 : vec3<f32> = u_xlat2;
  let x_783 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(x_782, vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_788 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_788, 0.0f, 1.0f);
  let x_792 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_794 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_792.x, x_792.y, x_792.z), vec3<f32>(x_794.x, x_794.y, x_794.z));
  let x_799 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_799, 0.0f, 1.0f);
  let x_804 : f32 = u_xlat15.x;
  let x_806 : f32 = u_xlat15.x;
  u_xlat28 = (x_804 * x_806);
  let x_808 : f32 = u_xlat28;
  let x_810 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec2<f32>(x_808, x_808), vec2<f32>(x_810.x, x_810.x));
  let x_813 : f32 = u_xlat28;
  u_xlat28 = (x_813 + -0.5f);
  let x_816 : f32 = u_xlat41;
  u_xlat3.x = (-(x_816) + 1.0f);
  let x_822 : f32 = u_xlat3.x;
  let x_824 : f32 = u_xlat3.x;
  u_xlat16 = (x_822 * x_824);
  let x_826 : f32 = u_xlat16;
  let x_827 : f32 = u_xlat16;
  u_xlat16 = (x_826 * x_827);
  let x_830 : f32 = u_xlat3.x;
  let x_831 : f32 = u_xlat16;
  u_xlat3.x = (x_830 * x_831);
  let x_834 : f32 = u_xlat28;
  let x_836 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_834 * x_836) + 1.0f);
  let x_840 : f32 = u_xlat40;
  u_xlat16 = (-(abs(x_840)) + 1.0f);
  let x_845 : f32 = u_xlat16;
  let x_846 : f32 = u_xlat16;
  u_xlat29 = (x_845 * x_846);
  let x_848 : f32 = u_xlat29;
  let x_849 : f32 = u_xlat29;
  u_xlat29 = (x_848 * x_849);
  let x_851 : f32 = u_xlat16;
  let x_852 : f32 = u_xlat29;
  u_xlat16 = (x_851 * x_852);
  let x_854 : f32 = u_xlat28;
  let x_855 : f32 = u_xlat16;
  u_xlat28 = ((x_854 * x_855) + 1.0f);
  let x_858 : f32 = u_xlat28;
  let x_860 : f32 = u_xlat3.x;
  u_xlat28 = (x_858 * x_860);
  let x_862 : f32 = u_xlat41;
  let x_863 : f32 = u_xlat28;
  u_xlat28 = (x_862 * x_863);
  let x_866 : f32 = u_xlat4.x;
  let x_868 : f32 = u_xlat4.x;
  u_xlat3.x = (x_866 * x_868);
  let x_872 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_872, 0.002f);
  let x_877 : f32 = u_xlat3.x;
  u_xlat29 = (-(x_877) + 1.0f);
  let x_880 : f32 = u_xlat40;
  let x_882 : f32 = u_xlat29;
  let x_885 : f32 = u_xlat3.x;
  u_xlat42 = ((abs(x_880) * x_882) + x_885);
  let x_887 : f32 = u_xlat41;
  let x_888 : f32 = u_xlat29;
  let x_891 : f32 = u_xlat3.x;
  u_xlat29 = ((x_887 * x_888) + x_891);
  let x_893 : f32 = u_xlat40;
  let x_895 : f32 = u_xlat29;
  u_xlat40 = (abs(x_893) * x_895);
  let x_897 : f32 = u_xlat41;
  let x_898 : f32 = u_xlat42;
  let x_900 : f32 = u_xlat40;
  u_xlat40 = ((x_897 * x_898) + x_900);
  let x_902 : f32 = u_xlat40;
  u_xlat40 = (x_902 + 0.00001f);
  let x_905 : f32 = u_xlat40;
  u_xlat40 = (0.5f / x_905);
  let x_908 : f32 = u_xlat3.x;
  let x_910 : f32 = u_xlat3.x;
  u_xlat29 = (x_908 * x_910);
  let x_913 : f32 = u_xlat2.x;
  let x_914 : f32 = u_xlat29;
  let x_917 : f32 = u_xlat2.x;
  u_xlat42 = ((x_913 * x_914) + -(x_917));
  let x_920 : f32 = u_xlat42;
  let x_922 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_920 * x_922) + 1.0f);
  let x_926 : f32 = u_xlat29;
  u_xlat29 = (x_926 * 0.318309873f);
  let x_930 : f32 = u_xlat2.x;
  let x_932 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_930 * x_932) + 0.0000001f);
  let x_937 : f32 = u_xlat29;
  let x_939 : f32 = u_xlat2.x;
  u_xlat2.x = (x_937 / x_939);
  let x_942 : f32 = u_xlat40;
  let x_944 : f32 = u_xlat2.x;
  u_xlat40 = (x_942 * x_944);
  let x_946 : f32 = u_xlat41;
  let x_947 : f32 = u_xlat40;
  u_xlat40 = (x_946 * x_947);
  let x_949 : f32 = u_xlat40;
  u_xlat40 = (x_949 * 3.141592741f);
  let x_952 : f32 = u_xlat40;
  u_xlat40 = max(x_952, 0.0f);
  let x_955 : f32 = u_xlat3.x;
  let x_957 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_955 * x_957) + 1.0f);
  let x_962 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_962);
  let x_965 : vec3<f32> = u_xlat0;
  let x_966 : vec3<f32> = u_xlat0;
  u_xlat41 = dot(x_965, x_966);
  let x_968 : f32 = u_xlat41;
  u_xlatb41 = !((x_968 == 0.0f));
  let x_970 : bool = u_xlatb41;
  u_xlat41 = select(0.0f, 1.0f, x_970);
  let x_972 : f32 = u_xlat40;
  let x_973 : f32 = u_xlat41;
  u_xlat40 = (x_972 * x_973);
  let x_975 : f32 = u_xlat39;
  let x_978 : f32 = x_33.x_Glossiness;
  u_xlat39 = (-(x_975) + x_978);
  let x_980 : f32 = u_xlat39;
  u_xlat39 = (x_980 + 1.0f);
  let x_982 : f32 = u_xlat39;
  u_xlat39 = clamp(x_982, 0.0f, 1.0f);
  let x_984 : f32 = u_xlat28;
  let x_986 : vec3<f32> = u_xlat5;
  let x_987 : vec3<f32> = (vec3<f32>(x_984, x_984, x_984) * x_986);
  let x_988 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_987.x, x_988.y, x_987.y, x_987.z);
  let x_990 : vec3<f32> = u_xlat5;
  let x_991 : f32 = u_xlat40;
  u_xlat5 = (x_990 * vec3<f32>(x_991, x_991, x_991));
  let x_995 : f32 = u_xlat15.x;
  u_xlat40 = (-(x_995) + 1.0f);
  let x_998 : f32 = u_xlat40;
  let x_999 : f32 = u_xlat40;
  u_xlat15.x = (x_998 * x_999);
  let x_1003 : f32 = u_xlat15.x;
  let x_1005 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1003 * x_1005);
  let x_1008 : f32 = u_xlat40;
  let x_1010 : f32 = u_xlat15.x;
  u_xlat40 = (x_1008 * x_1010);
  let x_1012 : vec3<f32> = u_xlat0;
  u_xlat15 = (-(x_1012) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1016 : vec3<f32> = u_xlat15;
  let x_1017 : f32 = u_xlat40;
  let x_1020 : vec3<f32> = u_xlat0;
  u_xlat15 = ((x_1016 * vec3<f32>(x_1017, x_1017, x_1017)) + x_1020);
  let x_1022 : vec3<f32> = u_xlat15;
  let x_1023 : vec3<f32> = u_xlat5;
  u_xlat15 = (x_1022 * x_1023);
  let x_1025 : vec3<f32> = u_xlat1;
  let x_1026 : vec4<f32> = u_xlat3;
  let x_1029 : vec3<f32> = u_xlat15;
  u_xlat1 = ((x_1025 * vec3<f32>(x_1026.x, x_1026.z, x_1026.w)) + x_1029);
  let x_1031 : vec3<f32> = u_xlat17;
  let x_1032 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1031 * vec3<f32>(x_1032.x, x_1032.x, x_1032.x));
  let x_1035 : vec3<f32> = u_xlat0;
  let x_1037 : f32 = u_xlat39;
  let x_1039 : vec3<f32> = (-(x_1035) + vec3<f32>(x_1037, x_1037, x_1037));
  let x_1040 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1039.x, x_1040.y, x_1039.y, x_1039.z);
  let x_1042 : f32 = u_xlat16;
  let x_1044 : vec4<f32> = u_xlat3;
  let x_1047 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1042, x_1042, x_1042) * vec3<f32>(x_1044.x, x_1044.z, x_1044.w)) + x_1047);
  let x_1051 : vec3<f32> = u_xlat2;
  let x_1052 : vec3<f32> = u_xlat0;
  let x_1054 : vec3<f32> = u_xlat1;
  let x_1055 : vec3<f32> = ((x_1051 * x_1052) + x_1054);
  let x_1056 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

