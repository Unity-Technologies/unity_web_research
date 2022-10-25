struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
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

@group(0) @binding(12) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(5) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_433 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_500 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_692 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_963 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1077 : AdditionalLightsCookies;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat27 : vec2<f32>;
  var u_xlat39 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat5 : vec3<f32>;
  var x_188 : f32;
  var x_201 : f32;
  var x_212 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat40 : f32;
  var u_xlat43 : f32;
  var u_xlat44 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlatb19 : bool;
  var u_xlat19 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat45 : f32;
  var x_588 : f32;
  var x_599 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu39 : u32;
  var u_xlatb1 : vec3<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatu10 : u32;
  var u_xlati23 : i32;
  var u_xlati10 : i32;
  var u_xlati36 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlatb37 : vec2<bool>;
  var u_xlat37 : vec2<f32>;
  var x_1397 : f32;
  var x_1410 : f32;
  var u_xlat49 : f32;
  var x_1472 : f32;
  var x_1483 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1624 : f32;
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
  let x_59 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_44.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_59, x_61);
  u_xlat1 = vec2<f32>(x_62.x, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = x_69.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_65.w, x_65.x, x_65.y, x_65.z) * vec4<f32>(x_73.w, x_73.x, x_73.y, x_73.z));
  let x_83 : vec2<f32> = vs_TEXCOORD0;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_83, x_85);
  u_xlat3 = vec3<f32>(x_86.x, x_86.y, x_86.w);
  let x_90 : f32 = u_xlat3.x;
  let x_93 : f32 = u_xlat3.z;
  u_xlat3.x = (x_90 * x_93);
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat27 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat27;
  let x_107 : vec2<f32> = u_xlat27;
  u_xlat39 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat39;
  u_xlat39 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat39;
  u_xlat39 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat39;
  u_xlat39 = sqrt(x_114);
  let x_116 : f32 = u_xlat39;
  u_xlat39 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat27;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat27 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat16.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat16.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_163 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb16 = (x_163 == 0.0f);
  let x_169 : vec3<f32> = vs_TEXCOORD1;
  let x_174 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_169) + x_174);
  let x_177 : vec3<f32> = u_xlat4;
  let x_178 : vec3<f32> = u_xlat4;
  u_xlat29 = dot(x_177, x_178);
  let x_180 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_180);
  let x_182 : f32 = u_xlat29;
  let x_184 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_182, x_182, x_182) * x_184);
  let x_187 : bool = u_xlatb16;
  if (x_187) {
    let x_192 : f32 = u_xlat4.x;
    x_188 = x_192;
  } else {
    let x_197 : f32 = x_44.unity_MatrixV[0i].z;
    x_188 = x_197;
  }
  let x_198 : f32 = x_188;
  u_xlat5.x = x_198;
  let x_200 : bool = u_xlatb16;
  if (x_200) {
    let x_205 : f32 = u_xlat4.y;
    x_201 = x_205;
  } else {
    let x_208 : f32 = x_44.unity_MatrixV[1i].z;
    x_201 = x_208;
  }
  let x_209 : f32 = x_201;
  u_xlat5.y = x_209;
  let x_211 : bool = u_xlatb16;
  if (x_211) {
    let x_216 : f32 = u_xlat4.z;
    x_212 = x_216;
  } else {
    let x_219 : f32 = x_44.unity_MatrixV[2i].z;
    x_212 = x_219;
  }
  let x_220 : f32 = x_212;
  u_xlat5.z = x_220;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  let x_226 : vec4<f32> = vs_TEXCOORD3;
  u_xlat16 = (vec3<f32>(x_223.z, x_223.x, x_223.y) * vec3<f32>(x_226.y, x_226.z, x_226.x));
  let x_229 : vec3<f32> = vs_TEXCOORD2;
  let x_231 : vec4<f32> = vs_TEXCOORD3;
  let x_234 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_229.y, x_229.z, x_229.x) * vec3<f32>(x_231.z, x_231.x, x_231.y)) + -(x_234));
  let x_237 : vec3<f32> = u_xlat16;
  let x_238 : vec4<f32> = vs_TEXCOORD3;
  u_xlat16 = (x_237 * vec3<f32>(x_238.w, x_238.w, x_238.w));
  let x_241 : vec2<f32> = u_xlat27;
  let x_243 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_241.y, x_241.y, x_241.y) * x_243);
  let x_245 : vec2<f32> = u_xlat27;
  let x_247 : vec4<f32> = vs_TEXCOORD3;
  let x_250 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_245.x, x_245.x, x_245.x) * vec3<f32>(x_247.x, x_247.y, x_247.z)) + x_250);
  let x_252 : f32 = u_xlat39;
  let x_254 : vec3<f32> = vs_TEXCOORD2;
  let x_256 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_252, x_252, x_252) * x_254) + x_256);
  let x_258 : vec3<f32> = u_xlat16;
  let x_259 : vec3<f32> = u_xlat16;
  u_xlat39 = dot(x_258, x_259);
  let x_261 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_261);
  let x_263 : f32 = u_xlat39;
  let x_265 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_263, x_263, x_263) * x_265);
  let x_273 : vec2<f32> = vs_TEXCOORD8;
  let x_275 : f32 = x_44.x_GlobalMipBias.x;
  let x_276 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_273, x_275);
  u_xlat4 = vec3<f32>(x_276.x, x_276.y, x_276.z);
  let x_280 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_281 : vec2<f32> = vec2<f32>(x_280.x, x_280.y);
  u_xlat27 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_281.x, x_281.y));
  let x_287 : vec2<f32> = u_xlat27;
  let x_288 : vec4<f32> = hlslcc_FragCoord;
  let x_290 : vec2<f32> = (x_287 * vec2<f32>(x_288.x, x_288.y));
  let x_291 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_290.x, x_290.y, x_291.z, x_291.w);
  let x_294 : f32 = u_xlat6.y;
  let x_296 : f32 = x_44.x_ScaleBiasRt.x;
  let x_299 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat39 = ((x_294 * x_296) + x_299);
  let x_301 : f32 = u_xlat39;
  u_xlat6.z = (-(x_301) + 1.0f);
  let x_306 : f32 = u_xlat1.x;
  u_xlat39 = ((-(x_306) * 0.959999979f) + 0.959999979f);
  let x_312 : f32 = u_xlat1.y;
  let x_314 : f32 = x_69.x_Smoothness;
  let x_316 : f32 = u_xlat39;
  u_xlat27.x = ((x_312 * x_314) + -(x_316));
  let x_321 : f32 = u_xlat39;
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat15 = (vec3<f32>(x_321, x_321, x_321) * vec3<f32>(x_323.y, x_323.z, x_323.w));
  let x_326 : vec4<f32> = u_xlat0;
  let x_329 : vec4<f32> = x_69.x_BaseColor;
  let x_334 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_329.x, x_329.y, x_329.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_335 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec2<f32> = u_xlat1;
  let x_339 : vec4<f32> = u_xlat0;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.x, x_337.x) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_345 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_348 : f32 = u_xlat1.y;
  let x_351 : f32 = x_69.x_Smoothness;
  u_xlat39 = ((-(x_348) * x_351) + 1.0f);
  let x_354 : f32 = u_xlat39;
  let x_355 : f32 = u_xlat39;
  u_xlat1.x = (x_354 * x_355);
  let x_359 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_359, 0.0078125f);
  let x_365 : f32 = u_xlat1.x;
  let x_367 : f32 = u_xlat1.x;
  u_xlat14 = (x_365 * x_367);
  let x_370 : f32 = u_xlat27.x;
  u_xlat27.x = (x_370 + 1.0f);
  let x_374 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_374, 0.0f, 1.0f);
  let x_379 : f32 = u_xlat1.x;
  u_xlat40 = ((x_379 * 4.0f) + 2.0f);
  let x_389 : vec4<f32> = u_xlat6;
  let x_392 : f32 = x_44.x_GlobalMipBias.x;
  let x_393 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_389.x, x_389.z), x_392);
  u_xlat43 = x_393.x;
  let x_396 : f32 = u_xlat43;
  u_xlat44 = (x_396 + -1.0f);
  let x_400 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_401 : f32 = u_xlat44;
  u_xlat44 = ((x_400 * x_401) + 1.0f);
  let x_405 : f32 = u_xlat3.x;
  let x_406 : f32 = u_xlat43;
  u_xlat3.x = min(x_405, x_406);
  let x_411 : vec4<f32> = vs_TEXCOORD6;
  let x_412 : vec2<f32> = vec2<f32>(x_411.x, x_411.y);
  let x_414 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_412.x, x_412.y, x_414);
  let x_426 : vec3<f32> = txVec0;
  let x_428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_426.xy, x_426.z);
  u_xlat43 = x_428;
  let x_435 : f32 = x_433.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_435) + 1.0f);
  let x_439 : f32 = u_xlat43;
  let x_441 : f32 = x_433.x_MainLightShadowParams.x;
  let x_444 : f32 = u_xlat6.x;
  u_xlat43 = ((x_439 * x_441) + x_444);
  let x_448 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_448);
  let x_452 : f32 = vs_TEXCOORD6.z;
  u_xlatb19 = (x_452 >= 1.0f);
  let x_454 : bool = u_xlatb19;
  let x_455 : bool = u_xlatb6;
  u_xlatb6 = (x_454 | x_455);
  let x_457 : bool = u_xlatb6;
  let x_458 : f32 = u_xlat43;
  u_xlat43 = select(x_458, 1.0f, x_457);
  let x_460 : vec3<f32> = vs_TEXCOORD1;
  let x_462 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_464 : vec3<f32> = (x_460 + -(x_462));
  let x_465 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat6;
  let x_469 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_467.x, x_467.y, x_467.z), vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_474 : f32 = u_xlat6.x;
  let x_476 : f32 = x_433.x_MainLightShadowParams.z;
  let x_479 : f32 = x_433.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_474 * x_476) + x_479);
  let x_483 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_483, 0.0f, 1.0f);
  let x_487 : f32 = u_xlat43;
  u_xlat19 = (-(x_487) + 1.0f);
  let x_491 : f32 = u_xlat6.x;
  let x_492 : f32 = u_xlat19;
  let x_494 : f32 = u_xlat43;
  u_xlat43 = ((x_491 * x_492) + x_494);
  let x_502 : f32 = x_500.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_502 == -1.0f));
  let x_504 : bool = u_xlatb6;
  if (x_504) {
    let x_507 : vec3<f32> = vs_TEXCOORD1;
    let x_510 : vec4<f32> = x_500.x_MainLightWorldToLight[1i];
    let x_512 : vec2<f32> = (vec2<f32>(x_507.y, x_507.y) * vec2<f32>(x_510.x, x_510.y));
    let x_513 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_512.x, x_512.y, x_513.z, x_513.w);
    let x_516 : vec4<f32> = x_500.x_MainLightWorldToLight[0i];
    let x_518 : vec3<f32> = vs_TEXCOORD1;
    let x_521 : vec4<f32> = u_xlat6;
    let x_523 : vec2<f32> = ((vec2<f32>(x_516.x, x_516.y) * vec2<f32>(x_518.x, x_518.x)) + vec2<f32>(x_521.x, x_521.y));
    let x_524 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
    let x_527 : vec4<f32> = x_500.x_MainLightWorldToLight[2i];
    let x_529 : vec3<f32> = vs_TEXCOORD1;
    let x_532 : vec4<f32> = u_xlat6;
    let x_534 : vec2<f32> = ((vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_529.z, x_529.z)) + vec2<f32>(x_532.x, x_532.y));
    let x_535 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
    let x_537 : vec4<f32> = u_xlat6;
    let x_541 : vec4<f32> = x_500.x_MainLightWorldToLight[3i];
    let x_543 : vec2<f32> = (vec2<f32>(x_537.x, x_537.y) + vec2<f32>(x_541.x, x_541.y));
    let x_544 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_544.z, x_544.w);
    let x_546 : vec4<f32> = u_xlat6;
    let x_551 : vec2<f32> = ((vec2<f32>(x_546.x, x_546.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_552 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
    let x_559 : vec4<f32> = u_xlat6;
    let x_562 : f32 = x_44.x_GlobalMipBias.x;
    let x_563 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_559.x, x_559.y), x_562);
    u_xlat6 = x_563;
    let x_568 : f32 = x_500.x_MainLightCookieTextureFormat;
    let x_570 : f32 = x_500.x_MainLightCookieTextureFormat;
    let x_572 : f32 = x_500.x_MainLightCookieTextureFormat;
    let x_574 : f32 = x_500.x_MainLightCookieTextureFormat;
    let x_575 : vec4<f32> = vec4<f32>(x_568, x_570, x_572, x_574);
    let x_583 : vec4<bool> = (vec4<f32>(x_575.x, x_575.y, x_575.z, x_575.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_583.x, x_583.y);
    let x_587 : bool = u_xlatb7.y;
    if (x_587) {
      let x_592 : f32 = u_xlat6.w;
      x_588 = x_592;
    } else {
      let x_595 : f32 = u_xlat6.x;
      x_588 = x_595;
    }
    let x_596 : f32 = x_588;
    u_xlat45 = x_596;
    let x_598 : bool = u_xlatb7.x;
    if (x_598) {
      let x_602 : vec4<f32> = u_xlat6;
      x_599 = vec3<f32>(x_602.x, x_602.y, x_602.z);
    } else {
      let x_605 : f32 = u_xlat45;
      x_599 = vec3<f32>(x_605, x_605, x_605);
    }
    let x_607 : vec3<f32> = x_599;
    let x_608 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_614 : vec4<f32> = u_xlat6;
  let x_617 : vec4<f32> = x_44.x_MainLightColor;
  let x_619 : vec3<f32> = (vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : f32 = u_xlat44;
  let x_624 : vec4<f32> = u_xlat6;
  let x_626 : vec3<f32> = (vec3<f32>(x_622, x_622, x_622) * vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec3<f32> = u_xlat5;
  let x_631 : vec3<f32> = u_xlat16;
  u_xlat45 = dot(-(x_629), x_631);
  let x_633 : f32 = u_xlat45;
  let x_634 : f32 = u_xlat45;
  u_xlat45 = (x_633 + x_634);
  let x_637 : vec3<f32> = u_xlat16;
  let x_638 : f32 = u_xlat45;
  let x_642 : vec3<f32> = u_xlat5;
  let x_644 : vec3<f32> = ((x_637 * -(vec3<f32>(x_638, x_638, x_638))) + -(x_642));
  let x_645 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec3<f32> = u_xlat16;
  let x_648 : vec3<f32> = u_xlat5;
  u_xlat45 = dot(x_647, x_648);
  let x_650 : f32 = u_xlat45;
  u_xlat45 = clamp(x_650, 0.0f, 1.0f);
  let x_652 : f32 = u_xlat45;
  u_xlat45 = (-(x_652) + 1.0f);
  let x_655 : f32 = u_xlat45;
  let x_656 : f32 = u_xlat45;
  u_xlat45 = (x_655 * x_656);
  let x_658 : f32 = u_xlat45;
  let x_659 : f32 = u_xlat45;
  u_xlat45 = (x_658 * x_659);
  let x_662 : f32 = u_xlat39;
  u_xlat46 = ((-(x_662) * 0.699999988f) + 1.700000048f);
  let x_668 : f32 = u_xlat39;
  let x_669 : f32 = u_xlat46;
  u_xlat39 = (x_668 * x_669);
  let x_671 : f32 = u_xlat39;
  u_xlat39 = (x_671 * 6.0f);
  let x_682 : vec4<f32> = u_xlat7;
  let x_684 : f32 = u_xlat39;
  let x_685 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_682.x, x_682.y, x_682.z), x_684);
  u_xlat7 = x_685;
  let x_687 : f32 = u_xlat7.w;
  u_xlat39 = (x_687 + -1.0f);
  let x_694 : f32 = x_692.unity_SpecCube0_HDR.w;
  let x_695 : f32 = u_xlat39;
  u_xlat39 = ((x_694 * x_695) + 1.0f);
  let x_698 : f32 = u_xlat39;
  u_xlat39 = max(x_698, 0.0f);
  let x_700 : f32 = u_xlat39;
  u_xlat39 = log2(x_700);
  let x_702 : f32 = u_xlat39;
  let x_704 : f32 = x_692.unity_SpecCube0_HDR.y;
  u_xlat39 = (x_702 * x_704);
  let x_706 : f32 = u_xlat39;
  u_xlat39 = exp2(x_706);
  let x_708 : f32 = u_xlat39;
  let x_710 : f32 = x_692.unity_SpecCube0_HDR.x;
  u_xlat39 = (x_708 * x_710);
  let x_712 : vec4<f32> = u_xlat7;
  let x_714 : f32 = u_xlat39;
  let x_716 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) * vec3<f32>(x_714, x_714, x_714));
  let x_717 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_720 : vec2<f32> = u_xlat1;
  let x_722 : vec2<f32> = u_xlat1;
  u_xlat8 = ((vec2<f32>(x_720.x, x_720.x) * vec2<f32>(x_722.x, x_722.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_728 : f32 = u_xlat8.y;
  u_xlat39 = (1.0f / x_728);
  let x_731 : vec4<f32> = u_xlat0;
  let x_734 : vec2<f32> = u_xlat27;
  u_xlat21 = (-(vec3<f32>(x_731.x, x_731.y, x_731.z)) + vec3<f32>(x_734.x, x_734.x, x_734.x));
  let x_737 : f32 = u_xlat45;
  let x_739 : vec3<f32> = u_xlat21;
  let x_741 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_737, x_737, x_737) * x_739) + vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : f32 = u_xlat39;
  let x_746 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_744, x_744, x_744) * x_746);
  let x_748 : vec4<f32> = u_xlat7;
  let x_750 : vec3<f32> = u_xlat21;
  let x_751 : vec3<f32> = (vec3<f32>(x_748.x, x_748.y, x_748.z) * x_750);
  let x_752 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : vec3<f32> = u_xlat4;
  let x_755 : vec3<f32> = u_xlat15;
  let x_757 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_754 * x_755) + vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : f32 = u_xlat43;
  let x_763 : f32 = x_692.unity_LightData.z;
  u_xlat39 = (x_760 * x_763);
  let x_765 : vec3<f32> = u_xlat16;
  let x_767 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_765, vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_772 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_772, 0.0f, 1.0f);
  let x_775 : f32 = u_xlat39;
  let x_777 : f32 = u_xlat1.x;
  u_xlat39 = (x_775 * x_777);
  let x_779 : f32 = u_xlat39;
  let x_781 : vec4<f32> = u_xlat6;
  let x_783 : vec3<f32> = (vec3<f32>(x_779, x_779, x_779) * vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_784 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec3<f32> = u_xlat5;
  let x_788 : vec4<f32> = x_44.x_MainLightPosition;
  let x_790 : vec3<f32> = (x_786 + vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_791 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : vec4<f32> = u_xlat7;
  let x_795 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_793.x, x_793.y, x_793.z), vec3<f32>(x_795.x, x_795.y, x_795.z));
  let x_798 : f32 = u_xlat39;
  u_xlat39 = max(x_798, 1.17549435e-37f);
  let x_801 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_801);
  let x_803 : f32 = u_xlat39;
  let x_805 : vec4<f32> = u_xlat7;
  let x_807 : vec3<f32> = (vec3<f32>(x_803, x_803, x_803) * vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec3<f32> = u_xlat16;
  let x_811 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(x_810, vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : f32 = u_xlat39;
  u_xlat39 = clamp(x_814, 0.0f, 1.0f);
  let x_817 : vec4<f32> = x_44.x_MainLightPosition;
  let x_819 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_817.x, x_817.y, x_817.z), vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_824 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_824, 0.0f, 1.0f);
  let x_827 : f32 = u_xlat39;
  let x_828 : f32 = u_xlat39;
  u_xlat39 = (x_827 * x_828);
  let x_830 : f32 = u_xlat39;
  let x_832 : f32 = u_xlat8.x;
  u_xlat39 = ((x_830 * x_832) + 1.000010014f);
  let x_837 : f32 = u_xlat1.x;
  let x_839 : f32 = u_xlat1.x;
  u_xlat1.x = (x_837 * x_839);
  let x_842 : f32 = u_xlat39;
  let x_843 : f32 = u_xlat39;
  u_xlat39 = (x_842 * x_843);
  let x_846 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_846, 0.100000001f);
  let x_850 : f32 = u_xlat39;
  let x_852 : f32 = u_xlat1.x;
  u_xlat39 = (x_850 * x_852);
  let x_854 : f32 = u_xlat40;
  let x_855 : f32 = u_xlat39;
  u_xlat39 = (x_854 * x_855);
  let x_857 : f32 = u_xlat14;
  let x_858 : f32 = u_xlat39;
  u_xlat39 = (x_857 / x_858);
  let x_860 : vec4<f32> = u_xlat0;
  let x_862 : f32 = u_xlat39;
  let x_865 : vec3<f32> = u_xlat15;
  let x_866 : vec3<f32> = ((vec3<f32>(x_860.x, x_860.y, x_860.z) * vec3<f32>(x_862, x_862, x_862)) + x_865);
  let x_867 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec4<f32> = u_xlat6;
  let x_871 : vec4<f32> = u_xlat7;
  let x_873 : vec3<f32> = (vec3<f32>(x_869.x, x_869.y, x_869.z) * vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_874 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_877 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_879 : f32 = x_692.unity_LightData.y;
  u_xlat39 = min(x_877, x_879);
  let x_883 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_883));
  let x_890 : f32 = x_500.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_892 : f32 = x_500.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_894 : f32 = x_500.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_896 : f32 = x_500.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_897 : vec4<f32> = vec4<f32>(x_890, x_892, x_894, x_896);
  let x_904 : vec4<bool> = (vec4<f32>(x_897.x, x_897.y, x_897.z, x_897.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_905 : vec2<bool> = vec2<bool>(x_904.x, x_904.z);
  let x_906 : vec3<bool> = u_xlatb1;
  u_xlatb1 = vec3<bool>(x_905.x, x_906.y, x_905.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_917 : u32 = u_xlatu_loop_1;
    let x_918 : u32 = u_xlatu39;
    if ((x_917 < x_918)) {
    } else {
      break;
    }
    let x_921 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_921 >> 2u);
    let x_925 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_925 & 3u));
    let x_928 : u32 = u_xlatu45;
    let x_931 : vec4<f32> = x_692.unity_LightIndices[bitcast<i32>(x_928)];
    let x_941 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_946 : vec4<u32> = indexable[x_941];
    u_xlat45 = dot(x_931, bitcast<vec4<f32>>(x_946));
    let x_949 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_949));
    let x_952 : vec3<f32> = vs_TEXCOORD1;
    let x_964 : u32 = u_xlatu45;
    let x_967 : vec4<f32> = x_963.x_AdditionalLightsPosition[bitcast<i32>(x_964)];
    let x_970 : u32 = u_xlatu45;
    let x_973 : vec4<f32> = x_963.x_AdditionalLightsPosition[bitcast<i32>(x_970)];
    u_xlat21 = ((-(x_952) * vec3<f32>(x_967.w, x_967.w, x_967.w)) + vec3<f32>(x_973.x, x_973.y, x_973.z));
    let x_976 : vec3<f32> = u_xlat21;
    let x_977 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_976, x_977);
    let x_979 : f32 = u_xlat46;
    u_xlat46 = max(x_979, 6.10351562e-05f);
    let x_983 : f32 = u_xlat46;
    u_xlat9 = inverseSqrt(x_983);
    let x_986 : vec3<f32> = u_xlat21;
    let x_987 : f32 = u_xlat9;
    u_xlat22 = (x_986 * vec3<f32>(x_987, x_987, x_987));
    let x_991 : f32 = u_xlat46;
    u_xlat10.x = (1.0f / x_991);
    let x_994 : f32 = u_xlat46;
    let x_995 : u32 = u_xlatu45;
    let x_998 : f32 = x_963.x_AdditionalLightsAttenuation[bitcast<i32>(x_995)].x;
    u_xlat46 = (x_994 * x_998);
    let x_1000 : f32 = u_xlat46;
    let x_1002 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1000) * x_1002) + 1.0f);
    let x_1005 : f32 = u_xlat46;
    u_xlat46 = max(x_1005, 0.0f);
    let x_1007 : f32 = u_xlat46;
    let x_1008 : f32 = u_xlat46;
    u_xlat46 = (x_1007 * x_1008);
    let x_1010 : f32 = u_xlat46;
    let x_1012 : f32 = u_xlat10.x;
    u_xlat46 = (x_1010 * x_1012);
    let x_1014 : u32 = u_xlatu45;
    let x_1017 : vec4<f32> = x_963.x_AdditionalLightsSpotDir[bitcast<i32>(x_1014)];
    let x_1019 : vec3<f32> = u_xlat22;
    u_xlat10.x = dot(vec3<f32>(x_1017.x, x_1017.y, x_1017.z), x_1019);
    let x_1023 : f32 = u_xlat10.x;
    let x_1024 : u32 = u_xlatu45;
    let x_1027 : f32 = x_963.x_AdditionalLightsAttenuation[bitcast<i32>(x_1024)].z;
    let x_1029 : u32 = u_xlatu45;
    let x_1032 : f32 = x_963.x_AdditionalLightsAttenuation[bitcast<i32>(x_1029)].w;
    u_xlat10.x = ((x_1023 * x_1027) + x_1032);
    let x_1036 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1036, 0.0f, 1.0f);
    let x_1040 : f32 = u_xlat10.x;
    let x_1042 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1040 * x_1042);
    let x_1045 : f32 = u_xlat46;
    let x_1047 : f32 = u_xlat10.x;
    u_xlat46 = (x_1045 * x_1047);
    let x_1050 : u32 = u_xlatu45;
    u_xlatu10 = (x_1050 >> 5u);
    let x_1053 : u32 = u_xlatu45;
    u_xlati23 = (1i << bitcast<u32>((bitcast<i32>(x_1053) & 31i)));
    let x_1059 : i32 = u_xlati23;
    let x_1061 : u32 = u_xlatu10;
    let x_1064 : f32 = x_500.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1061)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_1059) & bitcast<u32>(x_1064)));
    let x_1068 : i32 = u_xlati10;
    if ((x_1068 != 0i)) {
      let x_1078 : u32 = u_xlatu45;
      let x_1081 : f32 = x_1077.x_AdditionalLightsLightTypes[bitcast<i32>(x_1078)].el;
      u_xlati10 = i32(x_1081);
      let x_1083 : i32 = u_xlati10;
      u_xlati23 = select(1i, 0i, (x_1083 != 0i));
      let x_1087 : u32 = u_xlatu45;
      u_xlati36 = (bitcast<i32>(x_1087) << bitcast<u32>(2i));
      let x_1090 : i32 = u_xlati23;
      if ((x_1090 != 0i)) {
        let x_1095 : vec3<f32> = vs_TEXCOORD1;
        let x_1097 : i32 = u_xlati36;
        let x_1100 : i32 = u_xlati36;
        let x_1104 : vec4<f32> = x_1077.x_AdditionalLightsWorldToLights[((x_1097 + 1i) / 4i)][((x_1100 + 1i) % 4i)];
        let x_1106 : vec3<f32> = (vec3<f32>(x_1095.y, x_1095.y, x_1095.y) * vec3<f32>(x_1104.x, x_1104.y, x_1104.w));
        let x_1107 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
        let x_1109 : i32 = u_xlati36;
        let x_1111 : i32 = u_xlati36;
        let x_1114 : vec4<f32> = x_1077.x_AdditionalLightsWorldToLights[(x_1109 / 4i)][(x_1111 % 4i)];
        let x_1116 : vec3<f32> = vs_TEXCOORD1;
        let x_1119 : vec4<f32> = u_xlat11;
        let x_1121 : vec3<f32> = ((vec3<f32>(x_1114.x, x_1114.y, x_1114.w) * vec3<f32>(x_1116.x, x_1116.x, x_1116.x)) + vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
        let x_1122 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
        let x_1124 : i32 = u_xlati36;
        let x_1127 : i32 = u_xlati36;
        let x_1131 : vec4<f32> = x_1077.x_AdditionalLightsWorldToLights[((x_1124 + 2i) / 4i)][((x_1127 + 2i) % 4i)];
        let x_1133 : vec3<f32> = vs_TEXCOORD1;
        let x_1136 : vec4<f32> = u_xlat11;
        let x_1138 : vec3<f32> = ((vec3<f32>(x_1131.x, x_1131.y, x_1131.w) * vec3<f32>(x_1133.z, x_1133.z, x_1133.z)) + vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
        let x_1139 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
        let x_1141 : vec4<f32> = u_xlat11;
        let x_1143 : i32 = u_xlati36;
        let x_1146 : i32 = u_xlati36;
        let x_1150 : vec4<f32> = x_1077.x_AdditionalLightsWorldToLights[((x_1143 + 3i) / 4i)][((x_1146 + 3i) % 4i)];
        let x_1152 : vec3<f32> = (vec3<f32>(x_1141.x, x_1141.y, x_1141.z) + vec3<f32>(x_1150.x, x_1150.y, x_1150.w));
        let x_1153 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
        let x_1156 : vec4<f32> = u_xlat11;
        let x_1158 : vec4<f32> = u_xlat11;
        let x_1160 : vec2<f32> = (vec2<f32>(x_1156.x, x_1156.y) / vec2<f32>(x_1158.z, x_1158.z));
        let x_1161 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1160.x, x_1161.y, x_1160.y);
        let x_1163 : vec3<f32> = u_xlat23;
        let x_1166 : vec2<f32> = ((vec2<f32>(x_1163.x, x_1163.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1167 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1166.x, x_1167.y, x_1166.y);
        let x_1169 : vec3<f32> = u_xlat23;
        let x_1173 : vec2<f32> = clamp(vec2<f32>(x_1169.x, x_1169.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1174 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1173.x, x_1174.y, x_1173.y);
        let x_1176 : u32 = u_xlatu45;
        let x_1179 : vec4<f32> = x_1077.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1176)];
        let x_1181 : vec3<f32> = u_xlat23;
        let x_1184 : u32 = u_xlatu45;
        let x_1187 : vec4<f32> = x_1077.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1184)];
        let x_1189 : vec2<f32> = ((vec2<f32>(x_1179.x, x_1179.y) * vec2<f32>(x_1181.x, x_1181.z)) + vec2<f32>(x_1187.z, x_1187.w));
        let x_1190 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1189.x, x_1190.y, x_1189.y);
      } else {
        let x_1194 : i32 = u_xlati10;
        u_xlatb10 = (x_1194 == 1i);
        let x_1196 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_1196);
        let x_1198 : i32 = u_xlati10;
        if ((x_1198 != 0i)) {
          let x_1202 : vec3<f32> = vs_TEXCOORD1;
          let x_1204 : i32 = u_xlati36;
          let x_1207 : i32 = u_xlati36;
          let x_1211 : vec4<f32> = x_1077.x_AdditionalLightsWorldToLights[((x_1204 + 1i) / 4i)][((x_1207 + 1i) % 4i)];
          let x_1213 : vec2<f32> = (vec2<f32>(x_1202.y, x_1202.y) * vec2<f32>(x_1211.x, x_1211.y));
          let x_1214 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1213.x, x_1213.y, x_1214.z, x_1214.w);
          let x_1216 : i32 = u_xlati36;
          let x_1218 : i32 = u_xlati36;
          let x_1221 : vec4<f32> = x_1077.x_AdditionalLightsWorldToLights[(x_1216 / 4i)][(x_1218 % 4i)];
          let x_1223 : vec3<f32> = vs_TEXCOORD1;
          let x_1226 : vec4<f32> = u_xlat11;
          let x_1228 : vec2<f32> = ((vec2<f32>(x_1221.x, x_1221.y) * vec2<f32>(x_1223.x, x_1223.x)) + vec2<f32>(x_1226.x, x_1226.y));
          let x_1229 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1228.x, x_1228.y, x_1229.z, x_1229.w);
          let x_1231 : i32 = u_xlati36;
          let x_1234 : i32 = u_xlati36;
          let x_1238 : vec4<f32> = x_1077.x_AdditionalLightsWorldToLights[((x_1231 + 2i) / 4i)][((x_1234 + 2i) % 4i)];
          let x_1240 : vec3<f32> = vs_TEXCOORD1;
          let x_1243 : vec4<f32> = u_xlat11;
          let x_1245 : vec2<f32> = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1240.z, x_1240.z)) + vec2<f32>(x_1243.x, x_1243.y));
          let x_1246 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
          let x_1248 : vec4<f32> = u_xlat11;
          let x_1250 : i32 = u_xlati36;
          let x_1253 : i32 = u_xlati36;
          let x_1257 : vec4<f32> = x_1077.x_AdditionalLightsWorldToLights[((x_1250 + 3i) / 4i)][((x_1253 + 3i) % 4i)];
          let x_1259 : vec2<f32> = (vec2<f32>(x_1248.x, x_1248.y) + vec2<f32>(x_1257.x, x_1257.y));
          let x_1260 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1259.x, x_1259.y, x_1260.z, x_1260.w);
          let x_1262 : vec4<f32> = u_xlat11;
          let x_1265 : vec2<f32> = ((vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1266 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1265.x, x_1265.y, x_1266.z, x_1266.w);
          let x_1268 : vec4<f32> = u_xlat11;
          let x_1270 : vec2<f32> = fract(vec2<f32>(x_1268.x, x_1268.y));
          let x_1271 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1270.x, x_1270.y, x_1271.z, x_1271.w);
          let x_1273 : u32 = u_xlatu45;
          let x_1276 : vec4<f32> = x_1077.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1273)];
          let x_1278 : vec4<f32> = u_xlat11;
          let x_1281 : u32 = u_xlatu45;
          let x_1284 : vec4<f32> = x_1077.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1281)];
          let x_1286 : vec2<f32> = ((vec2<f32>(x_1276.x, x_1276.y) * vec2<f32>(x_1278.x, x_1278.y)) + vec2<f32>(x_1284.z, x_1284.w));
          let x_1287 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1286.x, x_1287.y, x_1286.y);
        } else {
          let x_1290 : vec3<f32> = vs_TEXCOORD1;
          let x_1292 : i32 = u_xlati36;
          let x_1295 : i32 = u_xlati36;
          let x_1299 : vec4<f32> = x_1077.x_AdditionalLightsWorldToLights[((x_1292 + 1i) / 4i)][((x_1295 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_1290.y, x_1290.y, x_1290.y, x_1290.y) * x_1299);
          let x_1301 : i32 = u_xlati36;
          let x_1303 : i32 = u_xlati36;
          let x_1306 : vec4<f32> = x_1077.x_AdditionalLightsWorldToLights[(x_1301 / 4i)][(x_1303 % 4i)];
          let x_1307 : vec3<f32> = vs_TEXCOORD1;
          let x_1310 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1306 * vec4<f32>(x_1307.x, x_1307.x, x_1307.x, x_1307.x)) + x_1310);
          let x_1312 : i32 = u_xlati36;
          let x_1315 : i32 = u_xlati36;
          let x_1319 : vec4<f32> = x_1077.x_AdditionalLightsWorldToLights[((x_1312 + 2i) / 4i)][((x_1315 + 2i) % 4i)];
          let x_1320 : vec3<f32> = vs_TEXCOORD1;
          let x_1323 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1319 * vec4<f32>(x_1320.z, x_1320.z, x_1320.z, x_1320.z)) + x_1323);
          let x_1325 : vec4<f32> = u_xlat11;
          let x_1326 : i32 = u_xlati36;
          let x_1329 : i32 = u_xlati36;
          let x_1333 : vec4<f32> = x_1077.x_AdditionalLightsWorldToLights[((x_1326 + 3i) / 4i)][((x_1329 + 3i) % 4i)];
          u_xlat11 = (x_1325 + x_1333);
          let x_1335 : vec4<f32> = u_xlat11;
          let x_1337 : vec4<f32> = u_xlat11;
          let x_1339 : vec3<f32> = (vec3<f32>(x_1335.x, x_1335.y, x_1335.z) / vec3<f32>(x_1337.w, x_1337.w, x_1337.w));
          let x_1340 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
          let x_1342 : vec4<f32> = u_xlat11;
          let x_1344 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_1342.x, x_1342.y, x_1342.z), vec3<f32>(x_1344.x, x_1344.y, x_1344.z));
          let x_1349 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_1349);
          let x_1352 : vec4<f32> = u_xlat10;
          let x_1354 : vec4<f32> = u_xlat11;
          let x_1356 : vec3<f32> = (vec3<f32>(x_1352.x, x_1352.x, x_1352.x) * vec3<f32>(x_1354.x, x_1354.y, x_1354.z));
          let x_1357 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1357.w);
          let x_1359 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_1359.x, x_1359.y, x_1359.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1366 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_1366, 0.000001f);
          let x_1371 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_1371);
          let x_1375 : vec4<f32> = u_xlat10;
          let x_1377 : vec4<f32> = u_xlat11;
          u_xlat12 = (vec3<f32>(x_1375.x, x_1375.x, x_1375.x) * vec3<f32>(x_1377.z, x_1377.x, x_1377.y));
          let x_1381 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_1381);
          let x_1385 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_1385, 0.0f, 1.0f);
          let x_1389 : vec3<f32> = u_xlat12;
          let x_1392 : vec4<bool> = (vec4<f32>(x_1389.y, x_1389.z, x_1389.y, x_1389.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb37 = vec2<bool>(x_1392.x, x_1392.y);
          let x_1396 : bool = u_xlatb37.x;
          if (x_1396) {
            let x_1401 : f32 = u_xlat12.x;
            x_1397 = x_1401;
          } else {
            let x_1404 : f32 = u_xlat12.x;
            x_1397 = -(x_1404);
          }
          let x_1406 : f32 = x_1397;
          u_xlat37.x = x_1406;
          let x_1409 : bool = u_xlatb37.y;
          if (x_1409) {
            let x_1414 : f32 = u_xlat12.x;
            x_1410 = x_1414;
          } else {
            let x_1417 : f32 = u_xlat12.x;
            x_1410 = -(x_1417);
          }
          let x_1419 : f32 = x_1410;
          u_xlat37.y = x_1419;
          let x_1421 : vec4<f32> = u_xlat11;
          let x_1423 : vec4<f32> = u_xlat10;
          let x_1426 : vec2<f32> = u_xlat37;
          let x_1427 : vec2<f32> = ((vec2<f32>(x_1421.x, x_1421.y) * vec2<f32>(x_1423.x, x_1423.x)) + x_1426);
          let x_1428 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1427.x, x_1428.y, x_1427.y, x_1428.w);
          let x_1430 : vec4<f32> = u_xlat10;
          let x_1433 : vec2<f32> = ((vec2<f32>(x_1430.x, x_1430.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1434 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1433.x, x_1434.y, x_1433.y, x_1434.w);
          let x_1436 : vec4<f32> = u_xlat10;
          let x_1440 : vec2<f32> = clamp(vec2<f32>(x_1436.x, x_1436.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1441 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1440.x, x_1441.y, x_1440.y, x_1441.w);
          let x_1443 : u32 = u_xlatu45;
          let x_1446 : vec4<f32> = x_1077.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1443)];
          let x_1448 : vec4<f32> = u_xlat10;
          let x_1451 : u32 = u_xlatu45;
          let x_1454 : vec4<f32> = x_1077.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1451)];
          let x_1456 : vec2<f32> = ((vec2<f32>(x_1446.x, x_1446.y) * vec2<f32>(x_1448.x, x_1448.z)) + vec2<f32>(x_1454.z, x_1454.w));
          let x_1457 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1456.x, x_1457.y, x_1456.y);
        }
      }
      let x_1464 : vec3<f32> = u_xlat23;
      let x_1467 : f32 = x_44.x_GlobalMipBias.x;
      let x_1468 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1464.x, x_1464.z), x_1467);
      u_xlat10 = x_1468;
      let x_1471 : bool = u_xlatb1.z;
      if (x_1471) {
        let x_1476 : f32 = u_xlat10.w;
        x_1472 = x_1476;
      } else {
        let x_1479 : f32 = u_xlat10.x;
        x_1472 = x_1479;
      }
      let x_1480 : f32 = x_1472;
      u_xlat49 = x_1480;
      let x_1482 : bool = u_xlatb1.x;
      if (x_1482) {
        let x_1486 : vec4<f32> = u_xlat10;
        x_1483 = vec3<f32>(x_1486.x, x_1486.y, x_1486.z);
      } else {
        let x_1489 : f32 = u_xlat49;
        x_1483 = vec3<f32>(x_1489, x_1489, x_1489);
      }
      let x_1491 : vec3<f32> = x_1483;
      let x_1492 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1491.x, x_1491.y, x_1491.z, x_1492.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_1498 : vec4<f32> = u_xlat10;
    let x_1500 : u32 = u_xlatu45;
    let x_1503 : vec4<f32> = x_963.x_AdditionalLightsColor[bitcast<i32>(x_1500)];
    let x_1505 : vec3<f32> = (vec3<f32>(x_1498.x, x_1498.y, x_1498.z) * vec3<f32>(x_1503.x, x_1503.y, x_1503.z));
    let x_1506 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1506.w);
    let x_1508 : f32 = u_xlat44;
    let x_1510 : vec4<f32> = u_xlat10;
    let x_1512 : vec3<f32> = (vec3<f32>(x_1508, x_1508, x_1508) * vec3<f32>(x_1510.x, x_1510.y, x_1510.z));
    let x_1513 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1512.x, x_1512.y, x_1512.z, x_1513.w);
    let x_1515 : vec3<f32> = u_xlat16;
    let x_1516 : vec3<f32> = u_xlat22;
    u_xlat45 = dot(x_1515, x_1516);
    let x_1518 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1518, 0.0f, 1.0f);
    let x_1520 : f32 = u_xlat45;
    let x_1521 : f32 = u_xlat46;
    u_xlat45 = (x_1520 * x_1521);
    let x_1523 : f32 = u_xlat45;
    let x_1525 : vec4<f32> = u_xlat10;
    let x_1527 : vec3<f32> = (vec3<f32>(x_1523, x_1523, x_1523) * vec3<f32>(x_1525.x, x_1525.y, x_1525.z));
    let x_1528 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
    let x_1530 : vec3<f32> = u_xlat21;
    let x_1531 : f32 = u_xlat9;
    let x_1534 : vec3<f32> = u_xlat5;
    u_xlat21 = ((x_1530 * vec3<f32>(x_1531, x_1531, x_1531)) + x_1534);
    let x_1536 : vec3<f32> = u_xlat21;
    let x_1537 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_1536, x_1537);
    let x_1539 : f32 = u_xlat45;
    u_xlat45 = max(x_1539, 1.17549435e-37f);
    let x_1541 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1541);
    let x_1543 : f32 = u_xlat45;
    let x_1545 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1543, x_1543, x_1543) * x_1545);
    let x_1547 : vec3<f32> = u_xlat16;
    let x_1548 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_1547, x_1548);
    let x_1550 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1550, 0.0f, 1.0f);
    let x_1552 : vec3<f32> = u_xlat22;
    let x_1553 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_1552, x_1553);
    let x_1555 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1555, 0.0f, 1.0f);
    let x_1557 : f32 = u_xlat45;
    let x_1558 : f32 = u_xlat45;
    u_xlat45 = (x_1557 * x_1558);
    let x_1560 : f32 = u_xlat45;
    let x_1562 : f32 = u_xlat8.x;
    u_xlat45 = ((x_1560 * x_1562) + 1.000010014f);
    let x_1565 : f32 = u_xlat46;
    let x_1566 : f32 = u_xlat46;
    u_xlat46 = (x_1565 * x_1566);
    let x_1568 : f32 = u_xlat45;
    let x_1569 : f32 = u_xlat45;
    u_xlat45 = (x_1568 * x_1569);
    let x_1571 : f32 = u_xlat46;
    u_xlat46 = max(x_1571, 0.100000001f);
    let x_1573 : f32 = u_xlat45;
    let x_1574 : f32 = u_xlat46;
    u_xlat45 = (x_1573 * x_1574);
    let x_1576 : f32 = u_xlat40;
    let x_1577 : f32 = u_xlat45;
    u_xlat45 = (x_1576 * x_1577);
    let x_1579 : f32 = u_xlat14;
    let x_1580 : f32 = u_xlat45;
    u_xlat45 = (x_1579 / x_1580);
    let x_1582 : vec4<f32> = u_xlat0;
    let x_1584 : f32 = u_xlat45;
    let x_1587 : vec3<f32> = u_xlat15;
    u_xlat21 = ((vec3<f32>(x_1582.x, x_1582.y, x_1582.z) * vec3<f32>(x_1584, x_1584, x_1584)) + x_1587);
    let x_1589 : vec3<f32> = u_xlat21;
    let x_1590 : vec4<f32> = u_xlat10;
    let x_1593 : vec4<f32> = u_xlat7;
    let x_1595 : vec3<f32> = ((x_1589 * vec3<f32>(x_1590.x, x_1590.y, x_1590.z)) + vec3<f32>(x_1593.x, x_1593.y, x_1593.z));
    let x_1596 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1595.x, x_1595.y, x_1595.z, x_1596.w);

    continuing {
      let x_1598 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1598 + bitcast<u32>(1i));
    }
  }
  let x_1600 : vec3<f32> = u_xlat4;
  let x_1601 : vec3<f32> = u_xlat3;
  let x_1604 : vec4<f32> = u_xlat6;
  let x_1606 : vec3<f32> = ((x_1600 * vec3<f32>(x_1601.x, x_1601.x, x_1601.x)) + vec3<f32>(x_1604.x, x_1604.y, x_1604.z));
  let x_1607 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1606.x, x_1606.y, x_1606.z, x_1607.w);
  let x_1611 : vec4<f32> = u_xlat7;
  let x_1613 : vec4<f32> = u_xlat0;
  let x_1615 : vec3<f32> = (vec3<f32>(x_1611.x, x_1611.y, x_1611.z) + vec3<f32>(x_1613.x, x_1613.y, x_1613.z));
  let x_1616 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1616.w);
  let x_1621 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1621 == 1.0f);
  let x_1623 : bool = u_xlatb0;
  if (x_1623) {
    let x_1628 : f32 = u_xlat2.x;
    x_1624 = x_1628;
  } else {
    x_1624 = 1.0f;
  }
  let x_1630 : f32 = x_1624;
  SV_Target0.w = x_1630;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

