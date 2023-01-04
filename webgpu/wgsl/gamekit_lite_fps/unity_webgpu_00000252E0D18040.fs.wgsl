struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_31 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlatb7 : bool;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat13 : vec2<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler;

var<private> u_xlatb18 : bool;

var<private> u_xlat8 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_172 : vec3<f32>;
  var x_323 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_36 : vec4<f32> = x_31.x_Color;
  u_xlat0 = (x_27 * vec3<f32>(x_36.x, x_36.y, x_36.z));
  let x_42 : vec3<f32> = vs_TEXCOORD2;
  let x_47 : vec3<f32> = x_31.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_42) + x_47);
  let x_56 : f32 = x_31.unity_MatrixV[0i].z;
  u_xlat2.x = x_56;
  let x_62 : f32 = x_31.unity_MatrixV[1i].z;
  u_xlat2.y = x_62;
  let x_67 : f32 = x_31.unity_MatrixV[2i].z;
  u_xlat2.z = x_67;
  let x_70 : vec3<f32> = u_xlat1;
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(x_70, vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_74 : vec3<f32> = vs_TEXCOORD2;
  let x_77 : vec4<f32> = x_31.unity_ShadowFadeCenterAndType;
  u_xlat1 = (x_74 + -(vec3<f32>(x_77.x, x_77.y, x_77.z)));
  let x_81 : vec3<f32> = u_xlat1;
  let x_82 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(x_81, x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_86);
  let x_89 : f32 = u_xlat18;
  let x_92 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_89) + x_92);
  let x_97 : f32 = x_31.unity_ShadowFadeCenterAndType.w;
  let x_99 : f32 = u_xlat1.x;
  let x_101 : f32 = u_xlat18;
  u_xlat18 = ((x_97 * x_99) + x_101);
  let x_103 : f32 = u_xlat18;
  let x_106 : f32 = x_31.x_LightShadowData.z;
  let x_109 : f32 = x_31.x_LightShadowData.w;
  u_xlat18 = ((x_103 * x_106) + x_109);
  let x_111 : f32 = u_xlat18;
  u_xlat18 = clamp(x_111, 0.0f, 1.0f);
  let x_120 : f32 = x_31.unity_ProbeVolumeParams.x;
  u_xlatb1 = (x_120 == 1.0f);
  let x_122 : bool = u_xlatb1;
  if (x_122) {
    let x_127 : f32 = x_31.unity_ProbeVolumeParams.y;
    u_xlatb7 = (x_127 == 1.0f);
    let x_129 : vec3<f32> = vs_TEXCOORD2;
    let x_133 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[1i];
    let x_135 : vec3<f32> = (vec3<f32>(x_129.y, x_129.y, x_129.y) * vec3<f32>(x_133.x, x_133.y, x_133.z));
    let x_136 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
    let x_139 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[0i];
    let x_141 : vec3<f32> = vs_TEXCOORD2;
    let x_144 : vec4<f32> = u_xlat2;
    let x_146 : vec3<f32> = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + vec3<f32>(x_144.x, x_144.y, x_144.z));
    let x_147 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
    let x_150 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[2i];
    let x_152 : vec3<f32> = vs_TEXCOORD2;
    let x_155 : vec4<f32> = u_xlat2;
    let x_157 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(x_152.z, x_152.z, x_152.z)) + vec3<f32>(x_155.x, x_155.y, x_155.z));
    let x_158 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
    let x_160 : vec4<f32> = u_xlat2;
    let x_164 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[3i];
    let x_166 : vec3<f32> = (vec3<f32>(x_160.x, x_160.y, x_160.z) + vec3<f32>(x_164.x, x_164.y, x_164.z));
    let x_167 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
    let x_170 : bool = u_xlatb7;
    if (x_170) {
      let x_175 : vec4<f32> = u_xlat2;
      x_172 = vec3<f32>(x_175.x, x_175.y, x_175.z);
    } else {
      let x_178 : vec3<f32> = vs_TEXCOORD2;
      x_172 = x_178;
    }
    let x_179 : vec3<f32> = x_172;
    u_xlat7 = x_179;
    let x_180 : vec3<f32> = u_xlat7;
    let x_183 : vec3<f32> = x_31.unity_ProbeVolumeMin;
    u_xlat7 = (x_180 + -(x_183));
    let x_186 : vec3<f32> = u_xlat7;
    let x_189 : vec3<f32> = x_31.unity_ProbeVolumeSizeInv;
    let x_190 : vec3<f32> = (x_186 * x_189);
    let x_191 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_191.x, x_190.x, x_190.y, x_190.z);
    let x_194 : f32 = u_xlat2.y;
    u_xlat7.x = ((x_194 * 0.25f) + 0.75f);
    let x_203 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat13.x = ((x_203 * 0.5f) + 0.75f);
    let x_209 : f32 = u_xlat13.x;
    let x_211 : f32 = u_xlat7.x;
    u_xlat2.x = max(x_209, x_211);
    let x_222 : vec4<f32> = u_xlat2;
    let x_224 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_222.x, x_222.z, x_222.w));
    u_xlat2 = x_224;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_230 : vec4<f32> = u_xlat2;
  let x_233 : vec4<f32> = x_31.unity_OcclusionMaskSelector;
  u_xlat7.x = dot(x_230, x_233);
  let x_237 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_237, 0.0f, 1.0f);
  let x_242 : vec4<f32> = vs_TEXCOORD5;
  let x_244 : vec4<f32> = vs_TEXCOORD5;
  u_xlat13 = (vec2<f32>(x_242.x, x_242.y) / vec2<f32>(x_244.w, x_244.w));
  let x_252 : vec2<f32> = u_xlat13;
  let x_253 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_252);
  u_xlat13.x = x_253.x;
  let x_257 : f32 = u_xlat13.x;
  let x_260 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_257) + x_260);
  let x_263 : f32 = u_xlat18;
  let x_265 : f32 = u_xlat7.x;
  let x_268 : f32 = u_xlat13.x;
  u_xlat18 = ((x_263 * x_265) + x_268);
  let x_270 : f32 = u_xlat18;
  let x_274 : vec4<f32> = x_31.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_270, x_270, x_270) * vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_277 : bool = u_xlatb1;
  if (x_277) {
    let x_282 : f32 = x_31.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_282 == 1.0f);
    let x_284 : vec3<f32> = vs_TEXCOORD2;
    let x_287 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[1i];
    let x_289 : vec3<f32> = (vec3<f32>(x_284.y, x_284.y, x_284.y) * vec3<f32>(x_287.x, x_287.y, x_287.z));
    let x_290 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
    let x_293 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[0i];
    let x_295 : vec3<f32> = vs_TEXCOORD2;
    let x_298 : vec4<f32> = u_xlat2;
    let x_300 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_295.x, x_295.x, x_295.x)) + vec3<f32>(x_298.x, x_298.y, x_298.z));
    let x_301 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
    let x_304 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[2i];
    let x_306 : vec3<f32> = vs_TEXCOORD2;
    let x_309 : vec4<f32> = u_xlat2;
    let x_311 : vec3<f32> = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.z, x_306.z, x_306.z)) + vec3<f32>(x_309.x, x_309.y, x_309.z));
    let x_312 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
    let x_314 : vec4<f32> = u_xlat2;
    let x_317 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[3i];
    let x_319 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) + vec3<f32>(x_317.x, x_317.y, x_317.z));
    let x_320 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_322 : bool = u_xlatb18;
    if (x_322) {
      let x_326 : vec4<f32> = u_xlat2;
      x_323 = vec3<f32>(x_326.x, x_326.y, x_326.z);
    } else {
      let x_329 : vec3<f32> = vs_TEXCOORD2;
      x_323 = x_329;
    }
    let x_330 : vec3<f32> = x_323;
    let x_331 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
    let x_333 : vec4<f32> = u_xlat2;
    let x_336 : vec3<f32> = x_31.unity_ProbeVolumeMin;
    let x_338 : vec3<f32> = (vec3<f32>(x_333.x, x_333.y, x_333.z) + -(x_336));
    let x_339 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
    let x_341 : vec4<f32> = u_xlat2;
    let x_344 : vec3<f32> = x_31.unity_ProbeVolumeSizeInv;
    let x_345 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) * x_344);
    let x_346 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_346.x, x_345.x, x_345.y, x_345.z);
    let x_349 : f32 = u_xlat2.y;
    u_xlat18 = (x_349 * 0.25f);
    let x_352 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat1.x = (x_352 * 0.5f);
    let x_357 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat8 = ((-(x_357) * 0.5f) + 0.25f);
    let x_361 : f32 = u_xlat18;
    let x_363 : f32 = u_xlat1.x;
    u_xlat18 = max(x_361, x_363);
    let x_365 : f32 = u_xlat8;
    let x_366 : f32 = u_xlat18;
    u_xlat2.x = min(x_365, x_366);
    let x_373 : vec4<f32> = u_xlat2;
    let x_375 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_373.x, x_373.z, x_373.w));
    u_xlat3 = x_375;
    let x_377 : vec4<f32> = u_xlat2;
    let x_380 : vec3<f32> = (vec3<f32>(x_377.x, x_377.z, x_377.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_381 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
    let x_386 : vec4<f32> = u_xlat4;
    let x_388 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_386.x, x_386.y, x_386.z));
    u_xlat4 = x_388;
    let x_389 : vec4<f32> = u_xlat2;
    let x_392 : vec3<f32> = (vec3<f32>(x_389.x, x_389.z, x_389.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_393 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
    let x_398 : vec4<f32> = u_xlat2;
    let x_400 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_398.x, x_398.y, x_398.z));
    u_xlat2 = x_400;
    let x_403 : vec3<f32> = vs_TEXCOORD1;
    let x_404 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
    u_xlat5.w = 1.0f;
    let x_407 : vec4<f32> = u_xlat3;
    let x_408 : vec4<f32> = u_xlat5;
    u_xlat3.x = dot(x_407, x_408);
    let x_411 : vec4<f32> = u_xlat4;
    let x_412 : vec4<f32> = u_xlat5;
    u_xlat3.y = dot(x_411, x_412);
    let x_415 : vec4<f32> = u_xlat2;
    let x_416 : vec4<f32> = u_xlat5;
    u_xlat3.z = dot(x_415, x_416);
  } else {
    let x_420 : vec3<f32> = vs_TEXCOORD1;
    let x_421 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
    u_xlat2.w = 1.0f;
    let x_425 : vec4<f32> = x_31.unity_SHAr;
    let x_426 : vec4<f32> = u_xlat2;
    u_xlat3.x = dot(x_425, x_426);
    let x_430 : vec4<f32> = x_31.unity_SHAg;
    let x_431 : vec4<f32> = u_xlat2;
    u_xlat3.y = dot(x_430, x_431);
    let x_436 : vec4<f32> = x_31.unity_SHAb;
    let x_437 : vec4<f32> = u_xlat2;
    u_xlat3.z = dot(x_436, x_437);
  }
  let x_440 : vec4<f32> = u_xlat3;
  let x_443 : vec3<f32> = vs_TEXCOORD3;
  let x_444 : vec3<f32> = (vec3<f32>(x_440.x, x_440.y, x_440.z) + x_443);
  let x_445 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat2;
  let x_450 : vec3<f32> = max(vec3<f32>(x_447.x, x_447.y, x_447.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_451 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec3<f32> = vs_TEXCOORD1;
  let x_455 : vec4<f32> = x_31.x_WorldSpaceLightPos0;
  u_xlat18 = dot(x_453, vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : f32 = u_xlat18;
  u_xlat18 = max(x_458, 0.0f);
  let x_460 : vec3<f32> = u_xlat0;
  let x_461 : vec3<f32> = u_xlat7;
  u_xlat1 = (x_460 * x_461);
  let x_463 : vec3<f32> = u_xlat0;
  let x_464 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_463 * vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_469 : vec3<f32> = u_xlat1;
  let x_470 : f32 = u_xlat18;
  let x_473 : vec3<f32> = u_xlat0;
  let x_474 : vec3<f32> = ((x_469 * vec3<f32>(x_470, x_470, x_470)) + x_473);
  let x_475 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD5_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

