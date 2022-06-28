type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
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
  x_ShadowMapTexture_TexelSize : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_21 : PGlobals;

var<private> u_xlat39 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(14) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> u_xlat41 : f32;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlatb40 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat15 : vec3<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat37 : vec2<f32>;

var<private> u_xlat12 : vec4<f32>;

@group(0) @binding(8) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat28 : f32;

@group(0) @binding(5) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

@group(0) @binding(6) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb39 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_343 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_26 : vec4<f32> = x_21.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_26.x, x_26.y, x_26.z));
  let x_31 : vec3<f32> = u_xlat0;
  let x_32 : vec3<f32> = u_xlat0;
  u_xlat39 = dot(x_31, x_32);
  let x_34 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat39;
  let x_39 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_37, x_37, x_37) * x_39);
  let x_43 : vec3<f32> = vs_TEXCOORD4;
  let x_48 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_49 : vec3<f32> = (-(x_43) + x_48);
  let x_50 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = u_xlat2;
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat40 = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_58);
  let x_61 : f32 = u_xlat40;
  let x_63 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_61, x_61, x_61) * vec3<f32>(x_63.x, x_63.y, x_63.z));
  let x_79 : vec4<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_79.x, x_79.y));
  u_xlat40 = x_81.x;
  let x_90 : vec4<f32> = vs_TEXCOORD0;
  let x_92 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_90.z, x_90.w));
  let x_93 : vec2<f32> = vec2<f32>(x_92.x, x_92.w);
  let x_94 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_94.w);
  let x_96 : f32 = u_xlat40;
  u_xlat40 = (-(x_96) + 1.0f);
  let x_100 : f32 = u_xlat40;
  let x_104 : f32 = x_21.x_Cutoff;
  u_xlat40 = (x_100 + -(x_104));
  let x_110 : f32 = x_21.x_EdgeSize;
  u_xlat41 = (1.0f / -(x_110));
  let x_113 : f32 = u_xlat40;
  let x_114 : f32 = u_xlat41;
  u_xlat40 = (x_113 * x_114);
  let x_116 : f32 = u_xlat40;
  u_xlat40 = clamp(x_116, 0.0f, 1.0f);
  let x_119 : f32 = u_xlat40;
  u_xlat41 = ((x_119 * -2.0f) + 3.0f);
  let x_124 : f32 = u_xlat40;
  let x_125 : f32 = u_xlat40;
  u_xlat40 = (x_124 * x_125);
  let x_133 : vec4<f32> = vs_TEXCOORD0;
  let x_135 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_133.z, x_133.w));
  u_xlat5 = vec3<f32>(x_135.x, x_135.y, x_135.z);
  let x_138 : vec3<f32> = u_xlat5;
  let x_141 : vec4<f32> = x_21.x_Color;
  u_xlat6 = (x_138 * vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_150 : vec4<f32> = vs_TEXCOORD0;
  let x_152 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_150.z, x_150.w));
  u_xlat7 = vec3<f32>(x_152.x, x_152.y, x_152.w);
  let x_156 : f32 = u_xlat7.z;
  let x_158 : f32 = u_xlat7.x;
  u_xlat7.x = (x_156 * x_158);
  let x_161 : vec3<f32> = u_xlat7;
  let x_168 : vec2<f32> = ((vec2<f32>(x_161.x, x_161.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_169 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_168.x, x_168.y, x_169.z);
  let x_172 : vec3<f32> = u_xlat7;
  let x_174 : vec3<f32> = u_xlat7;
  u_xlat42 = dot(vec2<f32>(x_172.x, x_172.y), vec2<f32>(x_174.x, x_174.y));
  let x_177 : f32 = u_xlat42;
  u_xlat42 = min(x_177, 1.0f);
  let x_179 : f32 = u_xlat42;
  u_xlat42 = (-(x_179) + 1.0f);
  let x_182 : f32 = u_xlat42;
  u_xlat7.z = sqrt(x_182);
  let x_186 : f32 = u_xlat4.x;
  let x_189 : f32 = x_21.x_Metallic;
  u_xlat42 = (x_186 * x_189);
  let x_191 : f32 = u_xlat41;
  let x_193 : f32 = u_xlat40;
  let x_196 : f32 = x_21.x_Cutoff;
  u_xlat40 = ((-(x_191) * x_193) + -(x_196));
  let x_199 : f32 = u_xlat40;
  u_xlat40 = (x_199 + 1.0f);
  let x_204 : f32 = u_xlat40;
  u_xlatb40 = (x_204 < 0.0f);
  let x_206 : bool = u_xlatb40;
  if (((select(0i, 1i, x_206) * -1i) != 0i)) {
    discard;
  }
  let x_215 : vec3<f32> = vs_TEXCOORD4;
  let x_219 : vec4<f32> = x_21.unity_WorldToLight[1i];
  u_xlat8 = (vec4<f32>(x_215.y, x_215.y, x_215.y, x_215.y) * x_219);
  let x_222 : vec4<f32> = x_21.unity_WorldToLight[0i];
  let x_223 : vec3<f32> = vs_TEXCOORD4;
  let x_226 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_222 * vec4<f32>(x_223.x, x_223.x, x_223.x, x_223.x)) + x_226);
  let x_230 : vec4<f32> = x_21.unity_WorldToLight[2i];
  let x_231 : vec3<f32> = vs_TEXCOORD4;
  let x_234 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_230 * vec4<f32>(x_231.z, x_231.z, x_231.z, x_231.z)) + x_234);
  let x_236 : vec4<f32> = u_xlat8;
  let x_239 : vec4<f32> = x_21.unity_WorldToLight[3i];
  u_xlat8 = (x_236 + x_239);
  let x_244 : f32 = x_21.unity_MatrixV[0i].z;
  u_xlat9.x = x_244;
  let x_247 : f32 = x_21.unity_MatrixV[1i].z;
  u_xlat9.y = x_247;
  let x_251 : f32 = x_21.unity_MatrixV[2i].z;
  u_xlat9.z = x_251;
  let x_253 : vec4<f32> = u_xlat2;
  let x_255 : vec4<f32> = u_xlat9;
  u_xlat40 = dot(vec3<f32>(x_253.x, x_253.y, x_253.z), vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec3<f32> = vs_TEXCOORD4;
  let x_261 : vec4<f32> = x_21.unity_ShadowFadeCenterAndType;
  let x_264 : vec3<f32> = (x_258 + -(vec3<f32>(x_261.x, x_261.y, x_261.z)));
  let x_265 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_267 : vec4<f32> = u_xlat2;
  let x_269 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_267.x, x_267.y, x_267.z), vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_274 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_274);
  let x_277 : f32 = u_xlat40;
  let x_280 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_277) + x_280);
  let x_285 : f32 = x_21.unity_ShadowFadeCenterAndType.w;
  let x_287 : f32 = u_xlat2.x;
  let x_289 : f32 = u_xlat40;
  u_xlat40 = ((x_285 * x_287) + x_289);
  let x_291 : f32 = u_xlat40;
  let x_294 : f32 = x_21.x_LightShadowData.z;
  let x_297 : f32 = x_21.x_LightShadowData.w;
  u_xlat40 = ((x_291 * x_294) + x_297);
  let x_299 : f32 = u_xlat40;
  u_xlat40 = clamp(x_299, 0.0f, 1.0f);
  let x_304 : f32 = x_21.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_304 == 1.0f);
  let x_306 : bool = u_xlatb2;
  if (x_306) {
    let x_310 : f32 = x_21.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_310 == 1.0f);
    let x_313 : vec3<f32> = vs_TEXCOORD4;
    let x_317 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[1i];
    u_xlat15 = (vec3<f32>(x_313.y, x_313.y, x_313.y) * vec3<f32>(x_317.x, x_317.y, x_317.z));
    let x_321 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[0i];
    let x_323 : vec3<f32> = vs_TEXCOORD4;
    let x_326 : vec3<f32> = u_xlat15;
    u_xlat15 = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.x, x_323.x)) + x_326);
    let x_329 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[2i];
    let x_331 : vec3<f32> = vs_TEXCOORD4;
    let x_334 : vec3<f32> = u_xlat15;
    u_xlat15 = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331.z, x_331.z, x_331.z)) + x_334);
    let x_336 : vec3<f32> = u_xlat15;
    let x_338 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[3i];
    u_xlat15 = (x_336 + vec3<f32>(x_338.x, x_338.y, x_338.z));
    let x_341 : bool = u_xlatb2;
    if (x_341) {
      let x_346 : vec3<f32> = u_xlat15;
      x_343 = x_346;
    } else {
      let x_348 : vec3<f32> = vs_TEXCOORD4;
      x_343 = x_348;
    }
    let x_349 : vec3<f32> = x_343;
    let x_350 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
    let x_352 : vec4<f32> = u_xlat2;
    let x_356 : vec3<f32> = x_21.unity_ProbeVolumeMin;
    let x_358 : vec3<f32> = (vec3<f32>(x_352.x, x_352.y, x_352.z) + -(x_356));
    let x_359 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
    let x_361 : vec4<f32> = u_xlat2;
    let x_365 : vec3<f32> = x_21.unity_ProbeVolumeSizeInv;
    let x_366 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) * x_365);
    let x_367 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_367.x, x_366.x, x_366.y, x_366.z);
    let x_370 : f32 = u_xlat2.y;
    u_xlat15.x = ((x_370 * 0.25f) + 0.75f);
    let x_377 : f32 = x_21.unity_ProbeVolumeParams.z;
    u_xlat4.x = ((x_377 * 0.5f) + 0.75f);
    let x_383 : f32 = u_xlat15.x;
    let x_385 : f32 = u_xlat4.x;
    u_xlat2.x = max(x_383, x_385);
    let x_396 : vec4<f32> = u_xlat2;
    let x_398 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_396.x, x_396.z, x_396.w));
    u_xlat2 = x_398;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_404 : vec4<f32> = u_xlat2;
  let x_406 : vec4<f32> = x_21.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_404, x_406);
  let x_410 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_410, 0.0f, 1.0f);
  let x_414 : f32 = u_xlat40;
  u_xlatb15 = (x_414 < 0.99000001f);
  let x_417 : bool = u_xlatb15;
  if (x_417) {
    let x_420 : vec3<f32> = vs_TEXCOORD4;
    let x_423 : vec4<f32> = x_21.unity_WorldToShadow[0i][1i];
    u_xlat9 = (vec4<f32>(x_420.y, x_420.y, x_420.y, x_420.y) * x_423);
    let x_426 : vec4<f32> = x_21.unity_WorldToShadow[0i][0i];
    let x_427 : vec3<f32> = vs_TEXCOORD4;
    let x_430 : vec4<f32> = u_xlat9;
    u_xlat9 = ((x_426 * vec4<f32>(x_427.x, x_427.x, x_427.x, x_427.x)) + x_430);
    let x_433 : vec4<f32> = x_21.unity_WorldToShadow[0i][2i];
    let x_434 : vec3<f32> = vs_TEXCOORD4;
    let x_437 : vec4<f32> = u_xlat9;
    u_xlat9 = ((x_433 * vec4<f32>(x_434.z, x_434.z, x_434.z, x_434.z)) + x_437);
    let x_439 : vec4<f32> = u_xlat9;
    let x_441 : vec4<f32> = x_21.unity_WorldToShadow[0i][3i];
    u_xlat9 = (x_439 + x_441);
    let x_443 : vec4<f32> = u_xlat9;
    let x_445 : vec4<f32> = u_xlat9;
    u_xlat15 = (vec3<f32>(x_443.x, x_443.y, x_443.z) / vec3<f32>(x_445.w, x_445.w, x_445.w));
    let x_448 : vec3<f32> = u_xlat15;
    let x_452 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_456 : vec2<f32> = ((vec2<f32>(x_448.x, x_448.y) * vec2<f32>(x_452.z, x_452.w)) + vec2<f32>(0.5f, 0.5f));
    let x_457 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_456.x, x_457.y, x_456.y, x_457.w);
    let x_459 : vec4<f32> = u_xlat4;
    let x_461 : vec2<f32> = floor(vec2<f32>(x_459.x, x_459.z));
    let x_462 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_461.x, x_462.y, x_461.y, x_462.w);
    let x_464 : vec3<f32> = u_xlat15;
    let x_467 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_470 : vec4<f32> = u_xlat4;
    let x_473 : vec2<f32> = ((vec2<f32>(x_464.x, x_464.y) * vec2<f32>(x_467.z, x_467.w)) + -(vec2<f32>(x_470.x, x_470.z)));
    let x_474 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_473.x, x_473.y, x_474.z);
    let x_476 : vec3<f32> = u_xlat15;
    u_xlat9 = (vec4<f32>(x_476.x, x_476.x, x_476.y, x_476.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
    let x_481 : vec4<f32> = u_xlat9;
    let x_483 : vec4<f32> = u_xlat9;
    let x_485 : vec2<f32> = (vec2<f32>(x_481.x, x_481.z) * vec2<f32>(x_483.x, x_483.z));
    let x_486 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_485.x, x_486.y, x_486.z, x_485.y);
    let x_488 : vec4<f32> = u_xlat10;
    let x_491 : vec3<f32> = u_xlat15;
    let x_494 : vec2<f32> = ((vec2<f32>(x_488.x, x_488.w) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_491.x, x_491.y)));
    let x_495 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_494.x, x_495.y, x_494.y, x_495.w);
    let x_498 : vec3<f32> = u_xlat15;
    let x_502 : vec2<f32> = (-(vec2<f32>(x_498.x, x_498.y)) + vec2<f32>(1.0f, 1.0f));
    let x_503 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_502.x, x_502.y, x_503.z, x_503.w);
    let x_507 : vec3<f32> = u_xlat15;
    u_xlat37 = min(vec2<f32>(x_507.x, x_507.y), vec2<f32>(0.0f, 0.0f));
    let x_511 : vec2<f32> = u_xlat37;
    let x_513 : vec2<f32> = u_xlat37;
    let x_515 : vec4<f32> = u_xlat11;
    let x_517 : vec2<f32> = ((-(x_511) * x_513) + vec2<f32>(x_515.x, x_515.y));
    let x_518 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
    let x_520 : vec3<f32> = u_xlat15;
    let x_522 : vec2<f32> = max(vec2<f32>(x_520.x, x_520.y), vec2<f32>(0.0f, 0.0f));
    let x_523 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_522.x, x_522.y, x_523.z);
    let x_525 : vec3<f32> = u_xlat15;
    let x_528 : vec3<f32> = u_xlat15;
    let x_531 : vec4<f32> = u_xlat9;
    let x_533 : vec2<f32> = ((-(vec2<f32>(x_525.x, x_525.y)) * vec2<f32>(x_528.x, x_528.y)) + vec2<f32>(x_531.y, x_531.w));
    let x_534 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_533.x, x_533.y, x_534.z);
    let x_538 : f32 = u_xlat9.x;
    u_xlat12.x = x_538;
    let x_541 : f32 = u_xlat11.x;
    u_xlat12.y = x_541;
    let x_544 : f32 = u_xlat15.x;
    u_xlat12.z = x_544;
    let x_547 : f32 = u_xlat10.x;
    u_xlat12.w = x_547;
    let x_549 : vec4<f32> = u_xlat12;
    u_xlat12 = (x_549 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_555 : f32 = u_xlat9.z;
    u_xlat10.x = x_555;
    let x_558 : f32 = u_xlat11.y;
    u_xlat10.y = x_558;
    let x_561 : f32 = u_xlat15.y;
    u_xlat10.z = x_561;
    let x_563 : vec4<f32> = u_xlat10;
    u_xlat9 = (x_563 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_565 : vec4<f32> = u_xlat12;
    let x_567 : vec4<f32> = u_xlat12;
    u_xlat10 = (vec4<f32>(x_565.y, x_565.w, x_565.y, x_565.w) + vec4<f32>(x_567.x, x_567.z, x_567.x, x_567.z));
    let x_570 : vec4<f32> = u_xlat9;
    let x_572 : vec4<f32> = u_xlat9;
    u_xlat11 = (vec4<f32>(x_570.y, x_570.y, x_570.w, x_570.w) + vec4<f32>(x_572.x, x_572.x, x_572.z, x_572.z));
    let x_575 : vec4<f32> = u_xlat12;
    let x_577 : vec4<f32> = u_xlat10;
    let x_579 : vec2<f32> = (vec2<f32>(x_575.y, x_575.w) / vec2<f32>(x_577.z, x_577.w));
    let x_580 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_579.x, x_579.y, x_580.z);
    let x_582 : vec3<f32> = u_xlat15;
    let x_586 : vec2<f32> = (vec2<f32>(x_582.x, x_582.y) + vec2<f32>(-1.5f, 0.5f));
    let x_587 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_586.x, x_586.y, x_587.z);
    let x_589 : vec4<f32> = u_xlat9;
    let x_591 : vec4<f32> = u_xlat11;
    let x_593 : vec2<f32> = (vec2<f32>(x_589.y, x_589.w) / vec2<f32>(x_591.y, x_591.w));
    let x_594 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
    let x_596 : vec4<f32> = u_xlat9;
    let x_598 : vec2<f32> = (vec2<f32>(x_596.x, x_596.y) + vec2<f32>(-1.5f, 0.5f));
    let x_599 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
    let x_601 : vec3<f32> = u_xlat15;
    let x_604 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_606 : vec2<f32> = (vec2<f32>(x_601.x, x_601.y) * vec2<f32>(x_604.x, x_604.x));
    let x_607 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_607.w);
    let x_609 : vec4<f32> = u_xlat9;
    let x_612 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_614 : vec2<f32> = (vec2<f32>(x_609.x, x_609.y) * vec2<f32>(x_612.y, x_612.y));
    let x_615 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_615.x, x_615.y, x_614.x, x_614.y);
    let x_617 : vec4<f32> = u_xlat10;
    let x_618 : vec4<f32> = u_xlat11;
    u_xlat9 = (x_617 * x_618);
    let x_620 : vec4<f32> = u_xlat4;
    let x_623 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_626 : vec4<f32> = u_xlat12;
    u_xlat10 = ((vec4<f32>(x_620.x, x_620.z, x_620.x, x_620.z) * vec4<f32>(x_623.x, x_623.y, x_623.x, x_623.y)) + vec4<f32>(x_626.x, x_626.z, x_626.y, x_626.z));
    let x_630 : vec4<f32> = u_xlat10;
    let x_631 : vec2<f32> = vec2<f32>(x_630.x, x_630.y);
    let x_633 : f32 = u_xlat15.z;
    txVec0 = vec3<f32>(x_631.x, x_631.y, x_633);
    let x_645 : vec3<f32> = txVec0;
    let x_647 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_645.xy, x_645.z);
    u_xlat15.x = x_647;
    let x_650 : vec4<f32> = u_xlat10;
    let x_651 : vec2<f32> = vec2<f32>(x_650.z, x_650.w);
    let x_653 : f32 = u_xlat15.z;
    txVec1 = vec3<f32>(x_651.x, x_651.y, x_653);
    let x_661 : vec3<f32> = txVec1;
    let x_663 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_661.xy, x_661.z);
    u_xlat28 = x_663;
    let x_664 : f32 = u_xlat28;
    let x_666 : f32 = u_xlat9.y;
    u_xlat28 = (x_664 * x_666);
    let x_669 : f32 = u_xlat9.x;
    let x_671 : f32 = u_xlat15.x;
    let x_673 : f32 = u_xlat28;
    u_xlat15.x = ((x_669 * x_671) + x_673);
    let x_676 : vec4<f32> = u_xlat4;
    let x_679 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_682 : vec4<f32> = u_xlat12;
    u_xlat10 = ((vec4<f32>(x_676.x, x_676.z, x_676.x, x_676.z) * vec4<f32>(x_679.x, x_679.y, x_679.x, x_679.y)) + vec4<f32>(x_682.x, x_682.w, x_682.y, x_682.w));
    let x_686 : vec4<f32> = u_xlat10;
    let x_687 : vec2<f32> = vec2<f32>(x_686.x, x_686.y);
    let x_689 : f32 = u_xlat15.z;
    txVec2 = vec3<f32>(x_687.x, x_687.y, x_689);
    let x_696 : vec3<f32> = txVec2;
    let x_698 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_696.xy, x_696.z);
    u_xlat28 = x_698;
    let x_700 : f32 = u_xlat9.z;
    let x_701 : f32 = u_xlat28;
    let x_704 : f32 = u_xlat15.x;
    u_xlat15.x = ((x_700 * x_701) + x_704);
    let x_708 : vec4<f32> = u_xlat10;
    let x_709 : vec2<f32> = vec2<f32>(x_708.z, x_708.w);
    let x_711 : f32 = u_xlat15.z;
    txVec3 = vec3<f32>(x_709.x, x_709.y, x_711);
    let x_718 : vec3<f32> = txVec3;
    let x_720 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_718.xy, x_718.z);
    u_xlat28 = x_720;
    let x_722 : f32 = u_xlat9.w;
    let x_723 : f32 = u_xlat28;
    let x_726 : f32 = u_xlat15.x;
    u_xlat15.x = ((x_722 * x_723) + x_726);
    let x_730 : f32 = x_21.x_LightShadowData.x;
    u_xlat28 = (-(x_730) + 1.0f);
    let x_734 : f32 = u_xlat15.x;
    let x_735 : f32 = u_xlat28;
    let x_738 : f32 = x_21.x_LightShadowData.x;
    u_xlat15.x = ((x_734 * x_735) + x_738);
  } else {
    u_xlat15.x = 1.0f;
  }
  let x_744 : f32 = u_xlat15.x;
  let x_747 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_744) + x_747);
  let x_750 : f32 = u_xlat40;
  let x_752 : f32 = u_xlat2.x;
  let x_755 : f32 = u_xlat15.x;
  u_xlat40 = ((x_750 * x_752) + x_755);
  let x_758 : f32 = u_xlat8.z;
  u_xlatb2 = (0.0f < x_758);
  let x_760 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_760);
  let x_763 : vec4<f32> = u_xlat8;
  let x_765 : vec4<f32> = u_xlat8;
  let x_767 : vec2<f32> = (vec2<f32>(x_763.x, x_763.y) / vec2<f32>(x_765.w, x_765.w));
  let x_768 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_767.x, x_767.y, x_768.z);
  let x_770 : vec3<f32> = u_xlat15;
  let x_772 : vec2<f32> = (vec2<f32>(x_770.x, x_770.y) + vec2<f32>(0.5f, 0.5f));
  let x_773 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_772.x, x_772.y, x_773.z);
  let x_780 : vec3<f32> = u_xlat15;
  let x_782 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_780.x, x_780.y));
  u_xlat15.x = x_782.w;
  let x_786 : f32 = u_xlat15.x;
  let x_788 : f32 = u_xlat2.x;
  u_xlat2.x = (x_786 * x_788);
  let x_791 : vec4<f32> = u_xlat8;
  let x_793 : vec4<f32> = u_xlat8;
  u_xlat15.x = dot(vec3<f32>(x_791.x, x_791.y, x_791.z), vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_802 : vec3<f32> = u_xlat15;
  let x_804 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_802.x, x_802.x));
  u_xlat15.x = x_804.x;
  let x_808 : f32 = u_xlat15.x;
  let x_810 : f32 = u_xlat2.x;
  u_xlat2.x = (x_808 * x_810);
  let x_813 : f32 = u_xlat40;
  let x_815 : f32 = u_xlat2.x;
  u_xlat40 = (x_813 * x_815);
  let x_818 : vec3<f32> = vs_TEXCOORD1;
  let x_819 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_818, x_819);
  let x_823 : vec3<f32> = vs_TEXCOORD2;
  let x_824 : vec3<f32> = u_xlat7;
  u_xlat2.y = dot(x_823, x_824);
  let x_828 : vec3<f32> = vs_TEXCOORD3;
  let x_829 : vec3<f32> = u_xlat7;
  u_xlat2.z = dot(x_828, x_829);
  let x_832 : vec4<f32> = u_xlat2;
  let x_834 : vec4<f32> = u_xlat2;
  u_xlat41 = dot(vec3<f32>(x_832.x, x_832.y, x_832.z), vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : f32 = u_xlat41;
  u_xlat41 = inverseSqrt(x_837);
  let x_839 : f32 = u_xlat41;
  let x_841 : vec4<f32> = u_xlat2;
  let x_843 : vec3<f32> = (vec3<f32>(x_839, x_839, x_839) * vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_844 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : f32 = u_xlat40;
  let x_850 : vec4<f32> = x_21.x_LightColor0;
  let x_852 : vec3<f32> = (vec3<f32>(x_846, x_846, x_846) * vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_852.x, x_853.y, x_852.y, x_852.z);
  let x_855 : vec3<f32> = u_xlat5;
  let x_857 : vec4<f32> = x_21.x_Color;
  u_xlat5 = ((x_855 * vec3<f32>(x_857.x, x_857.y, x_857.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_863 : f32 = u_xlat42;
  let x_865 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_863, x_863, x_863) * x_865) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_870 : f32 = u_xlat42;
  u_xlat40 = ((-(x_870) * 0.959999979f) + 0.959999979f);
  let x_875 : f32 = u_xlat40;
  let x_877 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_875, x_875, x_875) * x_877);
  let x_880 : f32 = u_xlat4.y;
  let x_884 : f32 = x_21.x_Glossiness;
  u_xlat40 = ((-(x_880) * x_884) + 1.0f);
  let x_887 : vec3<f32> = u_xlat0;
  let x_888 : f32 = u_xlat39;
  let x_891 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_887 * vec3<f32>(x_888, x_888, x_888)) + x_891);
  let x_893 : vec3<f32> = u_xlat0;
  let x_894 : vec3<f32> = u_xlat0;
  u_xlat39 = dot(x_893, x_894);
  let x_896 : f32 = u_xlat39;
  u_xlat39 = max(x_896, 0.001f);
  let x_899 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_899);
  let x_901 : f32 = u_xlat39;
  let x_903 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_901, x_901, x_901) * x_903);
  let x_905 : vec4<f32> = u_xlat2;
  let x_907 : vec3<f32> = u_xlat3;
  u_xlat39 = dot(vec3<f32>(x_905.x, x_905.y, x_905.z), x_907);
  let x_909 : vec4<f32> = u_xlat2;
  let x_911 : vec3<f32> = u_xlat1;
  u_xlat41 = dot(vec3<f32>(x_909.x, x_909.y, x_909.z), x_911);
  let x_913 : f32 = u_xlat41;
  u_xlat41 = clamp(x_913, 0.0f, 1.0f);
  let x_915 : vec4<f32> = u_xlat2;
  let x_917 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_915.x, x_915.y, x_915.z), x_917);
  let x_921 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_921, 0.0f, 1.0f);
  let x_924 : vec3<f32> = u_xlat1;
  let x_925 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_924, x_925);
  let x_929 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_929, 0.0f, 1.0f);
  let x_934 : f32 = u_xlat0.x;
  let x_936 : f32 = u_xlat0.x;
  u_xlat13.x = (x_934 * x_936);
  let x_939 : vec3<f32> = u_xlat13;
  let x_941 : f32 = u_xlat40;
  u_xlat13.x = dot(vec2<f32>(x_939.x, x_939.x), vec2<f32>(x_941, x_941));
  let x_946 : f32 = u_xlat13.x;
  u_xlat13.x = (x_946 + -0.5f);
  let x_951 : f32 = u_xlat41;
  u_xlat26 = (-(x_951) + 1.0f);
  let x_954 : f32 = u_xlat26;
  let x_955 : f32 = u_xlat26;
  u_xlat1.x = (x_954 * x_955);
  let x_959 : f32 = u_xlat1.x;
  let x_961 : f32 = u_xlat1.x;
  u_xlat1.x = (x_959 * x_961);
  let x_964 : f32 = u_xlat26;
  let x_966 : f32 = u_xlat1.x;
  u_xlat26 = (x_964 * x_966);
  let x_969 : f32 = u_xlat13.x;
  let x_970 : f32 = u_xlat26;
  u_xlat26 = ((x_969 * x_970) + 1.0f);
  let x_973 : f32 = u_xlat39;
  u_xlat1.x = (-(abs(x_973)) + 1.0f);
  let x_980 : f32 = u_xlat1.x;
  let x_982 : f32 = u_xlat1.x;
  u_xlat14 = (x_980 * x_982);
  let x_984 : f32 = u_xlat14;
  let x_985 : f32 = u_xlat14;
  u_xlat14 = (x_984 * x_985);
  let x_988 : f32 = u_xlat1.x;
  let x_989 : f32 = u_xlat14;
  u_xlat1.x = (x_988 * x_989);
  let x_993 : f32 = u_xlat13.x;
  let x_995 : f32 = u_xlat1.x;
  u_xlat13.x = ((x_993 * x_995) + 1.0f);
  let x_1000 : f32 = u_xlat13.x;
  let x_1001 : f32 = u_xlat26;
  u_xlat13.x = (x_1000 * x_1001);
  let x_1004 : f32 = u_xlat40;
  let x_1005 : f32 = u_xlat40;
  u_xlat26 = (x_1004 * x_1005);
  let x_1007 : f32 = u_xlat26;
  u_xlat26 = max(x_1007, 0.002f);
  let x_1010 : f32 = u_xlat26;
  u_xlat1.x = (-(x_1010) + 1.0f);
  let x_1014 : f32 = u_xlat39;
  let x_1017 : f32 = u_xlat1.x;
  let x_1019 : f32 = u_xlat26;
  u_xlat14 = ((abs(x_1014) * x_1017) + x_1019);
  let x_1021 : f32 = u_xlat41;
  let x_1023 : f32 = u_xlat1.x;
  let x_1025 : f32 = u_xlat26;
  u_xlat1.x = ((x_1021 * x_1023) + x_1025);
  let x_1028 : f32 = u_xlat39;
  let x_1031 : f32 = u_xlat1.x;
  u_xlat39 = (abs(x_1028) * x_1031);
  let x_1033 : f32 = u_xlat41;
  let x_1034 : f32 = u_xlat14;
  let x_1036 : f32 = u_xlat39;
  u_xlat39 = ((x_1033 * x_1034) + x_1036);
  let x_1038 : f32 = u_xlat39;
  u_xlat39 = (x_1038 + 0.00001f);
  let x_1041 : f32 = u_xlat39;
  u_xlat39 = (0.5f / x_1041);
  let x_1043 : f32 = u_xlat26;
  let x_1044 : f32 = u_xlat26;
  u_xlat26 = (x_1043 * x_1044);
  let x_1047 : f32 = u_xlat2.x;
  let x_1048 : f32 = u_xlat26;
  let x_1051 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_1047 * x_1048) + -(x_1051));
  let x_1056 : f32 = u_xlat1.x;
  let x_1058 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_1056 * x_1058) + 1.0f);
  let x_1062 : f32 = u_xlat26;
  u_xlat26 = (x_1062 * 0.318309873f);
  let x_1066 : f32 = u_xlat1.x;
  let x_1068 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1066 * x_1068) + 0.0000001f);
  let x_1073 : f32 = u_xlat26;
  let x_1075 : f32 = u_xlat1.x;
  u_xlat26 = (x_1073 / x_1075);
  let x_1077 : f32 = u_xlat26;
  let x_1078 : f32 = u_xlat39;
  u_xlat13.y = (x_1077 * x_1078);
  let x_1081 : f32 = u_xlat41;
  let x_1083 : vec3<f32> = u_xlat13;
  let x_1085 : vec2<f32> = (vec2<f32>(x_1081, x_1081) * vec2<f32>(x_1083.x, x_1083.y));
  let x_1086 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_1085.x, x_1085.y, x_1086.z);
  let x_1089 : f32 = u_xlat13.y;
  u_xlat26 = (x_1089 * 3.141592741f);
  let x_1092 : f32 = u_xlat26;
  u_xlat26 = max(x_1092, 0.0f);
  let x_1094 : vec3<f32> = u_xlat5;
  let x_1095 : vec3<f32> = u_xlat5;
  u_xlat39 = dot(x_1094, x_1095);
  let x_1098 : f32 = u_xlat39;
  u_xlatb39 = !((x_1098 == 0.0f));
  let x_1100 : bool = u_xlatb39;
  u_xlat39 = select(0.0f, 1.0f, x_1100);
  let x_1102 : f32 = u_xlat39;
  let x_1103 : f32 = u_xlat26;
  u_xlat26 = (x_1102 * x_1103);
  let x_1105 : vec3<f32> = u_xlat13;
  let x_1107 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_1105.x, x_1105.x, x_1105.x) * vec3<f32>(x_1107.x, x_1107.z, x_1107.w));
  let x_1110 : vec4<f32> = u_xlat4;
  let x_1112 : f32 = u_xlat26;
  u_xlat13 = (vec3<f32>(x_1110.x, x_1110.z, x_1110.w) * vec3<f32>(x_1112, x_1112, x_1112));
  let x_1116 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1116) + 1.0f);
  let x_1121 : f32 = u_xlat0.x;
  let x_1123 : f32 = u_xlat0.x;
  u_xlat40 = (x_1121 * x_1123);
  let x_1125 : f32 = u_xlat40;
  let x_1126 : f32 = u_xlat40;
  u_xlat40 = (x_1125 * x_1126);
  let x_1129 : f32 = u_xlat0.x;
  let x_1130 : f32 = u_xlat40;
  u_xlat0.x = (x_1129 * x_1130);
  let x_1133 : vec3<f32> = u_xlat5;
  let x_1136 : vec3<f32> = (-(x_1133) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1137 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
  let x_1139 : vec4<f32> = u_xlat2;
  let x_1141 : vec3<f32> = u_xlat0;
  let x_1144 : vec3<f32> = u_xlat5;
  let x_1145 : vec3<f32> = ((vec3<f32>(x_1139.x, x_1139.y, x_1139.z) * vec3<f32>(x_1141.x, x_1141.x, x_1141.x)) + x_1144);
  let x_1146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
  let x_1148 : vec3<f32> = u_xlat13;
  let x_1149 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_1148 * vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
  let x_1154 : vec3<f32> = u_xlat6;
  let x_1155 : vec3<f32> = u_xlat1;
  let x_1157 : vec3<f32> = u_xlat0;
  let x_1158 : vec3<f32> = ((x_1154 * x_1155) + x_1157);
  let x_1159 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

