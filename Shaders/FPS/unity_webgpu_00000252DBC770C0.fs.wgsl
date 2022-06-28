type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_WorldToShadow : Arr,
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
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  @size(8)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_49 : PGlobals;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

var<private> u_xlat22 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlatb23 : bool;

var<private> u_xlat24 : f32;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_LightTexture0 : sampler;

@group(0) @binding(5) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_LightTextureB0 : sampler;

var<private> u_xlat7 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_346 : vec3<f32>;
  var txVec0 : vec3<f32>;
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
  let x_54 : vec4<f32> = x_49.x_Color;
  let x_56 : vec3<f32> = (x_42 * vec3<f32>(x_54.x, x_54.y, x_54.z));
  let x_57 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_60 : vec4<f32> = x_49.x_Color;
  let x_62 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_60.x, x_60.y, x_60.z) * x_62) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_67 : vec4<f32> = u_xlat0;
  let x_69 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_67.x, x_67.x, x_67.x) * x_69) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_77 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_77) * 0.959999979f) + 0.959999979f);
  let x_83 : vec4<f32> = u_xlat0;
  let x_85 : vec4<f32> = u_xlat2;
  let x_87 : vec3<f32> = (vec3<f32>(x_83.x, x_83.x, x_83.x) * vec3<f32>(x_85.x, x_85.y, x_85.z));
  let x_88 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_87.x, x_88.y, x_87.y, x_87.z);
  let x_95 : vec4<f32> = vs_TEXCOORD0;
  let x_97 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_95.x, x_95.y));
  let x_98 : vec3<f32> = vec3<f32>(x_97.x, x_97.y, x_97.w);
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_98.x, x_98.y, x_98.z, x_99.w);
  let x_103 : f32 = u_xlat2.z;
  let x_105 : f32 = u_xlat2.x;
  u_xlat2.x = (x_103 * x_105);
  let x_108 : vec4<f32> = u_xlat2;
  let x_115 : vec2<f32> = ((vec2<f32>(x_108.x, x_108.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_116 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_115.x, x_115.y, x_116.z, x_116.w);
  let x_118 : vec4<f32> = u_xlat2;
  let x_123 : f32 = x_49.x_BumpScale;
  let x_125 : vec2<f32> = (vec2<f32>(x_118.x, x_118.y) * vec2<f32>(x_123, x_123));
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_125.x, x_125.y, x_126.z, x_126.w);
  let x_129 : vec4<f32> = u_xlat2;
  let x_131 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec2<f32>(x_129.x, x_129.y), vec2<f32>(x_131.x, x_131.y));
  let x_134 : f32 = u_xlat22;
  u_xlat22 = min(x_134, 1.0f);
  let x_137 : f32 = u_xlat22;
  u_xlat22 = (-(x_137) + 1.0f);
  let x_140 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_140);
  let x_143 : vec4<f32> = u_xlat2;
  let x_146 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_143.y, x_143.y, x_143.y) * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_150 : vec4<f32> = vs_TEXCOORD2;
  let x_152 : vec4<f32> = u_xlat2;
  let x_155 : vec3<f32> = u_xlat9;
  let x_156 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(x_152.x, x_152.x, x_152.x)) + x_155);
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : vec4<f32> = vs_TEXCOORD4;
  let x_162 : f32 = u_xlat22;
  let x_165 : vec4<f32> = u_xlat2;
  let x_167 : vec3<f32> = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_162, x_162, x_162)) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat2;
  let x_172 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_170.x, x_170.y, x_170.z), vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_175);
  let x_177 : f32 = u_xlat22;
  let x_179 : vec4<f32> = u_xlat2;
  let x_181 : vec3<f32> = (vec3<f32>(x_177, x_177, x_177) * vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_185 : vec4<f32> = vs_TEXCOORD1;
  let x_187 : vec4<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_190);
  let x_193 : f32 = u_xlat22;
  let x_195 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_193, x_193, x_193) * vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_201 : vec3<f32> = vs_TEXCOORD5;
  let x_206 : vec4<f32> = x_49.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_201.y, x_201.y, x_201.y, x_201.y) * x_206);
  let x_210 : vec4<f32> = x_49.unity_WorldToLight[0i];
  let x_211 : vec3<f32> = vs_TEXCOORD5;
  let x_214 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_210 * vec4<f32>(x_211.x, x_211.x, x_211.x, x_211.x)) + x_214);
  let x_218 : vec4<f32> = x_49.unity_WorldToLight[2i];
  let x_219 : vec3<f32> = vs_TEXCOORD5;
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_218 * vec4<f32>(x_219.z, x_219.z, x_219.z, x_219.z)) + x_222);
  let x_224 : vec4<f32> = u_xlat4;
  let x_227 : vec4<f32> = x_49.unity_WorldToLight[3i];
  u_xlat4 = (x_224 + x_227);
  let x_230 : vec3<f32> = vs_TEXCOORD5;
  let x_234 : vec3<f32> = x_49.x_WorldSpaceCameraPos;
  let x_235 : vec3<f32> = (-(x_230) + x_234);
  let x_236 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_241 : f32 = x_49.unity_MatrixV[0i].z;
  u_xlat6.x = x_241;
  let x_244 : f32 = x_49.unity_MatrixV[1i].z;
  u_xlat6.y = x_244;
  let x_248 : f32 = x_49.unity_MatrixV[2i].z;
  u_xlat6.z = x_248;
  let x_250 : vec4<f32> = u_xlat5;
  let x_252 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(vec3<f32>(x_250.x, x_250.y, x_250.z), x_252);
  let x_254 : vec3<f32> = vs_TEXCOORD5;
  let x_257 : vec4<f32> = x_49.unity_ShadowFadeCenterAndType;
  let x_260 : vec3<f32> = (x_254 + -(vec3<f32>(x_257.x, x_257.y, x_257.z)));
  let x_261 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_264 : vec4<f32> = u_xlat5;
  let x_266 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_264.x, x_264.y, x_264.z), vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_269);
  let x_271 : f32 = u_xlat22;
  let x_273 : f32 = u_xlat23;
  u_xlat23 = (-(x_271) + x_273);
  let x_277 : f32 = x_49.unity_ShadowFadeCenterAndType.w;
  let x_278 : f32 = u_xlat23;
  let x_280 : f32 = u_xlat22;
  u_xlat22 = ((x_277 * x_278) + x_280);
  let x_282 : f32 = u_xlat22;
  let x_284 : f32 = x_49.x_LightShadowData.z;
  let x_287 : f32 = x_49.x_LightShadowData.w;
  u_xlat22 = ((x_282 * x_284) + x_287);
  let x_289 : f32 = u_xlat22;
  u_xlat22 = clamp(x_289, 0.0f, 1.0f);
  let x_297 : f32 = x_49.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_297 == 1.0f);
  let x_299 : bool = u_xlatb23;
  if (x_299) {
    let x_303 : f32 = x_49.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_303 == 1.0f);
    let x_305 : vec3<f32> = vs_TEXCOORD5;
    let x_309 : vec4<f32> = x_49.unity_ProbeVolumeWorldToObject[1i];
    let x_311 : vec3<f32> = (vec3<f32>(x_305.y, x_305.y, x_305.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
    let x_312 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
    let x_315 : vec4<f32> = x_49.unity_ProbeVolumeWorldToObject[0i];
    let x_317 : vec3<f32> = vs_TEXCOORD5;
    let x_320 : vec4<f32> = u_xlat5;
    let x_322 : vec3<f32> = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.x, x_317.x)) + vec3<f32>(x_320.x, x_320.y, x_320.z));
    let x_323 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
    let x_326 : vec4<f32> = x_49.unity_ProbeVolumeWorldToObject[2i];
    let x_328 : vec3<f32> = vs_TEXCOORD5;
    let x_331 : vec4<f32> = u_xlat5;
    let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.z, x_328.z, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
    let x_334 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
    let x_336 : vec4<f32> = u_xlat5;
    let x_339 : vec4<f32> = x_49.unity_ProbeVolumeWorldToObject[3i];
    let x_341 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) + vec3<f32>(x_339.x, x_339.y, x_339.z));
    let x_342 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
    let x_344 : bool = u_xlatb23;
    if (x_344) {
      let x_349 : vec4<f32> = u_xlat5;
      x_346 = vec3<f32>(x_349.x, x_349.y, x_349.z);
    } else {
      let x_352 : vec3<f32> = vs_TEXCOORD5;
      x_346 = x_352;
    }
    let x_353 : vec3<f32> = x_346;
    let x_354 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
    let x_356 : vec4<f32> = u_xlat5;
    let x_360 : vec3<f32> = x_49.unity_ProbeVolumeMin;
    let x_362 : vec3<f32> = (vec3<f32>(x_356.x, x_356.y, x_356.z) + -(x_360));
    let x_363 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
    let x_365 : vec4<f32> = u_xlat5;
    let x_369 : vec3<f32> = x_49.unity_ProbeVolumeSizeInv;
    let x_370 : vec3<f32> = (vec3<f32>(x_365.x, x_365.y, x_365.z) * x_369);
    let x_371 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_371.x, x_370.x, x_370.y, x_370.z);
    let x_374 : f32 = u_xlat5.y;
    u_xlat23 = ((x_374 * 0.25f) + 0.75f);
    let x_381 : f32 = x_49.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_381 * 0.5f) + 0.75f);
    let x_385 : f32 = u_xlat23;
    let x_386 : f32 = u_xlat24;
    u_xlat5.x = max(x_385, x_386);
    let x_397 : vec4<f32> = u_xlat5;
    let x_399 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_397.x, x_397.z, x_397.w));
    u_xlat5 = x_399;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_405 : vec4<f32> = u_xlat5;
  let x_407 : vec4<f32> = x_49.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_405, x_407);
  let x_409 : f32 = u_xlat23;
  u_xlat23 = clamp(x_409, 0.0f, 1.0f);
  let x_411 : vec3<f32> = vs_TEXCOORD5;
  let x_414 : vec4<f32> = x_49.unity_WorldToShadow[0i][1i];
  u_xlat5 = (vec4<f32>(x_411.y, x_411.y, x_411.y, x_411.y) * x_414);
  let x_417 : vec4<f32> = x_49.unity_WorldToShadow[0i][0i];
  let x_418 : vec3<f32> = vs_TEXCOORD5;
  let x_421 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_417 * vec4<f32>(x_418.x, x_418.x, x_418.x, x_418.x)) + x_421);
  let x_424 : vec4<f32> = x_49.unity_WorldToShadow[0i][2i];
  let x_425 : vec3<f32> = vs_TEXCOORD5;
  let x_428 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_424 * vec4<f32>(x_425.z, x_425.z, x_425.z, x_425.z)) + x_428);
  let x_430 : vec4<f32> = u_xlat5;
  let x_432 : vec4<f32> = x_49.unity_WorldToShadow[0i][3i];
  u_xlat5 = (x_430 + x_432);
  let x_434 : vec4<f32> = u_xlat5;
  let x_436 : vec4<f32> = u_xlat5;
  let x_438 : vec3<f32> = (vec3<f32>(x_434.x, x_434.y, x_434.z) / vec3<f32>(x_436.w, x_436.w, x_436.w));
  let x_439 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_442 : vec4<f32> = u_xlat5;
  let x_443 : vec2<f32> = vec2<f32>(x_442.x, x_442.y);
  let x_445 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_443.x, x_443.y, x_445);
  let x_457 : vec3<f32> = txVec0;
  let x_459 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_457.xy, x_457.z);
  u_xlat24 = x_459;
  let x_461 : f32 = x_49.x_LightShadowData.x;
  u_xlat5.x = (-(x_461) + 1.0f);
  let x_465 : f32 = u_xlat24;
  let x_467 : f32 = u_xlat5.x;
  let x_470 : f32 = x_49.x_LightShadowData.x;
  u_xlat24 = ((x_465 * x_467) + x_470);
  let x_472 : f32 = u_xlat23;
  let x_473 : f32 = u_xlat24;
  u_xlat23 = (x_472 + -(x_473));
  let x_476 : f32 = u_xlat22;
  let x_477 : f32 = u_xlat23;
  let x_479 : f32 = u_xlat24;
  u_xlat22 = ((x_476 * x_477) + x_479);
  let x_482 : f32 = u_xlat4.z;
  u_xlatb23 = (0.0f < x_482);
  let x_484 : bool = u_xlatb23;
  u_xlat23 = select(0.0f, 1.0f, x_484);
  let x_486 : vec4<f32> = u_xlat4;
  let x_488 : vec4<f32> = u_xlat4;
  let x_490 : vec2<f32> = (vec2<f32>(x_486.x, x_486.y) / vec2<f32>(x_488.w, x_488.w));
  let x_491 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
  let x_493 : vec4<f32> = u_xlat5;
  let x_496 : vec2<f32> = (vec2<f32>(x_493.x, x_493.y) + vec2<f32>(0.5f, 0.5f));
  let x_497 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
  let x_504 : vec4<f32> = u_xlat5;
  let x_506 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_504.x, x_504.y));
  u_xlat24 = x_506.w;
  let x_508 : f32 = u_xlat23;
  let x_509 : f32 = u_xlat24;
  u_xlat23 = (x_508 * x_509);
  let x_511 : vec4<f32> = u_xlat4;
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(vec3<f32>(x_511.x, x_511.y, x_511.z), vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_521 : f32 = u_xlat24;
  let x_523 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_521, x_521));
  u_xlat24 = x_523.x;
  let x_525 : f32 = u_xlat23;
  let x_526 : f32 = u_xlat24;
  u_xlat23 = (x_525 * x_526);
  let x_528 : f32 = u_xlat22;
  let x_529 : f32 = u_xlat23;
  u_xlat22 = (x_528 * x_529);
  let x_533 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_533;
  let x_536 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_536;
  let x_539 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_539;
  let x_541 : vec4<f32> = u_xlat4;
  let x_543 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_541.x, x_541.y, x_541.z), vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_546);
  let x_548 : f32 = u_xlat23;
  let x_550 : vec4<f32> = u_xlat4;
  let x_552 : vec3<f32> = (vec3<f32>(x_548, x_548, x_548) * vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : f32 = u_xlat22;
  let x_559 : vec4<f32> = x_49.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_555, x_555, x_555) * vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_564 : f32 = u_xlat0.y;
  let x_568 : f32 = x_49.x_GlossMapScale;
  u_xlat7 = ((-(x_564) * x_568) + 1.0f);
  let x_571 : vec4<f32> = u_xlat4;
  let x_573 : f32 = u_xlat23;
  let x_576 : vec3<f32> = u_xlat3;
  let x_578 : vec3<f32> = ((vec3<f32>(x_571.x, x_571.y, x_571.z) * vec3<f32>(x_573, x_573, x_573)) + -(x_576));
  let x_579 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat4;
  let x_583 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_581.x, x_581.y, x_581.z), vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : f32 = u_xlat22;
  u_xlat22 = max(x_586, 0.001f);
  let x_589 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_589);
  let x_591 : f32 = u_xlat22;
  let x_593 : vec4<f32> = u_xlat4;
  let x_595 : vec3<f32> = (vec3<f32>(x_591, x_591, x_591) * vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_596 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_598 : vec4<f32> = u_xlat2;
  let x_600 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_598.x, x_598.y, x_598.z), -(x_600));
  let x_603 : vec4<f32> = u_xlat2;
  let x_605 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_603.x, x_603.y, x_603.z), vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : f32 = u_xlat23;
  u_xlat23 = clamp(x_608, 0.0f, 1.0f);
  let x_610 : vec4<f32> = u_xlat2;
  let x_612 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_610.x, x_610.y, x_610.z), vec3<f32>(x_612.x, x_612.y, x_612.z));
  let x_617 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_617, 0.0f, 1.0f);
  let x_620 : vec4<f32> = u_xlat5;
  let x_622 : vec4<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_627 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_627, 0.0f, 1.0f);
  let x_632 : f32 = u_xlat9.x;
  let x_634 : f32 = u_xlat9.x;
  u_xlat16 = (x_632 * x_634);
  let x_636 : f32 = u_xlat16;
  let x_638 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_636, x_636), vec2<f32>(x_638, x_638));
  let x_641 : f32 = u_xlat16;
  u_xlat16 = (x_641 + -0.5f);
  let x_644 : f32 = u_xlat23;
  u_xlat3.x = (-(x_644) + 1.0f);
  let x_650 : f32 = u_xlat3.x;
  let x_652 : f32 = u_xlat3.x;
  u_xlat10 = (x_650 * x_652);
  let x_654 : f32 = u_xlat10;
  let x_655 : f32 = u_xlat10;
  u_xlat10 = (x_654 * x_655);
  let x_658 : f32 = u_xlat3.x;
  let x_659 : f32 = u_xlat10;
  u_xlat3.x = (x_658 * x_659);
  let x_662 : f32 = u_xlat16;
  let x_664 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_662 * x_664) + 1.0f);
  let x_668 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_668)) + 1.0f);
  let x_673 : f32 = u_xlat10;
  let x_674 : f32 = u_xlat10;
  u_xlat17 = (x_673 * x_674);
  let x_676 : f32 = u_xlat17;
  let x_677 : f32 = u_xlat17;
  u_xlat17 = (x_676 * x_677);
  let x_679 : f32 = u_xlat10;
  let x_680 : f32 = u_xlat17;
  u_xlat10 = (x_679 * x_680);
  let x_682 : f32 = u_xlat16;
  let x_683 : f32 = u_xlat10;
  u_xlat16 = ((x_682 * x_683) + 1.0f);
  let x_686 : f32 = u_xlat16;
  let x_688 : f32 = u_xlat3.x;
  u_xlat16 = (x_686 * x_688);
  let x_690 : f32 = u_xlat23;
  let x_691 : f32 = u_xlat16;
  u_xlat16 = (x_690 * x_691);
  let x_693 : f32 = u_xlat7;
  let x_694 : f32 = u_xlat7;
  u_xlat7 = (x_693 * x_694);
  let x_696 : f32 = u_xlat7;
  u_xlat7 = max(x_696, 0.002f);
  let x_699 : f32 = u_xlat7;
  u_xlat3.x = (-(x_699) + 1.0f);
  let x_703 : f32 = u_xlat22;
  let x_706 : f32 = u_xlat3.x;
  let x_708 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_703) * x_706) + x_708);
  let x_710 : f32 = u_xlat23;
  let x_712 : f32 = u_xlat3.x;
  let x_714 : f32 = u_xlat7;
  u_xlat3.x = ((x_710 * x_712) + x_714);
  let x_717 : f32 = u_xlat22;
  let x_720 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_717) * x_720);
  let x_722 : f32 = u_xlat23;
  let x_723 : f32 = u_xlat10;
  let x_725 : f32 = u_xlat22;
  u_xlat22 = ((x_722 * x_723) + x_725);
  let x_727 : f32 = u_xlat22;
  u_xlat22 = (x_727 + 0.00001f);
  let x_730 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_730);
  let x_732 : f32 = u_xlat7;
  let x_733 : f32 = u_xlat7;
  u_xlat7 = (x_732 * x_733);
  let x_736 : f32 = u_xlat2.x;
  let x_737 : f32 = u_xlat7;
  let x_740 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_736 * x_737) + -(x_740));
  let x_745 : f32 = u_xlat3.x;
  let x_747 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_745 * x_747) + 1.0f);
  let x_751 : f32 = u_xlat7;
  u_xlat7 = (x_751 * 0.318309873f);
  let x_755 : f32 = u_xlat2.x;
  let x_757 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_755 * x_757) + 0.0000001f);
  let x_762 : f32 = u_xlat7;
  let x_764 : f32 = u_xlat2.x;
  u_xlat7 = (x_762 / x_764);
  let x_766 : f32 = u_xlat7;
  let x_767 : f32 = u_xlat22;
  u_xlat7 = (x_766 * x_767);
  let x_769 : f32 = u_xlat23;
  let x_770 : f32 = u_xlat7;
  u_xlat7 = (x_769 * x_770);
  let x_772 : f32 = u_xlat7;
  u_xlat7 = (x_772 * 3.141592741f);
  let x_775 : f32 = u_xlat7;
  u_xlat7 = max(x_775, 0.0f);
  let x_777 : vec3<f32> = u_xlat1;
  let x_778 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_777, x_778);
  let x_781 : f32 = u_xlat22;
  u_xlatb22 = !((x_781 == 0.0f));
  let x_783 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_783);
  let x_785 : f32 = u_xlat7;
  let x_786 : f32 = u_xlat22;
  u_xlat7 = (x_785 * x_786);
  let x_788 : f32 = u_xlat16;
  let x_790 : vec3<f32> = u_xlat6;
  let x_791 : vec3<f32> = (vec3<f32>(x_788, x_788, x_788) * x_790);
  let x_792 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_791.x, x_792.y, x_791.y, x_791.z);
  let x_794 : vec3<f32> = u_xlat6;
  let x_795 : f32 = u_xlat7;
  u_xlat3 = (x_794 * vec3<f32>(x_795, x_795, x_795));
  let x_799 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_799) + 1.0f);
  let x_802 : f32 = u_xlat7;
  let x_803 : f32 = u_xlat7;
  u_xlat22 = (x_802 * x_803);
  let x_805 : f32 = u_xlat22;
  let x_806 : f32 = u_xlat22;
  u_xlat22 = (x_805 * x_806);
  let x_808 : f32 = u_xlat7;
  let x_809 : f32 = u_xlat22;
  u_xlat7 = (x_808 * x_809);
  let x_811 : vec3<f32> = u_xlat1;
  let x_814 : vec3<f32> = (-(x_811) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_815 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec4<f32> = u_xlat4;
  let x_819 : f32 = u_xlat7;
  let x_822 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_817.x, x_817.y, x_817.z) * vec3<f32>(x_819, x_819, x_819)) + x_822);
  let x_824 : vec3<f32> = u_xlat1;
  let x_825 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_824 * x_825);
  let x_829 : vec4<f32> = u_xlat0;
  let x_831 : vec4<f32> = u_xlat2;
  let x_834 : vec3<f32> = u_xlat1;
  let x_835 : vec3<f32> = ((vec3<f32>(x_829.x, x_829.z, x_829.w) * vec3<f32>(x_831.x, x_831.z, x_831.w)) + x_834);
  let x_836 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
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

