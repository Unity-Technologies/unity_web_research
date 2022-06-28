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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BumpMap : sampler;

var<private> u_xlat18 : vec2<f32>;

var<private> u_xlat28 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(8) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(10) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(7) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

@group(0) @binding(5) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(6) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_216 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_24.x, x_24.y));
  let x_27 : vec2<f32> = vec2<f32>(x_26.x, x_26.w);
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_27.x, x_27.y, x_28.z);
  let x_36 : vec4<f32> = vs_TEXCOORD0;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_36.x, x_36.y));
  u_xlat1 = vec3<f32>(x_38.x, x_38.y, x_38.z);
  let x_41 : vec3<f32> = u_xlat1;
  let x_50 : vec4<f32> = x_45.x_Color;
  u_xlat2 = (x_41 * vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_54 : vec4<f32> = x_45.x_Color;
  let x_56 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_54.x, x_54.y, x_54.z) * x_56) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_61.x, x_61.x, x_61.x) * x_63) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_72 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_72) * 0.959999979f) + 0.959999979f);
  let x_78 : vec3<f32> = u_xlat0;
  let x_80 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_78.x, x_78.x, x_78.x) * x_80);
  let x_88 : vec4<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_88.x, x_88.y));
  u_xlat3 = vec3<f32>(x_90.x, x_90.y, x_90.w);
  let x_94 : f32 = u_xlat3.z;
  let x_96 : f32 = u_xlat3.x;
  u_xlat3.x = (x_94 * x_96);
  let x_101 : vec3<f32> = u_xlat3;
  u_xlat18 = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_110 : vec2<f32> = u_xlat18;
  let x_111 : vec2<f32> = u_xlat18;
  u_xlat28 = dot(x_110, x_111);
  let x_113 : f32 = u_xlat28;
  u_xlat28 = min(x_113, 1.0f);
  let x_116 : f32 = u_xlat28;
  u_xlat28 = (-(x_116) + 1.0f);
  let x_119 : f32 = u_xlat28;
  u_xlat28 = sqrt(x_119);
  let x_121 : vec2<f32> = u_xlat18;
  let x_124 : vec4<f32> = vs_TEXCOORD3;
  u_xlat3 = (vec3<f32>(x_121.y, x_121.y, x_121.y) * vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_128 : vec4<f32> = vs_TEXCOORD2;
  let x_130 : vec2<f32> = u_xlat18;
  let x_133 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_128.x, x_128.y, x_128.z) * vec3<f32>(x_130.x, x_130.x, x_130.x)) + x_133);
  let x_136 : vec4<f32> = vs_TEXCOORD4;
  let x_138 : f32 = u_xlat28;
  let x_141 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_136.x, x_136.y, x_136.z) * vec3<f32>(x_138, x_138, x_138)) + x_141);
  let x_149 : f32 = x_45.unity_ProbeVolumeParams.x;
  u_xlatb18 = (x_149 == 1.0f);
  let x_151 : bool = u_xlatb18;
  if (x_151) {
    let x_156 : f32 = x_45.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_156 == 1.0f);
    let x_160 : vec4<f32> = vs_TEXCOORD3;
    let x_165 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[1i];
    let x_167 : vec3<f32> = (vec3<f32>(x_160.w, x_160.w, x_160.w) * vec3<f32>(x_165.x, x_165.y, x_165.z));
    let x_168 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
    let x_172 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[0i];
    let x_174 : vec4<f32> = vs_TEXCOORD2;
    let x_177 : vec4<f32> = u_xlat4;
    let x_179 : vec3<f32> = ((vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_174.w, x_174.w, x_174.w)) + vec3<f32>(x_177.x, x_177.y, x_177.z));
    let x_180 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_184 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[2i];
    let x_186 : vec4<f32> = vs_TEXCOORD4;
    let x_189 : vec4<f32> = u_xlat4;
    let x_191 : vec3<f32> = ((vec3<f32>(x_184.x, x_184.y, x_184.z) * vec3<f32>(x_186.w, x_186.w, x_186.w)) + vec3<f32>(x_189.x, x_189.y, x_189.z));
    let x_192 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
    let x_194 : vec4<f32> = u_xlat4;
    let x_197 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[3i];
    let x_199 : vec3<f32> = (vec3<f32>(x_194.x, x_194.y, x_194.z) + vec3<f32>(x_197.x, x_197.y, x_197.z));
    let x_200 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
    let x_206 : f32 = vs_TEXCOORD2.w;
    u_xlat14.x = x_206;
    let x_209 : f32 = vs_TEXCOORD3.w;
    u_xlat14.y = x_209;
    let x_212 : f32 = vs_TEXCOORD4.w;
    u_xlat14.z = x_212;
    let x_214 : bool = u_xlatb18;
    if (x_214) {
      let x_219 : vec4<f32> = u_xlat4;
      x_216 = vec3<f32>(x_219.x, x_219.y, x_219.z);
    } else {
      let x_222 : vec3<f32> = u_xlat14;
      x_216 = x_222;
    }
    let x_223 : vec3<f32> = x_216;
    let x_224 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
    let x_226 : vec4<f32> = u_xlat4;
    let x_231 : vec3<f32> = x_45.unity_ProbeVolumeMin;
    let x_233 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) + -(x_231));
    let x_234 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
    let x_236 : vec4<f32> = u_xlat4;
    let x_240 : vec3<f32> = x_45.unity_ProbeVolumeSizeInv;
    let x_241 : vec3<f32> = (vec3<f32>(x_236.x, x_236.y, x_236.z) * x_240);
    let x_242 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_242.x, x_241.x, x_241.y, x_241.z);
    let x_245 : f32 = u_xlat4.y;
    u_xlat18.x = ((x_245 * 0.25f) + 0.75f);
    let x_253 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat27 = ((x_253 * 0.5f) + 0.75f);
    let x_257 : f32 = u_xlat27;
    let x_259 : f32 = u_xlat18.x;
    u_xlat4.x = max(x_257, x_259);
    let x_270 : vec4<f32> = u_xlat4;
    let x_272 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_270.x, x_270.z, x_270.w));
    u_xlat4 = x_272;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_278 : vec4<f32> = u_xlat4;
  let x_280 : vec4<f32> = x_45.unity_OcclusionMaskSelector;
  u_xlat18.x = dot(x_278, x_280);
  let x_284 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_284, 0.0f, 1.0f);
  let x_293 : vec4<f32> = vs_TEXCOORD0;
  let x_295 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_293.x, x_293.y));
  u_xlat27 = x_295.y;
  let x_298 : f32 = u_xlat0.y;
  let x_302 : f32 = x_45.x_GlossMapScale;
  u_xlat4.z = ((-(x_298) * x_302) + 1.0f);
  let x_307 : vec4<f32> = vs_TEXCOORD1;
  let x_309 : vec3<f32> = u_xlat3;
  u_xlat28 = dot(vec3<f32>(x_307.x, x_307.y, x_307.z), x_309);
  let x_311 : f32 = u_xlat28;
  let x_312 : f32 = u_xlat28;
  u_xlat28 = (x_311 + x_312);
  let x_315 : vec3<f32> = u_xlat3;
  let x_316 : f32 = u_xlat28;
  let x_320 : vec4<f32> = vs_TEXCOORD1;
  let x_322 : vec3<f32> = ((x_315 * -(vec3<f32>(x_316, x_316, x_316))) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_326 : vec2<f32> = u_xlat18;
  let x_330 : vec4<f32> = x_45.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_326.x, x_326.x, x_326.x) * vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_334 : f32 = u_xlat27;
  let x_337 : vec4<f32> = vs_TEXCOORD5;
  u_xlat7 = (vec3<f32>(x_334, x_334, x_334) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_341 : f32 = u_xlat4.z;
  u_xlat18.x = ((-(x_341) * 0.699999988f) + 1.700000048f);
  let x_349 : f32 = u_xlat18.x;
  let x_351 : f32 = u_xlat4.z;
  u_xlat18.x = (x_349 * x_351);
  let x_355 : f32 = u_xlat18.x;
  u_xlat18.x = (x_355 * 6.0f);
  let x_367 : vec4<f32> = u_xlat5;
  let x_370 : f32 = u_xlat18.x;
  let x_371 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_367.x, x_367.y, x_367.z), x_370);
  u_xlat5 = x_371;
  let x_373 : f32 = u_xlat5.w;
  u_xlat18.x = (x_373 + -1.0f);
  let x_377 : f32 = x_45.unity_SpecCube0_HDR.w;
  let x_379 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_377 * x_379) + 1.0f);
  let x_384 : f32 = u_xlat18.x;
  u_xlat18.x = log2(x_384);
  let x_388 : f32 = u_xlat18.x;
  let x_390 : f32 = x_45.unity_SpecCube0_HDR.y;
  u_xlat18.x = (x_388 * x_390);
  let x_394 : f32 = u_xlat18.x;
  u_xlat18.x = exp2(x_394);
  let x_398 : f32 = u_xlat18.x;
  let x_400 : f32 = x_45.unity_SpecCube0_HDR.x;
  u_xlat18.x = (x_398 * x_400);
  let x_403 : vec4<f32> = u_xlat5;
  let x_405 : vec2<f32> = u_xlat18;
  let x_407 : vec3<f32> = (vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(x_405.x, x_405.x, x_405.x));
  let x_408 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_410 : f32 = u_xlat27;
  let x_412 : vec4<f32> = u_xlat5;
  let x_414 : vec3<f32> = (vec3<f32>(x_410, x_410, x_410) * vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = vs_TEXCOORD1;
  let x_420 : vec3<f32> = u_xlat3;
  u_xlat18.x = dot(-(vec3<f32>(x_417.x, x_417.y, x_417.z)), x_420);
  let x_424 : f32 = u_xlat18.x;
  let x_426 : f32 = u_xlat18.x;
  u_xlat27 = (x_424 + x_426);
  let x_429 : vec3<f32> = u_xlat3;
  let x_430 : f32 = u_xlat27;
  let x_434 : vec4<f32> = vs_TEXCOORD1;
  u_xlat8 = ((x_429 * -(vec3<f32>(x_430, x_430, x_430))) + -(vec3<f32>(x_434.x, x_434.y, x_434.z)));
  let x_438 : vec3<f32> = u_xlat3;
  let x_440 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  u_xlat27 = dot(x_438, vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : f32 = u_xlat27;
  u_xlat27 = clamp(x_443, 0.0f, 1.0f);
  let x_446 : f32 = u_xlat18.x;
  u_xlat18.x = x_446;
  let x_449 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_449, 0.0f, 1.0f);
  let x_452 : vec3<f32> = u_xlat8;
  let x_454 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  u_xlat3.x = dot(x_452, vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_459 : f32 = u_xlat18.x;
  u_xlat3.y = (-(x_459) + 1.0f);
  let x_463 : vec3<f32> = u_xlat3;
  let x_465 : vec3<f32> = u_xlat3;
  let x_467 : vec2<f32> = (vec2<f32>(x_463.x, x_463.y) * vec2<f32>(x_465.x, x_465.y));
  let x_468 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_467.x, x_467.y, x_468.z);
  let x_470 : vec3<f32> = u_xlat3;
  let x_472 : vec3<f32> = u_xlat3;
  let x_474 : vec2<f32> = (vec2<f32>(x_470.x, x_470.y) * vec2<f32>(x_472.x, x_472.y));
  let x_475 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_474.x, x_474.y, x_475.z, x_475.w);
  let x_478 : f32 = u_xlat0.y;
  let x_480 : f32 = x_45.x_GlossMapScale;
  let x_483 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_478 * x_480) + -(x_483));
  let x_488 : f32 = u_xlat0.x;
  u_xlat0.x = (x_488 + 1.0f);
  let x_492 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_492, 0.0f, 1.0f);
  let x_501 : vec4<f32> = u_xlat4;
  let x_503 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_501.x, x_501.z));
  u_xlat9.x = x_503.x;
  let x_507 : f32 = u_xlat9.x;
  u_xlat9.x = (x_507 * 16.0f);
  let x_511 : vec3<f32> = u_xlat9;
  let x_513 : vec3<f32> = u_xlat1;
  let x_515 : vec3<f32> = u_xlat2;
  u_xlat3 = ((vec3<f32>(x_511.x, x_511.x, x_511.x) * x_513) + x_515);
  let x_517 : f32 = u_xlat27;
  let x_519 : vec3<f32> = u_xlat6;
  u_xlat9 = (vec3<f32>(x_517, x_517, x_517) * x_519);
  let x_521 : vec3<f32> = u_xlat1;
  let x_523 : vec3<f32> = u_xlat0;
  let x_525 : vec3<f32> = (-(x_521) + vec3<f32>(x_523.x, x_523.x, x_523.x));
  let x_526 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_525.x, x_526.y, x_525.y, x_525.z);
  let x_528 : vec4<f32> = u_xlat4;
  let x_530 : vec4<f32> = u_xlat4;
  let x_533 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_528.y, x_528.y, x_528.y) * vec3<f32>(x_530.x, x_530.z, x_530.w)) + x_533);
  let x_535 : vec3<f32> = u_xlat1;
  let x_536 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_535 * vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec3<f32> = u_xlat7;
  let x_540 : vec3<f32> = u_xlat2;
  let x_542 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_539 * x_540) + x_542);
  let x_544 : vec3<f32> = u_xlat3;
  let x_545 : vec3<f32> = u_xlat9;
  let x_547 : vec3<f32> = u_xlat1;
  u_xlat0 = ((x_544 * x_545) + x_547);
  let x_554 : vec4<f32> = vs_TEXCOORD0;
  let x_556 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_554.x, x_554.y));
  u_xlat1 = vec3<f32>(x_556.x, x_556.y, x_556.z);
  let x_560 : vec3<f32> = u_xlat1;
  let x_563 : vec4<f32> = x_45.x_EmissionColor;
  let x_566 : vec3<f32> = u_xlat0;
  let x_567 : vec3<f32> = ((x_560 * vec3<f32>(x_563.x, x_563.y, x_563.z)) + x_566);
  let x_568 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

