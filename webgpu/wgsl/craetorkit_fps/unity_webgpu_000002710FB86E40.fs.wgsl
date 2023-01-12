struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(2) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_SpecCube1 : texture_cube<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat45 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : f32;
  var u_xlat18 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb45 : bool;
  var u_xlatb46 : bool;
  var u_xlat19 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var x_211 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlat34 : f32;
  var u_xlat49 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var x_386 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_575 : f32;
  var x_587 : f32;
  var x_599 : f32;
  var u_xlatb47 : bool;
  var u_xlat47 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_764 : f32;
  var x_776 : f32;
  var x_788 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat32 : f32;
  var u_xlat33 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Color;
  u_xlat1 = (x_27 * x_37);
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = x_32.x_Color;
  let x_47 : vec3<f32> = ((vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_42.x, x_42.y, x_42.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_47.z, x_48.w);
  let x_53 : f32 = x_32.x_Metallic;
  let x_55 : f32 = x_32.x_Metallic;
  let x_57 : f32 = x_32.x_Metallic;
  let x_58 : vec3<f32> = vec3<f32>(x_53, x_55, x_57);
  let x_63 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_63.x, x_63.y, x_63.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : f32 = x_32.x_Metallic;
  u_xlat45 = ((-(x_74) * 0.959999979f) + 0.959999979f);
  let x_79 : f32 = u_xlat45;
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec4<f32> = vs_TEXCOORD4;
  let x_90 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_88.x, x_88.y, x_88.z), vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_97 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_97);
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = vs_TEXCOORD4;
  let x_104 : vec3<f32> = (vec3<f32>(x_100.x, x_100.x, x_100.x) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_109 : vec4<f32> = vs_TEXCOORD1;
  let x_111 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = dot(vec3<f32>(x_109.x, x_109.y, x_109.z), vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : f32 = u_xlat3;
  u_xlat3 = inverseSqrt(x_114);
  let x_118 : f32 = u_xlat3;
  let x_120 : vec4<f32> = vs_TEXCOORD1;
  u_xlat18 = (vec3<f32>(x_118, x_118, x_118) * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec3<f32> = (vec3<f32>(x_123.w, x_123.w, x_123.w) * vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_131 : f32 = u_xlat45;
  u_xlat4.x = (-(x_131) + 1.0f);
  let x_140 : f32 = u_xlat1.w;
  let x_141 : f32 = u_xlat45;
  let x_144 : f32 = u_xlat4.x;
  SV_Target0.w = ((x_140 * x_141) + x_144);
  let x_153 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb45 = (x_153 == 1.0f);
  let x_155 : bool = u_xlatb45;
  if (x_155) {
    let x_161 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb46 = (x_161 == 1.0f);
    let x_165 : vec4<f32> = vs_TEXCOORD3;
    let x_170 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    u_xlat19 = (vec3<f32>(x_165.w, x_165.w, x_165.w) * vec3<f32>(x_170.x, x_170.y, x_170.z));
    let x_175 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_178 : vec4<f32> = vs_TEXCOORD2;
    let x_181 : vec3<f32> = u_xlat19;
    u_xlat19 = ((vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_178.w, x_178.w, x_178.w)) + x_181);
    let x_185 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_187 : vec4<f32> = vs_TEXCOORD4;
    let x_190 : vec3<f32> = u_xlat19;
    u_xlat19 = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.w, x_187.w, x_187.w)) + x_190);
    let x_192 : vec3<f32> = u_xlat19;
    let x_195 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    u_xlat19 = (x_192 + vec3<f32>(x_195.x, x_195.y, x_195.z));
    let x_201 : f32 = vs_TEXCOORD2.w;
    u_xlat20.x = x_201;
    let x_204 : f32 = vs_TEXCOORD3.w;
    u_xlat20.y = x_204;
    let x_207 : f32 = vs_TEXCOORD4.w;
    u_xlat20.z = x_207;
    let x_210 : bool = u_xlatb46;
    if (x_210) {
      let x_214 : vec3<f32> = u_xlat19;
      x_211 = x_214;
    } else {
      let x_216 : vec3<f32> = u_xlat20;
      x_211 = x_216;
    }
    let x_217 : vec3<f32> = x_211;
    u_xlat19 = x_217;
    let x_218 : vec3<f32> = u_xlat19;
    let x_222 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    u_xlat19 = (x_218 + -(x_222));
    let x_226 : vec3<f32> = u_xlat19;
    let x_229 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_230 : vec3<f32> = (x_226 * x_229);
    let x_231 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_231.x, x_230.x, x_230.y, x_230.z);
    let x_235 : f32 = u_xlat5.y;
    u_xlat46 = ((x_235 * 0.25f) + 0.75f);
    let x_241 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat19.x = ((x_241 * 0.5f) + 0.75f);
    let x_246 : f32 = u_xlat46;
    let x_248 : f32 = u_xlat19.x;
    u_xlat5.x = max(x_246, x_248);
    let x_259 : vec4<f32> = u_xlat5;
    let x_261 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_259.x, x_259.z, x_259.w));
    u_xlat5 = x_261;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_267 : vec4<f32> = u_xlat5;
  let x_270 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat46 = dot(x_267, x_270);
  let x_272 : f32 = u_xlat46;
  u_xlat46 = clamp(x_272, 0.0f, 1.0f);
  let x_280 : vec4<f32> = vs_TEXCOORD0;
  let x_282 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_280.x, x_280.y));
  u_xlat19.x = x_282.y;
  let x_288 : f32 = x_32.x_OcclusionStrength;
  u_xlat34 = (-(x_288) + 1.0f);
  let x_292 : f32 = u_xlat19.x;
  let x_294 : f32 = x_32.x_OcclusionStrength;
  let x_296 : f32 = u_xlat34;
  u_xlat19.x = ((x_292 * x_294) + x_296);
  let x_301 : f32 = x_32.x_Glossiness;
  u_xlat34 = (-(x_301) + 1.0f);
  let x_305 : vec3<f32> = u_xlat18;
  let x_306 : vec4<f32> = u_xlat2;
  u_xlat49 = dot(x_305, vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : f32 = u_xlat49;
  let x_310 : f32 = u_xlat49;
  u_xlat49 = (x_309 + x_310);
  let x_312 : vec4<f32> = u_xlat2;
  let x_314 : f32 = u_xlat49;
  let x_318 : vec3<f32> = u_xlat18;
  let x_319 : vec3<f32> = ((vec3<f32>(x_312.x, x_312.y, x_312.z) * -(vec3<f32>(x_314, x_314, x_314))) + x_318);
  let x_320 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_323 : f32 = u_xlat46;
  let x_327 : vec4<f32> = x_32.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_323, x_323, x_323) * vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : bool = u_xlatb45;
  if (x_330) {
    let x_334 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb45 = (x_334 == 1.0f);
    let x_337 : vec4<f32> = vs_TEXCOORD3;
    let x_340 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_342 : vec3<f32> = (vec3<f32>(x_337.w, x_337.w, x_337.w) * vec3<f32>(x_340.x, x_340.y, x_340.z));
    let x_343 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
    let x_346 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_348 : vec4<f32> = vs_TEXCOORD2;
    let x_351 : vec4<f32> = u_xlat7;
    let x_353 : vec3<f32> = ((vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(x_348.w, x_348.w, x_348.w)) + vec3<f32>(x_351.x, x_351.y, x_351.z));
    let x_354 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
    let x_357 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_359 : vec4<f32> = vs_TEXCOORD4;
    let x_362 : vec4<f32> = u_xlat7;
    let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.w, x_359.w, x_359.w)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
    let x_365 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
    let x_367 : vec4<f32> = u_xlat7;
    let x_370 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_372 : vec3<f32> = (vec3<f32>(x_367.x, x_367.y, x_367.z) + vec3<f32>(x_370.x, x_370.y, x_370.z));
    let x_373 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
    let x_377 : f32 = vs_TEXCOORD2.w;
    u_xlat23.x = x_377;
    let x_380 : f32 = vs_TEXCOORD3.w;
    u_xlat23.y = x_380;
    let x_383 : f32 = vs_TEXCOORD4.w;
    u_xlat23.z = x_383;
    let x_385 : bool = u_xlatb45;
    if (x_385) {
      let x_389 : vec4<f32> = u_xlat7;
      x_386 = vec3<f32>(x_389.x, x_389.y, x_389.z);
    } else {
      let x_392 : vec3<f32> = u_xlat23;
      x_386 = x_392;
    }
    let x_393 : vec3<f32> = x_386;
    let x_394 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
    let x_396 : vec4<f32> = u_xlat7;
    let x_399 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_401 : vec3<f32> = (vec3<f32>(x_396.x, x_396.y, x_396.z) + -(x_399));
    let x_402 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
    let x_404 : vec4<f32> = u_xlat7;
    let x_407 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_408 : vec3<f32> = (vec3<f32>(x_404.x, x_404.y, x_404.z) * x_407);
    let x_409 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_409.x, x_408.x, x_408.y, x_408.z);
    let x_412 : f32 = u_xlat7.y;
    u_xlat45 = (x_412 * 0.25f);
    let x_415 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat46 = (x_415 * 0.5f);
    let x_418 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat49 = ((-(x_418) * 0.5f) + 0.25f);
    let x_422 : f32 = u_xlat45;
    let x_423 : f32 = u_xlat46;
    u_xlat45 = max(x_422, x_423);
    let x_425 : f32 = u_xlat49;
    let x_426 : f32 = u_xlat45;
    u_xlat7.x = min(x_425, x_426);
    let x_433 : vec4<f32> = u_xlat7;
    let x_435 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_433.x, x_433.z, x_433.w));
    u_xlat8 = x_435;
    let x_437 : vec4<f32> = u_xlat7;
    let x_440 : vec3<f32> = (vec3<f32>(x_437.x, x_437.z, x_437.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_441 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
    let x_446 : vec4<f32> = u_xlat9;
    let x_448 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_446.x, x_446.y, x_446.z));
    u_xlat9 = x_448;
    let x_449 : vec4<f32> = u_xlat7;
    let x_452 : vec3<f32> = (vec3<f32>(x_449.x, x_449.z, x_449.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_453 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
    let x_458 : vec4<f32> = u_xlat7;
    let x_460 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_458.x, x_458.y, x_458.z));
    u_xlat7 = x_460;
    u_xlat2.w = 1.0f;
    let x_462 : vec4<f32> = u_xlat8;
    let x_463 : vec4<f32> = u_xlat2;
    u_xlat8.x = dot(x_462, x_463);
    let x_466 : vec4<f32> = u_xlat9;
    let x_467 : vec4<f32> = u_xlat2;
    u_xlat8.y = dot(x_466, x_467);
    let x_470 : vec4<f32> = u_xlat7;
    let x_471 : vec4<f32> = u_xlat2;
    u_xlat8.z = dot(x_470, x_471);
  } else {
    u_xlat2.w = 1.0f;
    let x_477 : vec4<f32> = x_32.unity_SHAr;
    let x_478 : vec4<f32> = u_xlat2;
    u_xlat8.x = dot(x_477, x_478);
    let x_482 : vec4<f32> = x_32.unity_SHAg;
    let x_483 : vec4<f32> = u_xlat2;
    u_xlat8.y = dot(x_482, x_483);
    let x_488 : vec4<f32> = x_32.unity_SHAb;
    let x_489 : vec4<f32> = u_xlat2;
    u_xlat8.z = dot(x_488, x_489);
  }
  let x_492 : vec4<f32> = u_xlat8;
  let x_495 : vec4<f32> = vs_TEXCOORD5;
  let x_497 : vec3<f32> = (vec3<f32>(x_492.x, x_492.y, x_492.z) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat7;
  let x_503 : vec3<f32> = max(vec3<f32>(x_500.x, x_500.y, x_500.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_504 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_508 : f32 = x_32.unity_SpecCube0_ProbePosition.w;
  u_xlatb45 = (0.0f < x_508);
  let x_510 : bool = u_xlatb45;
  if (x_510) {
    let x_513 : vec4<f32> = u_xlat5;
    let x_515 : vec4<f32> = u_xlat5;
    u_xlat45 = dot(vec3<f32>(x_513.x, x_513.y, x_513.z), vec3<f32>(x_515.x, x_515.y, x_515.z));
    let x_518 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_518);
    let x_520 : f32 = u_xlat45;
    let x_522 : vec4<f32> = u_xlat5;
    let x_524 : vec3<f32> = (vec3<f32>(x_520, x_520, x_520) * vec3<f32>(x_522.x, x_522.y, x_522.z));
    let x_525 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
    let x_528 : f32 = vs_TEXCOORD2.w;
    u_xlat9.x = x_528;
    let x_531 : f32 = vs_TEXCOORD3.w;
    u_xlat9.y = x_531;
    let x_534 : f32 = vs_TEXCOORD4.w;
    u_xlat9.z = x_534;
    let x_537 : vec4<f32> = u_xlat9;
    let x_542 : vec4<f32> = x_32.unity_SpecCube0_BoxMax;
    u_xlat10 = (-(vec3<f32>(x_537.x, x_537.y, x_537.z)) + vec3<f32>(x_542.x, x_542.y, x_542.z));
    let x_545 : vec3<f32> = u_xlat10;
    let x_546 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_545 / vec3<f32>(x_546.x, x_546.y, x_546.z));
    let x_550 : vec4<f32> = u_xlat9;
    let x_555 : vec4<f32> = x_32.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_550.x, x_550.y, x_550.z)) + vec3<f32>(x_555.x, x_555.y, x_555.z));
    let x_558 : vec3<f32> = u_xlat11;
    let x_559 : vec4<f32> = u_xlat8;
    u_xlat11 = (x_558 / vec3<f32>(x_559.x, x_559.y, x_559.z));
    let x_566 : vec4<f32> = u_xlat8;
    let x_569 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_566.x, x_566.y, x_566.z, x_566.x));
    u_xlatb12 = vec3<bool>(x_569.x, x_569.y, x_569.z);
    let x_572 : vec3<f32> = u_xlat10;
    hlslcc_movcTemp = x_572;
    let x_574 : bool = u_xlatb12.x;
    if (x_574) {
      let x_579 : f32 = u_xlat10.x;
      x_575 = x_579;
    } else {
      let x_582 : f32 = u_xlat11.x;
      x_575 = x_582;
    }
    let x_583 : f32 = x_575;
    hlslcc_movcTemp.x = x_583;
    let x_586 : bool = u_xlatb12.y;
    if (x_586) {
      let x_591 : f32 = u_xlat10.y;
      x_587 = x_591;
    } else {
      let x_594 : f32 = u_xlat11.y;
      x_587 = x_594;
    }
    let x_595 : f32 = x_587;
    hlslcc_movcTemp.y = x_595;
    let x_598 : bool = u_xlatb12.z;
    if (x_598) {
      let x_603 : f32 = u_xlat10.z;
      x_599 = x_603;
    } else {
      let x_606 : f32 = u_xlat11.z;
      x_599 = x_606;
    }
    let x_607 : f32 = x_599;
    hlslcc_movcTemp.z = x_607;
    let x_609 : vec3<f32> = hlslcc_movcTemp;
    u_xlat10 = x_609;
    let x_611 : f32 = u_xlat10.y;
    let x_613 : f32 = u_xlat10.x;
    u_xlat45 = min(x_611, x_613);
    let x_616 : f32 = u_xlat10.z;
    let x_617 : f32 = u_xlat45;
    u_xlat45 = min(x_616, x_617);
    let x_619 : vec4<f32> = u_xlat9;
    let x_622 : vec4<f32> = x_32.unity_SpecCube0_ProbePosition;
    let x_625 : vec3<f32> = (vec3<f32>(x_619.x, x_619.y, x_619.z) + -(vec3<f32>(x_622.x, x_622.y, x_622.z)));
    let x_626 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
    let x_628 : vec4<f32> = u_xlat8;
    let x_630 : f32 = u_xlat45;
    let x_633 : vec4<f32> = u_xlat9;
    let x_635 : vec3<f32> = ((vec3<f32>(x_628.x, x_628.y, x_628.z) * vec3<f32>(x_630, x_630, x_630)) + vec3<f32>(x_633.x, x_633.y, x_633.z));
    let x_636 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  } else {
    let x_639 : vec4<f32> = u_xlat5;
    let x_640 : vec3<f32> = vec3<f32>(x_639.x, x_639.y, x_639.z);
    let x_641 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  }
  let x_643 : f32 = u_xlat34;
  u_xlat45 = ((-(x_643) * 0.699999988f) + 1.700000048f);
  let x_649 : f32 = u_xlat45;
  let x_650 : f32 = u_xlat34;
  u_xlat45 = (x_649 * x_650);
  let x_652 : f32 = u_xlat45;
  u_xlat45 = (x_652 * 6.0f);
  let x_663 : vec4<f32> = u_xlat8;
  let x_665 : f32 = u_xlat45;
  let x_666 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_663.x, x_663.y, x_663.z), x_665);
  u_xlat8 = x_666;
  let x_668 : f32 = u_xlat8.w;
  u_xlat46 = (x_668 + -1.0f);
  let x_673 : f32 = x_32.unity_SpecCube0_HDR.w;
  let x_674 : f32 = u_xlat46;
  u_xlat46 = ((x_673 * x_674) + 1.0f);
  let x_677 : f32 = u_xlat46;
  u_xlat46 = log2(x_677);
  let x_679 : f32 = u_xlat46;
  let x_681 : f32 = x_32.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_679 * x_681);
  let x_683 : f32 = u_xlat46;
  u_xlat46 = exp2(x_683);
  let x_685 : f32 = u_xlat46;
  let x_687 : f32 = x_32.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_685 * x_687);
  let x_689 : vec4<f32> = u_xlat8;
  let x_691 : f32 = u_xlat46;
  let x_693 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) * vec3<f32>(x_691, x_691, x_691));
  let x_694 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_698 : f32 = x_32.unity_SpecCube0_BoxMin.w;
  u_xlatb47 = (x_698 < 0.999989986f);
  let x_701 : bool = u_xlatb47;
  if (x_701) {
    let x_706 : f32 = x_32.unity_SpecCube1_ProbePosition.w;
    u_xlatb47 = (0.0f < x_706);
    let x_708 : bool = u_xlatb47;
    if (x_708) {
      let x_712 : vec4<f32> = u_xlat5;
      let x_714 : vec4<f32> = u_xlat5;
      u_xlat47 = dot(vec3<f32>(x_712.x, x_712.y, x_712.z), vec3<f32>(x_714.x, x_714.y, x_714.z));
      let x_717 : f32 = u_xlat47;
      u_xlat47 = inverseSqrt(x_717);
      let x_719 : f32 = u_xlat47;
      let x_721 : vec4<f32> = u_xlat5;
      u_xlat10 = (vec3<f32>(x_719, x_719, x_719) * vec3<f32>(x_721.x, x_721.y, x_721.z));
      let x_725 : f32 = vs_TEXCOORD2.w;
      u_xlat11.x = x_725;
      let x_728 : f32 = vs_TEXCOORD3.w;
      u_xlat11.y = x_728;
      let x_731 : f32 = vs_TEXCOORD4.w;
      u_xlat11.z = x_731;
      let x_734 : vec3<f32> = u_xlat11;
      let x_738 : vec4<f32> = x_32.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_734) + vec3<f32>(x_738.x, x_738.y, x_738.z));
      let x_741 : vec3<f32> = u_xlat12;
      let x_742 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_741 / x_742);
      let x_745 : vec3<f32> = u_xlat11;
      let x_749 : vec4<f32> = x_32.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_745) + vec3<f32>(x_749.x, x_749.y, x_749.z));
      let x_752 : vec3<f32> = u_xlat13;
      let x_753 : vec3<f32> = u_xlat10;
      u_xlat13 = (x_752 / x_753);
      let x_756 : vec3<f32> = u_xlat10;
      let x_758 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_756.x, x_756.y, x_756.z, x_756.x));
      u_xlatb14 = vec3<bool>(x_758.x, x_758.y, x_758.z);
      let x_761 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_761;
      let x_763 : bool = u_xlatb14.x;
      if (x_763) {
        let x_768 : f32 = u_xlat12.x;
        x_764 = x_768;
      } else {
        let x_771 : f32 = u_xlat13.x;
        x_764 = x_771;
      }
      let x_772 : f32 = x_764;
      hlslcc_movcTemp_1.x = x_772;
      let x_775 : bool = u_xlatb14.y;
      if (x_775) {
        let x_780 : f32 = u_xlat12.y;
        x_776 = x_780;
      } else {
        let x_783 : f32 = u_xlat13.y;
        x_776 = x_783;
      }
      let x_784 : f32 = x_776;
      hlslcc_movcTemp_1.y = x_784;
      let x_787 : bool = u_xlatb14.z;
      if (x_787) {
        let x_792 : f32 = u_xlat12.z;
        x_788 = x_792;
      } else {
        let x_795 : f32 = u_xlat13.z;
        x_788 = x_795;
      }
      let x_796 : f32 = x_788;
      hlslcc_movcTemp_1.z = x_796;
      let x_798 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_798;
      let x_800 : f32 = u_xlat12.y;
      let x_802 : f32 = u_xlat12.x;
      u_xlat47 = min(x_800, x_802);
      let x_805 : f32 = u_xlat12.z;
      let x_806 : f32 = u_xlat47;
      u_xlat47 = min(x_805, x_806);
      let x_808 : vec3<f32> = u_xlat11;
      let x_810 : vec4<f32> = x_32.unity_SpecCube1_ProbePosition;
      u_xlat11 = (x_808 + -(vec3<f32>(x_810.x, x_810.y, x_810.z)));
      let x_814 : vec3<f32> = u_xlat10;
      let x_815 : f32 = u_xlat47;
      let x_818 : vec3<f32> = u_xlat11;
      let x_819 : vec3<f32> = ((x_814 * vec3<f32>(x_815, x_815, x_815)) + x_818);
      let x_820 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
    }
    let x_826 : vec4<f32> = u_xlat5;
    let x_828 : f32 = u_xlat45;
    let x_829 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_826.x, x_826.y, x_826.z), x_828);
    u_xlat5 = x_829;
    let x_831 : f32 = u_xlat5.w;
    u_xlat45 = (x_831 + -1.0f);
    let x_835 : f32 = x_32.unity_SpecCube1_HDR.w;
    let x_836 : f32 = u_xlat45;
    u_xlat45 = ((x_835 * x_836) + 1.0f);
    let x_839 : f32 = u_xlat45;
    u_xlat45 = log2(x_839);
    let x_841 : f32 = u_xlat45;
    let x_843 : f32 = x_32.unity_SpecCube1_HDR.y;
    u_xlat45 = (x_841 * x_843);
    let x_845 : f32 = u_xlat45;
    u_xlat45 = exp2(x_845);
    let x_847 : f32 = u_xlat45;
    let x_849 : f32 = x_32.unity_SpecCube1_HDR.x;
    u_xlat45 = (x_847 * x_849);
    let x_851 : vec4<f32> = u_xlat5;
    let x_853 : f32 = u_xlat45;
    let x_855 : vec3<f32> = (vec3<f32>(x_851.x, x_851.y, x_851.z) * vec3<f32>(x_853, x_853, x_853));
    let x_856 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
    let x_858 : f32 = u_xlat46;
    let x_860 : vec4<f32> = u_xlat8;
    let x_863 : vec4<f32> = u_xlat5;
    let x_866 : vec3<f32> = ((vec3<f32>(x_858, x_858, x_858) * vec3<f32>(x_860.x, x_860.y, x_860.z)) + -(vec3<f32>(x_863.x, x_863.y, x_863.z)));
    let x_867 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
    let x_870 : vec4<f32> = x_32.unity_SpecCube0_BoxMin;
    let x_872 : vec4<f32> = u_xlat8;
    let x_875 : vec4<f32> = u_xlat5;
    let x_877 : vec3<f32> = ((vec3<f32>(x_870.w, x_870.w, x_870.w) * vec3<f32>(x_872.x, x_872.y, x_872.z)) + vec3<f32>(x_875.x, x_875.y, x_875.z));
    let x_878 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  }
  let x_880 : vec3<f32> = u_xlat19;
  let x_882 : vec4<f32> = u_xlat9;
  let x_884 : vec3<f32> = (vec3<f32>(x_880.x, x_880.x, x_880.x) * vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_885 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : vec4<f32> = vs_TEXCOORD1;
  let x_890 : f32 = u_xlat3;
  let x_894 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  let x_896 : vec3<f32> = ((-(vec3<f32>(x_887.x, x_887.y, x_887.z)) * vec3<f32>(x_890, x_890, x_890)) + vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_897 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec4<f32> = u_xlat8;
  let x_901 : vec4<f32> = u_xlat8;
  u_xlat45 = dot(vec3<f32>(x_899.x, x_899.y, x_899.z), vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : f32 = u_xlat45;
  u_xlat45 = max(x_904, 0.001f);
  let x_907 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_907);
  let x_909 : f32 = u_xlat45;
  let x_911 : vec4<f32> = u_xlat8;
  let x_913 : vec3<f32> = (vec3<f32>(x_909, x_909, x_909) * vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_916 : vec4<f32> = u_xlat2;
  let x_918 : vec3<f32> = u_xlat18;
  u_xlat45 = dot(vec3<f32>(x_916.x, x_916.y, x_916.z), -(x_918));
  let x_921 : vec4<f32> = u_xlat2;
  let x_924 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  u_xlat46 = dot(vec3<f32>(x_921.x, x_921.y, x_921.z), vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : f32 = u_xlat46;
  u_xlat46 = clamp(x_927, 0.0f, 1.0f);
  let x_929 : vec4<f32> = u_xlat2;
  let x_931 : vec4<f32> = u_xlat8;
  u_xlat2.x = dot(vec3<f32>(x_929.x, x_929.y, x_929.z), vec3<f32>(x_931.x, x_931.y, x_931.z));
  let x_936 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_936, 0.0f, 1.0f);
  let x_941 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  let x_943 : vec4<f32> = u_xlat8;
  u_xlat17.x = dot(vec3<f32>(x_941.x, x_941.y, x_941.z), vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_948 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_948, 0.0f, 1.0f);
  let x_953 : f32 = u_xlat17.x;
  let x_955 : f32 = u_xlat17.x;
  u_xlat32 = (x_953 * x_955);
  let x_957 : f32 = u_xlat32;
  let x_959 : f32 = u_xlat34;
  u_xlat32 = dot(vec2<f32>(x_957, x_957), vec2<f32>(x_959, x_959));
  let x_962 : f32 = u_xlat32;
  u_xlat32 = (x_962 + -0.5f);
  let x_965 : f32 = u_xlat46;
  u_xlat47 = (-(x_965) + 1.0f);
  let x_968 : f32 = u_xlat47;
  let x_969 : f32 = u_xlat47;
  u_xlat3 = (x_968 * x_969);
  let x_971 : f32 = u_xlat3;
  let x_972 : f32 = u_xlat3;
  u_xlat3 = (x_971 * x_972);
  let x_974 : f32 = u_xlat47;
  let x_975 : f32 = u_xlat3;
  u_xlat47 = (x_974 * x_975);
  let x_977 : f32 = u_xlat32;
  let x_978 : f32 = u_xlat47;
  u_xlat47 = ((x_977 * x_978) + 1.0f);
  let x_981 : f32 = u_xlat45;
  u_xlat3 = (-(abs(x_981)) + 1.0f);
  let x_985 : f32 = u_xlat3;
  let x_986 : f32 = u_xlat3;
  u_xlat18.x = (x_985 * x_986);
  let x_990 : f32 = u_xlat18.x;
  let x_992 : f32 = u_xlat18.x;
  u_xlat18.x = (x_990 * x_992);
  let x_995 : f32 = u_xlat3;
  let x_997 : f32 = u_xlat18.x;
  u_xlat3 = (x_995 * x_997);
  let x_999 : f32 = u_xlat32;
  let x_1000 : f32 = u_xlat3;
  u_xlat32 = ((x_999 * x_1000) + 1.0f);
  let x_1003 : f32 = u_xlat32;
  let x_1004 : f32 = u_xlat47;
  u_xlat32 = (x_1003 * x_1004);
  let x_1006 : f32 = u_xlat46;
  let x_1007 : f32 = u_xlat32;
  u_xlat32 = (x_1006 * x_1007);
  let x_1009 : f32 = u_xlat34;
  let x_1010 : f32 = u_xlat34;
  u_xlat47 = (x_1009 * x_1010);
  let x_1012 : f32 = u_xlat47;
  u_xlat47 = max(x_1012, 0.002f);
  let x_1015 : f32 = u_xlat47;
  u_xlat18.x = (-(x_1015) + 1.0f);
  let x_1020 : f32 = u_xlat45;
  let x_1023 : f32 = u_xlat18.x;
  let x_1025 : f32 = u_xlat47;
  u_xlat33 = ((abs(x_1020) * x_1023) + x_1025);
  let x_1027 : f32 = u_xlat46;
  let x_1029 : f32 = u_xlat18.x;
  let x_1031 : f32 = u_xlat47;
  u_xlat18.x = ((x_1027 * x_1029) + x_1031);
  let x_1034 : f32 = u_xlat45;
  let x_1037 : f32 = u_xlat18.x;
  u_xlat45 = (abs(x_1034) * x_1037);
  let x_1039 : f32 = u_xlat46;
  let x_1040 : f32 = u_xlat33;
  let x_1042 : f32 = u_xlat45;
  u_xlat45 = ((x_1039 * x_1040) + x_1042);
  let x_1044 : f32 = u_xlat45;
  u_xlat45 = (x_1044 + 0.00001f);
  let x_1047 : f32 = u_xlat45;
  u_xlat45 = (0.5f / x_1047);
  let x_1049 : f32 = u_xlat47;
  let x_1050 : f32 = u_xlat47;
  u_xlat18.x = (x_1049 * x_1050);
  let x_1054 : f32 = u_xlat2.x;
  let x_1056 : f32 = u_xlat18.x;
  let x_1059 : f32 = u_xlat2.x;
  u_xlat33 = ((x_1054 * x_1056) + -(x_1059));
  let x_1062 : f32 = u_xlat33;
  let x_1064 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1062 * x_1064) + 1.0f);
  let x_1069 : f32 = u_xlat18.x;
  u_xlat18.x = (x_1069 * 0.318309873f);
  let x_1074 : f32 = u_xlat2.x;
  let x_1076 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1074 * x_1076) + 0.0000001f);
  let x_1082 : f32 = u_xlat18.x;
  let x_1084 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1082 / x_1084);
  let x_1087 : f32 = u_xlat45;
  let x_1089 : f32 = u_xlat2.x;
  u_xlat45 = (x_1087 * x_1089);
  let x_1091 : f32 = u_xlat46;
  let x_1092 : f32 = u_xlat45;
  u_xlat45 = (x_1091 * x_1092);
  let x_1094 : f32 = u_xlat45;
  u_xlat45 = (x_1094 * 3.141592741f);
  let x_1097 : f32 = u_xlat45;
  u_xlat45 = max(x_1097, 0.0f);
  let x_1099 : f32 = u_xlat47;
  let x_1100 : f32 = u_xlat47;
  u_xlat46 = ((x_1099 * x_1100) + 1.0f);
  let x_1103 : f32 = u_xlat46;
  u_xlat46 = (1.0f / x_1103);
  let x_1105 : vec4<f32> = u_xlat0;
  let x_1107 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_1105.x, x_1105.y, x_1105.z), vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1113 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1113 == 0.0f));
  let x_1115 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1115);
  let x_1118 : f32 = u_xlat45;
  let x_1120 : f32 = u_xlat2.x;
  u_xlat45 = (x_1118 * x_1120);
  let x_1123 : f32 = u_xlat4.x;
  let x_1125 : f32 = x_32.x_Glossiness;
  u_xlat2.x = (x_1123 + x_1125);
  let x_1129 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1129, 0.0f, 1.0f);
  let x_1132 : f32 = u_xlat32;
  let x_1134 : vec3<f32> = u_xlat6;
  u_xlat18 = (vec3<f32>(x_1132, x_1132, x_1132) * x_1134);
  let x_1136 : vec4<f32> = u_xlat7;
  let x_1138 : vec3<f32> = u_xlat19;
  let x_1141 : vec3<f32> = u_xlat18;
  u_xlat18 = ((vec3<f32>(x_1136.x, x_1136.y, x_1136.z) * vec3<f32>(x_1138.x, x_1138.x, x_1138.x)) + x_1141);
  let x_1143 : vec3<f32> = u_xlat6;
  let x_1144 : f32 = u_xlat45;
  u_xlat4 = (x_1143 * vec3<f32>(x_1144, x_1144, x_1144));
  let x_1148 : f32 = u_xlat17.x;
  u_xlat45 = (-(x_1148) + 1.0f);
  let x_1151 : f32 = u_xlat45;
  let x_1152 : f32 = u_xlat45;
  u_xlat17.x = (x_1151 * x_1152);
  let x_1156 : f32 = u_xlat17.x;
  let x_1158 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1156 * x_1158);
  let x_1161 : f32 = u_xlat45;
  let x_1163 : f32 = u_xlat17.x;
  u_xlat45 = (x_1161 * x_1163);
  let x_1165 : vec4<f32> = u_xlat0;
  u_xlat17 = (-(vec3<f32>(x_1165.x, x_1165.y, x_1165.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1170 : vec3<f32> = u_xlat17;
  let x_1171 : f32 = u_xlat45;
  let x_1174 : vec4<f32> = u_xlat0;
  u_xlat17 = ((x_1170 * vec3<f32>(x_1171, x_1171, x_1171)) + vec3<f32>(x_1174.x, x_1174.y, x_1174.z));
  let x_1177 : vec3<f32> = u_xlat17;
  let x_1178 : vec3<f32> = u_xlat4;
  u_xlat17 = (x_1177 * x_1178);
  let x_1180 : vec4<f32> = u_xlat1;
  let x_1182 : vec3<f32> = u_xlat18;
  let x_1184 : vec3<f32> = u_xlat17;
  let x_1185 : vec3<f32> = ((vec3<f32>(x_1180.x, x_1180.y, x_1180.z) * x_1182) + x_1184);
  let x_1186 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
  let x_1188 : vec4<f32> = u_xlat5;
  let x_1190 : f32 = u_xlat46;
  u_xlat17 = (vec3<f32>(x_1188.x, x_1188.y, x_1188.z) * vec3<f32>(x_1190, x_1190, x_1190));
  let x_1193 : vec4<f32> = u_xlat0;
  let x_1196 : vec4<f32> = u_xlat2;
  u_xlat18 = (-(vec3<f32>(x_1193.x, x_1193.y, x_1193.z)) + vec3<f32>(x_1196.x, x_1196.x, x_1196.x));
  let x_1199 : f32 = u_xlat3;
  let x_1201 : vec3<f32> = u_xlat18;
  let x_1203 : vec4<f32> = u_xlat0;
  let x_1205 : vec3<f32> = ((vec3<f32>(x_1199, x_1199, x_1199) * x_1201) + vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
  let x_1208 : vec3<f32> = u_xlat17;
  let x_1209 : vec4<f32> = u_xlat0;
  let x_1212 : vec4<f32> = u_xlat1;
  let x_1214 : vec3<f32> = ((x_1208 * vec3<f32>(x_1209.x, x_1209.y, x_1209.z)) + vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
  let x_1215 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
  let x_1218 : f32 = vs_TEXCOORD1.w;
  let x_1220 : f32 = x_32.x_ProjectionParams.y;
  u_xlat45 = (x_1218 / x_1220);
  let x_1222 : f32 = u_xlat45;
  u_xlat45 = (-(x_1222) + 1.0f);
  let x_1225 : f32 = u_xlat45;
  let x_1227 : f32 = x_32.x_ProjectionParams.z;
  u_xlat45 = (x_1225 * x_1227);
  let x_1229 : f32 = u_xlat45;
  u_xlat45 = max(x_1229, 0.0f);
  let x_1231 : f32 = u_xlat45;
  let x_1234 : f32 = x_32.unity_FogParams.x;
  u_xlat45 = (x_1231 * x_1234);
  let x_1236 : f32 = u_xlat45;
  let x_1237 : f32 = u_xlat45;
  u_xlat45 = (x_1236 * -(x_1237));
  let x_1240 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1240);
  let x_1242 : vec4<f32> = u_xlat0;
  let x_1246 : vec4<f32> = x_32.unity_FogColor;
  let x_1249 : vec3<f32> = (vec3<f32>(x_1242.x, x_1242.y, x_1242.z) + -(vec3<f32>(x_1246.x, x_1246.y, x_1246.z)));
  let x_1250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1252 : f32 = u_xlat45;
  let x_1254 : vec4<f32> = u_xlat0;
  let x_1258 : vec4<f32> = x_32.unity_FogColor;
  let x_1260 : vec3<f32> = ((vec3<f32>(x_1252, x_1252, x_1252) * vec3<f32>(x_1254.x, x_1254.y, x_1254.z)) + vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
  let x_1261 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1261.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

