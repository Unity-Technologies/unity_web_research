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

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_49 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTexture0 : sampler;

@group(0) @binding(4) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_LightTextureB0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var x_345 : vec3<f32>;
  var u_xlat24 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlatb22 : bool;
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
      let x_348 : vec4<f32> = u_xlat5;
      x_345 = vec3<f32>(x_348.x, x_348.y, x_348.z);
    } else {
      let x_351 : vec3<f32> = vs_TEXCOORD5;
      x_345 = x_351;
    }
    let x_352 : vec3<f32> = x_345;
    let x_353 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
    let x_355 : vec4<f32> = u_xlat5;
    let x_359 : vec3<f32> = x_49.unity_ProbeVolumeMin;
    let x_361 : vec3<f32> = (vec3<f32>(x_355.x, x_355.y, x_355.z) + -(x_359));
    let x_362 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
    let x_364 : vec4<f32> = u_xlat5;
    let x_368 : vec3<f32> = x_49.unity_ProbeVolumeSizeInv;
    let x_369 : vec3<f32> = (vec3<f32>(x_364.x, x_364.y, x_364.z) * x_368);
    let x_370 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_370.x, x_369.x, x_369.y, x_369.z);
    let x_373 : f32 = u_xlat5.y;
    u_xlat23 = ((x_373 * 0.25f) + 0.75f);
    let x_380 : f32 = x_49.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_380 * 0.5f) + 0.75f);
    let x_384 : f32 = u_xlat23;
    let x_385 : f32 = u_xlat24;
    u_xlat5.x = max(x_384, x_385);
    let x_396 : vec4<f32> = u_xlat5;
    let x_398 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_396.x, x_396.z, x_396.w));
    u_xlat5 = x_398;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_404 : vec4<f32> = u_xlat5;
  let x_406 : vec4<f32> = x_49.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_404, x_406);
  let x_408 : f32 = u_xlat23;
  u_xlat23 = clamp(x_408, 0.0f, 1.0f);
  let x_410 : vec3<f32> = vs_TEXCOORD5;
  let x_413 : vec4<f32> = x_49.unity_WorldToShadow[0i][1i];
  u_xlat5 = (vec4<f32>(x_410.y, x_410.y, x_410.y, x_410.y) * x_413);
  let x_416 : vec4<f32> = x_49.unity_WorldToShadow[0i][0i];
  let x_417 : vec3<f32> = vs_TEXCOORD5;
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_416 * vec4<f32>(x_417.x, x_417.x, x_417.x, x_417.x)) + x_420);
  let x_423 : vec4<f32> = x_49.unity_WorldToShadow[0i][2i];
  let x_424 : vec3<f32> = vs_TEXCOORD5;
  let x_427 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_423 * vec4<f32>(x_424.z, x_424.z, x_424.z, x_424.z)) + x_427);
  let x_429 : vec4<f32> = u_xlat5;
  let x_431 : vec4<f32> = x_49.unity_WorldToShadow[0i][3i];
  u_xlat5 = (x_429 + x_431);
  let x_433 : vec4<f32> = u_xlat5;
  let x_435 : vec4<f32> = u_xlat5;
  let x_437 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) / vec3<f32>(x_435.w, x_435.w, x_435.w));
  let x_438 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_441 : vec4<f32> = u_xlat5;
  let x_442 : vec2<f32> = vec2<f32>(x_441.x, x_441.y);
  let x_444 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_442.x, x_442.y, x_444);
  let x_456 : vec3<f32> = txVec0;
  let x_458 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_456.xy, x_456.z);
  u_xlat24 = x_458;
  let x_460 : f32 = x_49.x_LightShadowData.x;
  u_xlat5.x = (-(x_460) + 1.0f);
  let x_464 : f32 = u_xlat24;
  let x_466 : f32 = u_xlat5.x;
  let x_469 : f32 = x_49.x_LightShadowData.x;
  u_xlat24 = ((x_464 * x_466) + x_469);
  let x_471 : f32 = u_xlat23;
  let x_472 : f32 = u_xlat24;
  u_xlat23 = (x_471 + -(x_472));
  let x_475 : f32 = u_xlat22;
  let x_476 : f32 = u_xlat23;
  let x_478 : f32 = u_xlat24;
  u_xlat22 = ((x_475 * x_476) + x_478);
  let x_481 : f32 = u_xlat4.z;
  u_xlatb23 = (0.0f < x_481);
  let x_483 : bool = u_xlatb23;
  u_xlat23 = select(0.0f, 1.0f, x_483);
  let x_485 : vec4<f32> = u_xlat4;
  let x_487 : vec4<f32> = u_xlat4;
  let x_489 : vec2<f32> = (vec2<f32>(x_485.x, x_485.y) / vec2<f32>(x_487.w, x_487.w));
  let x_490 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
  let x_492 : vec4<f32> = u_xlat5;
  let x_495 : vec2<f32> = (vec2<f32>(x_492.x, x_492.y) + vec2<f32>(0.5f, 0.5f));
  let x_496 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
  let x_503 : vec4<f32> = u_xlat5;
  let x_505 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_503.x, x_503.y));
  u_xlat24 = x_505.w;
  let x_507 : f32 = u_xlat23;
  let x_508 : f32 = u_xlat24;
  u_xlat23 = (x_507 * x_508);
  let x_510 : vec4<f32> = u_xlat4;
  let x_512 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(vec3<f32>(x_510.x, x_510.y, x_510.z), vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_520 : f32 = u_xlat24;
  let x_522 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_520, x_520));
  u_xlat24 = x_522.x;
  let x_524 : f32 = u_xlat23;
  let x_525 : f32 = u_xlat24;
  u_xlat23 = (x_524 * x_525);
  let x_527 : f32 = u_xlat22;
  let x_528 : f32 = u_xlat23;
  u_xlat22 = (x_527 * x_528);
  let x_532 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_532;
  let x_535 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_535;
  let x_538 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_538;
  let x_540 : vec4<f32> = u_xlat4;
  let x_542 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_540.x, x_540.y, x_540.z), vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_545);
  let x_547 : f32 = u_xlat23;
  let x_549 : vec4<f32> = u_xlat4;
  let x_551 : vec3<f32> = (vec3<f32>(x_547, x_547, x_547) * vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_552 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_554 : f32 = u_xlat22;
  let x_558 : vec4<f32> = x_49.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_554, x_554, x_554) * vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_563 : f32 = u_xlat0.y;
  let x_567 : f32 = x_49.x_GlossMapScale;
  u_xlat7 = ((-(x_563) * x_567) + 1.0f);
  let x_570 : vec4<f32> = u_xlat4;
  let x_572 : f32 = u_xlat23;
  let x_575 : vec3<f32> = u_xlat3;
  let x_577 : vec3<f32> = ((vec3<f32>(x_570.x, x_570.y, x_570.z) * vec3<f32>(x_572, x_572, x_572)) + -(x_575));
  let x_578 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_580 : vec4<f32> = u_xlat4;
  let x_582 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_580.x, x_580.y, x_580.z), vec3<f32>(x_582.x, x_582.y, x_582.z));
  let x_585 : f32 = u_xlat22;
  u_xlat22 = max(x_585, 0.001f);
  let x_588 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_588);
  let x_590 : f32 = u_xlat22;
  let x_592 : vec4<f32> = u_xlat4;
  let x_594 : vec3<f32> = (vec3<f32>(x_590, x_590, x_590) * vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat2;
  let x_599 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_597.x, x_597.y, x_597.z), -(x_599));
  let x_602 : vec4<f32> = u_xlat2;
  let x_604 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_602.x, x_602.y, x_602.z), vec3<f32>(x_604.x, x_604.y, x_604.z));
  let x_607 : f32 = u_xlat23;
  u_xlat23 = clamp(x_607, 0.0f, 1.0f);
  let x_609 : vec4<f32> = u_xlat2;
  let x_611 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_609.x, x_609.y, x_609.z), vec3<f32>(x_611.x, x_611.y, x_611.z));
  let x_616 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_616, 0.0f, 1.0f);
  let x_619 : vec4<f32> = u_xlat5;
  let x_621 : vec4<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_619.x, x_619.y, x_619.z), vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_626 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_626, 0.0f, 1.0f);
  let x_631 : f32 = u_xlat9.x;
  let x_633 : f32 = u_xlat9.x;
  u_xlat16 = (x_631 * x_633);
  let x_635 : f32 = u_xlat16;
  let x_637 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_635, x_635), vec2<f32>(x_637, x_637));
  let x_640 : f32 = u_xlat16;
  u_xlat16 = (x_640 + -0.5f);
  let x_643 : f32 = u_xlat23;
  u_xlat3.x = (-(x_643) + 1.0f);
  let x_649 : f32 = u_xlat3.x;
  let x_651 : f32 = u_xlat3.x;
  u_xlat10 = (x_649 * x_651);
  let x_653 : f32 = u_xlat10;
  let x_654 : f32 = u_xlat10;
  u_xlat10 = (x_653 * x_654);
  let x_657 : f32 = u_xlat3.x;
  let x_658 : f32 = u_xlat10;
  u_xlat3.x = (x_657 * x_658);
  let x_661 : f32 = u_xlat16;
  let x_663 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_661 * x_663) + 1.0f);
  let x_667 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_667)) + 1.0f);
  let x_672 : f32 = u_xlat10;
  let x_673 : f32 = u_xlat10;
  u_xlat17 = (x_672 * x_673);
  let x_675 : f32 = u_xlat17;
  let x_676 : f32 = u_xlat17;
  u_xlat17 = (x_675 * x_676);
  let x_678 : f32 = u_xlat10;
  let x_679 : f32 = u_xlat17;
  u_xlat10 = (x_678 * x_679);
  let x_681 : f32 = u_xlat16;
  let x_682 : f32 = u_xlat10;
  u_xlat16 = ((x_681 * x_682) + 1.0f);
  let x_685 : f32 = u_xlat16;
  let x_687 : f32 = u_xlat3.x;
  u_xlat16 = (x_685 * x_687);
  let x_689 : f32 = u_xlat23;
  let x_690 : f32 = u_xlat16;
  u_xlat16 = (x_689 * x_690);
  let x_692 : f32 = u_xlat7;
  let x_693 : f32 = u_xlat7;
  u_xlat7 = (x_692 * x_693);
  let x_695 : f32 = u_xlat7;
  u_xlat7 = max(x_695, 0.002f);
  let x_698 : f32 = u_xlat7;
  u_xlat3.x = (-(x_698) + 1.0f);
  let x_702 : f32 = u_xlat22;
  let x_705 : f32 = u_xlat3.x;
  let x_707 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_702) * x_705) + x_707);
  let x_709 : f32 = u_xlat23;
  let x_711 : f32 = u_xlat3.x;
  let x_713 : f32 = u_xlat7;
  u_xlat3.x = ((x_709 * x_711) + x_713);
  let x_716 : f32 = u_xlat22;
  let x_719 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_716) * x_719);
  let x_721 : f32 = u_xlat23;
  let x_722 : f32 = u_xlat10;
  let x_724 : f32 = u_xlat22;
  u_xlat22 = ((x_721 * x_722) + x_724);
  let x_726 : f32 = u_xlat22;
  u_xlat22 = (x_726 + 0.00001f);
  let x_729 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_729);
  let x_731 : f32 = u_xlat7;
  let x_732 : f32 = u_xlat7;
  u_xlat7 = (x_731 * x_732);
  let x_735 : f32 = u_xlat2.x;
  let x_736 : f32 = u_xlat7;
  let x_739 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_735 * x_736) + -(x_739));
  let x_744 : f32 = u_xlat3.x;
  let x_746 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_744 * x_746) + 1.0f);
  let x_750 : f32 = u_xlat7;
  u_xlat7 = (x_750 * 0.318309873f);
  let x_754 : f32 = u_xlat2.x;
  let x_756 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_754 * x_756) + 0.0000001f);
  let x_761 : f32 = u_xlat7;
  let x_763 : f32 = u_xlat2.x;
  u_xlat7 = (x_761 / x_763);
  let x_765 : f32 = u_xlat7;
  let x_766 : f32 = u_xlat22;
  u_xlat7 = (x_765 * x_766);
  let x_768 : f32 = u_xlat23;
  let x_769 : f32 = u_xlat7;
  u_xlat7 = (x_768 * x_769);
  let x_771 : f32 = u_xlat7;
  u_xlat7 = (x_771 * 3.141592741f);
  let x_774 : f32 = u_xlat7;
  u_xlat7 = max(x_774, 0.0f);
  let x_776 : vec3<f32> = u_xlat1;
  let x_777 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_776, x_777);
  let x_780 : f32 = u_xlat22;
  u_xlatb22 = !((x_780 == 0.0f));
  let x_782 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_782);
  let x_784 : f32 = u_xlat7;
  let x_785 : f32 = u_xlat22;
  u_xlat7 = (x_784 * x_785);
  let x_787 : f32 = u_xlat16;
  let x_789 : vec3<f32> = u_xlat6;
  let x_790 : vec3<f32> = (vec3<f32>(x_787, x_787, x_787) * x_789);
  let x_791 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_790.x, x_791.y, x_790.y, x_790.z);
  let x_793 : vec3<f32> = u_xlat6;
  let x_794 : f32 = u_xlat7;
  u_xlat3 = (x_793 * vec3<f32>(x_794, x_794, x_794));
  let x_798 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_798) + 1.0f);
  let x_801 : f32 = u_xlat7;
  let x_802 : f32 = u_xlat7;
  u_xlat22 = (x_801 * x_802);
  let x_804 : f32 = u_xlat22;
  let x_805 : f32 = u_xlat22;
  u_xlat22 = (x_804 * x_805);
  let x_807 : f32 = u_xlat7;
  let x_808 : f32 = u_xlat22;
  u_xlat7 = (x_807 * x_808);
  let x_810 : vec3<f32> = u_xlat1;
  let x_813 : vec3<f32> = (-(x_810) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_814 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  let x_816 : vec4<f32> = u_xlat4;
  let x_818 : f32 = u_xlat7;
  let x_821 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_816.x, x_816.y, x_816.z) * vec3<f32>(x_818, x_818, x_818)) + x_821);
  let x_823 : vec3<f32> = u_xlat1;
  let x_824 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_823 * x_824);
  let x_828 : vec4<f32> = u_xlat0;
  let x_830 : vec4<f32> = u_xlat2;
  let x_833 : vec3<f32> = u_xlat1;
  let x_834 : vec3<f32> = ((vec3<f32>(x_828.x, x_828.z, x_828.w) * vec3<f32>(x_830.x, x_830.z, x_830.w)) + x_833);
  let x_835 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
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

