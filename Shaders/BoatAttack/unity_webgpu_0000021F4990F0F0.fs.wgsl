struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_297 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_359 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_493 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_609 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_724 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat11 : f32;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_123 : f32;
  var u_xlatb11 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlatb36 : bool;
  var u_xlatb4 : bool;
  var u_xlatb5 : vec2<bool>;
  var x_444 : f32;
  var x_455 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlat6 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat27 : vec2<f32>;
  var u_xlatu27 : u32;
  var u_xlati38 : i32;
  var u_xlati27 : i32;
  var u_xlati39 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb27 : bool;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb30 : vec2<bool>;
  var u_xlat30 : vec2<f32>;
  var x_1026 : f32;
  var x_1039 : f32;
  var x_1091 : f32;
  var x_1103 : vec3<f32>;
  var x_1211 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_68 >= x_71);
  let x_73 : bool = u_xlatb0;
  if (x_73) {
    let x_78 : f32 = u_xlat1.x;
    x_74 = x_78;
  } else {
    x_74 = 0.0f;
  }
  let x_81 : f32 = x_74;
  u_xlat0.x = x_81;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_57.x_BaseColor.w;
  let x_90 : f32 = x_57.x_Cutoff;
  u_xlat11 = ((x_85 * x_87) + -(x_90));
  let x_95 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_95);
  let x_99 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_99);
  let x_101 : f32 = u_xlat33;
  let x_103 : f32 = u_xlat22;
  u_xlat22 = (abs(x_101) + abs(x_103));
  let x_106 : f32 = u_xlat22;
  u_xlat22 = max(x_106, 0.0001f);
  let x_109 : f32 = u_xlat11;
  let x_110 : f32 = u_xlat22;
  u_xlat11 = (x_109 / x_110);
  let x_112 : f32 = u_xlat11;
  u_xlat11 = (x_112 + 0.5f);
  let x_115 : f32 = u_xlat11;
  u_xlat11 = clamp(x_115, 0.0f, 1.0f);
  let x_120 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_120 == 0.0f));
  let x_122 : bool = u_xlatb22;
  if (x_122) {
    let x_126 : f32 = u_xlat11;
    x_123 = x_126;
  } else {
    let x_129 : f32 = u_xlat0.x;
    x_123 = x_129;
  }
  let x_130 : f32 = x_123;
  u_xlat0.x = x_130;
  let x_133 : f32 = u_xlat0.x;
  u_xlat11 = (x_133 + -0.0001f);
  let x_137 : f32 = u_xlat11;
  u_xlatb11 = (x_137 < 0.0f);
  let x_139 : bool = u_xlatb11;
  if (((select(0i, 1i, x_139) * -1i) != 0i)) {
    discard;
  }
  let x_150 : vec3<f32> = vs_TEXCOORD2;
  let x_151 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11 = dot(x_150, x_151);
  let x_153 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_153);
  let x_157 : f32 = u_xlat11;
  let x_159 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_157, x_157, x_157) * x_159);
  let x_164 : f32 = vs_TEXCOORD1.y;
  let x_168 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat11 = (x_164 * x_168);
  let x_171 : f32 = x_44.unity_MatrixV[0i].z;
  let x_173 : f32 = vs_TEXCOORD1.x;
  let x_175 : f32 = u_xlat11;
  u_xlat11 = ((x_171 * x_173) + x_175);
  let x_178 : f32 = x_44.unity_MatrixV[2i].z;
  let x_180 : f32 = vs_TEXCOORD1.z;
  let x_182 : f32 = u_xlat11;
  u_xlat11 = ((x_178 * x_180) + x_182);
  let x_184 : f32 = u_xlat11;
  let x_187 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat11 = (x_184 + x_187);
  let x_189 : f32 = u_xlat11;
  let x_193 : f32 = x_44.x_ProjectionParams.y;
  u_xlat11 = (-(x_189) + -(x_193));
  let x_196 : f32 = u_xlat11;
  u_xlat11 = max(x_196, 0.0f);
  let x_198 : f32 = u_xlat11;
  let x_201 : f32 = x_44.unity_FogParams.x;
  u_xlat11 = (x_198 * x_201);
  let x_210 : vec2<f32> = vs_TEXCOORD7;
  let x_212 : f32 = x_44.x_GlobalMipBias.x;
  let x_213 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_210, x_212);
  u_xlat3 = vec3<f32>(x_213.x, x_213.y, x_213.z);
  let x_218 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_219 : vec2<f32> = vec2<f32>(x_218.x, x_218.y);
  let x_223 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_219.x, x_219.y));
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_223.x, x_223.y, x_224.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat4;
  let x_228 : vec4<f32> = hlslcc_FragCoord;
  let x_230 : vec2<f32> = (vec2<f32>(x_226.x, x_226.y) * vec2<f32>(x_228.x, x_228.y));
  let x_231 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_230.x, x_230.y, x_231.z, x_231.w);
  let x_234 : f32 = u_xlat4.y;
  let x_237 : f32 = x_44.x_ScaleBiasRt.x;
  let x_240 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_234 * x_237) + x_240);
  let x_242 : f32 = u_xlat33;
  u_xlat4.z = (-(x_242) + 1.0f);
  let x_251 : vec4<f32> = u_xlat4;
  let x_254 : f32 = x_44.x_GlobalMipBias.x;
  let x_255 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_251.x, x_251.z), x_254);
  u_xlat33 = x_255.x;
  let x_257 : f32 = u_xlat33;
  u_xlat1.x = (x_257 + -1.0f);
  let x_263 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_265 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_263 * x_265) + 1.0f);
  let x_269 : f32 = u_xlat33;
  u_xlat33 = min(x_269, 1.0f);
  let x_273 : vec4<f32> = vs_TEXCOORD6;
  let x_274 : vec2<f32> = vec2<f32>(x_273.x, x_273.y);
  let x_276 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_274.x, x_274.y, x_276);
  let x_289 : vec3<f32> = txVec0;
  let x_291 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_289.xy, x_289.z);
  u_xlat35 = x_291;
  let x_299 : f32 = x_297.x_MainLightShadowParams.x;
  u_xlat36 = (-(x_299) + 1.0f);
  let x_302 : f32 = u_xlat35;
  let x_304 : f32 = x_297.x_MainLightShadowParams.x;
  let x_306 : f32 = u_xlat36;
  u_xlat35 = ((x_302 * x_304) + x_306);
  let x_310 : f32 = vs_TEXCOORD6.z;
  u_xlatb36 = (0.0f >= x_310);
  let x_314 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_314 >= 1.0f);
  let x_316 : bool = u_xlatb36;
  let x_317 : bool = u_xlatb4;
  u_xlatb36 = (x_316 | x_317);
  let x_319 : bool = u_xlatb36;
  let x_320 : f32 = u_xlat35;
  u_xlat35 = select(x_320, 1.0f, x_319);
  let x_322 : vec3<f32> = vs_TEXCOORD1;
  let x_326 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_328 : vec3<f32> = (x_322 + -(x_326));
  let x_329 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat4;
  let x_333 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : f32 = u_xlat36;
  let x_338 : f32 = x_297.x_MainLightShadowParams.z;
  let x_341 : f32 = x_297.x_MainLightShadowParams.w;
  u_xlat36 = ((x_336 * x_338) + x_341);
  let x_343 : f32 = u_xlat36;
  u_xlat36 = clamp(x_343, 0.0f, 1.0f);
  let x_345 : f32 = u_xlat35;
  u_xlat4.x = (-(x_345) + 1.0f);
  let x_349 : f32 = u_xlat36;
  let x_351 : f32 = u_xlat4.x;
  let x_353 : f32 = u_xlat35;
  u_xlat35 = ((x_349 * x_351) + x_353);
  let x_361 : f32 = x_359.x_MainLightCookieTextureFormat;
  u_xlatb36 = !((x_361 == -1.0f));
  let x_363 : bool = u_xlatb36;
  if (x_363) {
    let x_366 : vec3<f32> = vs_TEXCOORD1;
    let x_369 : vec4<f32> = x_359.x_MainLightWorldToLight[1i];
    let x_371 : vec2<f32> = (vec2<f32>(x_366.y, x_366.y) * vec2<f32>(x_369.x, x_369.y));
    let x_372 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_372.w);
    let x_375 : vec4<f32> = x_359.x_MainLightWorldToLight[0i];
    let x_377 : vec3<f32> = vs_TEXCOORD1;
    let x_380 : vec4<f32> = u_xlat4;
    let x_382 : vec2<f32> = ((vec2<f32>(x_375.x, x_375.y) * vec2<f32>(x_377.x, x_377.x)) + vec2<f32>(x_380.x, x_380.y));
    let x_383 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
    let x_386 : vec4<f32> = x_359.x_MainLightWorldToLight[2i];
    let x_388 : vec3<f32> = vs_TEXCOORD1;
    let x_391 : vec4<f32> = u_xlat4;
    let x_393 : vec2<f32> = ((vec2<f32>(x_386.x, x_386.y) * vec2<f32>(x_388.z, x_388.z)) + vec2<f32>(x_391.x, x_391.y));
    let x_394 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_393.x, x_393.y, x_394.z, x_394.w);
    let x_396 : vec4<f32> = u_xlat4;
    let x_399 : vec4<f32> = x_359.x_MainLightWorldToLight[3i];
    let x_401 : vec2<f32> = (vec2<f32>(x_396.x, x_396.y) + vec2<f32>(x_399.x, x_399.y));
    let x_402 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
    let x_404 : vec4<f32> = u_xlat4;
    let x_408 : vec2<f32> = ((vec2<f32>(x_404.x, x_404.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_409 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_408.x, x_408.y, x_409.z, x_409.w);
    let x_416 : vec4<f32> = u_xlat4;
    let x_419 : f32 = x_44.x_GlobalMipBias.x;
    let x_420 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_416.x, x_416.y), x_419);
    u_xlat4 = x_420;
    let x_425 : f32 = x_359.x_MainLightCookieTextureFormat;
    let x_427 : f32 = x_359.x_MainLightCookieTextureFormat;
    let x_429 : f32 = x_359.x_MainLightCookieTextureFormat;
    let x_431 : f32 = x_359.x_MainLightCookieTextureFormat;
    let x_432 : vec4<f32> = vec4<f32>(x_425, x_427, x_429, x_431);
    let x_440 : vec4<bool> = (vec4<f32>(x_432.x, x_432.y, x_432.z, x_432.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_440.x, x_440.y);
    let x_443 : bool = u_xlatb5.y;
    if (x_443) {
      let x_448 : f32 = u_xlat4.w;
      x_444 = x_448;
    } else {
      let x_451 : f32 = u_xlat4.x;
      x_444 = x_451;
    }
    let x_452 : f32 = x_444;
    u_xlat36 = x_452;
    let x_454 : bool = u_xlatb5.x;
    if (x_454) {
      let x_458 : vec4<f32> = u_xlat4;
      x_455 = vec3<f32>(x_458.x, x_458.y, x_458.z);
    } else {
      let x_461 : f32 = u_xlat36;
      x_455 = vec3<f32>(x_461, x_461, x_461);
    }
    let x_463 : vec3<f32> = x_455;
    let x_464 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_470 : vec4<f32> = u_xlat4;
  let x_473 : vec4<f32> = x_44.x_MainLightColor;
  let x_475 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat1;
  let x_480 : vec4<f32> = u_xlat4;
  let x_482 : vec3<f32> = (vec3<f32>(x_478.x, x_478.x, x_478.x) * vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : f32 = u_xlat33;
  let x_487 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_485, x_485, x_485) * x_487);
  let x_489 : f32 = u_xlat35;
  let x_495 : f32 = x_493.unity_LightData.z;
  u_xlat33 = (x_489 * x_495);
  let x_497 : f32 = u_xlat33;
  let x_499 : vec4<f32> = u_xlat4;
  let x_501 : vec3<f32> = (vec3<f32>(x_497, x_497, x_497) * vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_502 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_504 : vec3<f32> = u_xlat2;
  let x_506 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat33 = dot(x_504, vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : f32 = u_xlat33;
  u_xlat33 = clamp(x_509, 0.0f, 1.0f);
  let x_511 : f32 = u_xlat33;
  let x_513 : vec4<f32> = u_xlat4;
  let x_515 : vec3<f32> = (vec3<f32>(x_511, x_511, x_511) * vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_516 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat1;
  let x_520 : vec4<f32> = u_xlat4;
  let x_522 : vec3<f32> = (vec3<f32>(x_518.y, x_518.z, x_518.w) * vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_527 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_529 : f32 = x_493.unity_LightData.y;
  u_xlat33 = min(x_527, x_529);
  let x_533 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_533));
  let x_537 : f32 = x_359.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_539 : f32 = x_359.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_541 : f32 = x_359.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_543 : f32 = x_359.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_544 : vec4<f32> = vec4<f32>(x_537, x_539, x_541, x_543);
  let x_550 : vec4<bool> = (vec4<f32>(x_544.x, x_544.y, x_544.z, x_544.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_550.x, x_550.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_562 : u32 = u_xlatu_loop_1;
    let x_563 : u32 = u_xlatu33;
    if ((x_562 < x_563)) {
    } else {
      break;
    }
    let x_566 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_566 >> 2u);
    let x_570 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_570 & 3u));
    let x_573 : u32 = u_xlatu36;
    let x_576 : vec4<f32> = x_493.unity_LightIndices[bitcast<i32>(x_573)];
    let x_586 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_591 : vec4<u32> = indexable[x_586];
    u_xlat36 = dot(x_576, bitcast<vec4<f32>>(x_591));
    let x_594 : f32 = u_xlat36;
    u_xlatu36 = bitcast<u32>(i32(x_594));
    let x_598 : vec3<f32> = vs_TEXCOORD1;
    let x_610 : u32 = u_xlatu36;
    let x_613 : vec4<f32> = x_609.x_AdditionalLightsPosition[bitcast<i32>(x_610)];
    let x_616 : u32 = u_xlatu36;
    let x_619 : vec4<f32> = x_609.x_AdditionalLightsPosition[bitcast<i32>(x_616)];
    u_xlat7 = ((-(x_598) * vec3<f32>(x_613.w, x_613.w, x_613.w)) + vec3<f32>(x_619.x, x_619.y, x_619.z));
    let x_623 : vec3<f32> = u_xlat7;
    let x_624 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_623, x_624);
    let x_626 : f32 = u_xlat37;
    u_xlat37 = max(x_626, 6.10351562e-05f);
    let x_631 : f32 = u_xlat37;
    u_xlat27.x = inverseSqrt(x_631);
    let x_634 : vec2<f32> = u_xlat27;
    let x_636 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_634.x, x_634.x, x_634.x) * x_636);
    let x_638 : f32 = u_xlat37;
    u_xlat27.x = (1.0f / x_638);
    let x_641 : f32 = u_xlat37;
    let x_642 : u32 = u_xlatu36;
    let x_645 : f32 = x_609.x_AdditionalLightsAttenuation[bitcast<i32>(x_642)].x;
    u_xlat37 = (x_641 * x_645);
    let x_647 : f32 = u_xlat37;
    let x_649 : f32 = u_xlat37;
    u_xlat37 = ((-(x_647) * x_649) + 1.0f);
    let x_652 : f32 = u_xlat37;
    u_xlat37 = max(x_652, 0.0f);
    let x_654 : f32 = u_xlat37;
    let x_655 : f32 = u_xlat37;
    u_xlat37 = (x_654 * x_655);
    let x_657 : f32 = u_xlat37;
    let x_659 : f32 = u_xlat27.x;
    u_xlat37 = (x_657 * x_659);
    let x_661 : u32 = u_xlatu36;
    let x_664 : vec4<f32> = x_609.x_AdditionalLightsSpotDir[bitcast<i32>(x_661)];
    let x_666 : vec3<f32> = u_xlat7;
    u_xlat27.x = dot(vec3<f32>(x_664.x, x_664.y, x_664.z), x_666);
    let x_670 : f32 = u_xlat27.x;
    let x_671 : u32 = u_xlatu36;
    let x_674 : f32 = x_609.x_AdditionalLightsAttenuation[bitcast<i32>(x_671)].z;
    let x_676 : u32 = u_xlatu36;
    let x_679 : f32 = x_609.x_AdditionalLightsAttenuation[bitcast<i32>(x_676)].w;
    u_xlat27.x = ((x_670 * x_674) + x_679);
    let x_683 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_683, 0.0f, 1.0f);
    let x_687 : f32 = u_xlat27.x;
    let x_689 : f32 = u_xlat27.x;
    u_xlat27.x = (x_687 * x_689);
    let x_692 : f32 = u_xlat37;
    let x_694 : f32 = u_xlat27.x;
    u_xlat37 = (x_692 * x_694);
    let x_697 : u32 = u_xlatu36;
    u_xlatu27 = (x_697 >> 5u);
    let x_700 : u32 = u_xlatu36;
    u_xlati38 = (1i << bitcast<u32>((bitcast<i32>(x_700) & 31i)));
    let x_706 : i32 = u_xlati38;
    let x_708 : u32 = u_xlatu27;
    let x_711 : f32 = x_359.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_708)].el;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_706) & bitcast<u32>(x_711)));
    let x_715 : i32 = u_xlati27;
    if ((x_715 != 0i)) {
      let x_725 : u32 = u_xlatu36;
      let x_728 : f32 = x_724.x_AdditionalLightsLightTypes[bitcast<i32>(x_725)].el;
      u_xlati27 = i32(x_728);
      let x_730 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_730 != 0i));
      let x_734 : u32 = u_xlatu36;
      u_xlati39 = (bitcast<i32>(x_734) << bitcast<u32>(2i));
      let x_737 : i32 = u_xlati38;
      if ((x_737 != 0i)) {
        let x_742 : vec3<f32> = vs_TEXCOORD1;
        let x_744 : i32 = u_xlati39;
        let x_747 : i32 = u_xlati39;
        let x_751 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_744 + 1i) / 4i)][((x_747 + 1i) % 4i)];
        let x_753 : vec3<f32> = (vec3<f32>(x_742.y, x_742.y, x_742.y) * vec3<f32>(x_751.x, x_751.y, x_751.w));
        let x_754 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
        let x_756 : i32 = u_xlati39;
        let x_758 : i32 = u_xlati39;
        let x_761 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[(x_756 / 4i)][(x_758 % 4i)];
        let x_763 : vec3<f32> = vs_TEXCOORD1;
        let x_766 : vec4<f32> = u_xlat8;
        let x_768 : vec3<f32> = ((vec3<f32>(x_761.x, x_761.y, x_761.w) * vec3<f32>(x_763.x, x_763.x, x_763.x)) + vec3<f32>(x_766.x, x_766.y, x_766.z));
        let x_769 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
        let x_771 : i32 = u_xlati39;
        let x_774 : i32 = u_xlati39;
        let x_778 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_771 + 2i) / 4i)][((x_774 + 2i) % 4i)];
        let x_780 : vec3<f32> = vs_TEXCOORD1;
        let x_783 : vec4<f32> = u_xlat8;
        let x_785 : vec3<f32> = ((vec3<f32>(x_778.x, x_778.y, x_778.w) * vec3<f32>(x_780.z, x_780.z, x_780.z)) + vec3<f32>(x_783.x, x_783.y, x_783.z));
        let x_786 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
        let x_788 : vec4<f32> = u_xlat8;
        let x_790 : i32 = u_xlati39;
        let x_793 : i32 = u_xlati39;
        let x_797 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_790 + 3i) / 4i)][((x_793 + 3i) % 4i)];
        let x_799 : vec3<f32> = (vec3<f32>(x_788.x, x_788.y, x_788.z) + vec3<f32>(x_797.x, x_797.y, x_797.w));
        let x_800 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
        let x_802 : vec4<f32> = u_xlat8;
        let x_804 : vec4<f32> = u_xlat8;
        let x_806 : vec2<f32> = (vec2<f32>(x_802.x, x_802.y) / vec2<f32>(x_804.z, x_804.z));
        let x_807 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_806.x, x_806.y, x_807.z, x_807.w);
        let x_809 : vec4<f32> = u_xlat8;
        let x_812 : vec2<f32> = ((vec2<f32>(x_809.x, x_809.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_813 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_812.x, x_812.y, x_813.z, x_813.w);
        let x_815 : vec4<f32> = u_xlat8;
        let x_819 : vec2<f32> = clamp(vec2<f32>(x_815.x, x_815.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_820 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
        let x_822 : u32 = u_xlatu36;
        let x_825 : vec4<f32> = x_724.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_822)];
        let x_827 : vec4<f32> = u_xlat8;
        let x_830 : u32 = u_xlatu36;
        let x_833 : vec4<f32> = x_724.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_830)];
        let x_835 : vec2<f32> = ((vec2<f32>(x_825.x, x_825.y) * vec2<f32>(x_827.x, x_827.y)) + vec2<f32>(x_833.z, x_833.w));
        let x_836 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_835.x, x_835.y, x_836.z, x_836.w);
      } else {
        let x_840 : i32 = u_xlati27;
        u_xlatb27 = (x_840 == 1i);
        let x_842 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_842);
        let x_844 : i32 = u_xlati27;
        if ((x_844 != 0i)) {
          let x_848 : vec3<f32> = vs_TEXCOORD1;
          let x_850 : i32 = u_xlati39;
          let x_853 : i32 = u_xlati39;
          let x_857 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_850 + 1i) / 4i)][((x_853 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_848.y, x_848.y) * vec2<f32>(x_857.x, x_857.y));
          let x_860 : i32 = u_xlati39;
          let x_862 : i32 = u_xlati39;
          let x_865 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[(x_860 / 4i)][(x_862 % 4i)];
          let x_867 : vec3<f32> = vs_TEXCOORD1;
          let x_870 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_865.x, x_865.y) * vec2<f32>(x_867.x, x_867.x)) + x_870);
          let x_872 : i32 = u_xlati39;
          let x_875 : i32 = u_xlati39;
          let x_879 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_872 + 2i) / 4i)][((x_875 + 2i) % 4i)];
          let x_881 : vec3<f32> = vs_TEXCOORD1;
          let x_884 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_879.x, x_879.y) * vec2<f32>(x_881.z, x_881.z)) + x_884);
          let x_886 : vec2<f32> = u_xlat27;
          let x_887 : i32 = u_xlati39;
          let x_890 : i32 = u_xlati39;
          let x_894 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_887 + 3i) / 4i)][((x_890 + 3i) % 4i)];
          u_xlat27 = (x_886 + vec2<f32>(x_894.x, x_894.y));
          let x_897 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_897 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_900 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_900);
          let x_902 : u32 = u_xlatu36;
          let x_905 : vec4<f32> = x_724.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_902)];
          let x_907 : vec2<f32> = u_xlat27;
          let x_909 : u32 = u_xlatu36;
          let x_912 : vec4<f32> = x_724.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_909)];
          let x_914 : vec2<f32> = ((vec2<f32>(x_905.x, x_905.y) * x_907) + vec2<f32>(x_912.z, x_912.w));
          let x_915 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_914.x, x_914.y, x_915.z, x_915.w);
        } else {
          let x_919 : vec3<f32> = vs_TEXCOORD1;
          let x_921 : i32 = u_xlati39;
          let x_924 : i32 = u_xlati39;
          let x_928 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_921 + 1i) / 4i)][((x_924 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_919.y, x_919.y, x_919.y, x_919.y) * x_928);
          let x_930 : i32 = u_xlati39;
          let x_932 : i32 = u_xlati39;
          let x_935 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[(x_930 / 4i)][(x_932 % 4i)];
          let x_936 : vec3<f32> = vs_TEXCOORD1;
          let x_939 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_935 * vec4<f32>(x_936.x, x_936.x, x_936.x, x_936.x)) + x_939);
          let x_941 : i32 = u_xlati39;
          let x_944 : i32 = u_xlati39;
          let x_948 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_941 + 2i) / 4i)][((x_944 + 2i) % 4i)];
          let x_949 : vec3<f32> = vs_TEXCOORD1;
          let x_952 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_948 * vec4<f32>(x_949.z, x_949.z, x_949.z, x_949.z)) + x_952);
          let x_954 : vec4<f32> = u_xlat9;
          let x_955 : i32 = u_xlati39;
          let x_958 : i32 = u_xlati39;
          let x_962 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_955 + 3i) / 4i)][((x_958 + 3i) % 4i)];
          u_xlat9 = (x_954 + x_962);
          let x_964 : vec4<f32> = u_xlat9;
          let x_966 : vec4<f32> = u_xlat9;
          let x_968 : vec3<f32> = (vec3<f32>(x_964.x, x_964.y, x_964.z) / vec3<f32>(x_966.w, x_966.w, x_966.w));
          let x_969 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
          let x_971 : vec4<f32> = u_xlat9;
          let x_973 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_971.x, x_971.y, x_971.z), vec3<f32>(x_973.x, x_973.y, x_973.z));
          let x_978 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_978);
          let x_981 : vec2<f32> = u_xlat27;
          let x_983 : vec4<f32> = u_xlat9;
          let x_985 : vec3<f32> = (vec3<f32>(x_981.x, x_981.x, x_981.x) * vec3<f32>(x_983.x, x_983.y, x_983.z));
          let x_986 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
          let x_988 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_988.x, x_988.y, x_988.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_995 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_995, 0.000001f);
          let x_1000 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1000);
          let x_1004 : vec2<f32> = u_xlat27;
          let x_1006 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1004.x, x_1004.x, x_1004.x) * vec3<f32>(x_1006.z, x_1006.x, x_1006.y));
          let x_1010 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1010);
          let x_1014 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1014, 0.0f, 1.0f);
          let x_1018 : vec3<f32> = u_xlat10;
          let x_1021 : vec4<bool> = (vec4<f32>(x_1018.y, x_1018.z, x_1018.y, x_1018.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1021.x, x_1021.y);
          let x_1025 : bool = u_xlatb30.x;
          if (x_1025) {
            let x_1030 : f32 = u_xlat10.x;
            x_1026 = x_1030;
          } else {
            let x_1033 : f32 = u_xlat10.x;
            x_1026 = -(x_1033);
          }
          let x_1035 : f32 = x_1026;
          u_xlat30.x = x_1035;
          let x_1038 : bool = u_xlatb30.y;
          if (x_1038) {
            let x_1043 : f32 = u_xlat10.x;
            x_1039 = x_1043;
          } else {
            let x_1046 : f32 = u_xlat10.x;
            x_1039 = -(x_1046);
          }
          let x_1048 : f32 = x_1039;
          u_xlat30.y = x_1048;
          let x_1050 : vec4<f32> = u_xlat9;
          let x_1052 : vec2<f32> = u_xlat27;
          let x_1055 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1050.x, x_1050.y) * vec2<f32>(x_1052.x, x_1052.x)) + x_1055);
          let x_1057 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1057 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1060 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1060, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1064 : u32 = u_xlatu36;
          let x_1067 : vec4<f32> = x_724.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1064)];
          let x_1069 : vec2<f32> = u_xlat27;
          let x_1071 : u32 = u_xlatu36;
          let x_1074 : vec4<f32> = x_724.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1071)];
          let x_1076 : vec2<f32> = ((vec2<f32>(x_1067.x, x_1067.y) * x_1069) + vec2<f32>(x_1074.z, x_1074.w));
          let x_1077 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1076.x, x_1076.y, x_1077.z, x_1077.w);
        }
      }
      let x_1084 : vec4<f32> = u_xlat8;
      let x_1087 : f32 = x_44.x_GlobalMipBias.x;
      let x_1088 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1084.x, x_1084.y), x_1087);
      u_xlat8 = x_1088;
      let x_1090 : bool = u_xlatb5.y;
      if (x_1090) {
        let x_1095 : f32 = u_xlat8.w;
        x_1091 = x_1095;
      } else {
        let x_1098 : f32 = u_xlat8.x;
        x_1091 = x_1098;
      }
      let x_1099 : f32 = x_1091;
      u_xlat27.x = x_1099;
      let x_1102 : bool = u_xlatb5.x;
      if (x_1102) {
        let x_1106 : vec4<f32> = u_xlat8;
        x_1103 = vec3<f32>(x_1106.x, x_1106.y, x_1106.z);
      } else {
        let x_1109 : vec2<f32> = u_xlat27;
        x_1103 = vec3<f32>(x_1109.x, x_1109.x, x_1109.x);
      }
      let x_1111 : vec3<f32> = x_1103;
      let x_1112 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1118 : vec4<f32> = u_xlat8;
    let x_1120 : u32 = u_xlatu36;
    let x_1123 : vec4<f32> = x_609.x_AdditionalLightsColor[bitcast<i32>(x_1120)];
    let x_1125 : vec3<f32> = (vec3<f32>(x_1118.x, x_1118.y, x_1118.z) * vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
    let x_1126 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
    let x_1128 : vec4<f32> = u_xlat1;
    let x_1130 : vec4<f32> = u_xlat8;
    let x_1132 : vec3<f32> = (vec3<f32>(x_1128.x, x_1128.x, x_1128.x) * vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
    let x_1133 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
    let x_1135 : f32 = u_xlat37;
    let x_1137 : vec4<f32> = u_xlat8;
    let x_1139 : vec3<f32> = (vec3<f32>(x_1135, x_1135, x_1135) * vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
    let x_1140 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
    let x_1142 : vec3<f32> = u_xlat2;
    let x_1143 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_1142, x_1143);
    let x_1145 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1145, 0.0f, 1.0f);
    let x_1147 : f32 = u_xlat36;
    let x_1149 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1147, x_1147, x_1147) * vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
    let x_1152 : vec3<f32> = u_xlat7;
    let x_1153 : vec4<f32> = u_xlat1;
    let x_1156 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1152 * vec3<f32>(x_1153.y, x_1153.z, x_1153.w)) + x_1156);

    continuing {
      let x_1158 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1158 + bitcast<u32>(1i));
    }
  }
  let x_1160 : vec3<f32> = u_xlat3;
  let x_1161 : vec4<f32> = u_xlat1;
  let x_1164 : vec4<f32> = u_xlat4;
  let x_1166 : vec3<f32> = ((x_1160 * vec3<f32>(x_1161.y, x_1161.z, x_1161.w)) + vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
  let x_1167 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
  let x_1169 : vec3<f32> = u_xlat6;
  let x_1170 : vec4<f32> = u_xlat1;
  let x_1172 : vec3<f32> = (x_1169 + vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
  let x_1173 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
  let x_1175 : f32 = u_xlat11;
  let x_1176 : f32 = u_xlat11;
  u_xlat11 = (x_1175 * -(x_1176));
  let x_1179 : f32 = u_xlat11;
  u_xlat11 = exp2(x_1179);
  let x_1181 : vec4<f32> = u_xlat1;
  let x_1185 : vec4<f32> = x_44.unity_FogColor;
  let x_1188 : vec3<f32> = (vec3<f32>(x_1181.x, x_1181.y, x_1181.z) + -(vec3<f32>(x_1185.x, x_1185.y, x_1185.z)));
  let x_1189 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
  let x_1193 : f32 = u_xlat11;
  let x_1195 : vec4<f32> = u_xlat1;
  let x_1199 : vec4<f32> = x_44.unity_FogColor;
  let x_1201 : vec3<f32> = ((vec3<f32>(x_1193, x_1193, x_1193) * vec3<f32>(x_1195.x, x_1195.y, x_1195.z)) + vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
  let x_1202 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
  let x_1205 : f32 = x_57.x_Surface;
  u_xlatb11 = (x_1205 == 1.0f);
  let x_1207 : bool = u_xlatb11;
  let x_1208 : bool = u_xlatb22;
  u_xlatb11 = (x_1207 | x_1208);
  let x_1210 : bool = u_xlatb11;
  if (x_1210) {
    let x_1215 : f32 = u_xlat0.x;
    x_1211 = x_1215;
  } else {
    x_1211 = 1.0f;
  }
  let x_1217 : f32 = x_1211;
  SV_Target0.w = x_1217;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

