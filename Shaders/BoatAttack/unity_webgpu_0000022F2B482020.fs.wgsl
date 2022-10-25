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

@group(1) @binding(4) var<uniform> x_316 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1633 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1769 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1882 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2004 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat18 : f32;
  var u_xlat36 : f32;
  var u_xlat54 : f32;
  var u_xlatb36 : bool;
  var x_123 : f32;
  var u_xlatb18 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb56 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat56 : f32;
  var u_xlatb57 : bool;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat57 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat22 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb4 : bool;
  var u_xlatb5 : vec2<bool>;
  var x_1717 : f32;
  var x_1728 : vec3<f32>;
  var u_xlatu54 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu57 : u32;
  var u_xlati58 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat58 : f32;
  var u_xlat41 : vec2<f32>;
  var u_xlatu41 : u32;
  var u_xlati59 : i32;
  var u_xlati41 : i32;
  var u_xlati60 : i32;
  var u_xlatb41 : bool;
  var u_xlatb44 : vec2<bool>;
  var u_xlat44 : vec2<f32>;
  var x_2305 : f32;
  var x_2318 : f32;
  var x_2370 : f32;
  var x_2382 : vec3<f32>;
  var x_2499 : f32;
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
  u_xlat18 = ((x_85 * x_87) + -(x_90));
  let x_95 : f32 = u_xlat1.x;
  u_xlat36 = dpdxCoarse(x_95);
  let x_99 : f32 = u_xlat1.x;
  u_xlat54 = dpdyCoarse(x_99);
  let x_101 : f32 = u_xlat54;
  let x_103 : f32 = u_xlat36;
  u_xlat36 = (abs(x_101) + abs(x_103));
  let x_106 : f32 = u_xlat36;
  u_xlat36 = max(x_106, 0.0001f);
  let x_109 : f32 = u_xlat18;
  let x_110 : f32 = u_xlat36;
  u_xlat18 = (x_109 / x_110);
  let x_112 : f32 = u_xlat18;
  u_xlat18 = (x_112 + 0.5f);
  let x_115 : f32 = u_xlat18;
  u_xlat18 = clamp(x_115, 0.0f, 1.0f);
  let x_120 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb36 = !((x_120 == 0.0f));
  let x_122 : bool = u_xlatb36;
  if (x_122) {
    let x_126 : f32 = u_xlat18;
    x_123 = x_126;
  } else {
    let x_129 : f32 = u_xlat0.x;
    x_123 = x_129;
  }
  let x_130 : f32 = x_123;
  u_xlat0.x = x_130;
  let x_133 : f32 = u_xlat0.x;
  u_xlat18 = (x_133 + -0.0001f);
  let x_137 : f32 = u_xlat18;
  u_xlatb18 = (x_137 < 0.0f);
  let x_139 : bool = u_xlatb18;
  if (((select(0i, 1i, x_139) * -1i) != 0i)) {
    discard;
  }
  let x_150 : vec3<f32> = vs_TEXCOORD2;
  let x_151 : vec3<f32> = vs_TEXCOORD2;
  u_xlat18 = dot(x_150, x_151);
  let x_153 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_153);
  let x_157 : f32 = u_xlat18;
  let x_159 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_157, x_157, x_157) * x_159);
  let x_164 : f32 = vs_TEXCOORD1.y;
  let x_168 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat18 = (x_164 * x_168);
  let x_171 : f32 = x_44.unity_MatrixV[0i].z;
  let x_173 : f32 = vs_TEXCOORD1.x;
  let x_175 : f32 = u_xlat18;
  u_xlat18 = ((x_171 * x_173) + x_175);
  let x_178 : f32 = x_44.unity_MatrixV[2i].z;
  let x_180 : f32 = vs_TEXCOORD1.z;
  let x_182 : f32 = u_xlat18;
  u_xlat18 = ((x_178 * x_180) + x_182);
  let x_184 : f32 = u_xlat18;
  let x_187 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat18 = (x_184 + x_187);
  let x_189 : f32 = u_xlat18;
  let x_193 : f32 = x_44.x_ProjectionParams.y;
  u_xlat18 = (-(x_189) + -(x_193));
  let x_196 : f32 = u_xlat18;
  u_xlat18 = max(x_196, 0.0f);
  let x_198 : f32 = u_xlat18;
  let x_201 : f32 = x_44.unity_FogParams.x;
  u_xlat18 = (x_198 * x_201);
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
  u_xlat54 = dot(x_233, vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : f32 = u_xlat54;
  u_xlat54 = (x_237 + 0.5f);
  let x_239 : f32 = u_xlat54;
  let x_241 : vec4<f32> = u_xlat4;
  let x_243 : vec3<f32> = (vec3<f32>(x_239, x_239, x_239) * vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_247 : f32 = u_xlat3.w;
  u_xlat54 = max(x_247, 0.0001f);
  let x_249 : vec4<f32> = u_xlat3;
  let x_251 : f32 = u_xlat54;
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
  u_xlat54 = ((x_274 * x_277) + x_280);
  let x_282 : f32 = u_xlat54;
  u_xlat4.z = (-(x_282) + 1.0f);
  let x_291 : vec4<f32> = u_xlat4;
  let x_294 : f32 = x_44.x_GlobalMipBias.x;
  let x_295 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_291.x, x_291.z), x_294);
  u_xlat54 = x_295.x;
  let x_297 : f32 = u_xlat54;
  u_xlat1.x = (x_297 + -1.0f);
  let x_303 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_305 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_303 * x_305) + 1.0f);
  let x_309 : f32 = u_xlat54;
  u_xlat54 = min(x_309, 1.0f);
  let x_318 : f32 = x_316.x_MainLightShadowParams.y;
  u_xlatb56 = (0.0f < x_318);
  let x_320 : bool = u_xlatb56;
  if (x_320) {
    let x_324 : f32 = x_316.x_MainLightShadowParams.y;
    u_xlatb56 = (x_324 == 1.0f);
    let x_326 : bool = u_xlatb56;
    if (x_326) {
      let x_330 : vec4<f32> = vs_TEXCOORD6;
      let x_334 : vec4<f32> = x_316.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_330.x, x_330.y, x_330.x, x_330.y) + x_334);
      let x_337 : vec4<f32> = u_xlat4;
      let x_338 : vec2<f32> = vec2<f32>(x_337.x, x_337.y);
      let x_340 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_338.x, x_338.y, x_340);
      let x_353 : vec3<f32> = txVec0;
      let x_355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_353.xy, x_353.z);
      u_xlat5.x = x_355;
      let x_358 : vec4<f32> = u_xlat4;
      let x_359 : vec2<f32> = vec2<f32>(x_358.z, x_358.w);
      let x_361 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_359.x, x_359.y, x_361);
      let x_368 : vec3<f32> = txVec1;
      let x_370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_368.xy, x_368.z);
      u_xlat5.y = x_370;
      let x_372 : vec4<f32> = vs_TEXCOORD6;
      let x_376 : vec4<f32> = x_316.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_372.x, x_372.y, x_372.x, x_372.y) + x_376);
      let x_379 : vec4<f32> = u_xlat4;
      let x_380 : vec2<f32> = vec2<f32>(x_379.x, x_379.y);
      let x_382 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_380.x, x_380.y, x_382);
      let x_389 : vec3<f32> = txVec2;
      let x_391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_389.xy, x_389.z);
      u_xlat5.z = x_391;
      let x_394 : vec4<f32> = u_xlat4;
      let x_395 : vec2<f32> = vec2<f32>(x_394.z, x_394.w);
      let x_397 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_395.x, x_395.y, x_397);
      let x_404 : vec3<f32> = txVec3;
      let x_406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_404.xy, x_404.z);
      u_xlat5.w = x_406;
      let x_409 : vec4<f32> = u_xlat5;
      u_xlat56 = dot(x_409, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_416 : f32 = x_316.x_MainLightShadowParams.y;
      u_xlatb57 = (x_416 == 2.0f);
      let x_419 : bool = u_xlatb57;
      if (x_419) {
        let x_422 : vec4<f32> = vs_TEXCOORD6;
        let x_425 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_429 : vec2<f32> = ((vec2<f32>(x_422.x, x_422.y) * vec2<f32>(x_425.z, x_425.w)) + vec2<f32>(0.5f, 0.5f));
        let x_430 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_429.x, x_429.y, x_430.z, x_430.w);
        let x_432 : vec4<f32> = u_xlat4;
        let x_434 : vec2<f32> = floor(vec2<f32>(x_432.x, x_432.y));
        let x_435 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_434.x, x_434.y, x_435.z, x_435.w);
        let x_439 : vec4<f32> = vs_TEXCOORD6;
        let x_442 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_445 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_439.x, x_439.y) * vec2<f32>(x_442.z, x_442.w)) + -(vec2<f32>(x_445.x, x_445.y)));
        let x_449 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_449.x, x_449.x, x_449.y, x_449.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_454 : vec4<f32> = u_xlat5;
        let x_456 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_454.x, x_454.x, x_454.z, x_454.z) * vec4<f32>(x_456.x, x_456.x, x_456.z, x_456.z));
        let x_459 : vec4<f32> = u_xlat6;
        let x_463 : vec2<f32> = (vec2<f32>(x_459.y, x_459.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_464 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_463.x, x_464.y, x_463.y, x_464.w);
        let x_466 : vec4<f32> = u_xlat6;
        let x_469 : vec2<f32> = u_xlat40;
        let x_471 : vec2<f32> = ((vec2<f32>(x_466.x, x_466.z) * vec2<f32>(0.5f, 0.5f)) + -(x_469));
        let x_472 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
        let x_475 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_475) + vec2<f32>(1.0f, 1.0f));
        let x_479 : vec2<f32> = u_xlat40;
        let x_481 : vec2<f32> = min(x_479, vec2<f32>(0.0f, 0.0f));
        let x_482 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
        let x_484 : vec4<f32> = u_xlat7;
        let x_487 : vec4<f32> = u_xlat7;
        let x_490 : vec2<f32> = u_xlat42;
        let x_491 : vec2<f32> = ((-(vec2<f32>(x_484.x, x_484.y)) * vec2<f32>(x_487.x, x_487.y)) + x_490);
        let x_492 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
        let x_494 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_494, vec2<f32>(0.0f, 0.0f));
        let x_496 : vec2<f32> = u_xlat40;
        let x_498 : vec2<f32> = u_xlat40;
        let x_500 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_496) * x_498) + vec2<f32>(x_500.y, x_500.w));
        let x_503 : vec4<f32> = u_xlat7;
        let x_505 : vec2<f32> = (vec2<f32>(x_503.x, x_503.y) + vec2<f32>(1.0f, 1.0f));
        let x_506 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
        let x_508 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_508 + vec2<f32>(1.0f, 1.0f));
        let x_511 : vec4<f32> = u_xlat6;
        let x_515 : vec2<f32> = (vec2<f32>(x_511.x, x_511.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_516 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
        let x_518 : vec2<f32> = u_xlat42;
        let x_519 : vec2<f32> = (x_518 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_520 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
        let x_522 : vec4<f32> = u_xlat7;
        let x_524 : vec2<f32> = (vec2<f32>(x_522.x, x_522.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_525 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
        let x_528 : vec2<f32> = u_xlat40;
        let x_529 : vec2<f32> = (x_528 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_530 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_532.y, x_532.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_536 : f32 = u_xlat7.x;
        u_xlat8.z = x_536;
        let x_539 : f32 = u_xlat40.x;
        u_xlat8.w = x_539;
        let x_542 : f32 = u_xlat9.x;
        u_xlat6.z = x_542;
        let x_545 : f32 = u_xlat5.x;
        u_xlat6.w = x_545;
        let x_548 : vec4<f32> = u_xlat6;
        let x_550 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_548.z, x_548.w, x_548.x, x_548.z) + vec4<f32>(x_550.z, x_550.w, x_550.x, x_550.z));
        let x_554 : f32 = u_xlat8.y;
        u_xlat7.z = x_554;
        let x_557 : f32 = u_xlat40.y;
        u_xlat7.w = x_557;
        let x_560 : f32 = u_xlat6.y;
        u_xlat9.z = x_560;
        let x_563 : f32 = u_xlat5.z;
        u_xlat9.w = x_563;
        let x_565 : vec4<f32> = u_xlat7;
        let x_567 : vec4<f32> = u_xlat9;
        let x_569 : vec3<f32> = (vec3<f32>(x_565.z, x_565.y, x_565.w) + vec3<f32>(x_567.z, x_567.y, x_567.w));
        let x_570 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
        let x_572 : vec4<f32> = u_xlat6;
        let x_574 : vec4<f32> = u_xlat10;
        let x_576 : vec3<f32> = (vec3<f32>(x_572.x, x_572.z, x_572.w) / vec3<f32>(x_574.z, x_574.w, x_574.y));
        let x_577 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
        let x_579 : vec4<f32> = u_xlat6;
        let x_584 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_585 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
        let x_587 : vec4<f32> = u_xlat9;
        let x_589 : vec4<f32> = u_xlat5;
        let x_591 : vec3<f32> = (vec3<f32>(x_587.z, x_587.y, x_587.w) / vec3<f32>(x_589.x, x_589.y, x_589.z));
        let x_592 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
        let x_594 : vec4<f32> = u_xlat7;
        let x_596 : vec3<f32> = (vec3<f32>(x_594.x, x_594.y, x_594.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_597 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
        let x_599 : vec4<f32> = u_xlat6;
        let x_602 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_604 : vec3<f32> = (vec3<f32>(x_599.y, x_599.x, x_599.z) * vec3<f32>(x_602.x, x_602.x, x_602.x));
        let x_605 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
        let x_607 : vec4<f32> = u_xlat7;
        let x_610 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_612 : vec3<f32> = (vec3<f32>(x_607.x, x_607.y, x_607.z) * vec3<f32>(x_610.y, x_610.y, x_610.y));
        let x_613 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
        let x_616 : f32 = u_xlat7.x;
        u_xlat6.w = x_616;
        let x_618 : vec4<f32> = u_xlat4;
        let x_621 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_624 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_618.x, x_618.y, x_618.x, x_618.y) * vec4<f32>(x_621.x, x_621.y, x_621.x, x_621.y)) + vec4<f32>(x_624.y, x_624.w, x_624.x, x_624.w));
        let x_627 : vec4<f32> = u_xlat4;
        let x_630 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_633 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_627.x, x_627.y) * vec2<f32>(x_630.x, x_630.y)) + vec2<f32>(x_633.z, x_633.w));
        let x_637 : f32 = u_xlat6.y;
        u_xlat7.w = x_637;
        let x_639 : vec4<f32> = u_xlat7;
        let x_640 : vec2<f32> = vec2<f32>(x_639.y, x_639.z);
        let x_641 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_641.x, x_640.x, x_641.z, x_640.y);
        let x_643 : vec4<f32> = u_xlat4;
        let x_646 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_649 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_643.x, x_643.y, x_643.x, x_643.y) * vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y)) + vec4<f32>(x_649.x, x_649.y, x_649.z, x_649.y));
        let x_652 : vec4<f32> = u_xlat4;
        let x_655 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_658 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_652.x, x_652.y, x_652.x, x_652.y) * vec4<f32>(x_655.x, x_655.y, x_655.x, x_655.y)) + vec4<f32>(x_658.w, x_658.y, x_658.w, x_658.z));
        let x_661 : vec4<f32> = u_xlat4;
        let x_664 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_667 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_661.x, x_661.y, x_661.x, x_661.y) * vec4<f32>(x_664.x, x_664.y, x_664.x, x_664.y)) + vec4<f32>(x_667.x, x_667.w, x_667.z, x_667.w));
        let x_671 : vec4<f32> = u_xlat5;
        let x_673 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_671.x, x_671.x, x_671.x, x_671.y) * vec4<f32>(x_673.z, x_673.w, x_673.y, x_673.z));
        let x_677 : vec4<f32> = u_xlat5;
        let x_679 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_677.y, x_677.y, x_677.z, x_677.z) * x_679);
        let x_683 : f32 = u_xlat5.z;
        let x_685 : f32 = u_xlat10.y;
        u_xlat57 = (x_683 * x_685);
        let x_688 : vec4<f32> = u_xlat8;
        let x_689 : vec2<f32> = vec2<f32>(x_688.x, x_688.y);
        let x_691 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_689.x, x_689.y, x_691);
        let x_698 : vec3<f32> = txVec4;
        let x_700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_698.xy, x_698.z);
        u_xlat4.x = x_700;
        let x_703 : vec4<f32> = u_xlat8;
        let x_704 : vec2<f32> = vec2<f32>(x_703.z, x_703.w);
        let x_706 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_704.x, x_704.y, x_706);
        let x_714 : vec3<f32> = txVec5;
        let x_716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_714.xy, x_714.z);
        u_xlat22 = x_716;
        let x_717 : f32 = u_xlat22;
        let x_719 : f32 = u_xlat11.y;
        u_xlat22 = (x_717 * x_719);
        let x_722 : f32 = u_xlat11.x;
        let x_724 : f32 = u_xlat4.x;
        let x_726 : f32 = u_xlat22;
        u_xlat4.x = ((x_722 * x_724) + x_726);
        let x_730 : vec2<f32> = u_xlat40;
        let x_732 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_730.x, x_730.y, x_732);
        let x_739 : vec3<f32> = txVec6;
        let x_741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_739.xy, x_739.z);
        u_xlat22 = x_741;
        let x_743 : f32 = u_xlat11.z;
        let x_744 : f32 = u_xlat22;
        let x_747 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_743 * x_744) + x_747);
        let x_751 : vec4<f32> = u_xlat7;
        let x_752 : vec2<f32> = vec2<f32>(x_751.x, x_751.y);
        let x_754 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_752.x, x_752.y, x_754);
        let x_761 : vec3<f32> = txVec7;
        let x_763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_761.xy, x_761.z);
        u_xlat22 = x_763;
        let x_765 : f32 = u_xlat11.w;
        let x_766 : f32 = u_xlat22;
        let x_769 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_765 * x_766) + x_769);
        let x_773 : vec4<f32> = u_xlat9;
        let x_774 : vec2<f32> = vec2<f32>(x_773.x, x_773.y);
        let x_776 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_774.x, x_774.y, x_776);
        let x_783 : vec3<f32> = txVec8;
        let x_785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_783.xy, x_783.z);
        u_xlat22 = x_785;
        let x_787 : f32 = u_xlat12.x;
        let x_788 : f32 = u_xlat22;
        let x_791 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_787 * x_788) + x_791);
        let x_795 : vec4<f32> = u_xlat9;
        let x_796 : vec2<f32> = vec2<f32>(x_795.z, x_795.w);
        let x_798 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec9;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_805.xy, x_805.z);
        u_xlat22 = x_807;
        let x_809 : f32 = u_xlat12.y;
        let x_810 : f32 = u_xlat22;
        let x_813 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_809 * x_810) + x_813);
        let x_817 : vec4<f32> = u_xlat7;
        let x_818 : vec2<f32> = vec2<f32>(x_817.z, x_817.w);
        let x_820 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_818.x, x_818.y, x_820);
        let x_827 : vec3<f32> = txVec10;
        let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_827.xy, x_827.z);
        u_xlat22 = x_829;
        let x_831 : f32 = u_xlat12.z;
        let x_832 : f32 = u_xlat22;
        let x_835 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_831 * x_832) + x_835);
        let x_839 : vec4<f32> = u_xlat6;
        let x_840 : vec2<f32> = vec2<f32>(x_839.x, x_839.y);
        let x_842 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_840.x, x_840.y, x_842);
        let x_849 : vec3<f32> = txVec11;
        let x_851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_849.xy, x_849.z);
        u_xlat22 = x_851;
        let x_853 : f32 = u_xlat12.w;
        let x_854 : f32 = u_xlat22;
        let x_857 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_853 * x_854) + x_857);
        let x_861 : vec4<f32> = u_xlat6;
        let x_862 : vec2<f32> = vec2<f32>(x_861.z, x_861.w);
        let x_864 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_862.x, x_862.y, x_864);
        let x_871 : vec3<f32> = txVec12;
        let x_873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_871.xy, x_871.z);
        u_xlat22 = x_873;
        let x_874 : f32 = u_xlat57;
        let x_875 : f32 = u_xlat22;
        let x_878 : f32 = u_xlat4.x;
        u_xlat56 = ((x_874 * x_875) + x_878);
      } else {
        let x_881 : vec4<f32> = vs_TEXCOORD6;
        let x_884 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_887 : vec2<f32> = ((vec2<f32>(x_881.x, x_881.y) * vec2<f32>(x_884.z, x_884.w)) + vec2<f32>(0.5f, 0.5f));
        let x_888 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_887.x, x_887.y, x_888.z, x_888.w);
        let x_890 : vec4<f32> = u_xlat4;
        let x_892 : vec2<f32> = floor(vec2<f32>(x_890.x, x_890.y));
        let x_893 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_892.x, x_892.y, x_893.z, x_893.w);
        let x_895 : vec4<f32> = vs_TEXCOORD6;
        let x_898 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_901 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_895.x, x_895.y) * vec2<f32>(x_898.z, x_898.w)) + -(vec2<f32>(x_901.x, x_901.y)));
        let x_905 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_905.x, x_905.x, x_905.y, x_905.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_908 : vec4<f32> = u_xlat5;
        let x_910 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_908.x, x_908.x, x_908.z, x_908.z) * vec4<f32>(x_910.x, x_910.x, x_910.z, x_910.z));
        let x_913 : vec4<f32> = u_xlat6;
        let x_917 : vec2<f32> = (vec2<f32>(x_913.y, x_913.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_918 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_918.x, x_917.x, x_918.z, x_917.y);
        let x_920 : vec4<f32> = u_xlat6;
        let x_923 : vec2<f32> = u_xlat40;
        let x_925 : vec2<f32> = ((vec2<f32>(x_920.x, x_920.z) * vec2<f32>(0.5f, 0.5f)) + -(x_923));
        let x_926 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_925.x, x_926.y, x_925.y, x_926.w);
        let x_928 : vec2<f32> = u_xlat40;
        let x_930 : vec2<f32> = (-(x_928) + vec2<f32>(1.0f, 1.0f));
        let x_931 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_933 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_933, vec2<f32>(0.0f, 0.0f));
        let x_935 : vec2<f32> = u_xlat42;
        let x_937 : vec2<f32> = u_xlat42;
        let x_939 : vec4<f32> = u_xlat6;
        let x_941 : vec2<f32> = ((-(x_935) * x_937) + vec2<f32>(x_939.x, x_939.y));
        let x_942 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_944 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_944, vec2<f32>(0.0f, 0.0f));
        let x_947 : vec2<f32> = u_xlat42;
        let x_949 : vec2<f32> = u_xlat42;
        let x_951 : vec4<f32> = u_xlat5;
        let x_953 : vec2<f32> = ((-(x_947) * x_949) + vec2<f32>(x_951.y, x_951.w));
        let x_954 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_953.x, x_954.y, x_953.y);
        let x_956 : vec4<f32> = u_xlat6;
        let x_959 : vec2<f32> = (vec2<f32>(x_956.x, x_956.y) + vec2<f32>(2.0f, 2.0f));
        let x_960 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_962 : vec3<f32> = u_xlat23;
        let x_964 : vec2<f32> = (vec2<f32>(x_962.x, x_962.z) + vec2<f32>(2.0f, 2.0f));
        let x_965 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_965.x, x_964.x, x_965.z, x_964.y);
        let x_968 : f32 = u_xlat5.y;
        u_xlat8.z = (x_968 * 0.081632003f);
        let x_972 : vec4<f32> = u_xlat5;
        let x_975 : vec3<f32> = (vec3<f32>(x_972.z, x_972.x, x_972.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_976 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat6;
        let x_981 : vec2<f32> = (vec2<f32>(x_978.x, x_978.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_982 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_981.x, x_981.y, x_982.z, x_982.w);
        let x_985 : f32 = u_xlat9.y;
        u_xlat8.x = x_985;
        let x_987 : vec2<f32> = u_xlat40;
        let x_994 : vec2<f32> = ((vec2<f32>(x_987.x, x_987.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_995 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_995.x, x_994.x, x_995.z, x_994.y);
        let x_997 : vec2<f32> = u_xlat40;
        let x_1001 : vec2<f32> = ((vec2<f32>(x_997.x, x_997.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1002 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1001.x, x_1002.y, x_1001.y, x_1002.w);
        let x_1005 : f32 = u_xlat5.x;
        u_xlat6.y = x_1005;
        let x_1008 : f32 = u_xlat7.y;
        u_xlat6.w = x_1008;
        let x_1010 : vec4<f32> = u_xlat6;
        let x_1011 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1010 + x_1011);
        let x_1013 : vec2<f32> = u_xlat40;
        let x_1016 : vec2<f32> = ((vec2<f32>(x_1013.y, x_1013.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1017 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1017.x, x_1016.x, x_1017.z, x_1016.y);
        let x_1019 : vec2<f32> = u_xlat40;
        let x_1022 : vec2<f32> = ((vec2<f32>(x_1019.y, x_1019.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1023 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1022.x, x_1023.y, x_1022.y, x_1023.w);
        let x_1026 : f32 = u_xlat5.y;
        u_xlat7.y = x_1026;
        let x_1028 : vec4<f32> = u_xlat7;
        let x_1029 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1028 + x_1029);
        let x_1031 : vec4<f32> = u_xlat6;
        let x_1032 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1031 / x_1032);
        let x_1034 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1034 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1040 : vec4<f32> = u_xlat7;
        let x_1041 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1040 / x_1041);
        let x_1043 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1043 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1045 : vec4<f32> = u_xlat6;
        let x_1048 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1045.w, x_1045.x, x_1045.y, x_1045.z) * vec4<f32>(x_1048.x, x_1048.x, x_1048.x, x_1048.x));
        let x_1051 : vec4<f32> = u_xlat7;
        let x_1054 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1051.x, x_1051.w, x_1051.y, x_1051.z) * vec4<f32>(x_1054.y, x_1054.y, x_1054.y, x_1054.y));
        let x_1057 : vec4<f32> = u_xlat6;
        let x_1058 : vec3<f32> = vec3<f32>(x_1057.y, x_1057.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1058.x, x_1059.y, x_1058.y, x_1058.z);
        let x_1062 : f32 = u_xlat7.x;
        u_xlat9.y = x_1062;
        let x_1064 : vec4<f32> = u_xlat4;
        let x_1067 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y) * vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y)) + vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat4;
        let x_1076 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1073.x, x_1073.y) * vec2<f32>(x_1076.x, x_1076.y)) + vec2<f32>(x_1079.w, x_1079.y));
        let x_1083 : f32 = u_xlat9.y;
        u_xlat6.y = x_1083;
        let x_1086 : f32 = u_xlat7.z;
        u_xlat9.y = x_1086;
        let x_1088 : vec4<f32> = u_xlat4;
        let x_1091 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1094 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y) * vec4<f32>(x_1091.x, x_1091.y, x_1091.x, x_1091.y)) + vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1094.y));
        let x_1097 : vec4<f32> = u_xlat4;
        let x_1100 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat9;
        let x_1105 : vec2<f32> = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.x, x_1100.y)) + vec2<f32>(x_1103.w, x_1103.y));
        let x_1106 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
        let x_1109 : f32 = u_xlat9.y;
        u_xlat6.z = x_1109;
        let x_1112 : vec4<f32> = u_xlat4;
        let x_1115 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1118 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1112.x, x_1112.y, x_1112.x, x_1112.y) * vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y)) + vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.z));
        let x_1122 : f32 = u_xlat7.w;
        u_xlat9.y = x_1122;
        let x_1125 : vec4<f32> = u_xlat4;
        let x_1128 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y) * vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y)) + vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1131.y));
        let x_1135 : vec4<f32> = u_xlat4;
        let x_1138 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1141 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(x_1138.x, x_1138.y)) + vec2<f32>(x_1141.w, x_1141.y));
        let x_1145 : f32 = u_xlat9.y;
        u_xlat6.w = x_1145;
        let x_1148 : vec4<f32> = u_xlat4;
        let x_1151 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(x_1151.x, x_1151.y)) + vec2<f32>(x_1154.x, x_1154.w));
        let x_1157 : vec4<f32> = u_xlat9;
        let x_1158 : vec3<f32> = vec3<f32>(x_1157.x, x_1157.z, x_1157.w);
        let x_1159 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1158.x, x_1159.y, x_1158.y, x_1158.z);
        let x_1161 : vec4<f32> = u_xlat4;
        let x_1164 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1167 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1161.x, x_1161.y, x_1161.x, x_1161.y) * vec4<f32>(x_1164.x, x_1164.y, x_1164.x, x_1164.y)) + vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1167.y));
        let x_1171 : vec4<f32> = u_xlat4;
        let x_1174 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1177 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1171.x, x_1171.y) * vec2<f32>(x_1174.x, x_1174.y)) + vec2<f32>(x_1177.w, x_1177.y));
        let x_1181 : f32 = u_xlat6.x;
        u_xlat7.x = x_1181;
        let x_1183 : vec4<f32> = u_xlat4;
        let x_1186 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1189 : vec4<f32> = u_xlat7;
        let x_1191 : vec2<f32> = ((vec2<f32>(x_1183.x, x_1183.y) * vec2<f32>(x_1186.x, x_1186.y)) + vec2<f32>(x_1189.x, x_1189.y));
        let x_1192 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
        let x_1195 : vec4<f32> = u_xlat5;
        let x_1197 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1195.x, x_1195.x, x_1195.x, x_1195.x) * x_1197);
        let x_1200 : vec4<f32> = u_xlat5;
        let x_1202 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1200.y, x_1200.y, x_1200.y, x_1200.y) * x_1202);
        let x_1205 : vec4<f32> = u_xlat5;
        let x_1207 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1205.z, x_1205.z, x_1205.z, x_1205.z) * x_1207);
        let x_1209 : vec4<f32> = u_xlat5;
        let x_1211 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1209.w, x_1209.w, x_1209.w, x_1209.w) * x_1211);
        let x_1214 : vec4<f32> = u_xlat10;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
        let x_1217 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec13;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1224.xy, x_1224.z);
        u_xlat57 = x_1226;
        let x_1228 : vec4<f32> = u_xlat10;
        let x_1229 : vec2<f32> = vec2<f32>(x_1228.z, x_1228.w);
        let x_1231 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1229.x, x_1229.y, x_1231);
        let x_1238 : vec3<f32> = txVec14;
        let x_1240 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1238.xy, x_1238.z);
        u_xlat6.x = x_1240;
        let x_1243 : f32 = u_xlat6.x;
        let x_1245 : f32 = u_xlat15.y;
        u_xlat6.x = (x_1243 * x_1245);
        let x_1249 : f32 = u_xlat15.x;
        let x_1250 : f32 = u_xlat57;
        let x_1253 : f32 = u_xlat6.x;
        u_xlat57 = ((x_1249 * x_1250) + x_1253);
        let x_1256 : vec2<f32> = u_xlat40;
        let x_1258 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
        let x_1265 : vec3<f32> = txVec15;
        let x_1267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1265.xy, x_1265.z);
        u_xlat40.x = x_1267;
        let x_1270 : f32 = u_xlat15.z;
        let x_1272 : f32 = u_xlat40.x;
        let x_1274 : f32 = u_xlat57;
        u_xlat57 = ((x_1270 * x_1272) + x_1274);
        let x_1277 : vec4<f32> = u_xlat13;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.x, x_1277.y);
        let x_1280 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1287 : vec3<f32> = txVec16;
        let x_1289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1287.xy, x_1287.z);
        u_xlat40.x = x_1289;
        let x_1292 : f32 = u_xlat15.w;
        let x_1294 : f32 = u_xlat40.x;
        let x_1296 : f32 = u_xlat57;
        u_xlat57 = ((x_1292 * x_1294) + x_1296);
        let x_1299 : vec4<f32> = u_xlat11;
        let x_1300 : vec2<f32> = vec2<f32>(x_1299.x, x_1299.y);
        let x_1302 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1300.x, x_1300.y, x_1302);
        let x_1309 : vec3<f32> = txVec17;
        let x_1311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1309.xy, x_1309.z);
        u_xlat40.x = x_1311;
        let x_1314 : f32 = u_xlat16.x;
        let x_1316 : f32 = u_xlat40.x;
        let x_1318 : f32 = u_xlat57;
        u_xlat57 = ((x_1314 * x_1316) + x_1318);
        let x_1321 : vec4<f32> = u_xlat11;
        let x_1322 : vec2<f32> = vec2<f32>(x_1321.z, x_1321.w);
        let x_1324 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1322.x, x_1322.y, x_1324);
        let x_1331 : vec3<f32> = txVec18;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1331.xy, x_1331.z);
        u_xlat40.x = x_1333;
        let x_1336 : f32 = u_xlat16.y;
        let x_1338 : f32 = u_xlat40.x;
        let x_1340 : f32 = u_xlat57;
        u_xlat57 = ((x_1336 * x_1338) + x_1340);
        let x_1343 : vec4<f32> = u_xlat12;
        let x_1344 : vec2<f32> = vec2<f32>(x_1343.x, x_1343.y);
        let x_1346 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1344.x, x_1344.y, x_1346);
        let x_1353 : vec3<f32> = txVec19;
        let x_1355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1353.xy, x_1353.z);
        u_xlat40.x = x_1355;
        let x_1358 : f32 = u_xlat16.z;
        let x_1360 : f32 = u_xlat40.x;
        let x_1362 : f32 = u_xlat57;
        u_xlat57 = ((x_1358 * x_1360) + x_1362);
        let x_1365 : vec4<f32> = u_xlat13;
        let x_1366 : vec2<f32> = vec2<f32>(x_1365.z, x_1365.w);
        let x_1368 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec20;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1375.xy, x_1375.z);
        u_xlat40.x = x_1377;
        let x_1380 : f32 = u_xlat16.w;
        let x_1382 : f32 = u_xlat40.x;
        let x_1384 : f32 = u_xlat57;
        u_xlat57 = ((x_1380 * x_1382) + x_1384);
        let x_1387 : vec4<f32> = u_xlat14;
        let x_1388 : vec2<f32> = vec2<f32>(x_1387.x, x_1387.y);
        let x_1390 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1397 : vec3<f32> = txVec21;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1397.xy, x_1397.z);
        u_xlat40.x = x_1399;
        let x_1402 : f32 = u_xlat17.x;
        let x_1404 : f32 = u_xlat40.x;
        let x_1406 : f32 = u_xlat57;
        u_xlat57 = ((x_1402 * x_1404) + x_1406);
        let x_1409 : vec4<f32> = u_xlat14;
        let x_1410 : vec2<f32> = vec2<f32>(x_1409.z, x_1409.w);
        let x_1412 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec22;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1419.xy, x_1419.z);
        u_xlat40.x = x_1421;
        let x_1424 : f32 = u_xlat17.y;
        let x_1426 : f32 = u_xlat40.x;
        let x_1428 : f32 = u_xlat57;
        u_xlat57 = ((x_1424 * x_1426) + x_1428);
        let x_1431 : vec2<f32> = u_xlat24;
        let x_1433 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1431.x, x_1431.y, x_1433);
        let x_1440 : vec3<f32> = txVec23;
        let x_1442 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1440.xy, x_1440.z);
        u_xlat40.x = x_1442;
        let x_1445 : f32 = u_xlat17.z;
        let x_1447 : f32 = u_xlat40.x;
        let x_1449 : f32 = u_xlat57;
        u_xlat57 = ((x_1445 * x_1447) + x_1449);
        let x_1452 : vec2<f32> = u_xlat48;
        let x_1454 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec24;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1461.xy, x_1461.z);
        u_xlat40.x = x_1463;
        let x_1466 : f32 = u_xlat17.w;
        let x_1468 : f32 = u_xlat40.x;
        let x_1470 : f32 = u_xlat57;
        u_xlat57 = ((x_1466 * x_1468) + x_1470);
        let x_1473 : vec4<f32> = u_xlat9;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.x, x_1473.y);
        let x_1476 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec25;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1483.xy, x_1483.z);
        u_xlat40.x = x_1485;
        let x_1488 : f32 = u_xlat5.x;
        let x_1490 : f32 = u_xlat40.x;
        let x_1492 : f32 = u_xlat57;
        u_xlat57 = ((x_1488 * x_1490) + x_1492);
        let x_1495 : vec4<f32> = u_xlat9;
        let x_1496 : vec2<f32> = vec2<f32>(x_1495.z, x_1495.w);
        let x_1498 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec26;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1505.xy, x_1505.z);
        u_xlat40.x = x_1507;
        let x_1510 : f32 = u_xlat5.y;
        let x_1512 : f32 = u_xlat40.x;
        let x_1514 : f32 = u_xlat57;
        u_xlat57 = ((x_1510 * x_1512) + x_1514);
        let x_1517 : vec2<f32> = u_xlat43;
        let x_1519 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec27;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1526.xy, x_1526.z);
        u_xlat40.x = x_1528;
        let x_1531 : f32 = u_xlat5.z;
        let x_1533 : f32 = u_xlat40.x;
        let x_1535 : f32 = u_xlat57;
        u_xlat57 = ((x_1531 * x_1533) + x_1535);
        let x_1538 : vec4<f32> = u_xlat4;
        let x_1539 : vec2<f32> = vec2<f32>(x_1538.x, x_1538.y);
        let x_1541 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1548 : vec3<f32> = txVec28;
        let x_1550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1548.xy, x_1548.z);
        u_xlat4.x = x_1550;
        let x_1553 : f32 = u_xlat5.w;
        let x_1555 : f32 = u_xlat4.x;
        let x_1557 : f32 = u_xlat57;
        u_xlat56 = ((x_1553 * x_1555) + x_1557);
      }
    }
  } else {
    let x_1561 : vec4<f32> = vs_TEXCOORD6;
    let x_1562 : vec2<f32> = vec2<f32>(x_1561.x, x_1561.y);
    let x_1564 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
    let x_1571 : vec3<f32> = txVec29;
    let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1571.xy, x_1571.z);
    u_xlat56 = x_1573;
  }
  let x_1575 : f32 = x_316.x_MainLightShadowParams.x;
  u_xlat57 = (-(x_1575) + 1.0f);
  let x_1578 : f32 = u_xlat56;
  let x_1580 : f32 = x_316.x_MainLightShadowParams.x;
  let x_1582 : f32 = u_xlat57;
  u_xlat56 = ((x_1578 * x_1580) + x_1582);
  let x_1585 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (0.0f >= x_1585);
  let x_1589 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_1589 >= 1.0f);
  let x_1591 : bool = u_xlatb57;
  let x_1592 : bool = u_xlatb4;
  u_xlatb57 = (x_1591 | x_1592);
  let x_1594 : bool = u_xlatb57;
  let x_1595 : f32 = u_xlat56;
  u_xlat56 = select(x_1595, 1.0f, x_1594);
  let x_1597 : vec3<f32> = vs_TEXCOORD1;
  let x_1600 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1602 : vec3<f32> = (x_1597 + -(x_1600));
  let x_1603 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1602.x, x_1602.y, x_1602.z, x_1603.w);
  let x_1605 : vec4<f32> = u_xlat4;
  let x_1607 : vec4<f32> = u_xlat4;
  u_xlat57 = dot(vec3<f32>(x_1605.x, x_1605.y, x_1605.z), vec3<f32>(x_1607.x, x_1607.y, x_1607.z));
  let x_1610 : f32 = u_xlat57;
  let x_1612 : f32 = x_316.x_MainLightShadowParams.z;
  let x_1615 : f32 = x_316.x_MainLightShadowParams.w;
  u_xlat57 = ((x_1610 * x_1612) + x_1615);
  let x_1617 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1617, 0.0f, 1.0f);
  let x_1619 : f32 = u_xlat56;
  u_xlat4.x = (-(x_1619) + 1.0f);
  let x_1623 : f32 = u_xlat57;
  let x_1625 : f32 = u_xlat4.x;
  let x_1627 : f32 = u_xlat56;
  u_xlat56 = ((x_1623 * x_1625) + x_1627);
  let x_1635 : f32 = x_1633.x_MainLightCookieTextureFormat;
  u_xlatb57 = !((x_1635 == -1.0f));
  let x_1637 : bool = u_xlatb57;
  if (x_1637) {
    let x_1640 : vec3<f32> = vs_TEXCOORD1;
    let x_1643 : vec4<f32> = x_1633.x_MainLightWorldToLight[1i];
    let x_1645 : vec2<f32> = (vec2<f32>(x_1640.y, x_1640.y) * vec2<f32>(x_1643.x, x_1643.y));
    let x_1646 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1645.x, x_1645.y, x_1646.z, x_1646.w);
    let x_1649 : vec4<f32> = x_1633.x_MainLightWorldToLight[0i];
    let x_1651 : vec3<f32> = vs_TEXCOORD1;
    let x_1654 : vec4<f32> = u_xlat4;
    let x_1656 : vec2<f32> = ((vec2<f32>(x_1649.x, x_1649.y) * vec2<f32>(x_1651.x, x_1651.x)) + vec2<f32>(x_1654.x, x_1654.y));
    let x_1657 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1656.x, x_1656.y, x_1657.z, x_1657.w);
    let x_1660 : vec4<f32> = x_1633.x_MainLightWorldToLight[2i];
    let x_1662 : vec3<f32> = vs_TEXCOORD1;
    let x_1665 : vec4<f32> = u_xlat4;
    let x_1667 : vec2<f32> = ((vec2<f32>(x_1660.x, x_1660.y) * vec2<f32>(x_1662.z, x_1662.z)) + vec2<f32>(x_1665.x, x_1665.y));
    let x_1668 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1667.x, x_1667.y, x_1668.z, x_1668.w);
    let x_1670 : vec4<f32> = u_xlat4;
    let x_1673 : vec4<f32> = x_1633.x_MainLightWorldToLight[3i];
    let x_1675 : vec2<f32> = (vec2<f32>(x_1670.x, x_1670.y) + vec2<f32>(x_1673.x, x_1673.y));
    let x_1676 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1675.x, x_1675.y, x_1676.z, x_1676.w);
    let x_1678 : vec4<f32> = u_xlat4;
    let x_1681 : vec2<f32> = ((vec2<f32>(x_1678.x, x_1678.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1682 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1681.x, x_1681.y, x_1682.z, x_1682.w);
    let x_1689 : vec4<f32> = u_xlat4;
    let x_1692 : f32 = x_44.x_GlobalMipBias.x;
    let x_1693 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1689.x, x_1689.y), x_1692);
    u_xlat4 = x_1693;
    let x_1698 : f32 = x_1633.x_MainLightCookieTextureFormat;
    let x_1700 : f32 = x_1633.x_MainLightCookieTextureFormat;
    let x_1702 : f32 = x_1633.x_MainLightCookieTextureFormat;
    let x_1704 : f32 = x_1633.x_MainLightCookieTextureFormat;
    let x_1705 : vec4<f32> = vec4<f32>(x_1698, x_1700, x_1702, x_1704);
    let x_1713 : vec4<bool> = (vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1705.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1713.x, x_1713.y);
    let x_1716 : bool = u_xlatb5.y;
    if (x_1716) {
      let x_1721 : f32 = u_xlat4.w;
      x_1717 = x_1721;
    } else {
      let x_1724 : f32 = u_xlat4.x;
      x_1717 = x_1724;
    }
    let x_1725 : f32 = x_1717;
    u_xlat57 = x_1725;
    let x_1727 : bool = u_xlatb5.x;
    if (x_1727) {
      let x_1731 : vec4<f32> = u_xlat4;
      x_1728 = vec3<f32>(x_1731.x, x_1731.y, x_1731.z);
    } else {
      let x_1734 : f32 = u_xlat57;
      x_1728 = vec3<f32>(x_1734, x_1734, x_1734);
    }
    let x_1736 : vec3<f32> = x_1728;
    let x_1737 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1736.x, x_1736.y, x_1736.z, x_1737.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1743 : vec4<f32> = u_xlat4;
  let x_1746 : vec4<f32> = x_44.x_MainLightColor;
  let x_1748 : vec3<f32> = (vec3<f32>(x_1743.x, x_1743.y, x_1743.z) * vec3<f32>(x_1746.x, x_1746.y, x_1746.z));
  let x_1749 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1749.w);
  let x_1751 : vec4<f32> = u_xlat1;
  let x_1753 : vec4<f32> = u_xlat4;
  let x_1755 : vec3<f32> = (vec3<f32>(x_1751.x, x_1751.x, x_1751.x) * vec3<f32>(x_1753.x, x_1753.y, x_1753.z));
  let x_1756 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1755.x, x_1755.y, x_1755.z, x_1756.w);
  let x_1758 : f32 = u_xlat54;
  let x_1760 : vec4<f32> = u_xlat3;
  let x_1762 : vec3<f32> = (vec3<f32>(x_1758, x_1758, x_1758) * vec3<f32>(x_1760.x, x_1760.y, x_1760.z));
  let x_1763 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1762.x, x_1762.y, x_1762.z, x_1763.w);
  let x_1765 : f32 = u_xlat56;
  let x_1771 : f32 = x_1769.unity_LightData.z;
  u_xlat54 = (x_1765 * x_1771);
  let x_1773 : f32 = u_xlat54;
  let x_1775 : vec4<f32> = u_xlat4;
  let x_1777 : vec3<f32> = (vec3<f32>(x_1773, x_1773, x_1773) * vec3<f32>(x_1775.x, x_1775.y, x_1775.z));
  let x_1778 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1778.w);
  let x_1780 : vec3<f32> = u_xlat2;
  let x_1782 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat54 = dot(x_1780, vec3<f32>(x_1782.x, x_1782.y, x_1782.z));
  let x_1785 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1785, 0.0f, 1.0f);
  let x_1787 : f32 = u_xlat54;
  let x_1789 : vec4<f32> = u_xlat4;
  let x_1791 : vec3<f32> = (vec3<f32>(x_1787, x_1787, x_1787) * vec3<f32>(x_1789.x, x_1789.y, x_1789.z));
  let x_1792 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1791.x, x_1791.y, x_1791.z, x_1792.w);
  let x_1794 : vec4<f32> = u_xlat1;
  let x_1796 : vec4<f32> = u_xlat4;
  let x_1798 : vec3<f32> = (vec3<f32>(x_1794.y, x_1794.z, x_1794.w) * vec3<f32>(x_1796.x, x_1796.y, x_1796.z));
  let x_1799 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1798.x, x_1798.y, x_1798.z, x_1799.w);
  let x_1802 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1804 : f32 = x_1769.unity_LightData.y;
  u_xlat54 = min(x_1802, x_1804);
  let x_1808 : f32 = u_xlat54;
  u_xlatu54 = bitcast<u32>(i32(x_1808));
  let x_1812 : f32 = x_1633.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1814 : f32 = x_1633.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1816 : f32 = x_1633.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1818 : f32 = x_1633.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1819 : vec4<f32> = vec4<f32>(x_1812, x_1814, x_1816, x_1818);
  let x_1825 : vec4<bool> = (vec4<f32>(x_1819.x, x_1819.y, x_1819.z, x_1819.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1825.x, x_1825.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1836 : u32 = u_xlatu_loop_1;
    let x_1837 : u32 = u_xlatu54;
    if ((x_1836 < x_1837)) {
    } else {
      break;
    }
    let x_1840 : u32 = u_xlatu_loop_1;
    u_xlatu57 = (x_1840 >> 2u);
    let x_1844 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_1844 & 3u));
    let x_1847 : u32 = u_xlatu57;
    let x_1850 : vec4<f32> = x_1769.unity_LightIndices[bitcast<i32>(x_1847)];
    let x_1860 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1865 : vec4<u32> = indexable[x_1860];
    u_xlat57 = dot(x_1850, bitcast<vec4<f32>>(x_1865));
    let x_1868 : f32 = u_xlat57;
    u_xlatu57 = bitcast<u32>(i32(x_1868));
    let x_1871 : vec3<f32> = vs_TEXCOORD1;
    let x_1883 : u32 = u_xlatu57;
    let x_1886 : vec4<f32> = x_1882.x_AdditionalLightsPosition[bitcast<i32>(x_1883)];
    let x_1889 : u32 = u_xlatu57;
    let x_1892 : vec4<f32> = x_1882.x_AdditionalLightsPosition[bitcast<i32>(x_1889)];
    let x_1894 : vec3<f32> = ((-(x_1871) * vec3<f32>(x_1886.w, x_1886.w, x_1886.w)) + vec3<f32>(x_1892.x, x_1892.y, x_1892.z));
    let x_1895 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1894.x, x_1894.y, x_1894.z, x_1895.w);
    let x_1898 : vec4<f32> = u_xlat7;
    let x_1900 : vec4<f32> = u_xlat7;
    u_xlat58 = dot(vec3<f32>(x_1898.x, x_1898.y, x_1898.z), vec3<f32>(x_1900.x, x_1900.y, x_1900.z));
    let x_1903 : f32 = u_xlat58;
    u_xlat58 = max(x_1903, 6.10351562e-05f);
    let x_1907 : f32 = u_xlat58;
    u_xlat41.x = inverseSqrt(x_1907);
    let x_1910 : vec2<f32> = u_xlat41;
    let x_1912 : vec4<f32> = u_xlat7;
    let x_1914 : vec3<f32> = (vec3<f32>(x_1910.x, x_1910.x, x_1910.x) * vec3<f32>(x_1912.x, x_1912.y, x_1912.z));
    let x_1915 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1914.x, x_1914.y, x_1914.z, x_1915.w);
    let x_1917 : f32 = u_xlat58;
    u_xlat41.x = (1.0f / x_1917);
    let x_1920 : f32 = u_xlat58;
    let x_1921 : u32 = u_xlatu57;
    let x_1924 : f32 = x_1882.x_AdditionalLightsAttenuation[bitcast<i32>(x_1921)].x;
    u_xlat58 = (x_1920 * x_1924);
    let x_1926 : f32 = u_xlat58;
    let x_1928 : f32 = u_xlat58;
    u_xlat58 = ((-(x_1926) * x_1928) + 1.0f);
    let x_1931 : f32 = u_xlat58;
    u_xlat58 = max(x_1931, 0.0f);
    let x_1933 : f32 = u_xlat58;
    let x_1934 : f32 = u_xlat58;
    u_xlat58 = (x_1933 * x_1934);
    let x_1936 : f32 = u_xlat58;
    let x_1938 : f32 = u_xlat41.x;
    u_xlat58 = (x_1936 * x_1938);
    let x_1940 : u32 = u_xlatu57;
    let x_1943 : vec4<f32> = x_1882.x_AdditionalLightsSpotDir[bitcast<i32>(x_1940)];
    let x_1945 : vec4<f32> = u_xlat7;
    u_xlat41.x = dot(vec3<f32>(x_1943.x, x_1943.y, x_1943.z), vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
    let x_1950 : f32 = u_xlat41.x;
    let x_1951 : u32 = u_xlatu57;
    let x_1954 : f32 = x_1882.x_AdditionalLightsAttenuation[bitcast<i32>(x_1951)].z;
    let x_1956 : u32 = u_xlatu57;
    let x_1959 : f32 = x_1882.x_AdditionalLightsAttenuation[bitcast<i32>(x_1956)].w;
    u_xlat41.x = ((x_1950 * x_1954) + x_1959);
    let x_1963 : f32 = u_xlat41.x;
    u_xlat41.x = clamp(x_1963, 0.0f, 1.0f);
    let x_1967 : f32 = u_xlat41.x;
    let x_1969 : f32 = u_xlat41.x;
    u_xlat41.x = (x_1967 * x_1969);
    let x_1972 : f32 = u_xlat58;
    let x_1974 : f32 = u_xlat41.x;
    u_xlat58 = (x_1972 * x_1974);
    let x_1977 : u32 = u_xlatu57;
    u_xlatu41 = (x_1977 >> 5u);
    let x_1980 : u32 = u_xlatu57;
    u_xlati59 = (1i << bitcast<u32>((bitcast<i32>(x_1980) & 31i)));
    let x_1986 : i32 = u_xlati59;
    let x_1988 : u32 = u_xlatu41;
    let x_1991 : f32 = x_1633.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1988)].el;
    u_xlati41 = bitcast<i32>((bitcast<u32>(x_1986) & bitcast<u32>(x_1991)));
    let x_1995 : i32 = u_xlati41;
    if ((x_1995 != 0i)) {
      let x_2005 : u32 = u_xlatu57;
      let x_2008 : f32 = x_2004.x_AdditionalLightsLightTypes[bitcast<i32>(x_2005)].el;
      u_xlati41 = i32(x_2008);
      let x_2010 : i32 = u_xlati41;
      u_xlati59 = select(1i, 0i, (x_2010 != 0i));
      let x_2014 : u32 = u_xlatu57;
      u_xlati60 = (bitcast<i32>(x_2014) << bitcast<u32>(2i));
      let x_2017 : i32 = u_xlati59;
      if ((x_2017 != 0i)) {
        let x_2021 : vec3<f32> = vs_TEXCOORD1;
        let x_2023 : i32 = u_xlati60;
        let x_2026 : i32 = u_xlati60;
        let x_2030 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_2023 + 1i) / 4i)][((x_2026 + 1i) % 4i)];
        let x_2032 : vec3<f32> = (vec3<f32>(x_2021.y, x_2021.y, x_2021.y) * vec3<f32>(x_2030.x, x_2030.y, x_2030.w));
        let x_2033 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2032.x, x_2032.y, x_2032.z, x_2033.w);
        let x_2035 : i32 = u_xlati60;
        let x_2037 : i32 = u_xlati60;
        let x_2040 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[(x_2035 / 4i)][(x_2037 % 4i)];
        let x_2042 : vec3<f32> = vs_TEXCOORD1;
        let x_2045 : vec4<f32> = u_xlat8;
        let x_2047 : vec3<f32> = ((vec3<f32>(x_2040.x, x_2040.y, x_2040.w) * vec3<f32>(x_2042.x, x_2042.x, x_2042.x)) + vec3<f32>(x_2045.x, x_2045.y, x_2045.z));
        let x_2048 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2047.x, x_2047.y, x_2047.z, x_2048.w);
        let x_2050 : i32 = u_xlati60;
        let x_2053 : i32 = u_xlati60;
        let x_2057 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_2050 + 2i) / 4i)][((x_2053 + 2i) % 4i)];
        let x_2059 : vec3<f32> = vs_TEXCOORD1;
        let x_2062 : vec4<f32> = u_xlat8;
        let x_2064 : vec3<f32> = ((vec3<f32>(x_2057.x, x_2057.y, x_2057.w) * vec3<f32>(x_2059.z, x_2059.z, x_2059.z)) + vec3<f32>(x_2062.x, x_2062.y, x_2062.z));
        let x_2065 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2064.x, x_2064.y, x_2064.z, x_2065.w);
        let x_2067 : vec4<f32> = u_xlat8;
        let x_2069 : i32 = u_xlati60;
        let x_2072 : i32 = u_xlati60;
        let x_2076 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_2069 + 3i) / 4i)][((x_2072 + 3i) % 4i)];
        let x_2078 : vec3<f32> = (vec3<f32>(x_2067.x, x_2067.y, x_2067.z) + vec3<f32>(x_2076.x, x_2076.y, x_2076.w));
        let x_2079 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
        let x_2081 : vec4<f32> = u_xlat8;
        let x_2083 : vec4<f32> = u_xlat8;
        let x_2085 : vec2<f32> = (vec2<f32>(x_2081.x, x_2081.y) / vec2<f32>(x_2083.z, x_2083.z));
        let x_2086 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2085.x, x_2085.y, x_2086.z, x_2086.w);
        let x_2088 : vec4<f32> = u_xlat8;
        let x_2091 : vec2<f32> = ((vec2<f32>(x_2088.x, x_2088.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2092 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2091.x, x_2091.y, x_2092.z, x_2092.w);
        let x_2094 : vec4<f32> = u_xlat8;
        let x_2098 : vec2<f32> = clamp(vec2<f32>(x_2094.x, x_2094.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2099 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2098.x, x_2098.y, x_2099.z, x_2099.w);
        let x_2101 : u32 = u_xlatu57;
        let x_2104 : vec4<f32> = x_2004.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2101)];
        let x_2106 : vec4<f32> = u_xlat8;
        let x_2109 : u32 = u_xlatu57;
        let x_2112 : vec4<f32> = x_2004.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2109)];
        let x_2114 : vec2<f32> = ((vec2<f32>(x_2104.x, x_2104.y) * vec2<f32>(x_2106.x, x_2106.y)) + vec2<f32>(x_2112.z, x_2112.w));
        let x_2115 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2114.x, x_2114.y, x_2115.z, x_2115.w);
      } else {
        let x_2119 : i32 = u_xlati41;
        u_xlatb41 = (x_2119 == 1i);
        let x_2121 : bool = u_xlatb41;
        u_xlati41 = select(0i, 1i, x_2121);
        let x_2123 : i32 = u_xlati41;
        if ((x_2123 != 0i)) {
          let x_2127 : vec3<f32> = vs_TEXCOORD1;
          let x_2129 : i32 = u_xlati60;
          let x_2132 : i32 = u_xlati60;
          let x_2136 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_2129 + 1i) / 4i)][((x_2132 + 1i) % 4i)];
          u_xlat41 = (vec2<f32>(x_2127.y, x_2127.y) * vec2<f32>(x_2136.x, x_2136.y));
          let x_2139 : i32 = u_xlati60;
          let x_2141 : i32 = u_xlati60;
          let x_2144 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[(x_2139 / 4i)][(x_2141 % 4i)];
          let x_2146 : vec3<f32> = vs_TEXCOORD1;
          let x_2149 : vec2<f32> = u_xlat41;
          u_xlat41 = ((vec2<f32>(x_2144.x, x_2144.y) * vec2<f32>(x_2146.x, x_2146.x)) + x_2149);
          let x_2151 : i32 = u_xlati60;
          let x_2154 : i32 = u_xlati60;
          let x_2158 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_2151 + 2i) / 4i)][((x_2154 + 2i) % 4i)];
          let x_2160 : vec3<f32> = vs_TEXCOORD1;
          let x_2163 : vec2<f32> = u_xlat41;
          u_xlat41 = ((vec2<f32>(x_2158.x, x_2158.y) * vec2<f32>(x_2160.z, x_2160.z)) + x_2163);
          let x_2165 : vec2<f32> = u_xlat41;
          let x_2166 : i32 = u_xlati60;
          let x_2169 : i32 = u_xlati60;
          let x_2173 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_2166 + 3i) / 4i)][((x_2169 + 3i) % 4i)];
          u_xlat41 = (x_2165 + vec2<f32>(x_2173.x, x_2173.y));
          let x_2176 : vec2<f32> = u_xlat41;
          u_xlat41 = ((x_2176 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2179 : vec2<f32> = u_xlat41;
          u_xlat41 = fract(x_2179);
          let x_2181 : u32 = u_xlatu57;
          let x_2184 : vec4<f32> = x_2004.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2181)];
          let x_2186 : vec2<f32> = u_xlat41;
          let x_2188 : u32 = u_xlatu57;
          let x_2191 : vec4<f32> = x_2004.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2188)];
          let x_2193 : vec2<f32> = ((vec2<f32>(x_2184.x, x_2184.y) * x_2186) + vec2<f32>(x_2191.z, x_2191.w));
          let x_2194 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2193.x, x_2193.y, x_2194.z, x_2194.w);
        } else {
          let x_2197 : vec3<f32> = vs_TEXCOORD1;
          let x_2199 : i32 = u_xlati60;
          let x_2202 : i32 = u_xlati60;
          let x_2206 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_2199 + 1i) / 4i)][((x_2202 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2197.y, x_2197.y, x_2197.y, x_2197.y) * x_2206);
          let x_2208 : i32 = u_xlati60;
          let x_2210 : i32 = u_xlati60;
          let x_2213 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[(x_2208 / 4i)][(x_2210 % 4i)];
          let x_2214 : vec3<f32> = vs_TEXCOORD1;
          let x_2217 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2213 * vec4<f32>(x_2214.x, x_2214.x, x_2214.x, x_2214.x)) + x_2217);
          let x_2219 : i32 = u_xlati60;
          let x_2222 : i32 = u_xlati60;
          let x_2226 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_2219 + 2i) / 4i)][((x_2222 + 2i) % 4i)];
          let x_2227 : vec3<f32> = vs_TEXCOORD1;
          let x_2230 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2226 * vec4<f32>(x_2227.z, x_2227.z, x_2227.z, x_2227.z)) + x_2230);
          let x_2232 : vec4<f32> = u_xlat9;
          let x_2233 : i32 = u_xlati60;
          let x_2236 : i32 = u_xlati60;
          let x_2240 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_2233 + 3i) / 4i)][((x_2236 + 3i) % 4i)];
          u_xlat9 = (x_2232 + x_2240);
          let x_2242 : vec4<f32> = u_xlat9;
          let x_2244 : vec4<f32> = u_xlat9;
          let x_2246 : vec3<f32> = (vec3<f32>(x_2242.x, x_2242.y, x_2242.z) / vec3<f32>(x_2244.w, x_2244.w, x_2244.w));
          let x_2247 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2246.x, x_2246.y, x_2246.z, x_2247.w);
          let x_2249 : vec4<f32> = u_xlat9;
          let x_2251 : vec4<f32> = u_xlat9;
          u_xlat41.x = dot(vec3<f32>(x_2249.x, x_2249.y, x_2249.z), vec3<f32>(x_2251.x, x_2251.y, x_2251.z));
          let x_2256 : f32 = u_xlat41.x;
          u_xlat41.x = inverseSqrt(x_2256);
          let x_2259 : vec2<f32> = u_xlat41;
          let x_2261 : vec4<f32> = u_xlat9;
          let x_2263 : vec3<f32> = (vec3<f32>(x_2259.x, x_2259.x, x_2259.x) * vec3<f32>(x_2261.x, x_2261.y, x_2261.z));
          let x_2264 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2263.x, x_2263.y, x_2263.z, x_2264.w);
          let x_2266 : vec4<f32> = u_xlat9;
          u_xlat41.x = dot(abs(vec3<f32>(x_2266.x, x_2266.y, x_2266.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2273 : f32 = u_xlat41.x;
          u_xlat41.x = max(x_2273, 0.000001f);
          let x_2278 : f32 = u_xlat41.x;
          u_xlat41.x = (1.0f / x_2278);
          let x_2281 : vec2<f32> = u_xlat41;
          let x_2283 : vec4<f32> = u_xlat9;
          let x_2285 : vec3<f32> = (vec3<f32>(x_2281.x, x_2281.x, x_2281.x) * vec3<f32>(x_2283.z, x_2283.x, x_2283.y));
          let x_2286 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2285.x, x_2285.y, x_2285.z, x_2286.w);
          let x_2289 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2289);
          let x_2293 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2293, 0.0f, 1.0f);
          let x_2297 : vec4<f32> = u_xlat10;
          let x_2300 : vec4<bool> = (vec4<f32>(x_2297.y, x_2297.z, x_2297.y, x_2297.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb44 = vec2<bool>(x_2300.x, x_2300.y);
          let x_2304 : bool = u_xlatb44.x;
          if (x_2304) {
            let x_2309 : f32 = u_xlat10.x;
            x_2305 = x_2309;
          } else {
            let x_2312 : f32 = u_xlat10.x;
            x_2305 = -(x_2312);
          }
          let x_2314 : f32 = x_2305;
          u_xlat44.x = x_2314;
          let x_2317 : bool = u_xlatb44.y;
          if (x_2317) {
            let x_2322 : f32 = u_xlat10.x;
            x_2318 = x_2322;
          } else {
            let x_2325 : f32 = u_xlat10.x;
            x_2318 = -(x_2325);
          }
          let x_2327 : f32 = x_2318;
          u_xlat44.y = x_2327;
          let x_2329 : vec4<f32> = u_xlat9;
          let x_2331 : vec2<f32> = u_xlat41;
          let x_2334 : vec2<f32> = u_xlat44;
          u_xlat41 = ((vec2<f32>(x_2329.x, x_2329.y) * vec2<f32>(x_2331.x, x_2331.x)) + x_2334);
          let x_2336 : vec2<f32> = u_xlat41;
          u_xlat41 = ((x_2336 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2339 : vec2<f32> = u_xlat41;
          u_xlat41 = clamp(x_2339, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2343 : u32 = u_xlatu57;
          let x_2346 : vec4<f32> = x_2004.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2343)];
          let x_2348 : vec2<f32> = u_xlat41;
          let x_2350 : u32 = u_xlatu57;
          let x_2353 : vec4<f32> = x_2004.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2350)];
          let x_2355 : vec2<f32> = ((vec2<f32>(x_2346.x, x_2346.y) * x_2348) + vec2<f32>(x_2353.z, x_2353.w));
          let x_2356 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2355.x, x_2355.y, x_2356.z, x_2356.w);
        }
      }
      let x_2363 : vec4<f32> = u_xlat8;
      let x_2366 : f32 = x_44.x_GlobalMipBias.x;
      let x_2367 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2363.x, x_2363.y), x_2366);
      u_xlat8 = x_2367;
      let x_2369 : bool = u_xlatb5.y;
      if (x_2369) {
        let x_2374 : f32 = u_xlat8.w;
        x_2370 = x_2374;
      } else {
        let x_2377 : f32 = u_xlat8.x;
        x_2370 = x_2377;
      }
      let x_2378 : f32 = x_2370;
      u_xlat41.x = x_2378;
      let x_2381 : bool = u_xlatb5.x;
      if (x_2381) {
        let x_2385 : vec4<f32> = u_xlat8;
        x_2382 = vec3<f32>(x_2385.x, x_2385.y, x_2385.z);
      } else {
        let x_2388 : vec2<f32> = u_xlat41;
        x_2382 = vec3<f32>(x_2388.x, x_2388.x, x_2388.x);
      }
      let x_2390 : vec3<f32> = x_2382;
      let x_2391 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2391.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2397 : vec4<f32> = u_xlat8;
    let x_2399 : u32 = u_xlatu57;
    let x_2402 : vec4<f32> = x_1882.x_AdditionalLightsColor[bitcast<i32>(x_2399)];
    let x_2404 : vec3<f32> = (vec3<f32>(x_2397.x, x_2397.y, x_2397.z) * vec3<f32>(x_2402.x, x_2402.y, x_2402.z));
    let x_2405 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2404.x, x_2404.y, x_2404.z, x_2405.w);
    let x_2407 : vec4<f32> = u_xlat1;
    let x_2409 : vec4<f32> = u_xlat8;
    let x_2411 : vec3<f32> = (vec3<f32>(x_2407.x, x_2407.x, x_2407.x) * vec3<f32>(x_2409.x, x_2409.y, x_2409.z));
    let x_2412 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2411.x, x_2411.y, x_2411.z, x_2412.w);
    let x_2414 : f32 = u_xlat58;
    let x_2416 : vec4<f32> = u_xlat8;
    let x_2418 : vec3<f32> = (vec3<f32>(x_2414, x_2414, x_2414) * vec3<f32>(x_2416.x, x_2416.y, x_2416.z));
    let x_2419 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2418.x, x_2418.y, x_2418.z, x_2419.w);
    let x_2421 : vec3<f32> = u_xlat2;
    let x_2422 : vec4<f32> = u_xlat7;
    u_xlat57 = dot(x_2421, vec3<f32>(x_2422.x, x_2422.y, x_2422.z));
    let x_2425 : f32 = u_xlat57;
    u_xlat57 = clamp(x_2425, 0.0f, 1.0f);
    let x_2427 : f32 = u_xlat57;
    let x_2429 : vec4<f32> = u_xlat8;
    let x_2431 : vec3<f32> = (vec3<f32>(x_2427, x_2427, x_2427) * vec3<f32>(x_2429.x, x_2429.y, x_2429.z));
    let x_2432 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2431.x, x_2431.y, x_2431.z, x_2432.w);
    let x_2434 : vec4<f32> = u_xlat7;
    let x_2436 : vec4<f32> = u_xlat1;
    let x_2439 : vec4<f32> = u_xlat6;
    let x_2441 : vec3<f32> = ((vec3<f32>(x_2434.x, x_2434.y, x_2434.z) * vec3<f32>(x_2436.y, x_2436.z, x_2436.w)) + vec3<f32>(x_2439.x, x_2439.y, x_2439.z));
    let x_2442 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2441.x, x_2441.y, x_2441.z, x_2442.w);

    continuing {
      let x_2444 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2444 + bitcast<u32>(1i));
    }
  }
  let x_2446 : vec4<f32> = u_xlat3;
  let x_2448 : vec4<f32> = u_xlat1;
  let x_2451 : vec4<f32> = u_xlat4;
  let x_2453 : vec3<f32> = ((vec3<f32>(x_2446.x, x_2446.y, x_2446.z) * vec3<f32>(x_2448.y, x_2448.z, x_2448.w)) + vec3<f32>(x_2451.x, x_2451.y, x_2451.z));
  let x_2454 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2453.x, x_2453.y, x_2453.z, x_2454.w);
  let x_2456 : vec4<f32> = u_xlat6;
  let x_2458 : vec4<f32> = u_xlat1;
  let x_2460 : vec3<f32> = (vec3<f32>(x_2456.x, x_2456.y, x_2456.z) + vec3<f32>(x_2458.x, x_2458.y, x_2458.z));
  let x_2461 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2460.x, x_2460.y, x_2460.z, x_2461.w);
  let x_2463 : f32 = u_xlat18;
  let x_2464 : f32 = u_xlat18;
  u_xlat18 = (x_2463 * -(x_2464));
  let x_2467 : f32 = u_xlat18;
  u_xlat18 = exp2(x_2467);
  let x_2469 : vec4<f32> = u_xlat1;
  let x_2473 : vec4<f32> = x_44.unity_FogColor;
  let x_2476 : vec3<f32> = (vec3<f32>(x_2469.x, x_2469.y, x_2469.z) + -(vec3<f32>(x_2473.x, x_2473.y, x_2473.z)));
  let x_2477 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2476.x, x_2476.y, x_2476.z, x_2477.w);
  let x_2481 : f32 = u_xlat18;
  let x_2483 : vec4<f32> = u_xlat1;
  let x_2487 : vec4<f32> = x_44.unity_FogColor;
  let x_2489 : vec3<f32> = ((vec3<f32>(x_2481, x_2481, x_2481) * vec3<f32>(x_2483.x, x_2483.y, x_2483.z)) + vec3<f32>(x_2487.x, x_2487.y, x_2487.z));
  let x_2490 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2489.x, x_2489.y, x_2489.z, x_2490.w);
  let x_2493 : f32 = x_57.x_Surface;
  u_xlatb18 = (x_2493 == 1.0f);
  let x_2495 : bool = u_xlatb18;
  let x_2496 : bool = u_xlatb36;
  u_xlatb18 = (x_2495 | x_2496);
  let x_2498 : bool = u_xlatb18;
  if (x_2498) {
    let x_2503 : f32 = u_xlat0.x;
    x_2499 = x_2503;
  } else {
    x_2499 = 1.0f;
  }
  let x_2505 : f32 = x_2499;
  SV_Target0.w = x_2505;
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

