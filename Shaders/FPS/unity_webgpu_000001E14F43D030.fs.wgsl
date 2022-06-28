struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_NoiseStrength : f32,
  @size(12)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_EdgeColor1 : vec4<f32>,
  x_Emission : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_39 : PGlobals;

var<private> u_xlat48 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat49 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(15) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(18) var sampler_MetallicSmooth : sampler;

var<private> u_xlat50 : f32;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(16) var sampler_Gradient : sampler;

var<private> u_xlat35 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainTex : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat51 : f32;

@group(0) @binding(5) var x_AO : texture_2d<f32>;

@group(0) @binding(19) var sampler_AO : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(6) var x_Normal : texture_2d<f32>;

@group(0) @binding(17) var sampler_Normal : sampler;

var<private> u_xlatb49 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb50 : bool;

@group(0) @binding(10) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(12) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(7) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ShadowMapTexture : sampler;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb13 : vec3<bool>;

@group(0) @binding(8) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb52 : bool;

var<private> u_xlat52 : f32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb15 : vec3<bool>;

@group(0) @binding(9) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_365 : vec3<f32>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_580 : f32;
  var x_592 : f32;
  var x_604 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_756 : f32;
  var x_768 : f32;
  var x_780 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_TEXCOORD1.w;
  u_xlat0.x = x_16;
  let x_22 : f32 = vs_TEXCOORD2.w;
  u_xlat0.y = x_22;
  let x_27 : f32 = vs_TEXCOORD3.w;
  u_xlat0.z = x_27;
  let x_33 : vec4<f32> = u_xlat0;
  let x_44 : vec3<f32> = x_39.x_WorldSpaceCameraPos;
  u_xlat1 = (-(vec3<f32>(x_33.x, x_33.y, x_33.z)) + x_44);
  let x_47 : vec3<f32> = u_xlat1;
  let x_48 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_50);
  let x_53 : f32 = u_xlat48;
  let x_55 : vec3<f32> = u_xlat1;
  let x_56 : vec3<f32> = (vec3<f32>(x_53, x_53, x_53) * x_55);
  let x_57 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_72 : vec4<f32> = vs_TEXCOORD0;
  let x_74 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_72.x, x_72.y));
  u_xlat49 = x_74.x;
  let x_82 : vec4<f32> = vs_TEXCOORD0;
  let x_84 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_82.z, x_82.w));
  let x_85 : vec2<f32> = vec2<f32>(x_84.x, x_84.w);
  let x_86 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_94 : vec4<f32> = vs_TEXCOORD0;
  let x_96 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_94.z, x_94.w));
  u_xlat50 = x_96.x;
  let x_99 : f32 = u_xlat50;
  u_xlat35 = (-(x_99) + 1.0f);
  let x_103 : f32 = u_xlat49;
  let x_104 : f32 = u_xlat35;
  u_xlat49 = (x_103 * x_104);
  let x_106 : f32 = u_xlat49;
  let x_110 : f32 = x_39.x_NoiseStrength;
  let x_112 : f32 = u_xlat50;
  u_xlat49 = ((x_106 * x_110) + x_112);
  let x_114 : f32 = u_xlat49;
  u_xlat49 = (-(x_114) + 1.0f);
  let x_117 : f32 = u_xlat49;
  let x_120 : f32 = x_39.x_Cutoff;
  u_xlat49 = (x_117 + -(x_120));
  let x_125 : f32 = x_39.x_EdgeSize;
  u_xlat50 = (1.0f / -(x_125));
  let x_128 : f32 = u_xlat49;
  let x_129 : f32 = u_xlat50;
  u_xlat49 = (x_128 * x_129);
  let x_131 : f32 = u_xlat49;
  u_xlat49 = clamp(x_131, 0.0f, 1.0f);
  let x_134 : f32 = u_xlat49;
  u_xlat50 = ((x_134 * -2.0f) + 3.0f);
  let x_139 : f32 = u_xlat49;
  let x_140 : f32 = u_xlat49;
  u_xlat49 = (x_139 * x_140);
  let x_142 : f32 = u_xlat49;
  let x_143 : f32 = u_xlat50;
  u_xlat35 = (x_142 * x_143);
  let x_151 : vec4<f32> = vs_TEXCOORD0;
  let x_153 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_151.z, x_151.w));
  u_xlat4 = x_153;
  let x_155 : vec4<f32> = u_xlat4;
  let x_160 : vec4<f32> = x_39.x_Color;
  u_xlat5 = (vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_169 : vec4<f32> = vs_TEXCOORD0;
  let x_171 : vec4<f32> = textureSample(x_AO, sampler_AO, vec2<f32>(x_169.z, x_169.w));
  u_xlat51 = x_171.x;
  let x_174 : f32 = u_xlat35;
  let x_178 : vec4<f32> = x_39.x_EdgeColor1;
  u_xlat6 = (vec3<f32>(x_174, x_174, x_174) * vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat4;
  let x_185 : vec4<f32> = x_39.x_Emission;
  let x_188 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_181.w, x_181.w, x_181.w) * vec3<f32>(x_185.x, x_185.y, x_185.z)) + x_188);
  let x_196 : vec4<f32> = vs_TEXCOORD0;
  let x_198 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_196.z, x_196.w));
  u_xlat7 = vec3<f32>(x_198.x, x_198.y, x_198.w);
  let x_201 : f32 = u_xlat7.z;
  let x_203 : f32 = u_xlat7.x;
  u_xlat7.x = (x_201 * x_203);
  let x_206 : vec3<f32> = u_xlat7;
  let x_213 : vec2<f32> = ((vec2<f32>(x_206.x, x_206.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_214 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_213.x, x_213.y, x_214.z);
  let x_216 : vec3<f32> = u_xlat7;
  let x_218 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec2<f32>(x_216.x, x_216.y), vec2<f32>(x_218.x, x_218.y));
  let x_221 : f32 = u_xlat35;
  u_xlat35 = min(x_221, 1.0f);
  let x_223 : f32 = u_xlat35;
  u_xlat35 = (-(x_223) + 1.0f);
  let x_226 : f32 = u_xlat35;
  u_xlat7.z = sqrt(x_226);
  let x_230 : f32 = u_xlat3.x;
  let x_233 : f32 = x_39.x_Metallic;
  u_xlat3.x = (x_230 * x_233);
  let x_236 : f32 = u_xlat50;
  let x_238 : f32 = u_xlat49;
  let x_241 : f32 = x_39.x_Cutoff;
  u_xlat49 = ((-(x_236) * x_238) + -(x_241));
  let x_244 : f32 = u_xlat49;
  u_xlat49 = (x_244 + 1.0f);
  let x_249 : f32 = u_xlat49;
  u_xlatb49 = (x_249 < 0.0f);
  let x_251 : bool = u_xlatb49;
  if (((select(0i, 1i, x_251) * -1i) != 0i)) {
    discard;
  }
  let x_263 : f32 = x_39.unity_MatrixV[0i].z;
  u_xlat8.x = x_263;
  let x_266 : f32 = x_39.unity_MatrixV[1i].z;
  u_xlat8.y = x_266;
  let x_270 : f32 = x_39.unity_MatrixV[2i].z;
  u_xlat8.z = x_270;
  let x_272 : vec3<f32> = u_xlat1;
  let x_273 : vec4<f32> = u_xlat8;
  u_xlat49 = dot(x_272, vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat0;
  let x_280 : vec4<f32> = x_39.unity_ShadowFadeCenterAndType;
  let x_283 : vec3<f32> = (vec3<f32>(x_276.x, x_276.y, x_276.z) + -(vec3<f32>(x_280.x, x_280.y, x_280.z)));
  let x_284 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat8;
  let x_288 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(vec3<f32>(x_286.x, x_286.y, x_286.z), vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : f32 = u_xlat50;
  u_xlat50 = sqrt(x_291);
  let x_293 : f32 = u_xlat49;
  let x_295 : f32 = u_xlat50;
  u_xlat50 = (-(x_293) + x_295);
  let x_298 : f32 = x_39.unity_ShadowFadeCenterAndType.w;
  let x_299 : f32 = u_xlat50;
  let x_301 : f32 = u_xlat49;
  u_xlat49 = ((x_298 * x_299) + x_301);
  let x_303 : f32 = u_xlat49;
  let x_306 : f32 = x_39.x_LightShadowData.z;
  let x_309 : f32 = x_39.x_LightShadowData.w;
  u_xlat49 = ((x_303 * x_306) + x_309);
  let x_311 : f32 = u_xlat49;
  u_xlat49 = clamp(x_311, 0.0f, 1.0f);
  let x_316 : f32 = x_39.unity_ProbeVolumeParams.x;
  u_xlatb50 = (x_316 == 1.0f);
  let x_318 : bool = u_xlatb50;
  if (x_318) {
    let x_322 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb50 = (x_322 == 1.0f);
    let x_324 : vec4<f32> = vs_TEXCOORD2;
    let x_328 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_330 : vec3<f32> = (vec3<f32>(x_324.w, x_324.w, x_324.w) * vec3<f32>(x_328.x, x_328.y, x_328.z));
    let x_331 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
    let x_334 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_336 : vec4<f32> = vs_TEXCOORD1;
    let x_339 : vec4<f32> = u_xlat8;
    let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(x_336.w, x_336.w, x_336.w)) + vec3<f32>(x_339.x, x_339.y, x_339.z));
    let x_342 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
    let x_345 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_347 : vec4<f32> = vs_TEXCOORD3;
    let x_350 : vec4<f32> = u_xlat8;
    let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.w, x_347.w, x_347.w)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
    let x_353 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
    let x_355 : vec4<f32> = u_xlat8;
    let x_358 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_360 : vec3<f32> = (vec3<f32>(x_355.x, x_355.y, x_355.z) + vec3<f32>(x_358.x, x_358.y, x_358.z));
    let x_361 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
    let x_363 : bool = u_xlatb50;
    if (x_363) {
      let x_368 : vec4<f32> = u_xlat8;
      x_365 = vec3<f32>(x_368.x, x_368.y, x_368.z);
    } else {
      let x_371 : vec4<f32> = u_xlat0;
      x_365 = vec3<f32>(x_371.x, x_371.y, x_371.z);
    }
    let x_373 : vec3<f32> = x_365;
    let x_374 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
    let x_376 : vec4<f32> = u_xlat8;
    let x_380 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_382 : vec3<f32> = (vec3<f32>(x_376.x, x_376.y, x_376.z) + -(x_380));
    let x_383 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
    let x_385 : vec4<f32> = u_xlat8;
    let x_389 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_390 : vec3<f32> = (vec3<f32>(x_385.x, x_385.y, x_385.z) * x_389);
    let x_391 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_391.x, x_390.x, x_390.y, x_390.z);
    let x_394 : f32 = u_xlat8.y;
    u_xlat50 = ((x_394 * 0.25f) + 0.75f);
    let x_400 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat35 = ((x_400 * 0.5f) + 0.75f);
    let x_404 : f32 = u_xlat50;
    let x_405 : f32 = u_xlat35;
    u_xlat8.x = max(x_404, x_405);
    let x_416 : vec4<f32> = u_xlat8;
    let x_418 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_416.x, x_416.z, x_416.w));
    u_xlat8 = x_418;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_424 : vec4<f32> = u_xlat8;
  let x_426 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat50 = dot(x_424, x_426);
  let x_428 : f32 = u_xlat50;
  u_xlat50 = clamp(x_428, 0.0f, 1.0f);
  let x_431 : vec4<f32> = vs_TEXCOORD6;
  let x_433 : vec4<f32> = vs_TEXCOORD6;
  let x_435 : vec2<f32> = (vec2<f32>(x_431.x, x_431.y) / vec2<f32>(x_433.w, x_433.w));
  let x_436 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
  let x_443 : vec4<f32> = u_xlat8;
  let x_445 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_443.x, x_443.y));
  u_xlat35 = x_445.x;
  let x_447 : f32 = u_xlat50;
  let x_448 : f32 = u_xlat35;
  u_xlat50 = (x_447 + -(x_448));
  let x_451 : f32 = u_xlat49;
  let x_452 : f32 = u_xlat50;
  let x_454 : f32 = u_xlat35;
  u_xlat49 = ((x_451 * x_452) + x_454);
  let x_456 : vec4<f32> = vs_TEXCOORD1;
  let x_458 : vec3<f32> = u_xlat7;
  u_xlat8.x = dot(vec3<f32>(x_456.x, x_456.y, x_456.z), x_458);
  let x_461 : vec4<f32> = vs_TEXCOORD2;
  let x_463 : vec3<f32> = u_xlat7;
  u_xlat8.y = dot(vec3<f32>(x_461.x, x_461.y, x_461.z), x_463);
  let x_466 : vec4<f32> = vs_TEXCOORD3;
  let x_468 : vec3<f32> = u_xlat7;
  u_xlat8.z = dot(vec3<f32>(x_466.x, x_466.y, x_466.z), x_468);
  let x_471 : vec4<f32> = u_xlat8;
  let x_473 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(vec3<f32>(x_471.x, x_471.y, x_471.z), vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_476);
  let x_478 : f32 = u_xlat50;
  let x_480 : vec4<f32> = u_xlat8;
  u_xlat7 = (vec3<f32>(x_478, x_478, x_478) * vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_484 : f32 = u_xlat3.y;
  let x_488 : f32 = x_39.x_Glossiness;
  u_xlat50 = ((-(x_484) * x_488) + 1.0f);
  let x_491 : vec4<f32> = u_xlat2;
  let x_494 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(-(vec3<f32>(x_491.x, x_491.y, x_491.z)), x_494);
  let x_496 : f32 = u_xlat35;
  let x_497 : f32 = u_xlat35;
  u_xlat35 = (x_496 + x_497);
  let x_499 : vec3<f32> = u_xlat7;
  let x_500 : f32 = u_xlat35;
  let x_504 : vec4<f32> = u_xlat2;
  let x_507 : vec3<f32> = ((x_499 * -(vec3<f32>(x_500, x_500, x_500))) + -(vec3<f32>(x_504.x, x_504.y, x_504.z)));
  let x_508 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_511 : f32 = u_xlat49;
  let x_515 : vec4<f32> = x_39.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_511, x_511, x_511) * vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_520 : f32 = x_39.unity_SpecCube0_ProbePosition.w;
  u_xlatb49 = (0.0f < x_520);
  let x_522 : bool = u_xlatb49;
  if (x_522) {
    let x_525 : vec4<f32> = u_xlat8;
    let x_527 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_525.x, x_525.y, x_525.z), vec3<f32>(x_527.x, x_527.y, x_527.z));
    let x_530 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_530);
    let x_533 : f32 = u_xlat49;
    let x_535 : vec4<f32> = u_xlat8;
    let x_537 : vec3<f32> = (vec3<f32>(x_533, x_533, x_533) * vec3<f32>(x_535.x, x_535.y, x_535.z));
    let x_538 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
    let x_541 : vec4<f32> = u_xlat0;
    let x_546 : vec4<f32> = x_39.unity_SpecCube0_BoxMax;
    u_xlat11 = (-(vec3<f32>(x_541.x, x_541.y, x_541.z)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
    let x_549 : vec3<f32> = u_xlat11;
    let x_550 : vec4<f32> = u_xlat10;
    u_xlat11 = (x_549 / vec3<f32>(x_550.x, x_550.y, x_550.z));
    let x_554 : vec4<f32> = u_xlat0;
    let x_559 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(vec3<f32>(x_554.x, x_554.y, x_554.z)) + vec3<f32>(x_559.x, x_559.y, x_559.z));
    let x_562 : vec3<f32> = u_xlat12;
    let x_563 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_562 / vec3<f32>(x_563.x, x_563.y, x_563.z));
    let x_570 : vec4<f32> = u_xlat10;
    let x_573 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_570.x, x_570.y, x_570.z, x_570.x));
    u_xlatb13 = vec3<bool>(x_573.x, x_573.y, x_573.z);
    let x_576 : vec3<f32> = u_xlat11;
    hlslcc_movcTemp = x_576;
    let x_578 : bool = u_xlatb13.x;
    if (x_578) {
      let x_584 : f32 = u_xlat11.x;
      x_580 = x_584;
    } else {
      let x_587 : f32 = u_xlat12.x;
      x_580 = x_587;
    }
    let x_588 : f32 = x_580;
    hlslcc_movcTemp.x = x_588;
    let x_591 : bool = u_xlatb13.y;
    if (x_591) {
      let x_596 : f32 = u_xlat11.y;
      x_592 = x_596;
    } else {
      let x_599 : f32 = u_xlat12.y;
      x_592 = x_599;
    }
    let x_600 : f32 = x_592;
    hlslcc_movcTemp.y = x_600;
    let x_603 : bool = u_xlatb13.z;
    if (x_603) {
      let x_608 : f32 = u_xlat11.z;
      x_604 = x_608;
    } else {
      let x_611 : f32 = u_xlat12.z;
      x_604 = x_611;
    }
    let x_612 : f32 = x_604;
    hlslcc_movcTemp.z = x_612;
    let x_614 : vec3<f32> = hlslcc_movcTemp;
    u_xlat11 = x_614;
    let x_616 : f32 = u_xlat11.y;
    let x_618 : f32 = u_xlat11.x;
    u_xlat49 = min(x_616, x_618);
    let x_621 : f32 = u_xlat11.z;
    let x_622 : f32 = u_xlat49;
    u_xlat49 = min(x_621, x_622);
    let x_624 : vec4<f32> = u_xlat0;
    let x_627 : vec4<f32> = x_39.unity_SpecCube0_ProbePosition;
    u_xlat11 = (vec3<f32>(x_624.x, x_624.y, x_624.z) + -(vec3<f32>(x_627.x, x_627.y, x_627.z)));
    let x_631 : vec4<f32> = u_xlat10;
    let x_633 : f32 = u_xlat49;
    let x_636 : vec3<f32> = u_xlat11;
    let x_637 : vec3<f32> = ((vec3<f32>(x_631.x, x_631.y, x_631.z) * vec3<f32>(x_633, x_633, x_633)) + x_636);
    let x_638 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  } else {
    let x_641 : vec4<f32> = u_xlat8;
    let x_642 : vec3<f32> = vec3<f32>(x_641.x, x_641.y, x_641.z);
    let x_643 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  }
  let x_645 : f32 = u_xlat50;
  u_xlat49 = ((-(x_645) * 0.699999988f) + 1.700000048f);
  let x_651 : f32 = u_xlat49;
  let x_652 : f32 = u_xlat50;
  u_xlat49 = (x_651 * x_652);
  let x_654 : f32 = u_xlat49;
  u_xlat49 = (x_654 * 6.0f);
  let x_665 : vec4<f32> = u_xlat10;
  let x_667 : f32 = u_xlat49;
  let x_668 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_665.x, x_665.y, x_665.z), x_667);
  u_xlat10 = x_668;
  let x_670 : f32 = u_xlat10.w;
  u_xlat35 = (x_670 + -1.0f);
  let x_674 : f32 = x_39.unity_SpecCube0_HDR.w;
  let x_675 : f32 = u_xlat35;
  u_xlat35 = ((x_674 * x_675) + 1.0f);
  let x_678 : f32 = u_xlat35;
  u_xlat35 = log2(x_678);
  let x_680 : f32 = u_xlat35;
  let x_682 : f32 = x_39.unity_SpecCube0_HDR.y;
  u_xlat35 = (x_680 * x_682);
  let x_684 : f32 = u_xlat35;
  u_xlat35 = exp2(x_684);
  let x_686 : f32 = u_xlat35;
  let x_688 : f32 = x_39.unity_SpecCube0_HDR.x;
  u_xlat35 = (x_686 * x_688);
  let x_690 : vec4<f32> = u_xlat10;
  let x_692 : f32 = u_xlat35;
  u_xlat11 = (vec3<f32>(x_690.x, x_690.y, x_690.z) * vec3<f32>(x_692, x_692, x_692));
  let x_697 : f32 = x_39.unity_SpecCube0_BoxMin.w;
  u_xlatb52 = (x_697 < 0.999989986f);
  let x_700 : bool = u_xlatb52;
  if (x_700) {
    let x_705 : f32 = x_39.unity_SpecCube1_ProbePosition.w;
    u_xlatb52 = (0.0f < x_705);
    let x_707 : bool = u_xlatb52;
    if (x_707) {
      let x_711 : vec4<f32> = u_xlat8;
      let x_713 : vec4<f32> = u_xlat8;
      u_xlat52 = dot(vec3<f32>(x_711.x, x_711.y, x_711.z), vec3<f32>(x_713.x, x_713.y, x_713.z));
      let x_716 : f32 = u_xlat52;
      u_xlat52 = inverseSqrt(x_716);
      let x_718 : f32 = u_xlat52;
      let x_720 : vec4<f32> = u_xlat8;
      u_xlat12 = (vec3<f32>(x_718, x_718, x_718) * vec3<f32>(x_720.x, x_720.y, x_720.z));
      let x_724 : vec4<f32> = u_xlat0;
      let x_729 : vec4<f32> = x_39.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(vec3<f32>(x_724.x, x_724.y, x_724.z)) + vec3<f32>(x_729.x, x_729.y, x_729.z));
      let x_732 : vec3<f32> = u_xlat13;
      let x_733 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_732 / x_733);
      let x_736 : vec4<f32> = u_xlat0;
      let x_741 : vec4<f32> = x_39.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(vec3<f32>(x_736.x, x_736.y, x_736.z)) + vec3<f32>(x_741.x, x_741.y, x_741.z));
      let x_744 : vec3<f32> = u_xlat14;
      let x_745 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_744 / x_745);
      let x_748 : vec3<f32> = u_xlat12;
      let x_750 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_748.x, x_748.y, x_748.z, x_748.x));
      u_xlatb15 = vec3<bool>(x_750.x, x_750.y, x_750.z);
      let x_753 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_753;
      let x_755 : bool = u_xlatb15.x;
      if (x_755) {
        let x_760 : f32 = u_xlat13.x;
        x_756 = x_760;
      } else {
        let x_763 : f32 = u_xlat14.x;
        x_756 = x_763;
      }
      let x_764 : f32 = x_756;
      hlslcc_movcTemp_1.x = x_764;
      let x_767 : bool = u_xlatb15.y;
      if (x_767) {
        let x_772 : f32 = u_xlat13.y;
        x_768 = x_772;
      } else {
        let x_775 : f32 = u_xlat14.y;
        x_768 = x_775;
      }
      let x_776 : f32 = x_768;
      hlslcc_movcTemp_1.y = x_776;
      let x_779 : bool = u_xlatb15.z;
      if (x_779) {
        let x_784 : f32 = u_xlat13.z;
        x_780 = x_784;
      } else {
        let x_787 : f32 = u_xlat14.z;
        x_780 = x_787;
      }
      let x_788 : f32 = x_780;
      hlslcc_movcTemp_1.z = x_788;
      let x_790 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_790;
      let x_792 : f32 = u_xlat13.y;
      let x_794 : f32 = u_xlat13.x;
      u_xlat52 = min(x_792, x_794);
      let x_797 : f32 = u_xlat13.z;
      let x_798 : f32 = u_xlat52;
      u_xlat52 = min(x_797, x_798);
      let x_800 : vec4<f32> = u_xlat0;
      let x_803 : vec4<f32> = x_39.unity_SpecCube1_ProbePosition;
      let x_806 : vec3<f32> = (vec3<f32>(x_800.x, x_800.y, x_800.z) + -(vec3<f32>(x_803.x, x_803.y, x_803.z)));
      let x_807 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
      let x_809 : vec3<f32> = u_xlat12;
      let x_810 : f32 = u_xlat52;
      let x_813 : vec4<f32> = u_xlat0;
      let x_815 : vec3<f32> = ((x_809 * vec3<f32>(x_810, x_810, x_810)) + vec3<f32>(x_813.x, x_813.y, x_813.z));
      let x_816 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
    }
    let x_822 : vec4<f32> = u_xlat8;
    let x_824 : f32 = u_xlat49;
    let x_825 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_822.x, x_822.y, x_822.z), x_824);
    u_xlat8 = x_825;
    let x_827 : f32 = u_xlat8.w;
    u_xlat0.x = (x_827 + -1.0f);
    let x_832 : f32 = x_39.unity_SpecCube1_HDR.w;
    let x_834 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_832 * x_834) + 1.0f);
    let x_839 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_839);
    let x_843 : f32 = u_xlat0.x;
    let x_845 : f32 = x_39.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_843 * x_845);
    let x_849 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_849);
    let x_853 : f32 = u_xlat0.x;
    let x_855 : f32 = x_39.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_853 * x_855);
    let x_858 : vec4<f32> = u_xlat8;
    let x_860 : vec4<f32> = u_xlat0;
    let x_862 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) * vec3<f32>(x_860.x, x_860.x, x_860.x));
    let x_863 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
    let x_865 : f32 = u_xlat35;
    let x_867 : vec4<f32> = u_xlat10;
    let x_870 : vec4<f32> = u_xlat0;
    let x_873 : vec3<f32> = ((vec3<f32>(x_865, x_865, x_865) * vec3<f32>(x_867.x, x_867.y, x_867.z)) + -(vec3<f32>(x_870.x, x_870.y, x_870.z)));
    let x_874 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
    let x_877 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    let x_879 : vec4<f32> = u_xlat8;
    let x_882 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_877.w, x_877.w, x_877.w) * vec3<f32>(x_879.x, x_879.y, x_879.z)) + vec3<f32>(x_882.x, x_882.y, x_882.z));
  }
  let x_885 : f32 = u_xlat51;
  let x_887 : vec3<f32> = u_xlat11;
  let x_888 : vec3<f32> = (vec3<f32>(x_885, x_885, x_885) * x_887);
  let x_889 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_891 : vec4<f32> = u_xlat4;
  let x_894 : vec4<f32> = x_39.x_Color;
  let x_899 : vec3<f32> = ((vec3<f32>(x_891.x, x_891.y, x_891.z) * vec3<f32>(x_894.x, x_894.y, x_894.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_900 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat3;
  let x_904 : vec4<f32> = u_xlat4;
  let x_909 : vec3<f32> = ((vec3<f32>(x_902.x, x_902.x, x_902.x) * vec3<f32>(x_904.x, x_904.y, x_904.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_910 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_913 : f32 = u_xlat3.x;
  u_xlat49 = ((-(x_913) * 0.959999979f) + 0.959999979f);
  let x_918 : f32 = u_xlat49;
  let x_920 : vec3<f32> = u_xlat5;
  let x_921 : vec3<f32> = (vec3<f32>(x_918, x_918, x_918) * x_920);
  let x_922 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_921.x, x_922.y, x_921.y, x_921.z);
  let x_924 : vec3<f32> = u_xlat1;
  let x_925 : f32 = u_xlat48;
  let x_929 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_924 * vec3<f32>(x_925, x_925, x_925)) + vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : vec3<f32> = u_xlat1;
  let x_933 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_932, x_933);
  let x_935 : f32 = u_xlat48;
  u_xlat48 = max(x_935, 0.001f);
  let x_938 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_938);
  let x_940 : f32 = u_xlat48;
  let x_942 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_940, x_940, x_940) * x_942);
  let x_944 : vec3<f32> = u_xlat7;
  let x_945 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(x_944, vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec3<f32> = u_xlat7;
  let x_950 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_948, vec3<f32>(x_950.x, x_950.y, x_950.z));
  let x_955 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_955, 0.0f, 1.0f);
  let x_959 : vec3<f32> = u_xlat7;
  let x_960 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_959, x_960);
  let x_962 : f32 = u_xlat18;
  u_xlat18 = clamp(x_962, 0.0f, 1.0f);
  let x_965 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  let x_967 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_965.x, x_965.y, x_965.z), x_967);
  let x_971 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_971, 0.0f, 1.0f);
  let x_976 : f32 = u_xlat1.x;
  let x_978 : f32 = u_xlat1.x;
  u_xlat17 = (x_976 * x_978);
  let x_980 : f32 = u_xlat17;
  let x_982 : f32 = u_xlat50;
  u_xlat17 = dot(vec2<f32>(x_980, x_980), vec2<f32>(x_982, x_982));
  let x_985 : f32 = u_xlat17;
  u_xlat17 = (x_985 + -0.5f);
  let x_990 : f32 = u_xlat2.x;
  u_xlat33 = (-(x_990) + 1.0f);
  let x_994 : f32 = u_xlat33;
  let x_995 : f32 = u_xlat33;
  u_xlat34 = (x_994 * x_995);
  let x_997 : f32 = u_xlat34;
  let x_998 : f32 = u_xlat34;
  u_xlat34 = (x_997 * x_998);
  let x_1000 : f32 = u_xlat33;
  let x_1001 : f32 = u_xlat34;
  u_xlat33 = (x_1000 * x_1001);
  let x_1003 : f32 = u_xlat17;
  let x_1004 : f32 = u_xlat33;
  u_xlat33 = ((x_1003 * x_1004) + 1.0f);
  let x_1007 : f32 = u_xlat48;
  u_xlat34 = (-(abs(x_1007)) + 1.0f);
  let x_1011 : f32 = u_xlat34;
  let x_1012 : f32 = u_xlat34;
  u_xlat52 = (x_1011 * x_1012);
  let x_1014 : f32 = u_xlat52;
  let x_1015 : f32 = u_xlat52;
  u_xlat52 = (x_1014 * x_1015);
  let x_1017 : f32 = u_xlat34;
  let x_1018 : f32 = u_xlat52;
  u_xlat34 = (x_1017 * x_1018);
  let x_1020 : f32 = u_xlat17;
  let x_1021 : f32 = u_xlat34;
  u_xlat17 = ((x_1020 * x_1021) + 1.0f);
  let x_1024 : f32 = u_xlat17;
  let x_1025 : f32 = u_xlat33;
  u_xlat17 = (x_1024 * x_1025);
  let x_1028 : f32 = u_xlat2.x;
  let x_1029 : f32 = u_xlat17;
  u_xlat17 = (x_1028 * x_1029);
  let x_1031 : f32 = u_xlat50;
  let x_1032 : f32 = u_xlat50;
  u_xlat33 = (x_1031 * x_1032);
  let x_1034 : f32 = u_xlat33;
  u_xlat33 = max(x_1034, 0.002f);
  let x_1037 : f32 = u_xlat33;
  u_xlat50 = (-(x_1037) + 1.0f);
  let x_1040 : f32 = u_xlat48;
  let x_1042 : f32 = u_xlat50;
  let x_1044 : f32 = u_xlat33;
  u_xlat52 = ((abs(x_1040) * x_1042) + x_1044);
  let x_1047 : f32 = u_xlat2.x;
  let x_1048 : f32 = u_xlat50;
  let x_1050 : f32 = u_xlat33;
  u_xlat50 = ((x_1047 * x_1048) + x_1050);
  let x_1052 : f32 = u_xlat48;
  let x_1054 : f32 = u_xlat50;
  u_xlat48 = (abs(x_1052) * x_1054);
  let x_1057 : f32 = u_xlat2.x;
  let x_1058 : f32 = u_xlat52;
  let x_1060 : f32 = u_xlat48;
  u_xlat48 = ((x_1057 * x_1058) + x_1060);
  let x_1062 : f32 = u_xlat48;
  u_xlat48 = (x_1062 + 0.00001f);
  let x_1065 : f32 = u_xlat48;
  u_xlat48 = (0.5f / x_1065);
  let x_1067 : f32 = u_xlat33;
  let x_1068 : f32 = u_xlat33;
  u_xlat50 = (x_1067 * x_1068);
  let x_1070 : f32 = u_xlat18;
  let x_1071 : f32 = u_xlat50;
  let x_1073 : f32 = u_xlat18;
  u_xlat52 = ((x_1070 * x_1071) + -(x_1073));
  let x_1076 : f32 = u_xlat52;
  let x_1077 : f32 = u_xlat18;
  u_xlat18 = ((x_1076 * x_1077) + 1.0f);
  let x_1080 : f32 = u_xlat50;
  u_xlat50 = (x_1080 * 0.318309873f);
  let x_1083 : f32 = u_xlat18;
  let x_1084 : f32 = u_xlat18;
  u_xlat18 = ((x_1083 * x_1084) + 0.0000001f);
  let x_1088 : f32 = u_xlat50;
  let x_1089 : f32 = u_xlat18;
  u_xlat18 = (x_1088 / x_1089);
  let x_1091 : f32 = u_xlat48;
  let x_1092 : f32 = u_xlat18;
  u_xlat48 = (x_1091 * x_1092);
  let x_1095 : f32 = u_xlat2.x;
  let x_1096 : f32 = u_xlat48;
  u_xlat48 = (x_1095 * x_1096);
  let x_1098 : f32 = u_xlat48;
  u_xlat48 = (x_1098 * 3.141592741f);
  let x_1101 : f32 = u_xlat48;
  u_xlat48 = max(x_1101, 0.0f);
  let x_1103 : f32 = u_xlat33;
  let x_1104 : f32 = u_xlat33;
  u_xlat33 = ((x_1103 * x_1104) + 1.0f);
  let x_1107 : f32 = u_xlat33;
  u_xlat1.z = (1.0f / x_1107);
  let x_1110 : vec4<f32> = u_xlat4;
  let x_1112 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1110.x, x_1110.y, x_1110.z), vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
  let x_1118 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1118 == 0.0f));
  let x_1120 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1120);
  let x_1123 : f32 = u_xlat48;
  let x_1125 : f32 = u_xlat2.x;
  u_xlat48 = (x_1123 * x_1125);
  let x_1128 : f32 = u_xlat3.y;
  let x_1130 : f32 = x_39.x_Glossiness;
  let x_1132 : f32 = u_xlat49;
  u_xlat49 = ((x_1128 * x_1130) + -(x_1132));
  let x_1135 : f32 = u_xlat49;
  u_xlat49 = (x_1135 + 1.0f);
  let x_1137 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1137, 0.0f, 1.0f);
  let x_1139 : f32 = u_xlat17;
  let x_1141 : vec3<f32> = u_xlat9;
  let x_1142 : vec3<f32> = (vec3<f32>(x_1139, x_1139, x_1139) * x_1141);
  let x_1143 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1142.z);
  let x_1145 : vec3<f32> = u_xlat9;
  let x_1146 : f32 = u_xlat48;
  u_xlat5 = (x_1145 * vec3<f32>(x_1146, x_1146, x_1146));
  let x_1150 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1150) + 1.0f);
  let x_1155 : f32 = u_xlat0.w;
  let x_1157 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1155 * x_1157);
  let x_1161 : f32 = u_xlat1.x;
  let x_1163 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1161 * x_1163);
  let x_1166 : vec4<f32> = u_xlat0;
  let x_1167 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_1166 * vec4<f32>(x_1167.z, x_1167.z, x_1167.z, x_1167.x));
  let x_1170 : vec4<f32> = u_xlat4;
  u_xlat7 = (-(vec3<f32>(x_1170.x, x_1170.y, x_1170.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1175 : vec3<f32> = u_xlat7;
  let x_1176 : vec4<f32> = u_xlat0;
  let x_1179 : vec4<f32> = u_xlat4;
  u_xlat7 = ((x_1175 * vec3<f32>(x_1176.w, x_1176.w, x_1176.w)) + vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
  let x_1182 : vec3<f32> = u_xlat5;
  let x_1183 : vec3<f32> = u_xlat7;
  u_xlat5 = (x_1182 * x_1183);
  let x_1185 : vec4<f32> = u_xlat3;
  let x_1187 : vec4<f32> = u_xlat2;
  let x_1190 : vec3<f32> = u_xlat5;
  let x_1191 : vec3<f32> = ((vec3<f32>(x_1185.x, x_1185.z, x_1185.w) * vec3<f32>(x_1187.x, x_1187.y, x_1187.w)) + x_1190);
  let x_1192 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1191.z);
  let x_1194 : vec4<f32> = u_xlat4;
  let x_1197 : f32 = u_xlat49;
  u_xlat1 = (-(vec3<f32>(x_1194.x, x_1194.y, x_1194.z)) + vec3<f32>(x_1197, x_1197, x_1197));
  let x_1200 : f32 = u_xlat34;
  let x_1202 : vec3<f32> = u_xlat1;
  let x_1204 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_1200, x_1200, x_1200) * x_1202) + vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
  let x_1207 : vec4<f32> = u_xlat0;
  let x_1209 : vec3<f32> = u_xlat1;
  let x_1211 : vec4<f32> = u_xlat2;
  let x_1213 : vec3<f32> = ((vec3<f32>(x_1207.x, x_1207.y, x_1207.z) * x_1209) + vec3<f32>(x_1211.x, x_1211.y, x_1211.w));
  let x_1214 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
  let x_1218 : vec3<f32> = u_xlat6;
  let x_1219 : vec4<f32> = u_xlat0;
  let x_1221 : vec3<f32> = (x_1218 + vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
  let x_1222 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1222.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

