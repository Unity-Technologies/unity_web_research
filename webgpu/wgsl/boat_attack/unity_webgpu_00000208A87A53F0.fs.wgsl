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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_337 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_399 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_536 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_652 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_767 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlatb36 : bool;
  var u_xlatb4 : bool;
  var u_xlatb5 : vec2<bool>;
  var x_484 : f32;
  var x_495 : vec3<f32>;
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
  var x_1069 : f32;
  var x_1082 : f32;
  var x_1134 : f32;
  var x_1146 : vec3<f32>;
  var x_1255 : f32;
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
  let x_213 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_210, x_212);
  u_xlat3 = x_213;
  let x_219 : vec2<f32> = vs_TEXCOORD7;
  let x_221 : f32 = x_44.x_GlobalMipBias.x;
  let x_222 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_219, x_221);
  let x_223 : vec3<f32> = vec3<f32>(x_222.x, x_222.y, x_222.z);
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat3;
  let x_230 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_231 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec3<f32> = u_xlat2;
  let x_234 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(x_233, vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : f32 = u_xlat33;
  u_xlat33 = (x_237 + 0.5f);
  let x_239 : f32 = u_xlat33;
  let x_241 : vec4<f32> = u_xlat4;
  let x_243 : vec3<f32> = (vec3<f32>(x_239, x_239, x_239) * vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_247 : f32 = u_xlat3.w;
  u_xlat33 = max(x_247, 0.0001f);
  let x_249 : vec4<f32> = u_xlat3;
  let x_251 : f32 = u_xlat33;
  let x_253 : vec3<f32> = (vec3<f32>(x_249.x, x_249.y, x_249.z) / vec3<f32>(x_251, x_251, x_251));
  let x_254 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_258 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_259 : vec2<f32> = vec2<f32>(x_258.x, x_258.y);
  let x_263 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_259.x, x_259.y));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_264.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat4;
  let x_268 : vec4<f32> = hlslcc_FragCoord;
  let x_270 : vec2<f32> = (vec2<f32>(x_266.x, x_266.y) * vec2<f32>(x_268.x, x_268.y));
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_270.x, x_270.y, x_271.z, x_271.w);
  let x_274 : f32 = u_xlat4.y;
  let x_277 : f32 = x_44.x_ScaleBiasRt.x;
  let x_280 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_274 * x_277) + x_280);
  let x_282 : f32 = u_xlat33;
  u_xlat4.z = (-(x_282) + 1.0f);
  let x_291 : vec4<f32> = u_xlat4;
  let x_294 : f32 = x_44.x_GlobalMipBias.x;
  let x_295 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_291.x, x_291.z), x_294);
  u_xlat33 = x_295.x;
  let x_297 : f32 = u_xlat33;
  u_xlat1.x = (x_297 + -1.0f);
  let x_303 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_305 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_303 * x_305) + 1.0f);
  let x_309 : f32 = u_xlat33;
  u_xlat33 = min(x_309, 1.0f);
  let x_313 : vec4<f32> = vs_TEXCOORD6;
  let x_314 : vec2<f32> = vec2<f32>(x_313.x, x_313.y);
  let x_316 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_314.x, x_314.y, x_316);
  let x_329 : vec3<f32> = txVec0;
  let x_331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_329.xy, x_329.z);
  u_xlat35 = x_331;
  let x_339 : f32 = x_337.x_MainLightShadowParams.x;
  u_xlat36 = (-(x_339) + 1.0f);
  let x_342 : f32 = u_xlat35;
  let x_344 : f32 = x_337.x_MainLightShadowParams.x;
  let x_346 : f32 = u_xlat36;
  u_xlat35 = ((x_342 * x_344) + x_346);
  let x_350 : f32 = vs_TEXCOORD6.z;
  u_xlatb36 = (0.0f >= x_350);
  let x_354 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_354 >= 1.0f);
  let x_356 : bool = u_xlatb36;
  let x_357 : bool = u_xlatb4;
  u_xlatb36 = (x_356 | x_357);
  let x_359 : bool = u_xlatb36;
  let x_360 : f32 = u_xlat35;
  u_xlat35 = select(x_360, 1.0f, x_359);
  let x_362 : vec3<f32> = vs_TEXCOORD1;
  let x_366 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_368 : vec3<f32> = (x_362 + -(x_366));
  let x_369 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat4;
  let x_373 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(vec3<f32>(x_371.x, x_371.y, x_371.z), vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : f32 = u_xlat36;
  let x_378 : f32 = x_337.x_MainLightShadowParams.z;
  let x_381 : f32 = x_337.x_MainLightShadowParams.w;
  u_xlat36 = ((x_376 * x_378) + x_381);
  let x_383 : f32 = u_xlat36;
  u_xlat36 = clamp(x_383, 0.0f, 1.0f);
  let x_385 : f32 = u_xlat35;
  u_xlat4.x = (-(x_385) + 1.0f);
  let x_389 : f32 = u_xlat36;
  let x_391 : f32 = u_xlat4.x;
  let x_393 : f32 = u_xlat35;
  u_xlat35 = ((x_389 * x_391) + x_393);
  let x_401 : f32 = x_399.x_MainLightCookieTextureFormat;
  u_xlatb36 = !((x_401 == -1.0f));
  let x_403 : bool = u_xlatb36;
  if (x_403) {
    let x_406 : vec3<f32> = vs_TEXCOORD1;
    let x_409 : vec4<f32> = x_399.x_MainLightWorldToLight[1i];
    let x_411 : vec2<f32> = (vec2<f32>(x_406.y, x_406.y) * vec2<f32>(x_409.x, x_409.y));
    let x_412 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
    let x_415 : vec4<f32> = x_399.x_MainLightWorldToLight[0i];
    let x_417 : vec3<f32> = vs_TEXCOORD1;
    let x_420 : vec4<f32> = u_xlat4;
    let x_422 : vec2<f32> = ((vec2<f32>(x_415.x, x_415.y) * vec2<f32>(x_417.x, x_417.x)) + vec2<f32>(x_420.x, x_420.y));
    let x_423 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_423.w);
    let x_426 : vec4<f32> = x_399.x_MainLightWorldToLight[2i];
    let x_428 : vec3<f32> = vs_TEXCOORD1;
    let x_431 : vec4<f32> = u_xlat4;
    let x_433 : vec2<f32> = ((vec2<f32>(x_426.x, x_426.y) * vec2<f32>(x_428.z, x_428.z)) + vec2<f32>(x_431.x, x_431.y));
    let x_434 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_433.x, x_433.y, x_434.z, x_434.w);
    let x_436 : vec4<f32> = u_xlat4;
    let x_439 : vec4<f32> = x_399.x_MainLightWorldToLight[3i];
    let x_441 : vec2<f32> = (vec2<f32>(x_436.x, x_436.y) + vec2<f32>(x_439.x, x_439.y));
    let x_442 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_441.x, x_441.y, x_442.z, x_442.w);
    let x_444 : vec4<f32> = u_xlat4;
    let x_448 : vec2<f32> = ((vec2<f32>(x_444.x, x_444.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_449 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_448.x, x_448.y, x_449.z, x_449.w);
    let x_456 : vec4<f32> = u_xlat4;
    let x_459 : f32 = x_44.x_GlobalMipBias.x;
    let x_460 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_456.x, x_456.y), x_459);
    u_xlat4 = x_460;
    let x_465 : f32 = x_399.x_MainLightCookieTextureFormat;
    let x_467 : f32 = x_399.x_MainLightCookieTextureFormat;
    let x_469 : f32 = x_399.x_MainLightCookieTextureFormat;
    let x_471 : f32 = x_399.x_MainLightCookieTextureFormat;
    let x_472 : vec4<f32> = vec4<f32>(x_465, x_467, x_469, x_471);
    let x_480 : vec4<bool> = (vec4<f32>(x_472.x, x_472.y, x_472.z, x_472.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_480.x, x_480.y);
    let x_483 : bool = u_xlatb5.y;
    if (x_483) {
      let x_488 : f32 = u_xlat4.w;
      x_484 = x_488;
    } else {
      let x_491 : f32 = u_xlat4.x;
      x_484 = x_491;
    }
    let x_492 : f32 = x_484;
    u_xlat36 = x_492;
    let x_494 : bool = u_xlatb5.x;
    if (x_494) {
      let x_498 : vec4<f32> = u_xlat4;
      x_495 = vec3<f32>(x_498.x, x_498.y, x_498.z);
    } else {
      let x_501 : f32 = u_xlat36;
      x_495 = vec3<f32>(x_501, x_501, x_501);
    }
    let x_503 : vec3<f32> = x_495;
    let x_504 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_510 : vec4<f32> = u_xlat4;
  let x_513 : vec4<f32> = x_44.x_MainLightColor;
  let x_515 : vec3<f32> = (vec3<f32>(x_510.x, x_510.y, x_510.z) * vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_516 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat1;
  let x_520 : vec4<f32> = u_xlat4;
  let x_522 : vec3<f32> = (vec3<f32>(x_518.x, x_518.x, x_518.x) * vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : f32 = u_xlat33;
  let x_527 : vec4<f32> = u_xlat3;
  let x_529 : vec3<f32> = (vec3<f32>(x_525, x_525, x_525) * vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_530 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_532 : f32 = u_xlat35;
  let x_538 : f32 = x_536.unity_LightData.z;
  u_xlat33 = (x_532 * x_538);
  let x_540 : f32 = u_xlat33;
  let x_542 : vec4<f32> = u_xlat4;
  let x_544 : vec3<f32> = (vec3<f32>(x_540, x_540, x_540) * vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec3<f32> = u_xlat2;
  let x_549 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat33 = dot(x_547, vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_552 : f32 = u_xlat33;
  u_xlat33 = clamp(x_552, 0.0f, 1.0f);
  let x_554 : f32 = u_xlat33;
  let x_556 : vec4<f32> = u_xlat4;
  let x_558 : vec3<f32> = (vec3<f32>(x_554, x_554, x_554) * vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat1;
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec3<f32> = (vec3<f32>(x_561.y, x_561.z, x_561.w) * vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_570 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_572 : f32 = x_536.unity_LightData.y;
  u_xlat33 = min(x_570, x_572);
  let x_576 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_576));
  let x_580 : f32 = x_399.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_582 : f32 = x_399.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_584 : f32 = x_399.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_586 : f32 = x_399.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_587 : vec4<f32> = vec4<f32>(x_580, x_582, x_584, x_586);
  let x_593 : vec4<bool> = (vec4<f32>(x_587.x, x_587.y, x_587.z, x_587.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_593.x, x_593.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_605 : u32 = u_xlatu_loop_1;
    let x_606 : u32 = u_xlatu33;
    if ((x_605 < x_606)) {
    } else {
      break;
    }
    let x_609 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_609 >> 2u);
    let x_613 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_613 & 3u));
    let x_616 : u32 = u_xlatu36;
    let x_619 : vec4<f32> = x_536.unity_LightIndices[bitcast<i32>(x_616)];
    let x_629 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_634 : vec4<u32> = indexable[x_629];
    u_xlat36 = dot(x_619, bitcast<vec4<f32>>(x_634));
    let x_637 : f32 = u_xlat36;
    u_xlatu36 = bitcast<u32>(i32(x_637));
    let x_641 : vec3<f32> = vs_TEXCOORD1;
    let x_653 : u32 = u_xlatu36;
    let x_656 : vec4<f32> = x_652.x_AdditionalLightsPosition[bitcast<i32>(x_653)];
    let x_659 : u32 = u_xlatu36;
    let x_662 : vec4<f32> = x_652.x_AdditionalLightsPosition[bitcast<i32>(x_659)];
    u_xlat7 = ((-(x_641) * vec3<f32>(x_656.w, x_656.w, x_656.w)) + vec3<f32>(x_662.x, x_662.y, x_662.z));
    let x_666 : vec3<f32> = u_xlat7;
    let x_667 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_666, x_667);
    let x_669 : f32 = u_xlat37;
    u_xlat37 = max(x_669, 6.10351562e-05f);
    let x_674 : f32 = u_xlat37;
    u_xlat27.x = inverseSqrt(x_674);
    let x_677 : vec2<f32> = u_xlat27;
    let x_679 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_677.x, x_677.x, x_677.x) * x_679);
    let x_681 : f32 = u_xlat37;
    u_xlat27.x = (1.0f / x_681);
    let x_684 : f32 = u_xlat37;
    let x_685 : u32 = u_xlatu36;
    let x_688 : f32 = x_652.x_AdditionalLightsAttenuation[bitcast<i32>(x_685)].x;
    u_xlat37 = (x_684 * x_688);
    let x_690 : f32 = u_xlat37;
    let x_692 : f32 = u_xlat37;
    u_xlat37 = ((-(x_690) * x_692) + 1.0f);
    let x_695 : f32 = u_xlat37;
    u_xlat37 = max(x_695, 0.0f);
    let x_697 : f32 = u_xlat37;
    let x_698 : f32 = u_xlat37;
    u_xlat37 = (x_697 * x_698);
    let x_700 : f32 = u_xlat37;
    let x_702 : f32 = u_xlat27.x;
    u_xlat37 = (x_700 * x_702);
    let x_704 : u32 = u_xlatu36;
    let x_707 : vec4<f32> = x_652.x_AdditionalLightsSpotDir[bitcast<i32>(x_704)];
    let x_709 : vec3<f32> = u_xlat7;
    u_xlat27.x = dot(vec3<f32>(x_707.x, x_707.y, x_707.z), x_709);
    let x_713 : f32 = u_xlat27.x;
    let x_714 : u32 = u_xlatu36;
    let x_717 : f32 = x_652.x_AdditionalLightsAttenuation[bitcast<i32>(x_714)].z;
    let x_719 : u32 = u_xlatu36;
    let x_722 : f32 = x_652.x_AdditionalLightsAttenuation[bitcast<i32>(x_719)].w;
    u_xlat27.x = ((x_713 * x_717) + x_722);
    let x_726 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_726, 0.0f, 1.0f);
    let x_730 : f32 = u_xlat27.x;
    let x_732 : f32 = u_xlat27.x;
    u_xlat27.x = (x_730 * x_732);
    let x_735 : f32 = u_xlat37;
    let x_737 : f32 = u_xlat27.x;
    u_xlat37 = (x_735 * x_737);
    let x_740 : u32 = u_xlatu36;
    u_xlatu27 = (x_740 >> 5u);
    let x_743 : u32 = u_xlatu36;
    u_xlati38 = (1i << bitcast<u32>((bitcast<i32>(x_743) & 31i)));
    let x_749 : i32 = u_xlati38;
    let x_751 : u32 = u_xlatu27;
    let x_754 : f32 = x_399.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_751)].el;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_749) & bitcast<u32>(x_754)));
    let x_758 : i32 = u_xlati27;
    if ((x_758 != 0i)) {
      let x_768 : u32 = u_xlatu36;
      let x_771 : f32 = x_767.x_AdditionalLightsLightTypes[bitcast<i32>(x_768)].el;
      u_xlati27 = i32(x_771);
      let x_773 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_773 != 0i));
      let x_777 : u32 = u_xlatu36;
      u_xlati39 = (bitcast<i32>(x_777) << bitcast<u32>(2i));
      let x_780 : i32 = u_xlati38;
      if ((x_780 != 0i)) {
        let x_785 : vec3<f32> = vs_TEXCOORD1;
        let x_787 : i32 = u_xlati39;
        let x_790 : i32 = u_xlati39;
        let x_794 : vec4<f32> = x_767.x_AdditionalLightsWorldToLights[((x_787 + 1i) / 4i)][((x_790 + 1i) % 4i)];
        let x_796 : vec3<f32> = (vec3<f32>(x_785.y, x_785.y, x_785.y) * vec3<f32>(x_794.x, x_794.y, x_794.w));
        let x_797 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
        let x_799 : i32 = u_xlati39;
        let x_801 : i32 = u_xlati39;
        let x_804 : vec4<f32> = x_767.x_AdditionalLightsWorldToLights[(x_799 / 4i)][(x_801 % 4i)];
        let x_806 : vec3<f32> = vs_TEXCOORD1;
        let x_809 : vec4<f32> = u_xlat8;
        let x_811 : vec3<f32> = ((vec3<f32>(x_804.x, x_804.y, x_804.w) * vec3<f32>(x_806.x, x_806.x, x_806.x)) + vec3<f32>(x_809.x, x_809.y, x_809.z));
        let x_812 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
        let x_814 : i32 = u_xlati39;
        let x_817 : i32 = u_xlati39;
        let x_821 : vec4<f32> = x_767.x_AdditionalLightsWorldToLights[((x_814 + 2i) / 4i)][((x_817 + 2i) % 4i)];
        let x_823 : vec3<f32> = vs_TEXCOORD1;
        let x_826 : vec4<f32> = u_xlat8;
        let x_828 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.y, x_821.w) * vec3<f32>(x_823.z, x_823.z, x_823.z)) + vec3<f32>(x_826.x, x_826.y, x_826.z));
        let x_829 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
        let x_831 : vec4<f32> = u_xlat8;
        let x_833 : i32 = u_xlati39;
        let x_836 : i32 = u_xlati39;
        let x_840 : vec4<f32> = x_767.x_AdditionalLightsWorldToLights[((x_833 + 3i) / 4i)][((x_836 + 3i) % 4i)];
        let x_842 : vec3<f32> = (vec3<f32>(x_831.x, x_831.y, x_831.z) + vec3<f32>(x_840.x, x_840.y, x_840.w));
        let x_843 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
        let x_845 : vec4<f32> = u_xlat8;
        let x_847 : vec4<f32> = u_xlat8;
        let x_849 : vec2<f32> = (vec2<f32>(x_845.x, x_845.y) / vec2<f32>(x_847.z, x_847.z));
        let x_850 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_850.w);
        let x_852 : vec4<f32> = u_xlat8;
        let x_855 : vec2<f32> = ((vec2<f32>(x_852.x, x_852.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_856 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_855.x, x_855.y, x_856.z, x_856.w);
        let x_858 : vec4<f32> = u_xlat8;
        let x_862 : vec2<f32> = clamp(vec2<f32>(x_858.x, x_858.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_863 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_862.x, x_862.y, x_863.z, x_863.w);
        let x_865 : u32 = u_xlatu36;
        let x_868 : vec4<f32> = x_767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_865)];
        let x_870 : vec4<f32> = u_xlat8;
        let x_873 : u32 = u_xlatu36;
        let x_876 : vec4<f32> = x_767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_873)];
        let x_878 : vec2<f32> = ((vec2<f32>(x_868.x, x_868.y) * vec2<f32>(x_870.x, x_870.y)) + vec2<f32>(x_876.z, x_876.w));
        let x_879 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
      } else {
        let x_883 : i32 = u_xlati27;
        u_xlatb27 = (x_883 == 1i);
        let x_885 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_885);
        let x_887 : i32 = u_xlati27;
        if ((x_887 != 0i)) {
          let x_891 : vec3<f32> = vs_TEXCOORD1;
          let x_893 : i32 = u_xlati39;
          let x_896 : i32 = u_xlati39;
          let x_900 : vec4<f32> = x_767.x_AdditionalLightsWorldToLights[((x_893 + 1i) / 4i)][((x_896 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_891.y, x_891.y) * vec2<f32>(x_900.x, x_900.y));
          let x_903 : i32 = u_xlati39;
          let x_905 : i32 = u_xlati39;
          let x_908 : vec4<f32> = x_767.x_AdditionalLightsWorldToLights[(x_903 / 4i)][(x_905 % 4i)];
          let x_910 : vec3<f32> = vs_TEXCOORD1;
          let x_913 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_908.x, x_908.y) * vec2<f32>(x_910.x, x_910.x)) + x_913);
          let x_915 : i32 = u_xlati39;
          let x_918 : i32 = u_xlati39;
          let x_922 : vec4<f32> = x_767.x_AdditionalLightsWorldToLights[((x_915 + 2i) / 4i)][((x_918 + 2i) % 4i)];
          let x_924 : vec3<f32> = vs_TEXCOORD1;
          let x_927 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_922.x, x_922.y) * vec2<f32>(x_924.z, x_924.z)) + x_927);
          let x_929 : vec2<f32> = u_xlat27;
          let x_930 : i32 = u_xlati39;
          let x_933 : i32 = u_xlati39;
          let x_937 : vec4<f32> = x_767.x_AdditionalLightsWorldToLights[((x_930 + 3i) / 4i)][((x_933 + 3i) % 4i)];
          u_xlat27 = (x_929 + vec2<f32>(x_937.x, x_937.y));
          let x_940 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_940 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_943 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_943);
          let x_945 : u32 = u_xlatu36;
          let x_948 : vec4<f32> = x_767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_945)];
          let x_950 : vec2<f32> = u_xlat27;
          let x_952 : u32 = u_xlatu36;
          let x_955 : vec4<f32> = x_767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_952)];
          let x_957 : vec2<f32> = ((vec2<f32>(x_948.x, x_948.y) * x_950) + vec2<f32>(x_955.z, x_955.w));
          let x_958 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_957.x, x_957.y, x_958.z, x_958.w);
        } else {
          let x_962 : vec3<f32> = vs_TEXCOORD1;
          let x_964 : i32 = u_xlati39;
          let x_967 : i32 = u_xlati39;
          let x_971 : vec4<f32> = x_767.x_AdditionalLightsWorldToLights[((x_964 + 1i) / 4i)][((x_967 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_962.y, x_962.y, x_962.y, x_962.y) * x_971);
          let x_973 : i32 = u_xlati39;
          let x_975 : i32 = u_xlati39;
          let x_978 : vec4<f32> = x_767.x_AdditionalLightsWorldToLights[(x_973 / 4i)][(x_975 % 4i)];
          let x_979 : vec3<f32> = vs_TEXCOORD1;
          let x_982 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_978 * vec4<f32>(x_979.x, x_979.x, x_979.x, x_979.x)) + x_982);
          let x_984 : i32 = u_xlati39;
          let x_987 : i32 = u_xlati39;
          let x_991 : vec4<f32> = x_767.x_AdditionalLightsWorldToLights[((x_984 + 2i) / 4i)][((x_987 + 2i) % 4i)];
          let x_992 : vec3<f32> = vs_TEXCOORD1;
          let x_995 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_991 * vec4<f32>(x_992.z, x_992.z, x_992.z, x_992.z)) + x_995);
          let x_997 : vec4<f32> = u_xlat9;
          let x_998 : i32 = u_xlati39;
          let x_1001 : i32 = u_xlati39;
          let x_1005 : vec4<f32> = x_767.x_AdditionalLightsWorldToLights[((x_998 + 3i) / 4i)][((x_1001 + 3i) % 4i)];
          u_xlat9 = (x_997 + x_1005);
          let x_1007 : vec4<f32> = u_xlat9;
          let x_1009 : vec4<f32> = u_xlat9;
          let x_1011 : vec3<f32> = (vec3<f32>(x_1007.x, x_1007.y, x_1007.z) / vec3<f32>(x_1009.w, x_1009.w, x_1009.w));
          let x_1012 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
          let x_1014 : vec4<f32> = u_xlat9;
          let x_1016 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1014.x, x_1014.y, x_1014.z), vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
          let x_1021 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1021);
          let x_1024 : vec2<f32> = u_xlat27;
          let x_1026 : vec4<f32> = u_xlat9;
          let x_1028 : vec3<f32> = (vec3<f32>(x_1024.x, x_1024.x, x_1024.x) * vec3<f32>(x_1026.x, x_1026.y, x_1026.z));
          let x_1029 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
          let x_1031 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1031.x, x_1031.y, x_1031.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1038 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1038, 0.000001f);
          let x_1043 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1043);
          let x_1047 : vec2<f32> = u_xlat27;
          let x_1049 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1047.x, x_1047.x, x_1047.x) * vec3<f32>(x_1049.z, x_1049.x, x_1049.y));
          let x_1053 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1053);
          let x_1057 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1057, 0.0f, 1.0f);
          let x_1061 : vec3<f32> = u_xlat10;
          let x_1064 : vec4<bool> = (vec4<f32>(x_1061.y, x_1061.z, x_1061.y, x_1061.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1064.x, x_1064.y);
          let x_1068 : bool = u_xlatb30.x;
          if (x_1068) {
            let x_1073 : f32 = u_xlat10.x;
            x_1069 = x_1073;
          } else {
            let x_1076 : f32 = u_xlat10.x;
            x_1069 = -(x_1076);
          }
          let x_1078 : f32 = x_1069;
          u_xlat30.x = x_1078;
          let x_1081 : bool = u_xlatb30.y;
          if (x_1081) {
            let x_1086 : f32 = u_xlat10.x;
            x_1082 = x_1086;
          } else {
            let x_1089 : f32 = u_xlat10.x;
            x_1082 = -(x_1089);
          }
          let x_1091 : f32 = x_1082;
          u_xlat30.y = x_1091;
          let x_1093 : vec4<f32> = u_xlat9;
          let x_1095 : vec2<f32> = u_xlat27;
          let x_1098 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1093.x, x_1093.y) * vec2<f32>(x_1095.x, x_1095.x)) + x_1098);
          let x_1100 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1100 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1103 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1103, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1107 : u32 = u_xlatu36;
          let x_1110 : vec4<f32> = x_767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1107)];
          let x_1112 : vec2<f32> = u_xlat27;
          let x_1114 : u32 = u_xlatu36;
          let x_1117 : vec4<f32> = x_767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1114)];
          let x_1119 : vec2<f32> = ((vec2<f32>(x_1110.x, x_1110.y) * x_1112) + vec2<f32>(x_1117.z, x_1117.w));
          let x_1120 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
        }
      }
      let x_1127 : vec4<f32> = u_xlat8;
      let x_1130 : f32 = x_44.x_GlobalMipBias.x;
      let x_1131 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1127.x, x_1127.y), x_1130);
      u_xlat8 = x_1131;
      let x_1133 : bool = u_xlatb5.y;
      if (x_1133) {
        let x_1138 : f32 = u_xlat8.w;
        x_1134 = x_1138;
      } else {
        let x_1141 : f32 = u_xlat8.x;
        x_1134 = x_1141;
      }
      let x_1142 : f32 = x_1134;
      u_xlat27.x = x_1142;
      let x_1145 : bool = u_xlatb5.x;
      if (x_1145) {
        let x_1149 : vec4<f32> = u_xlat8;
        x_1146 = vec3<f32>(x_1149.x, x_1149.y, x_1149.z);
      } else {
        let x_1152 : vec2<f32> = u_xlat27;
        x_1146 = vec3<f32>(x_1152.x, x_1152.x, x_1152.x);
      }
      let x_1154 : vec3<f32> = x_1146;
      let x_1155 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1161 : vec4<f32> = u_xlat8;
    let x_1163 : u32 = u_xlatu36;
    let x_1166 : vec4<f32> = x_652.x_AdditionalLightsColor[bitcast<i32>(x_1163)];
    let x_1168 : vec3<f32> = (vec3<f32>(x_1161.x, x_1161.y, x_1161.z) * vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
    let x_1169 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
    let x_1171 : vec4<f32> = u_xlat1;
    let x_1173 : vec4<f32> = u_xlat8;
    let x_1175 : vec3<f32> = (vec3<f32>(x_1171.x, x_1171.x, x_1171.x) * vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
    let x_1176 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1176.w);
    let x_1178 : f32 = u_xlat37;
    let x_1180 : vec4<f32> = u_xlat8;
    let x_1182 : vec3<f32> = (vec3<f32>(x_1178, x_1178, x_1178) * vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
    let x_1183 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
    let x_1185 : vec3<f32> = u_xlat2;
    let x_1186 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_1185, x_1186);
    let x_1188 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1188, 0.0f, 1.0f);
    let x_1190 : f32 = u_xlat36;
    let x_1192 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1190, x_1190, x_1190) * vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
    let x_1195 : vec3<f32> = u_xlat7;
    let x_1196 : vec4<f32> = u_xlat1;
    let x_1199 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1195 * vec3<f32>(x_1196.y, x_1196.z, x_1196.w)) + x_1199);

    continuing {
      let x_1201 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1201 + bitcast<u32>(1i));
    }
  }
  let x_1203 : vec4<f32> = u_xlat3;
  let x_1205 : vec4<f32> = u_xlat1;
  let x_1208 : vec4<f32> = u_xlat4;
  let x_1210 : vec3<f32> = ((vec3<f32>(x_1203.x, x_1203.y, x_1203.z) * vec3<f32>(x_1205.y, x_1205.z, x_1205.w)) + vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1213 : vec3<f32> = u_xlat6;
  let x_1214 : vec4<f32> = u_xlat1;
  let x_1216 : vec3<f32> = (x_1213 + vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1217 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
  let x_1219 : f32 = u_xlat11;
  let x_1220 : f32 = u_xlat11;
  u_xlat11 = (x_1219 * -(x_1220));
  let x_1223 : f32 = u_xlat11;
  u_xlat11 = exp2(x_1223);
  let x_1225 : vec4<f32> = u_xlat1;
  let x_1229 : vec4<f32> = x_44.unity_FogColor;
  let x_1232 : vec3<f32> = (vec3<f32>(x_1225.x, x_1225.y, x_1225.z) + -(vec3<f32>(x_1229.x, x_1229.y, x_1229.z)));
  let x_1233 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
  let x_1237 : f32 = u_xlat11;
  let x_1239 : vec4<f32> = u_xlat1;
  let x_1243 : vec4<f32> = x_44.unity_FogColor;
  let x_1245 : vec3<f32> = ((vec3<f32>(x_1237, x_1237, x_1237) * vec3<f32>(x_1239.x, x_1239.y, x_1239.z)) + vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1246 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
  let x_1249 : f32 = x_57.x_Surface;
  u_xlatb11 = (x_1249 == 1.0f);
  let x_1251 : bool = u_xlatb11;
  let x_1252 : bool = u_xlatb22;
  u_xlatb11 = (x_1251 | x_1252);
  let x_1254 : bool = u_xlatb11;
  if (x_1254) {
    let x_1259 : f32 = u_xlat0.x;
    x_1255 = x_1259;
  } else {
    x_1255 = 1.0f;
  }
  let x_1261 : f32 = x_1255;
  SV_Target0.w = x_1261;
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

