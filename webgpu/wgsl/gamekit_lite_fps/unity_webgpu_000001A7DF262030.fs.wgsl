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
  x_NoiseStrength : f32,
  @size(12)
  padding_3 : u32,
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

@group(0) @binding(15) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(18) var sampler_MetallicSmooth : sampler;

var<private> u_xlat41 : f32;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(16) var sampler_Gradient : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(17) var sampler_Normal : sampler;

var<private> u_xlatb40 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat15 : vec3<f32>;

@group(0) @binding(8) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(10) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat37 : vec2<f32>;

var<private> u_xlat12 : vec4<f32>;

@group(0) @binding(9) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat28 : f32;

@group(0) @binding(6) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTexture0 : sampler;

@group(0) @binding(7) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_LightTextureB0 : sampler;

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
  var x_365 : vec3<f32>;
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
  let x_102 : vec4<f32> = vs_TEXCOORD0;
  let x_104 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_102.z, x_102.w));
  u_xlat41 = x_104.x;
  let x_107 : f32 = u_xlat41;
  u_xlat42 = (-(x_107) + 1.0f);
  let x_111 : f32 = u_xlat40;
  let x_112 : f32 = u_xlat42;
  u_xlat40 = (x_111 * x_112);
  let x_114 : f32 = u_xlat40;
  let x_118 : f32 = x_21.x_NoiseStrength;
  let x_120 : f32 = u_xlat41;
  u_xlat40 = ((x_114 * x_118) + x_120);
  let x_122 : f32 = u_xlat40;
  u_xlat40 = (-(x_122) + 1.0f);
  let x_125 : f32 = u_xlat40;
  let x_128 : f32 = x_21.x_Cutoff;
  u_xlat40 = (x_125 + -(x_128));
  let x_133 : f32 = x_21.x_EdgeSize;
  u_xlat41 = (1.0f / -(x_133));
  let x_136 : f32 = u_xlat40;
  let x_137 : f32 = u_xlat41;
  u_xlat40 = (x_136 * x_137);
  let x_139 : f32 = u_xlat40;
  u_xlat40 = clamp(x_139, 0.0f, 1.0f);
  let x_142 : f32 = u_xlat40;
  u_xlat41 = ((x_142 * -2.0f) + 3.0f);
  let x_147 : f32 = u_xlat40;
  let x_148 : f32 = u_xlat40;
  u_xlat40 = (x_147 * x_148);
  let x_156 : vec4<f32> = vs_TEXCOORD0;
  let x_158 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_156.z, x_156.w));
  u_xlat5 = vec3<f32>(x_158.x, x_158.y, x_158.z);
  let x_161 : vec3<f32> = u_xlat5;
  let x_164 : vec4<f32> = x_21.x_Color;
  u_xlat6 = (x_161 * vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_173 : vec4<f32> = vs_TEXCOORD0;
  let x_175 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_173.z, x_173.w));
  u_xlat7 = vec3<f32>(x_175.x, x_175.y, x_175.w);
  let x_179 : f32 = u_xlat7.z;
  let x_181 : f32 = u_xlat7.x;
  u_xlat7.x = (x_179 * x_181);
  let x_184 : vec3<f32> = u_xlat7;
  let x_191 : vec2<f32> = ((vec2<f32>(x_184.x, x_184.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_192 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_191.x, x_191.y, x_192.z);
  let x_194 : vec3<f32> = u_xlat7;
  let x_196 : vec3<f32> = u_xlat7;
  u_xlat42 = dot(vec2<f32>(x_194.x, x_194.y), vec2<f32>(x_196.x, x_196.y));
  let x_199 : f32 = u_xlat42;
  u_xlat42 = min(x_199, 1.0f);
  let x_201 : f32 = u_xlat42;
  u_xlat42 = (-(x_201) + 1.0f);
  let x_204 : f32 = u_xlat42;
  u_xlat7.z = sqrt(x_204);
  let x_208 : f32 = u_xlat4.x;
  let x_211 : f32 = x_21.x_Metallic;
  u_xlat42 = (x_208 * x_211);
  let x_213 : f32 = u_xlat41;
  let x_215 : f32 = u_xlat40;
  let x_218 : f32 = x_21.x_Cutoff;
  u_xlat40 = ((-(x_213) * x_215) + -(x_218));
  let x_221 : f32 = u_xlat40;
  u_xlat40 = (x_221 + 1.0f);
  let x_226 : f32 = u_xlat40;
  u_xlatb40 = (x_226 < 0.0f);
  let x_228 : bool = u_xlatb40;
  if (((select(0i, 1i, x_228) * -1i) != 0i)) {
    discard;
  }
  let x_237 : vec3<f32> = vs_TEXCOORD4;
  let x_241 : vec4<f32> = x_21.unity_WorldToLight[1i];
  u_xlat8 = (vec4<f32>(x_237.y, x_237.y, x_237.y, x_237.y) * x_241);
  let x_244 : vec4<f32> = x_21.unity_WorldToLight[0i];
  let x_245 : vec3<f32> = vs_TEXCOORD4;
  let x_248 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_244 * vec4<f32>(x_245.x, x_245.x, x_245.x, x_245.x)) + x_248);
  let x_252 : vec4<f32> = x_21.unity_WorldToLight[2i];
  let x_253 : vec3<f32> = vs_TEXCOORD4;
  let x_256 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_252 * vec4<f32>(x_253.z, x_253.z, x_253.z, x_253.z)) + x_256);
  let x_258 : vec4<f32> = u_xlat8;
  let x_261 : vec4<f32> = x_21.unity_WorldToLight[3i];
  u_xlat8 = (x_258 + x_261);
  let x_266 : f32 = x_21.unity_MatrixV[0i].z;
  u_xlat9.x = x_266;
  let x_269 : f32 = x_21.unity_MatrixV[1i].z;
  u_xlat9.y = x_269;
  let x_273 : f32 = x_21.unity_MatrixV[2i].z;
  u_xlat9.z = x_273;
  let x_275 : vec4<f32> = u_xlat2;
  let x_277 : vec4<f32> = u_xlat9;
  u_xlat40 = dot(vec3<f32>(x_275.x, x_275.y, x_275.z), vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec3<f32> = vs_TEXCOORD4;
  let x_283 : vec4<f32> = x_21.unity_ShadowFadeCenterAndType;
  let x_286 : vec3<f32> = (x_280 + -(vec3<f32>(x_283.x, x_283.y, x_283.z)));
  let x_287 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : vec4<f32> = u_xlat2;
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_296 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_296);
  let x_299 : f32 = u_xlat40;
  let x_302 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_299) + x_302);
  let x_307 : f32 = x_21.unity_ShadowFadeCenterAndType.w;
  let x_309 : f32 = u_xlat2.x;
  let x_311 : f32 = u_xlat40;
  u_xlat40 = ((x_307 * x_309) + x_311);
  let x_313 : f32 = u_xlat40;
  let x_316 : f32 = x_21.x_LightShadowData.z;
  let x_319 : f32 = x_21.x_LightShadowData.w;
  u_xlat40 = ((x_313 * x_316) + x_319);
  let x_321 : f32 = u_xlat40;
  u_xlat40 = clamp(x_321, 0.0f, 1.0f);
  let x_326 : f32 = x_21.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_326 == 1.0f);
  let x_328 : bool = u_xlatb2;
  if (x_328) {
    let x_332 : f32 = x_21.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_332 == 1.0f);
    let x_335 : vec3<f32> = vs_TEXCOORD4;
    let x_339 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[1i];
    u_xlat15 = (vec3<f32>(x_335.y, x_335.y, x_335.y) * vec3<f32>(x_339.x, x_339.y, x_339.z));
    let x_343 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[0i];
    let x_345 : vec3<f32> = vs_TEXCOORD4;
    let x_348 : vec3<f32> = u_xlat15;
    u_xlat15 = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.x, x_345.x)) + x_348);
    let x_351 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[2i];
    let x_353 : vec3<f32> = vs_TEXCOORD4;
    let x_356 : vec3<f32> = u_xlat15;
    u_xlat15 = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353.z, x_353.z, x_353.z)) + x_356);
    let x_358 : vec3<f32> = u_xlat15;
    let x_360 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[3i];
    u_xlat15 = (x_358 + vec3<f32>(x_360.x, x_360.y, x_360.z));
    let x_363 : bool = u_xlatb2;
    if (x_363) {
      let x_368 : vec3<f32> = u_xlat15;
      x_365 = x_368;
    } else {
      let x_370 : vec3<f32> = vs_TEXCOORD4;
      x_365 = x_370;
    }
    let x_371 : vec3<f32> = x_365;
    let x_372 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
    let x_374 : vec4<f32> = u_xlat2;
    let x_378 : vec3<f32> = x_21.unity_ProbeVolumeMin;
    let x_380 : vec3<f32> = (vec3<f32>(x_374.x, x_374.y, x_374.z) + -(x_378));
    let x_381 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
    let x_383 : vec4<f32> = u_xlat2;
    let x_387 : vec3<f32> = x_21.unity_ProbeVolumeSizeInv;
    let x_388 : vec3<f32> = (vec3<f32>(x_383.x, x_383.y, x_383.z) * x_387);
    let x_389 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_389.x, x_388.x, x_388.y, x_388.z);
    let x_392 : f32 = u_xlat2.y;
    u_xlat15.x = ((x_392 * 0.25f) + 0.75f);
    let x_399 : f32 = x_21.unity_ProbeVolumeParams.z;
    u_xlat4.x = ((x_399 * 0.5f) + 0.75f);
    let x_405 : f32 = u_xlat15.x;
    let x_407 : f32 = u_xlat4.x;
    u_xlat2.x = max(x_405, x_407);
    let x_418 : vec4<f32> = u_xlat2;
    let x_420 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_418.x, x_418.z, x_418.w));
    u_xlat2 = x_420;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_426 : vec4<f32> = u_xlat2;
  let x_428 : vec4<f32> = x_21.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_426, x_428);
  let x_432 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_432, 0.0f, 1.0f);
  let x_436 : f32 = u_xlat40;
  u_xlatb15 = (x_436 < 0.99000001f);
  let x_439 : bool = u_xlatb15;
  if (x_439) {
    let x_442 : vec3<f32> = vs_TEXCOORD4;
    let x_445 : vec4<f32> = x_21.unity_WorldToShadow[0i][1i];
    u_xlat9 = (vec4<f32>(x_442.y, x_442.y, x_442.y, x_442.y) * x_445);
    let x_448 : vec4<f32> = x_21.unity_WorldToShadow[0i][0i];
    let x_449 : vec3<f32> = vs_TEXCOORD4;
    let x_452 : vec4<f32> = u_xlat9;
    u_xlat9 = ((x_448 * vec4<f32>(x_449.x, x_449.x, x_449.x, x_449.x)) + x_452);
    let x_455 : vec4<f32> = x_21.unity_WorldToShadow[0i][2i];
    let x_456 : vec3<f32> = vs_TEXCOORD4;
    let x_459 : vec4<f32> = u_xlat9;
    u_xlat9 = ((x_455 * vec4<f32>(x_456.z, x_456.z, x_456.z, x_456.z)) + x_459);
    let x_461 : vec4<f32> = u_xlat9;
    let x_463 : vec4<f32> = x_21.unity_WorldToShadow[0i][3i];
    u_xlat9 = (x_461 + x_463);
    let x_465 : vec4<f32> = u_xlat9;
    let x_467 : vec4<f32> = u_xlat9;
    u_xlat15 = (vec3<f32>(x_465.x, x_465.y, x_465.z) / vec3<f32>(x_467.w, x_467.w, x_467.w));
    let x_470 : vec3<f32> = u_xlat15;
    let x_474 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_478 : vec2<f32> = ((vec2<f32>(x_470.x, x_470.y) * vec2<f32>(x_474.z, x_474.w)) + vec2<f32>(0.5f, 0.5f));
    let x_479 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_478.x, x_479.y, x_478.y, x_479.w);
    let x_481 : vec4<f32> = u_xlat4;
    let x_483 : vec2<f32> = floor(vec2<f32>(x_481.x, x_481.z));
    let x_484 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_483.x, x_484.y, x_483.y, x_484.w);
    let x_486 : vec3<f32> = u_xlat15;
    let x_489 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_492 : vec4<f32> = u_xlat4;
    let x_495 : vec2<f32> = ((vec2<f32>(x_486.x, x_486.y) * vec2<f32>(x_489.z, x_489.w)) + -(vec2<f32>(x_492.x, x_492.z)));
    let x_496 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_495.x, x_495.y, x_496.z);
    let x_498 : vec3<f32> = u_xlat15;
    u_xlat9 = (vec4<f32>(x_498.x, x_498.x, x_498.y, x_498.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
    let x_503 : vec4<f32> = u_xlat9;
    let x_505 : vec4<f32> = u_xlat9;
    let x_507 : vec2<f32> = (vec2<f32>(x_503.x, x_503.z) * vec2<f32>(x_505.x, x_505.z));
    let x_508 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_507.x, x_508.y, x_508.z, x_507.y);
    let x_510 : vec4<f32> = u_xlat10;
    let x_513 : vec3<f32> = u_xlat15;
    let x_516 : vec2<f32> = ((vec2<f32>(x_510.x, x_510.w) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_513.x, x_513.y)));
    let x_517 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_516.x, x_517.y, x_516.y, x_517.w);
    let x_520 : vec3<f32> = u_xlat15;
    let x_524 : vec2<f32> = (-(vec2<f32>(x_520.x, x_520.y)) + vec2<f32>(1.0f, 1.0f));
    let x_525 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
    let x_529 : vec3<f32> = u_xlat15;
    u_xlat37 = min(vec2<f32>(x_529.x, x_529.y), vec2<f32>(0.0f, 0.0f));
    let x_533 : vec2<f32> = u_xlat37;
    let x_535 : vec2<f32> = u_xlat37;
    let x_537 : vec4<f32> = u_xlat11;
    let x_539 : vec2<f32> = ((-(x_533) * x_535) + vec2<f32>(x_537.x, x_537.y));
    let x_540 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_539.x, x_539.y, x_540.z, x_540.w);
    let x_542 : vec3<f32> = u_xlat15;
    let x_544 : vec2<f32> = max(vec2<f32>(x_542.x, x_542.y), vec2<f32>(0.0f, 0.0f));
    let x_545 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_544.x, x_544.y, x_545.z);
    let x_547 : vec3<f32> = u_xlat15;
    let x_550 : vec3<f32> = u_xlat15;
    let x_553 : vec4<f32> = u_xlat9;
    let x_555 : vec2<f32> = ((-(vec2<f32>(x_547.x, x_547.y)) * vec2<f32>(x_550.x, x_550.y)) + vec2<f32>(x_553.y, x_553.w));
    let x_556 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_555.x, x_555.y, x_556.z);
    let x_560 : f32 = u_xlat9.x;
    u_xlat12.x = x_560;
    let x_563 : f32 = u_xlat11.x;
    u_xlat12.y = x_563;
    let x_566 : f32 = u_xlat15.x;
    u_xlat12.z = x_566;
    let x_569 : f32 = u_xlat10.x;
    u_xlat12.w = x_569;
    let x_571 : vec4<f32> = u_xlat12;
    u_xlat12 = (x_571 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_577 : f32 = u_xlat9.z;
    u_xlat10.x = x_577;
    let x_580 : f32 = u_xlat11.y;
    u_xlat10.y = x_580;
    let x_583 : f32 = u_xlat15.y;
    u_xlat10.z = x_583;
    let x_585 : vec4<f32> = u_xlat10;
    u_xlat9 = (x_585 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_587 : vec4<f32> = u_xlat12;
    let x_589 : vec4<f32> = u_xlat12;
    u_xlat10 = (vec4<f32>(x_587.y, x_587.w, x_587.y, x_587.w) + vec4<f32>(x_589.x, x_589.z, x_589.x, x_589.z));
    let x_592 : vec4<f32> = u_xlat9;
    let x_594 : vec4<f32> = u_xlat9;
    u_xlat11 = (vec4<f32>(x_592.y, x_592.y, x_592.w, x_592.w) + vec4<f32>(x_594.x, x_594.x, x_594.z, x_594.z));
    let x_597 : vec4<f32> = u_xlat12;
    let x_599 : vec4<f32> = u_xlat10;
    let x_601 : vec2<f32> = (vec2<f32>(x_597.y, x_597.w) / vec2<f32>(x_599.z, x_599.w));
    let x_602 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_601.x, x_601.y, x_602.z);
    let x_604 : vec3<f32> = u_xlat15;
    let x_608 : vec2<f32> = (vec2<f32>(x_604.x, x_604.y) + vec2<f32>(-1.5f, 0.5f));
    let x_609 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_608.x, x_608.y, x_609.z);
    let x_611 : vec4<f32> = u_xlat9;
    let x_613 : vec4<f32> = u_xlat11;
    let x_615 : vec2<f32> = (vec2<f32>(x_611.y, x_611.w) / vec2<f32>(x_613.y, x_613.w));
    let x_616 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_616.w);
    let x_618 : vec4<f32> = u_xlat9;
    let x_620 : vec2<f32> = (vec2<f32>(x_618.x, x_618.y) + vec2<f32>(-1.5f, 0.5f));
    let x_621 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
    let x_623 : vec3<f32> = u_xlat15;
    let x_626 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_628 : vec2<f32> = (vec2<f32>(x_623.x, x_623.y) * vec2<f32>(x_626.x, x_626.x));
    let x_629 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_628.x, x_628.y, x_629.z, x_629.w);
    let x_631 : vec4<f32> = u_xlat9;
    let x_634 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_636 : vec2<f32> = (vec2<f32>(x_631.x, x_631.y) * vec2<f32>(x_634.y, x_634.y));
    let x_637 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_637.x, x_637.y, x_636.x, x_636.y);
    let x_639 : vec4<f32> = u_xlat10;
    let x_640 : vec4<f32> = u_xlat11;
    u_xlat9 = (x_639 * x_640);
    let x_642 : vec4<f32> = u_xlat4;
    let x_645 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_648 : vec4<f32> = u_xlat12;
    u_xlat10 = ((vec4<f32>(x_642.x, x_642.z, x_642.x, x_642.z) * vec4<f32>(x_645.x, x_645.y, x_645.x, x_645.y)) + vec4<f32>(x_648.x, x_648.z, x_648.y, x_648.z));
    let x_652 : vec4<f32> = u_xlat10;
    let x_653 : vec2<f32> = vec2<f32>(x_652.x, x_652.y);
    let x_655 : f32 = u_xlat15.z;
    txVec0 = vec3<f32>(x_653.x, x_653.y, x_655);
    let x_667 : vec3<f32> = txVec0;
    let x_669 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_667.xy, x_667.z);
    u_xlat15.x = x_669;
    let x_672 : vec4<f32> = u_xlat10;
    let x_673 : vec2<f32> = vec2<f32>(x_672.z, x_672.w);
    let x_675 : f32 = u_xlat15.z;
    txVec1 = vec3<f32>(x_673.x, x_673.y, x_675);
    let x_683 : vec3<f32> = txVec1;
    let x_685 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_683.xy, x_683.z);
    u_xlat28 = x_685;
    let x_686 : f32 = u_xlat28;
    let x_688 : f32 = u_xlat9.y;
    u_xlat28 = (x_686 * x_688);
    let x_691 : f32 = u_xlat9.x;
    let x_693 : f32 = u_xlat15.x;
    let x_695 : f32 = u_xlat28;
    u_xlat15.x = ((x_691 * x_693) + x_695);
    let x_698 : vec4<f32> = u_xlat4;
    let x_701 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_704 : vec4<f32> = u_xlat12;
    u_xlat10 = ((vec4<f32>(x_698.x, x_698.z, x_698.x, x_698.z) * vec4<f32>(x_701.x, x_701.y, x_701.x, x_701.y)) + vec4<f32>(x_704.x, x_704.w, x_704.y, x_704.w));
    let x_708 : vec4<f32> = u_xlat10;
    let x_709 : vec2<f32> = vec2<f32>(x_708.x, x_708.y);
    let x_711 : f32 = u_xlat15.z;
    txVec2 = vec3<f32>(x_709.x, x_709.y, x_711);
    let x_718 : vec3<f32> = txVec2;
    let x_720 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_718.xy, x_718.z);
    u_xlat28 = x_720;
    let x_722 : f32 = u_xlat9.z;
    let x_723 : f32 = u_xlat28;
    let x_726 : f32 = u_xlat15.x;
    u_xlat15.x = ((x_722 * x_723) + x_726);
    let x_730 : vec4<f32> = u_xlat10;
    let x_731 : vec2<f32> = vec2<f32>(x_730.z, x_730.w);
    let x_733 : f32 = u_xlat15.z;
    txVec3 = vec3<f32>(x_731.x, x_731.y, x_733);
    let x_740 : vec3<f32> = txVec3;
    let x_742 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_740.xy, x_740.z);
    u_xlat28 = x_742;
    let x_744 : f32 = u_xlat9.w;
    let x_745 : f32 = u_xlat28;
    let x_748 : f32 = u_xlat15.x;
    u_xlat15.x = ((x_744 * x_745) + x_748);
    let x_752 : f32 = x_21.x_LightShadowData.x;
    u_xlat28 = (-(x_752) + 1.0f);
    let x_756 : f32 = u_xlat15.x;
    let x_757 : f32 = u_xlat28;
    let x_760 : f32 = x_21.x_LightShadowData.x;
    u_xlat15.x = ((x_756 * x_757) + x_760);
  } else {
    u_xlat15.x = 1.0f;
  }
  let x_766 : f32 = u_xlat15.x;
  let x_769 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_766) + x_769);
  let x_772 : f32 = u_xlat40;
  let x_774 : f32 = u_xlat2.x;
  let x_777 : f32 = u_xlat15.x;
  u_xlat40 = ((x_772 * x_774) + x_777);
  let x_780 : f32 = u_xlat8.z;
  u_xlatb2 = (0.0f < x_780);
  let x_782 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_782);
  let x_785 : vec4<f32> = u_xlat8;
  let x_787 : vec4<f32> = u_xlat8;
  let x_789 : vec2<f32> = (vec2<f32>(x_785.x, x_785.y) / vec2<f32>(x_787.w, x_787.w));
  let x_790 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_789.x, x_789.y, x_790.z);
  let x_792 : vec3<f32> = u_xlat15;
  let x_794 : vec2<f32> = (vec2<f32>(x_792.x, x_792.y) + vec2<f32>(0.5f, 0.5f));
  let x_795 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_794.x, x_794.y, x_795.z);
  let x_802 : vec3<f32> = u_xlat15;
  let x_804 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_802.x, x_802.y));
  u_xlat15.x = x_804.w;
  let x_808 : f32 = u_xlat15.x;
  let x_810 : f32 = u_xlat2.x;
  u_xlat2.x = (x_808 * x_810);
  let x_813 : vec4<f32> = u_xlat8;
  let x_815 : vec4<f32> = u_xlat8;
  u_xlat15.x = dot(vec3<f32>(x_813.x, x_813.y, x_813.z), vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_824 : vec3<f32> = u_xlat15;
  let x_826 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_824.x, x_824.x));
  u_xlat15.x = x_826.x;
  let x_830 : f32 = u_xlat15.x;
  let x_832 : f32 = u_xlat2.x;
  u_xlat2.x = (x_830 * x_832);
  let x_835 : f32 = u_xlat40;
  let x_837 : f32 = u_xlat2.x;
  u_xlat40 = (x_835 * x_837);
  let x_840 : vec3<f32> = vs_TEXCOORD1;
  let x_841 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_840, x_841);
  let x_845 : vec3<f32> = vs_TEXCOORD2;
  let x_846 : vec3<f32> = u_xlat7;
  u_xlat2.y = dot(x_845, x_846);
  let x_850 : vec3<f32> = vs_TEXCOORD3;
  let x_851 : vec3<f32> = u_xlat7;
  u_xlat2.z = dot(x_850, x_851);
  let x_854 : vec4<f32> = u_xlat2;
  let x_856 : vec4<f32> = u_xlat2;
  u_xlat41 = dot(vec3<f32>(x_854.x, x_854.y, x_854.z), vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : f32 = u_xlat41;
  u_xlat41 = inverseSqrt(x_859);
  let x_861 : f32 = u_xlat41;
  let x_863 : vec4<f32> = u_xlat2;
  let x_865 : vec3<f32> = (vec3<f32>(x_861, x_861, x_861) * vec3<f32>(x_863.x, x_863.y, x_863.z));
  let x_866 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : f32 = u_xlat40;
  let x_872 : vec4<f32> = x_21.x_LightColor0;
  let x_874 : vec3<f32> = (vec3<f32>(x_868, x_868, x_868) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_874.x, x_875.y, x_874.y, x_874.z);
  let x_877 : vec3<f32> = u_xlat5;
  let x_879 : vec4<f32> = x_21.x_Color;
  u_xlat5 = ((x_877 * vec3<f32>(x_879.x, x_879.y, x_879.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_885 : f32 = u_xlat42;
  let x_887 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_885, x_885, x_885) * x_887) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_892 : f32 = u_xlat42;
  u_xlat40 = ((-(x_892) * 0.959999979f) + 0.959999979f);
  let x_897 : f32 = u_xlat40;
  let x_899 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_897, x_897, x_897) * x_899);
  let x_902 : f32 = u_xlat4.y;
  let x_906 : f32 = x_21.x_Glossiness;
  u_xlat40 = ((-(x_902) * x_906) + 1.0f);
  let x_909 : vec3<f32> = u_xlat0;
  let x_910 : f32 = u_xlat39;
  let x_913 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_909 * vec3<f32>(x_910, x_910, x_910)) + x_913);
  let x_915 : vec3<f32> = u_xlat0;
  let x_916 : vec3<f32> = u_xlat0;
  u_xlat39 = dot(x_915, x_916);
  let x_918 : f32 = u_xlat39;
  u_xlat39 = max(x_918, 0.001f);
  let x_921 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_921);
  let x_923 : f32 = u_xlat39;
  let x_925 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_923, x_923, x_923) * x_925);
  let x_927 : vec4<f32> = u_xlat2;
  let x_929 : vec3<f32> = u_xlat3;
  u_xlat39 = dot(vec3<f32>(x_927.x, x_927.y, x_927.z), x_929);
  let x_931 : vec4<f32> = u_xlat2;
  let x_933 : vec3<f32> = u_xlat1;
  u_xlat41 = dot(vec3<f32>(x_931.x, x_931.y, x_931.z), x_933);
  let x_935 : f32 = u_xlat41;
  u_xlat41 = clamp(x_935, 0.0f, 1.0f);
  let x_937 : vec4<f32> = u_xlat2;
  let x_939 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_937.x, x_937.y, x_937.z), x_939);
  let x_943 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_943, 0.0f, 1.0f);
  let x_946 : vec3<f32> = u_xlat1;
  let x_947 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_946, x_947);
  let x_951 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_951, 0.0f, 1.0f);
  let x_956 : f32 = u_xlat0.x;
  let x_958 : f32 = u_xlat0.x;
  u_xlat13.x = (x_956 * x_958);
  let x_961 : vec3<f32> = u_xlat13;
  let x_963 : f32 = u_xlat40;
  u_xlat13.x = dot(vec2<f32>(x_961.x, x_961.x), vec2<f32>(x_963, x_963));
  let x_968 : f32 = u_xlat13.x;
  u_xlat13.x = (x_968 + -0.5f);
  let x_973 : f32 = u_xlat41;
  u_xlat26 = (-(x_973) + 1.0f);
  let x_976 : f32 = u_xlat26;
  let x_977 : f32 = u_xlat26;
  u_xlat1.x = (x_976 * x_977);
  let x_981 : f32 = u_xlat1.x;
  let x_983 : f32 = u_xlat1.x;
  u_xlat1.x = (x_981 * x_983);
  let x_986 : f32 = u_xlat26;
  let x_988 : f32 = u_xlat1.x;
  u_xlat26 = (x_986 * x_988);
  let x_991 : f32 = u_xlat13.x;
  let x_992 : f32 = u_xlat26;
  u_xlat26 = ((x_991 * x_992) + 1.0f);
  let x_995 : f32 = u_xlat39;
  u_xlat1.x = (-(abs(x_995)) + 1.0f);
  let x_1002 : f32 = u_xlat1.x;
  let x_1004 : f32 = u_xlat1.x;
  u_xlat14 = (x_1002 * x_1004);
  let x_1006 : f32 = u_xlat14;
  let x_1007 : f32 = u_xlat14;
  u_xlat14 = (x_1006 * x_1007);
  let x_1010 : f32 = u_xlat1.x;
  let x_1011 : f32 = u_xlat14;
  u_xlat1.x = (x_1010 * x_1011);
  let x_1015 : f32 = u_xlat13.x;
  let x_1017 : f32 = u_xlat1.x;
  u_xlat13.x = ((x_1015 * x_1017) + 1.0f);
  let x_1022 : f32 = u_xlat13.x;
  let x_1023 : f32 = u_xlat26;
  u_xlat13.x = (x_1022 * x_1023);
  let x_1026 : f32 = u_xlat40;
  let x_1027 : f32 = u_xlat40;
  u_xlat26 = (x_1026 * x_1027);
  let x_1029 : f32 = u_xlat26;
  u_xlat26 = max(x_1029, 0.002f);
  let x_1032 : f32 = u_xlat26;
  u_xlat1.x = (-(x_1032) + 1.0f);
  let x_1036 : f32 = u_xlat39;
  let x_1039 : f32 = u_xlat1.x;
  let x_1041 : f32 = u_xlat26;
  u_xlat14 = ((abs(x_1036) * x_1039) + x_1041);
  let x_1043 : f32 = u_xlat41;
  let x_1045 : f32 = u_xlat1.x;
  let x_1047 : f32 = u_xlat26;
  u_xlat1.x = ((x_1043 * x_1045) + x_1047);
  let x_1050 : f32 = u_xlat39;
  let x_1053 : f32 = u_xlat1.x;
  u_xlat39 = (abs(x_1050) * x_1053);
  let x_1055 : f32 = u_xlat41;
  let x_1056 : f32 = u_xlat14;
  let x_1058 : f32 = u_xlat39;
  u_xlat39 = ((x_1055 * x_1056) + x_1058);
  let x_1060 : f32 = u_xlat39;
  u_xlat39 = (x_1060 + 0.00001f);
  let x_1063 : f32 = u_xlat39;
  u_xlat39 = (0.5f / x_1063);
  let x_1065 : f32 = u_xlat26;
  let x_1066 : f32 = u_xlat26;
  u_xlat26 = (x_1065 * x_1066);
  let x_1069 : f32 = u_xlat2.x;
  let x_1070 : f32 = u_xlat26;
  let x_1073 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_1069 * x_1070) + -(x_1073));
  let x_1078 : f32 = u_xlat1.x;
  let x_1080 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_1078 * x_1080) + 1.0f);
  let x_1084 : f32 = u_xlat26;
  u_xlat26 = (x_1084 * 0.318309873f);
  let x_1088 : f32 = u_xlat1.x;
  let x_1090 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1088 * x_1090) + 0.0000001f);
  let x_1095 : f32 = u_xlat26;
  let x_1097 : f32 = u_xlat1.x;
  u_xlat26 = (x_1095 / x_1097);
  let x_1099 : f32 = u_xlat26;
  let x_1100 : f32 = u_xlat39;
  u_xlat13.y = (x_1099 * x_1100);
  let x_1103 : f32 = u_xlat41;
  let x_1105 : vec3<f32> = u_xlat13;
  let x_1107 : vec2<f32> = (vec2<f32>(x_1103, x_1103) * vec2<f32>(x_1105.x, x_1105.y));
  let x_1108 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_1107.x, x_1107.y, x_1108.z);
  let x_1111 : f32 = u_xlat13.y;
  u_xlat26 = (x_1111 * 3.141592741f);
  let x_1114 : f32 = u_xlat26;
  u_xlat26 = max(x_1114, 0.0f);
  let x_1116 : vec3<f32> = u_xlat5;
  let x_1117 : vec3<f32> = u_xlat5;
  u_xlat39 = dot(x_1116, x_1117);
  let x_1120 : f32 = u_xlat39;
  u_xlatb39 = !((x_1120 == 0.0f));
  let x_1122 : bool = u_xlatb39;
  u_xlat39 = select(0.0f, 1.0f, x_1122);
  let x_1124 : f32 = u_xlat39;
  let x_1125 : f32 = u_xlat26;
  u_xlat26 = (x_1124 * x_1125);
  let x_1127 : vec3<f32> = u_xlat13;
  let x_1129 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_1127.x, x_1127.x, x_1127.x) * vec3<f32>(x_1129.x, x_1129.z, x_1129.w));
  let x_1132 : vec4<f32> = u_xlat4;
  let x_1134 : f32 = u_xlat26;
  u_xlat13 = (vec3<f32>(x_1132.x, x_1132.z, x_1132.w) * vec3<f32>(x_1134, x_1134, x_1134));
  let x_1138 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1138) + 1.0f);
  let x_1143 : f32 = u_xlat0.x;
  let x_1145 : f32 = u_xlat0.x;
  u_xlat40 = (x_1143 * x_1145);
  let x_1147 : f32 = u_xlat40;
  let x_1148 : f32 = u_xlat40;
  u_xlat40 = (x_1147 * x_1148);
  let x_1151 : f32 = u_xlat0.x;
  let x_1152 : f32 = u_xlat40;
  u_xlat0.x = (x_1151 * x_1152);
  let x_1155 : vec3<f32> = u_xlat5;
  let x_1158 : vec3<f32> = (-(x_1155) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
  let x_1161 : vec4<f32> = u_xlat2;
  let x_1163 : vec3<f32> = u_xlat0;
  let x_1166 : vec3<f32> = u_xlat5;
  let x_1167 : vec3<f32> = ((vec3<f32>(x_1161.x, x_1161.y, x_1161.z) * vec3<f32>(x_1163.x, x_1163.x, x_1163.x)) + x_1166);
  let x_1168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1170 : vec3<f32> = u_xlat13;
  let x_1171 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_1170 * vec3<f32>(x_1171.x, x_1171.y, x_1171.z));
  let x_1176 : vec3<f32> = u_xlat6;
  let x_1177 : vec3<f32> = u_xlat1;
  let x_1179 : vec3<f32> = u_xlat0;
  let x_1180 : vec3<f32> = ((x_1176 * x_1177) + x_1179);
  let x_1181 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
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

