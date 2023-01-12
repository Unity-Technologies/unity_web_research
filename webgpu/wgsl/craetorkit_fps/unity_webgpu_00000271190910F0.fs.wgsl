struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
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
  x_GlossMapScale : f32,
  @size(12)
  padding_2 : u32,
  x_EmissionColor : vec4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(6) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(5) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat16 : vec2<f32>;
  var u_xlat25 : f32;
  var u_xlatb16 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var x_211 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_37.x, x_37.y));
  u_xlat1 = vec3<f32>(x_39.x, x_39.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_46.x_Color;
  u_xlat2 = (x_42 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_55 : vec4<f32> = x_46.x_Color;
  let x_57 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_55.x, x_55.y, x_55.z) * x_57) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_62 : vec4<f32> = u_xlat0;
  let x_64 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_62.x, x_62.x, x_62.x) * x_64) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_73 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_73) * 0.959999979f) + 0.959999979f);
  let x_85 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_85.x, x_85.y));
  u_xlat3 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_91 : f32 = u_xlat3.z;
  let x_93 : f32 = u_xlat3.x;
  u_xlat3.x = (x_91 * x_93);
  let x_98 : vec3<f32> = u_xlat3;
  u_xlat16 = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_107 : vec2<f32> = u_xlat16;
  let x_108 : vec2<f32> = u_xlat16;
  u_xlat25 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat25;
  u_xlat25 = min(x_110, 1.0f);
  let x_113 : f32 = u_xlat25;
  u_xlat25 = (-(x_113) + 1.0f);
  let x_116 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_116);
  let x_118 : vec2<f32> = u_xlat16;
  let x_121 : vec4<f32> = vs_TEXCOORD3;
  u_xlat3 = (vec3<f32>(x_118.y, x_118.y, x_118.y) * vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_125 : vec4<f32> = vs_TEXCOORD2;
  let x_127 : vec2<f32> = u_xlat16;
  let x_130 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(x_127.x, x_127.x, x_127.x)) + x_130);
  let x_133 : vec4<f32> = vs_TEXCOORD4;
  let x_135 : f32 = u_xlat25;
  let x_138 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_135, x_135, x_135)) + x_138);
  let x_146 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb16 = (x_146 == 1.0f);
  let x_148 : bool = u_xlatb16;
  if (x_148) {
    let x_153 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb16 = (x_153 == 1.0f);
    let x_156 : vec4<f32> = vs_TEXCOORD3;
    let x_161 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_163 : vec3<f32> = (vec3<f32>(x_156.w, x_156.w, x_156.w) * vec3<f32>(x_161.x, x_161.y, x_161.z));
    let x_164 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
    let x_168 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_170 : vec4<f32> = vs_TEXCOORD2;
    let x_173 : vec4<f32> = u_xlat4;
    let x_175 : vec3<f32> = ((vec3<f32>(x_168.x, x_168.y, x_168.z) * vec3<f32>(x_170.w, x_170.w, x_170.w)) + vec3<f32>(x_173.x, x_173.y, x_173.z));
    let x_176 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
    let x_180 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_182 : vec4<f32> = vs_TEXCOORD4;
    let x_185 : vec4<f32> = u_xlat4;
    let x_187 : vec3<f32> = ((vec3<f32>(x_180.x, x_180.y, x_180.z) * vec3<f32>(x_182.w, x_182.w, x_182.w)) + vec3<f32>(x_185.x, x_185.y, x_185.z));
    let x_188 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
    let x_190 : vec4<f32> = u_xlat4;
    let x_193 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_195 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) + vec3<f32>(x_193.x, x_193.y, x_193.z));
    let x_196 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
    let x_202 : f32 = vs_TEXCOORD2.w;
    u_xlat13.x = x_202;
    let x_205 : f32 = vs_TEXCOORD3.w;
    u_xlat13.y = x_205;
    let x_208 : f32 = vs_TEXCOORD4.w;
    u_xlat13.z = x_208;
    let x_210 : bool = u_xlatb16;
    if (x_210) {
      let x_214 : vec4<f32> = u_xlat4;
      x_211 = vec3<f32>(x_214.x, x_214.y, x_214.z);
    } else {
      let x_217 : vec3<f32> = u_xlat13;
      x_211 = x_217;
    }
    let x_218 : vec3<f32> = x_211;
    let x_219 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_221 : vec4<f32> = u_xlat4;
    let x_226 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_228 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) + -(x_226));
    let x_229 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
    let x_231 : vec4<f32> = u_xlat4;
    let x_235 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_236 : vec3<f32> = (vec3<f32>(x_231.x, x_231.y, x_231.z) * x_235);
    let x_237 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_237.x, x_236.x, x_236.y, x_236.z);
    let x_240 : f32 = u_xlat4.y;
    u_xlat16.x = ((x_240 * 0.25f) + 0.75f);
    let x_248 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_248 * 0.5f) + 0.75f);
    let x_252 : f32 = u_xlat24;
    let x_254 : f32 = u_xlat16.x;
    u_xlat4.x = max(x_252, x_254);
    let x_265 : vec4<f32> = u_xlat4;
    let x_267 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_265.x, x_265.z, x_265.w));
    u_xlat4 = x_267;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_273 : vec4<f32> = u_xlat4;
  let x_275 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat16.x = dot(x_273, x_275);
  let x_279 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_279, 0.0f, 1.0f);
  let x_288 : vec4<f32> = vs_TEXCOORD0;
  let x_290 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_288.x, x_288.y));
  u_xlat24 = x_290.y;
  let x_293 : f32 = u_xlat0.y;
  let x_297 : f32 = x_46.x_GlossMapScale;
  u_xlat4.z = ((-(x_293) * x_297) + 1.0f);
  let x_302 : vec4<f32> = vs_TEXCOORD1;
  let x_304 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_302.x, x_302.y, x_302.z), x_304);
  let x_306 : f32 = u_xlat25;
  let x_307 : f32 = u_xlat25;
  u_xlat25 = (x_306 + x_307);
  let x_310 : vec3<f32> = u_xlat3;
  let x_311 : f32 = u_xlat25;
  let x_315 : vec4<f32> = vs_TEXCOORD1;
  let x_317 : vec3<f32> = ((x_310 * -(vec3<f32>(x_311, x_311, x_311))) + vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_321 : vec2<f32> = u_xlat16;
  let x_325 : vec4<f32> = x_46.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_321.x, x_321.x, x_321.x) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_329 : f32 = u_xlat4.z;
  u_xlat16.x = ((-(x_329) * 0.699999988f) + 1.700000048f);
  let x_337 : f32 = u_xlat16.x;
  let x_339 : f32 = u_xlat4.z;
  u_xlat16.x = (x_337 * x_339);
  let x_343 : f32 = u_xlat16.x;
  u_xlat16.x = (x_343 * 6.0f);
  let x_355 : vec4<f32> = u_xlat5;
  let x_358 : f32 = u_xlat16.x;
  let x_359 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_355.x, x_355.y, x_355.z), x_358);
  u_xlat5 = x_359;
  let x_361 : f32 = u_xlat5.w;
  u_xlat16.x = (x_361 + -1.0f);
  let x_365 : f32 = x_46.unity_SpecCube0_HDR.w;
  let x_367 : f32 = u_xlat16.x;
  u_xlat16.x = ((x_365 * x_367) + 1.0f);
  let x_372 : f32 = u_xlat16.x;
  u_xlat16.x = log2(x_372);
  let x_376 : f32 = u_xlat16.x;
  let x_378 : f32 = x_46.unity_SpecCube0_HDR.y;
  u_xlat16.x = (x_376 * x_378);
  let x_382 : f32 = u_xlat16.x;
  u_xlat16.x = exp2(x_382);
  let x_386 : f32 = u_xlat16.x;
  let x_388 : f32 = x_46.unity_SpecCube0_HDR.x;
  u_xlat16.x = (x_386 * x_388);
  let x_391 : vec4<f32> = u_xlat5;
  let x_393 : vec2<f32> = u_xlat16;
  let x_395 : vec3<f32> = (vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_393.x, x_393.x, x_393.x));
  let x_396 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : f32 = u_xlat24;
  let x_400 : vec4<f32> = u_xlat5;
  let x_402 : vec3<f32> = (vec3<f32>(x_398, x_398, x_398) * vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : vec4<f32> = vs_TEXCOORD1;
  let x_408 : vec3<f32> = u_xlat3;
  u_xlat16.x = dot(-(vec3<f32>(x_405.x, x_405.y, x_405.z)), x_408);
  let x_412 : f32 = u_xlat16.x;
  let x_414 : f32 = u_xlat16.x;
  u_xlat24 = (x_412 + x_414);
  let x_417 : vec3<f32> = u_xlat3;
  let x_418 : f32 = u_xlat24;
  let x_422 : vec4<f32> = vs_TEXCOORD1;
  u_xlat7 = ((x_417 * -(vec3<f32>(x_418, x_418, x_418))) + -(vec3<f32>(x_422.x, x_422.y, x_422.z)));
  let x_426 : vec3<f32> = u_xlat3;
  let x_428 : vec4<f32> = x_46.x_WorldSpaceLightPos0;
  u_xlat24 = dot(x_426, vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : f32 = u_xlat24;
  u_xlat24 = clamp(x_431, 0.0f, 1.0f);
  let x_434 : f32 = u_xlat16.x;
  u_xlat16.x = x_434;
  let x_437 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_437, 0.0f, 1.0f);
  let x_440 : vec3<f32> = u_xlat7;
  let x_442 : vec4<f32> = x_46.x_WorldSpaceLightPos0;
  u_xlat3.x = dot(x_440, vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_447 : f32 = u_xlat16.x;
  u_xlat3.y = (-(x_447) + 1.0f);
  let x_451 : vec3<f32> = u_xlat3;
  let x_453 : vec3<f32> = u_xlat3;
  let x_455 : vec2<f32> = (vec2<f32>(x_451.x, x_451.y) * vec2<f32>(x_453.x, x_453.y));
  let x_456 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_455.x, x_455.y, x_456.z);
  let x_458 : vec3<f32> = u_xlat3;
  let x_460 : vec3<f32> = u_xlat3;
  let x_462 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) * vec2<f32>(x_460.x, x_460.y));
  let x_463 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
  let x_467 : f32 = u_xlat0.y;
  let x_469 : f32 = x_46.x_GlossMapScale;
  let x_472 : f32 = u_xlat0.x;
  u_xlat8 = ((x_467 * x_469) + -(x_472));
  let x_475 : f32 = u_xlat8;
  u_xlat8 = (x_475 + 1.0f);
  let x_477 : f32 = u_xlat8;
  u_xlat8 = clamp(x_477, 0.0f, 1.0f);
  let x_484 : vec4<f32> = u_xlat4;
  let x_486 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_484.x, x_484.z));
  u_xlat16.x = x_486.x;
  let x_490 : f32 = u_xlat16.x;
  u_xlat16.x = (x_490 * 16.0f);
  let x_494 : vec3<f32> = u_xlat1;
  let x_495 : vec2<f32> = u_xlat16;
  u_xlat3 = (x_494 * vec3<f32>(x_495.x, x_495.x, x_495.x));
  let x_498 : vec3<f32> = u_xlat2;
  let x_499 : vec4<f32> = u_xlat0;
  let x_502 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_498 * vec3<f32>(x_499.x, x_499.x, x_499.x)) + x_502);
  let x_504 : f32 = u_xlat24;
  let x_506 : vec3<f32> = u_xlat6;
  let x_507 : vec3<f32> = (vec3<f32>(x_504, x_504, x_504) * x_506);
  let x_508 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_507.x, x_508.y, x_507.y, x_507.z);
  let x_510 : vec3<f32> = u_xlat1;
  let x_512 : f32 = u_xlat8;
  u_xlat3 = (-(x_510) + vec3<f32>(x_512, x_512, x_512));
  let x_515 : vec4<f32> = u_xlat4;
  let x_517 : vec3<f32> = u_xlat3;
  let x_519 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_515.y, x_515.y, x_515.y) * x_517) + x_519);
  let x_521 : vec3<f32> = u_xlat1;
  let x_522 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_521 * vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : vec3<f32> = u_xlat2;
  let x_526 : vec4<f32> = u_xlat0;
  let x_529 : vec3<f32> = u_xlat1;
  let x_530 : vec3<f32> = ((x_525 * vec3<f32>(x_526.x, x_526.z, x_526.w)) + x_529);
  let x_531 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_538 : vec4<f32> = vs_TEXCOORD0;
  let x_540 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_538.x, x_538.y));
  u_xlat1 = vec3<f32>(x_540.x, x_540.y, x_540.z);
  let x_544 : vec3<f32> = u_xlat1;
  let x_547 : vec4<f32> = x_46.x_EmissionColor;
  let x_550 : vec4<f32> = u_xlat0;
  let x_552 : vec3<f32> = ((x_544 * vec3<f32>(x_547.x, x_547.y, x_547.z)) + vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
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

