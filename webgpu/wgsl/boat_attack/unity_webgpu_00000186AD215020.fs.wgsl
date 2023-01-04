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

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
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

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_157 : UnityPerDraw;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_367 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1698 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2139 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2259 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb60 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat62 : f32;
  var u_xlat3 : vec3<f32>;
  var x_103 : f32;
  var x_117 : f32;
  var x_129 : f32;
  var u_xlat60 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlat64 : f32;
  var u_xlat25 : f32;
  var u_xlat45 : f32;
  var u_xlatb65 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlatb6 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat26 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec3<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat66 : f32;
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
  var u_xlatb26 : bool;
  var u_xlatb7 : vec2<bool>;
  var x_1783 : f32;
  var x_1794 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu63 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat47 : vec2<f32>;
  var u_xlatu47 : u32;
  var u_xlati67 : i32;
  var u_xlati47 : i32;
  var u_xlati69 : i32;
  var u_xlatb47 : bool;
  var u_xlatb51 : vec2<bool>;
  var u_xlat51 : vec2<f32>;
  var x_2560 : f32;
  var x_2573 : f32;
  var x_2625 : f32;
  var x_2637 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2791 : f32;
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
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb60 = (x_69 == 0.0f);
  let x_75 : vec3<f32> = vs_TEXCOORD1;
  let x_80 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_81 : vec3<f32> = (-(x_75) + x_80);
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_86 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat62 = dot(vec3<f32>(x_86.x, x_86.y, x_86.z), vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : f32 = u_xlat62;
  u_xlat62 = inverseSqrt(x_91);
  let x_93 : f32 = u_xlat62;
  let x_95 : vec4<f32> = u_xlat2;
  let x_97 : vec3<f32> = (vec3<f32>(x_93, x_93, x_93) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_102 : bool = u_xlatb60;
  if (x_102) {
    let x_107 : f32 = u_xlat2.x;
    x_103 = x_107;
  } else {
    let x_113 : f32 = x_44.unity_MatrixV[0i].z;
    x_103 = x_113;
  }
  let x_114 : f32 = x_103;
  u_xlat3.x = x_114;
  let x_116 : bool = u_xlatb60;
  if (x_116) {
    let x_122 : f32 = u_xlat2.y;
    x_117 = x_122;
  } else {
    let x_125 : f32 = x_44.unity_MatrixV[1i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.y = x_126;
  let x_128 : bool = u_xlatb60;
  if (x_128) {
    let x_133 : f32 = u_xlat2.z;
    x_129 = x_133;
  } else {
    let x_136 : f32 = x_44.unity_MatrixV[2i].z;
    x_129 = x_136;
  }
  let x_137 : f32 = x_129;
  u_xlat3.z = x_137;
  let x_141 : vec3<f32> = vs_TEXCOORD2;
  let x_142 : vec3<f32> = vs_TEXCOORD2;
  u_xlat60 = dot(x_141, x_142);
  let x_144 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_144);
  let x_146 : f32 = u_xlat60;
  let x_148 : vec3<f32> = vs_TEXCOORD2;
  let x_149 : vec3<f32> = (vec3<f32>(x_146, x_146, x_146) * x_148);
  let x_150 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  u_xlat2.w = 1.0f;
  let x_160 : vec4<f32> = x_157.unity_SHAr;
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_160, x_161);
  let x_166 : vec4<f32> = x_157.unity_SHAg;
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_166, x_167);
  let x_172 : vec4<f32> = x_157.unity_SHAb;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_172, x_173);
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_177.y, x_177.z, x_177.z, x_177.x) * vec4<f32>(x_179.x, x_179.y, x_179.z, x_179.z));
  let x_185 : vec4<f32> = x_157.unity_SHBr;
  let x_186 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_157.unity_SHBg;
  let x_192 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_191, x_192);
  let x_197 : vec4<f32> = x_157.unity_SHBb;
  let x_198 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_197, x_198);
  let x_202 : f32 = u_xlat2.y;
  let x_204 : f32 = u_xlat2.y;
  u_xlat60 = (x_202 * x_204);
  let x_207 : f32 = u_xlat2.x;
  let x_209 : f32 = u_xlat2.x;
  let x_211 : f32 = u_xlat60;
  u_xlat60 = ((x_207 * x_209) + -(x_211));
  let x_216 : vec4<f32> = x_157.unity_SHC;
  let x_218 : f32 = u_xlat60;
  let x_221 : vec4<f32> = u_xlat6;
  let x_223 : vec3<f32> = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_218, x_218, x_218)) + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec3<f32> = u_xlat4;
  let x_227 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_226 + vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_230, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_235 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_236 : vec2<f32> = vec2<f32>(x_235.x, x_235.y);
  let x_240 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_236.x, x_236.y));
  let x_241 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_240.x, x_240.y, x_241.z, x_241.w);
  let x_243 : vec4<f32> = u_xlat5;
  let x_245 : vec4<f32> = hlslcc_FragCoord;
  let x_247 : vec2<f32> = (vec2<f32>(x_243.x, x_243.y) * vec2<f32>(x_245.x, x_245.y));
  let x_248 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_247.x, x_247.y, x_248.z, x_248.w);
  let x_251 : f32 = u_xlat5.y;
  let x_254 : f32 = x_44.x_ScaleBiasRt.x;
  let x_257 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_251 * x_254) + x_257);
  let x_259 : f32 = u_xlat60;
  u_xlat5.z = (-(x_259) + 1.0f);
  let x_264 : f32 = x_57.x_Metallic;
  u_xlat60 = ((-(x_264) * 0.959999979f) + 0.959999979f);
  let x_269 : f32 = u_xlat60;
  let x_272 : f32 = x_57.x_Smoothness;
  u_xlat62 = (-(x_269) + x_272);
  let x_275 : f32 = u_xlat60;
  let x_277 : vec4<f32> = u_xlat1;
  u_xlat21 = (vec3<f32>(x_275, x_275, x_275) * vec3<f32>(x_277.y, x_277.z, x_277.w));
  let x_280 : vec4<f32> = u_xlat0;
  let x_283 : vec4<f32> = x_57.x_BaseColor;
  let x_288 : vec3<f32> = ((vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_283.x, x_283.y, x_283.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_289 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_292 : f32 = x_57.x_Metallic;
  let x_294 : f32 = x_57.x_Metallic;
  let x_296 : f32 = x_57.x_Metallic;
  let x_297 : vec3<f32> = vec3<f32>(x_292, x_294, x_296);
  let x_302 : vec4<f32> = u_xlat0;
  let x_307 : vec3<f32> = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_302.x, x_302.y, x_302.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_308 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_311 : f32 = x_57.x_Smoothness;
  u_xlat60 = (-(x_311) + 1.0f);
  let x_315 : f32 = u_xlat60;
  let x_316 : f32 = u_xlat60;
  u_xlat63 = (x_315 * x_316);
  let x_318 : f32 = u_xlat63;
  u_xlat63 = max(x_318, 0.0078125f);
  let x_322 : f32 = u_xlat63;
  let x_323 : f32 = u_xlat63;
  u_xlat64 = (x_322 * x_323);
  let x_325 : f32 = u_xlat62;
  u_xlat62 = (x_325 + 1.0f);
  let x_327 : f32 = u_xlat62;
  u_xlat62 = clamp(x_327, 0.0f, 1.0f);
  let x_330 : f32 = u_xlat63;
  u_xlat25 = ((x_330 * 4.0f) + 2.0f);
  let x_340 : vec4<f32> = u_xlat5;
  let x_343 : f32 = x_44.x_GlobalMipBias.x;
  let x_344 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_340.x, x_340.z), x_343);
  u_xlat5.x = x_344.x;
  let x_349 : f32 = u_xlat5.x;
  u_xlat45 = (x_349 + -1.0f);
  let x_354 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_355 : f32 = u_xlat45;
  u_xlat45 = ((x_354 * x_355) + 1.0f);
  let x_359 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_359, 1.0f);
  let x_369 : f32 = x_367.x_MainLightShadowParams.y;
  u_xlatb65 = (0.0f < x_369);
  let x_371 : bool = u_xlatb65;
  if (x_371) {
    let x_375 : f32 = x_367.x_MainLightShadowParams.y;
    u_xlatb65 = (x_375 == 1.0f);
    let x_377 : bool = u_xlatb65;
    if (x_377) {
      let x_381 : vec4<f32> = vs_TEXCOORD6;
      let x_384 : vec4<f32> = x_367.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_381.x, x_381.y, x_381.x, x_381.y) + x_384);
      let x_387 : vec4<f32> = u_xlat6;
      let x_388 : vec2<f32> = vec2<f32>(x_387.x, x_387.y);
      let x_390 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_388.x, x_388.y, x_390);
      let x_403 : vec3<f32> = txVec0;
      let x_405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_403.xy, x_403.z);
      u_xlat7.x = x_405;
      let x_408 : vec4<f32> = u_xlat6;
      let x_409 : vec2<f32> = vec2<f32>(x_408.z, x_408.w);
      let x_411 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_409.x, x_409.y, x_411);
      let x_418 : vec3<f32> = txVec1;
      let x_420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_418.xy, x_418.z);
      u_xlat7.y = x_420;
      let x_422 : vec4<f32> = vs_TEXCOORD6;
      let x_425 : vec4<f32> = x_367.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_422.x, x_422.y, x_422.x, x_422.y) + x_425);
      let x_428 : vec4<f32> = u_xlat6;
      let x_429 : vec2<f32> = vec2<f32>(x_428.x, x_428.y);
      let x_431 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_429.x, x_429.y, x_431);
      let x_438 : vec3<f32> = txVec2;
      let x_440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_438.xy, x_438.z);
      u_xlat7.z = x_440;
      let x_443 : vec4<f32> = u_xlat6;
      let x_444 : vec2<f32> = vec2<f32>(x_443.z, x_443.w);
      let x_446 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_444.x, x_444.y, x_446);
      let x_453 : vec3<f32> = txVec3;
      let x_455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_453.xy, x_453.z);
      u_xlat7.w = x_455;
      let x_458 : vec4<f32> = u_xlat7;
      u_xlat65 = dot(x_458, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_465 : f32 = x_367.x_MainLightShadowParams.y;
      u_xlatb6 = (x_465 == 2.0f);
      let x_467 : bool = u_xlatb6;
      if (x_467) {
        let x_470 : vec4<f32> = vs_TEXCOORD6;
        let x_473 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_478 : vec2<f32> = ((vec2<f32>(x_470.x, x_470.y) * vec2<f32>(x_473.z, x_473.w)) + vec2<f32>(0.5f, 0.5f));
        let x_479 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_478.x, x_478.y, x_479.z, x_479.w);
        let x_481 : vec4<f32> = u_xlat6;
        let x_483 : vec2<f32> = floor(vec2<f32>(x_481.x, x_481.y));
        let x_484 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_484.z, x_484.w);
        let x_488 : vec4<f32> = vs_TEXCOORD6;
        let x_491 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_494 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_488.x, x_488.y) * vec2<f32>(x_491.z, x_491.w)) + -(vec2<f32>(x_494.x, x_494.y)));
        let x_498 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_498.x, x_498.x, x_498.y, x_498.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_503 : vec4<f32> = u_xlat7;
        let x_505 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_503.x, x_503.x, x_503.z, x_503.z) * vec4<f32>(x_505.x, x_505.x, x_505.z, x_505.z));
        let x_508 : vec4<f32> = u_xlat8;
        let x_512 : vec2<f32> = (vec2<f32>(x_508.y, x_508.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_513 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_512.x, x_513.y, x_512.y, x_513.w);
        let x_515 : vec4<f32> = u_xlat8;
        let x_518 : vec2<f32> = u_xlat46;
        let x_520 : vec2<f32> = ((vec2<f32>(x_515.x, x_515.z) * vec2<f32>(0.5f, 0.5f)) + -(x_518));
        let x_521 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
        let x_524 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_524) + vec2<f32>(1.0f, 1.0f));
        let x_528 : vec2<f32> = u_xlat46;
        let x_530 : vec2<f32> = min(x_528, vec2<f32>(0.0f, 0.0f));
        let x_531 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
        let x_533 : vec4<f32> = u_xlat9;
        let x_536 : vec4<f32> = u_xlat9;
        let x_539 : vec2<f32> = u_xlat48;
        let x_540 : vec2<f32> = ((-(vec2<f32>(x_533.x, x_533.y)) * vec2<f32>(x_536.x, x_536.y)) + x_539);
        let x_541 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_540.x, x_540.y, x_541.z, x_541.w);
        let x_543 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_543, vec2<f32>(0.0f, 0.0f));
        let x_545 : vec2<f32> = u_xlat46;
        let x_547 : vec2<f32> = u_xlat46;
        let x_549 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_545) * x_547) + vec2<f32>(x_549.y, x_549.w));
        let x_552 : vec4<f32> = u_xlat9;
        let x_554 : vec2<f32> = (vec2<f32>(x_552.x, x_552.y) + vec2<f32>(1.0f, 1.0f));
        let x_555 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
        let x_557 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_557 + vec2<f32>(1.0f, 1.0f));
        let x_560 : vec4<f32> = u_xlat8;
        let x_564 : vec2<f32> = (vec2<f32>(x_560.x, x_560.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_565 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
        let x_567 : vec2<f32> = u_xlat48;
        let x_568 : vec2<f32> = (x_567 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_569 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_568.x, x_568.y, x_569.z, x_569.w);
        let x_571 : vec4<f32> = u_xlat9;
        let x_573 : vec2<f32> = (vec2<f32>(x_571.x, x_571.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_574 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_573.x, x_573.y, x_574.z, x_574.w);
        let x_577 : vec2<f32> = u_xlat46;
        let x_578 : vec2<f32> = (x_577 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_579 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_578.x, x_578.y, x_579.z, x_579.w);
        let x_581 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_581.y, x_581.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_585 : f32 = u_xlat9.x;
        u_xlat10.z = x_585;
        let x_588 : f32 = u_xlat46.x;
        u_xlat10.w = x_588;
        let x_591 : f32 = u_xlat11.x;
        u_xlat8.z = x_591;
        let x_594 : f32 = u_xlat7.x;
        u_xlat8.w = x_594;
        let x_597 : vec4<f32> = u_xlat8;
        let x_599 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_597.z, x_597.w, x_597.x, x_597.z) + vec4<f32>(x_599.z, x_599.w, x_599.x, x_599.z));
        let x_603 : f32 = u_xlat10.y;
        u_xlat9.z = x_603;
        let x_606 : f32 = u_xlat46.y;
        u_xlat9.w = x_606;
        let x_609 : f32 = u_xlat8.y;
        u_xlat11.z = x_609;
        let x_612 : f32 = u_xlat7.z;
        u_xlat11.w = x_612;
        let x_614 : vec4<f32> = u_xlat9;
        let x_616 : vec4<f32> = u_xlat11;
        let x_618 : vec3<f32> = (vec3<f32>(x_614.z, x_614.y, x_614.w) + vec3<f32>(x_616.z, x_616.y, x_616.w));
        let x_619 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
        let x_621 : vec4<f32> = u_xlat8;
        let x_623 : vec4<f32> = u_xlat12;
        let x_625 : vec3<f32> = (vec3<f32>(x_621.x, x_621.z, x_621.w) / vec3<f32>(x_623.z, x_623.w, x_623.y));
        let x_626 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
        let x_628 : vec4<f32> = u_xlat8;
        let x_634 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_635 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
        let x_637 : vec4<f32> = u_xlat11;
        let x_639 : vec4<f32> = u_xlat7;
        let x_641 : vec3<f32> = (vec3<f32>(x_637.z, x_637.y, x_637.w) / vec3<f32>(x_639.x, x_639.y, x_639.z));
        let x_642 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
        let x_644 : vec4<f32> = u_xlat9;
        let x_646 : vec3<f32> = (vec3<f32>(x_644.x, x_644.y, x_644.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_647 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
        let x_649 : vec4<f32> = u_xlat8;
        let x_652 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_654 : vec3<f32> = (vec3<f32>(x_649.y, x_649.x, x_649.z) * vec3<f32>(x_652.x, x_652.x, x_652.x));
        let x_655 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
        let x_657 : vec4<f32> = u_xlat9;
        let x_660 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_662 : vec3<f32> = (vec3<f32>(x_657.x, x_657.y, x_657.z) * vec3<f32>(x_660.y, x_660.y, x_660.y));
        let x_663 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
        let x_666 : f32 = u_xlat9.x;
        u_xlat8.w = x_666;
        let x_668 : vec4<f32> = u_xlat6;
        let x_671 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_674 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_668.x, x_668.y, x_668.x, x_668.y) * vec4<f32>(x_671.x, x_671.y, x_671.x, x_671.y)) + vec4<f32>(x_674.y, x_674.w, x_674.x, x_674.w));
        let x_677 : vec4<f32> = u_xlat6;
        let x_680 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_683 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_677.x, x_677.y) * vec2<f32>(x_680.x, x_680.y)) + vec2<f32>(x_683.z, x_683.w));
        let x_687 : f32 = u_xlat8.y;
        u_xlat9.w = x_687;
        let x_689 : vec4<f32> = u_xlat9;
        let x_690 : vec2<f32> = vec2<f32>(x_689.y, x_689.z);
        let x_691 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_691.x, x_690.x, x_691.z, x_690.y);
        let x_693 : vec4<f32> = u_xlat6;
        let x_696 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_699 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_693.x, x_693.y, x_693.x, x_693.y) * vec4<f32>(x_696.x, x_696.y, x_696.x, x_696.y)) + vec4<f32>(x_699.x, x_699.y, x_699.z, x_699.y));
        let x_702 : vec4<f32> = u_xlat6;
        let x_705 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_708 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_702.x, x_702.y, x_702.x, x_702.y) * vec4<f32>(x_705.x, x_705.y, x_705.x, x_705.y)) + vec4<f32>(x_708.w, x_708.y, x_708.w, x_708.z));
        let x_711 : vec4<f32> = u_xlat6;
        let x_714 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_717 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_711.x, x_711.y, x_711.x, x_711.y) * vec4<f32>(x_714.x, x_714.y, x_714.x, x_714.y)) + vec4<f32>(x_717.x, x_717.w, x_717.z, x_717.w));
        let x_721 : vec4<f32> = u_xlat7;
        let x_723 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_721.x, x_721.x, x_721.x, x_721.y) * vec4<f32>(x_723.z, x_723.w, x_723.y, x_723.z));
        let x_727 : vec4<f32> = u_xlat7;
        let x_729 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_727.y, x_727.y, x_727.z, x_727.z) * x_729);
        let x_732 : f32 = u_xlat7.z;
        let x_734 : f32 = u_xlat12.y;
        u_xlat6.x = (x_732 * x_734);
        let x_738 : vec4<f32> = u_xlat10;
        let x_739 : vec2<f32> = vec2<f32>(x_738.x, x_738.y);
        let x_741 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_739.x, x_739.y, x_741);
        let x_749 : vec3<f32> = txVec4;
        let x_751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_749.xy, x_749.z);
        u_xlat26 = x_751;
        let x_753 : vec4<f32> = u_xlat10;
        let x_754 : vec2<f32> = vec2<f32>(x_753.z, x_753.w);
        let x_756 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_754.x, x_754.y, x_756);
        let x_763 : vec3<f32> = txVec5;
        let x_765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_763.xy, x_763.z);
        u_xlat7.x = x_765;
        let x_768 : f32 = u_xlat7.x;
        let x_770 : f32 = u_xlat13.y;
        u_xlat7.x = (x_768 * x_770);
        let x_774 : f32 = u_xlat13.x;
        let x_775 : f32 = u_xlat26;
        let x_778 : f32 = u_xlat7.x;
        u_xlat26 = ((x_774 * x_775) + x_778);
        let x_781 : vec2<f32> = u_xlat46;
        let x_783 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_781.x, x_781.y, x_783);
        let x_790 : vec3<f32> = txVec6;
        let x_792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_790.xy, x_790.z);
        u_xlat46.x = x_792;
        let x_795 : f32 = u_xlat13.z;
        let x_797 : f32 = u_xlat46.x;
        let x_799 : f32 = u_xlat26;
        u_xlat26 = ((x_795 * x_797) + x_799);
        let x_802 : vec4<f32> = u_xlat9;
        let x_803 : vec2<f32> = vec2<f32>(x_802.x, x_802.y);
        let x_805 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_803.x, x_803.y, x_805);
        let x_812 : vec3<f32> = txVec7;
        let x_814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_812.xy, x_812.z);
        u_xlat46.x = x_814;
        let x_817 : f32 = u_xlat13.w;
        let x_819 : f32 = u_xlat46.x;
        let x_821 : f32 = u_xlat26;
        u_xlat26 = ((x_817 * x_819) + x_821);
        let x_824 : vec4<f32> = u_xlat11;
        let x_825 : vec2<f32> = vec2<f32>(x_824.x, x_824.y);
        let x_827 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_825.x, x_825.y, x_827);
        let x_834 : vec3<f32> = txVec8;
        let x_836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_834.xy, x_834.z);
        u_xlat46.x = x_836;
        let x_839 : f32 = u_xlat14.x;
        let x_841 : f32 = u_xlat46.x;
        let x_843 : f32 = u_xlat26;
        u_xlat26 = ((x_839 * x_841) + x_843);
        let x_846 : vec4<f32> = u_xlat11;
        let x_847 : vec2<f32> = vec2<f32>(x_846.z, x_846.w);
        let x_849 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_847.x, x_847.y, x_849);
        let x_856 : vec3<f32> = txVec9;
        let x_858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_856.xy, x_856.z);
        u_xlat46.x = x_858;
        let x_861 : f32 = u_xlat14.y;
        let x_863 : f32 = u_xlat46.x;
        let x_865 : f32 = u_xlat26;
        u_xlat26 = ((x_861 * x_863) + x_865);
        let x_868 : vec4<f32> = u_xlat9;
        let x_869 : vec2<f32> = vec2<f32>(x_868.z, x_868.w);
        let x_871 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_869.x, x_869.y, x_871);
        let x_878 : vec3<f32> = txVec10;
        let x_880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_878.xy, x_878.z);
        u_xlat46.x = x_880;
        let x_883 : f32 = u_xlat14.z;
        let x_885 : f32 = u_xlat46.x;
        let x_887 : f32 = u_xlat26;
        u_xlat26 = ((x_883 * x_885) + x_887);
        let x_890 : vec4<f32> = u_xlat8;
        let x_891 : vec2<f32> = vec2<f32>(x_890.x, x_890.y);
        let x_893 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_891.x, x_891.y, x_893);
        let x_900 : vec3<f32> = txVec11;
        let x_902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_900.xy, x_900.z);
        u_xlat46.x = x_902;
        let x_905 : f32 = u_xlat14.w;
        let x_907 : f32 = u_xlat46.x;
        let x_909 : f32 = u_xlat26;
        u_xlat26 = ((x_905 * x_907) + x_909);
        let x_912 : vec4<f32> = u_xlat8;
        let x_913 : vec2<f32> = vec2<f32>(x_912.z, x_912.w);
        let x_915 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_913.x, x_913.y, x_915);
        let x_922 : vec3<f32> = txVec12;
        let x_924 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_922.xy, x_922.z);
        u_xlat46.x = x_924;
        let x_927 : f32 = u_xlat6.x;
        let x_929 : f32 = u_xlat46.x;
        let x_931 : f32 = u_xlat26;
        u_xlat65 = ((x_927 * x_929) + x_931);
      } else {
        let x_934 : vec4<f32> = vs_TEXCOORD6;
        let x_937 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_940 : vec2<f32> = ((vec2<f32>(x_934.x, x_934.y) * vec2<f32>(x_937.z, x_937.w)) + vec2<f32>(0.5f, 0.5f));
        let x_941 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_943 : vec4<f32> = u_xlat6;
        let x_945 : vec2<f32> = floor(vec2<f32>(x_943.x, x_943.y));
        let x_946 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_945.x, x_945.y, x_946.z, x_946.w);
        let x_948 : vec4<f32> = vs_TEXCOORD6;
        let x_951 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_954 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_948.x, x_948.y) * vec2<f32>(x_951.z, x_951.w)) + -(vec2<f32>(x_954.x, x_954.y)));
        let x_958 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_958.x, x_958.x, x_958.y, x_958.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_961 : vec4<f32> = u_xlat7;
        let x_963 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_961.x, x_961.x, x_961.z, x_961.z) * vec4<f32>(x_963.x, x_963.x, x_963.z, x_963.z));
        let x_966 : vec4<f32> = u_xlat8;
        let x_970 : vec2<f32> = (vec2<f32>(x_966.y, x_966.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_971 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_971.x, x_970.x, x_971.z, x_970.y);
        let x_973 : vec4<f32> = u_xlat8;
        let x_976 : vec2<f32> = u_xlat46;
        let x_978 : vec2<f32> = ((vec2<f32>(x_973.x, x_973.z) * vec2<f32>(0.5f, 0.5f)) + -(x_976));
        let x_979 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_978.x, x_979.y, x_978.y, x_979.w);
        let x_981 : vec2<f32> = u_xlat46;
        let x_983 : vec2<f32> = (-(x_981) + vec2<f32>(1.0f, 1.0f));
        let x_984 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_983.x, x_983.y, x_984.z, x_984.w);
        let x_986 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_986, vec2<f32>(0.0f, 0.0f));
        let x_988 : vec2<f32> = u_xlat48;
        let x_990 : vec2<f32> = u_xlat48;
        let x_992 : vec4<f32> = u_xlat8;
        let x_994 : vec2<f32> = ((-(x_988) * x_990) + vec2<f32>(x_992.x, x_992.y));
        let x_995 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_997 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_997, vec2<f32>(0.0f, 0.0f));
        let x_1000 : vec2<f32> = u_xlat48;
        let x_1002 : vec2<f32> = u_xlat48;
        let x_1004 : vec4<f32> = u_xlat7;
        let x_1006 : vec2<f32> = ((-(x_1000) * x_1002) + vec2<f32>(x_1004.y, x_1004.w));
        let x_1007 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1006.x, x_1007.y, x_1006.y);
        let x_1009 : vec4<f32> = u_xlat8;
        let x_1012 : vec2<f32> = (vec2<f32>(x_1009.x, x_1009.y) + vec2<f32>(2.0f, 2.0f));
        let x_1013 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1012.x, x_1012.y, x_1013.z, x_1013.w);
        let x_1015 : vec3<f32> = u_xlat27;
        let x_1017 : vec2<f32> = (vec2<f32>(x_1015.x, x_1015.z) + vec2<f32>(2.0f, 2.0f));
        let x_1018 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1018.x, x_1017.x, x_1018.z, x_1017.y);
        let x_1021 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1021 * 0.081632003f);
        let x_1025 : vec4<f32> = u_xlat7;
        let x_1028 : vec3<f32> = (vec3<f32>(x_1025.z, x_1025.x, x_1025.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1029 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
        let x_1031 : vec4<f32> = u_xlat8;
        let x_1034 : vec2<f32> = (vec2<f32>(x_1031.x, x_1031.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1035 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1034.x, x_1034.y, x_1035.z, x_1035.w);
        let x_1038 : f32 = u_xlat11.y;
        u_xlat10.x = x_1038;
        let x_1040 : vec2<f32> = u_xlat46;
        let x_1047 : vec2<f32> = ((vec2<f32>(x_1040.x, x_1040.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1048 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1048.x, x_1047.x, x_1048.z, x_1047.y);
        let x_1050 : vec2<f32> = u_xlat46;
        let x_1054 : vec2<f32> = ((vec2<f32>(x_1050.x, x_1050.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1055 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1054.x, x_1055.y, x_1054.y, x_1055.w);
        let x_1058 : f32 = u_xlat7.x;
        u_xlat8.y = x_1058;
        let x_1061 : f32 = u_xlat9.y;
        u_xlat8.w = x_1061;
        let x_1063 : vec4<f32> = u_xlat8;
        let x_1064 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1063 + x_1064);
        let x_1066 : vec2<f32> = u_xlat46;
        let x_1069 : vec2<f32> = ((vec2<f32>(x_1066.y, x_1066.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1070 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1070.x, x_1069.x, x_1070.z, x_1069.y);
        let x_1072 : vec2<f32> = u_xlat46;
        let x_1075 : vec2<f32> = ((vec2<f32>(x_1072.y, x_1072.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1075.x, x_1076.y, x_1075.y, x_1076.w);
        let x_1079 : f32 = u_xlat7.y;
        u_xlat9.y = x_1079;
        let x_1081 : vec4<f32> = u_xlat9;
        let x_1082 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1081 + x_1082);
        let x_1084 : vec4<f32> = u_xlat8;
        let x_1085 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1084 / x_1085);
        let x_1087 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1087 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1093 : vec4<f32> = u_xlat9;
        let x_1094 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1093 / x_1094);
        let x_1096 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1096 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1098 : vec4<f32> = u_xlat8;
        let x_1101 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1098.w, x_1098.x, x_1098.y, x_1098.z) * vec4<f32>(x_1101.x, x_1101.x, x_1101.x, x_1101.x));
        let x_1104 : vec4<f32> = u_xlat9;
        let x_1107 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1104.x, x_1104.w, x_1104.y, x_1104.z) * vec4<f32>(x_1107.y, x_1107.y, x_1107.y, x_1107.y));
        let x_1110 : vec4<f32> = u_xlat8;
        let x_1111 : vec3<f32> = vec3<f32>(x_1110.y, x_1110.z, x_1110.w);
        let x_1112 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1111.x, x_1112.y, x_1111.y, x_1111.z);
        let x_1115 : f32 = u_xlat9.x;
        u_xlat11.y = x_1115;
        let x_1117 : vec4<f32> = u_xlat6;
        let x_1120 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.y) * vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y)) + vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1123.y));
        let x_1126 : vec4<f32> = u_xlat6;
        let x_1129 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1132 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1126.x, x_1126.y) * vec2<f32>(x_1129.x, x_1129.y)) + vec2<f32>(x_1132.w, x_1132.y));
        let x_1136 : f32 = u_xlat11.y;
        u_xlat8.y = x_1136;
        let x_1139 : f32 = u_xlat9.z;
        u_xlat11.y = x_1139;
        let x_1141 : vec4<f32> = u_xlat6;
        let x_1144 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1147 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y) * vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.y)) + vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1147.y));
        let x_1150 : vec4<f32> = u_xlat6;
        let x_1153 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1156 : vec4<f32> = u_xlat11;
        let x_1158 : vec2<f32> = ((vec2<f32>(x_1150.x, x_1150.y) * vec2<f32>(x_1153.x, x_1153.y)) + vec2<f32>(x_1156.w, x_1156.y));
        let x_1159 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1158.x, x_1158.y, x_1159.z, x_1159.w);
        let x_1162 : f32 = u_xlat11.y;
        u_xlat8.z = x_1162;
        let x_1165 : vec4<f32> = u_xlat6;
        let x_1168 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1171 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1165.x, x_1165.y, x_1165.x, x_1165.y) * vec4<f32>(x_1168.x, x_1168.y, x_1168.x, x_1168.y)) + vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.z));
        let x_1175 : f32 = u_xlat9.w;
        u_xlat11.y = x_1175;
        let x_1178 : vec4<f32> = u_xlat6;
        let x_1181 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1178.x, x_1178.y, x_1178.x, x_1178.y) * vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y)) + vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1184.y));
        let x_1188 : vec4<f32> = u_xlat6;
        let x_1191 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1194 : vec4<f32> = u_xlat11;
        let x_1196 : vec2<f32> = ((vec2<f32>(x_1188.x, x_1188.y) * vec2<f32>(x_1191.x, x_1191.y)) + vec2<f32>(x_1194.w, x_1194.y));
        let x_1197 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1196.x, x_1196.y, x_1197.z);
        let x_1200 : f32 = u_xlat11.y;
        u_xlat8.w = x_1200;
        let x_1203 : vec4<f32> = u_xlat6;
        let x_1206 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1209 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1203.x, x_1203.y) * vec2<f32>(x_1206.x, x_1206.y)) + vec2<f32>(x_1209.x, x_1209.w));
        let x_1212 : vec4<f32> = u_xlat11;
        let x_1213 : vec3<f32> = vec3<f32>(x_1212.x, x_1212.z, x_1212.w);
        let x_1214 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1213.x, x_1214.y, x_1213.y, x_1213.z);
        let x_1216 : vec4<f32> = u_xlat6;
        let x_1219 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1222 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1216.x, x_1216.y, x_1216.x, x_1216.y) * vec4<f32>(x_1219.x, x_1219.y, x_1219.x, x_1219.y)) + vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1222.y));
        let x_1226 : vec4<f32> = u_xlat6;
        let x_1229 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1232 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1226.x, x_1226.y) * vec2<f32>(x_1229.x, x_1229.y)) + vec2<f32>(x_1232.w, x_1232.y));
        let x_1236 : f32 = u_xlat8.x;
        u_xlat9.x = x_1236;
        let x_1238 : vec4<f32> = u_xlat6;
        let x_1241 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1244 : vec4<f32> = u_xlat9;
        let x_1246 : vec2<f32> = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1241.x, x_1241.y)) + vec2<f32>(x_1244.x, x_1244.y));
        let x_1247 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1246.x, x_1246.y, x_1247.z, x_1247.w);
        let x_1250 : vec4<f32> = u_xlat7;
        let x_1252 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1250.x, x_1250.x, x_1250.x, x_1250.x) * x_1252);
        let x_1255 : vec4<f32> = u_xlat7;
        let x_1257 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1255.y, x_1255.y, x_1255.y, x_1255.y) * x_1257);
        let x_1260 : vec4<f32> = u_xlat7;
        let x_1262 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1260.z, x_1260.z, x_1260.z, x_1260.z) * x_1262);
        let x_1264 : vec4<f32> = u_xlat7;
        let x_1266 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1264.w, x_1264.w, x_1264.w, x_1264.w) * x_1266);
        let x_1269 : vec4<f32> = u_xlat12;
        let x_1270 : vec2<f32> = vec2<f32>(x_1269.x, x_1269.y);
        let x_1272 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1270.x, x_1270.y, x_1272);
        let x_1279 : vec3<f32> = txVec13;
        let x_1281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1279.xy, x_1279.z);
        u_xlat8.x = x_1281;
        let x_1284 : vec4<f32> = u_xlat12;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.z, x_1284.w);
        let x_1287 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1295 : vec3<f32> = txVec14;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1295.xy, x_1295.z);
        u_xlat68 = x_1297;
        let x_1298 : f32 = u_xlat68;
        let x_1300 : f32 = u_xlat17.y;
        u_xlat68 = (x_1298 * x_1300);
        let x_1303 : f32 = u_xlat17.x;
        let x_1305 : f32 = u_xlat8.x;
        let x_1307 : f32 = u_xlat68;
        u_xlat8.x = ((x_1303 * x_1305) + x_1307);
        let x_1311 : vec2<f32> = u_xlat46;
        let x_1313 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1311.x, x_1311.y, x_1313);
        let x_1320 : vec3<f32> = txVec15;
        let x_1322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1320.xy, x_1320.z);
        u_xlat46.x = x_1322;
        let x_1325 : f32 = u_xlat17.z;
        let x_1327 : f32 = u_xlat46.x;
        let x_1330 : f32 = u_xlat8.x;
        u_xlat46.x = ((x_1325 * x_1327) + x_1330);
        let x_1334 : vec4<f32> = u_xlat15;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.x, x_1334.y);
        let x_1337 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1345 : vec3<f32> = txVec16;
        let x_1347 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1345.xy, x_1345.z);
        u_xlat66 = x_1347;
        let x_1349 : f32 = u_xlat17.w;
        let x_1350 : f32 = u_xlat66;
        let x_1353 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1349 * x_1350) + x_1353);
        let x_1357 : vec4<f32> = u_xlat13;
        let x_1358 : vec2<f32> = vec2<f32>(x_1357.x, x_1357.y);
        let x_1360 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1358.x, x_1358.y, x_1360);
        let x_1367 : vec3<f32> = txVec17;
        let x_1369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1367.xy, x_1367.z);
        u_xlat66 = x_1369;
        let x_1371 : f32 = u_xlat18.x;
        let x_1372 : f32 = u_xlat66;
        let x_1375 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1371 * x_1372) + x_1375);
        let x_1379 : vec4<f32> = u_xlat13;
        let x_1380 : vec2<f32> = vec2<f32>(x_1379.z, x_1379.w);
        let x_1382 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec18;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1389.xy, x_1389.z);
        u_xlat66 = x_1391;
        let x_1393 : f32 = u_xlat18.y;
        let x_1394 : f32 = u_xlat66;
        let x_1397 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1393 * x_1394) + x_1397);
        let x_1401 : vec4<f32> = u_xlat14;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.x, x_1401.y);
        let x_1404 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec19;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1411.xy, x_1411.z);
        u_xlat66 = x_1413;
        let x_1415 : f32 = u_xlat18.z;
        let x_1416 : f32 = u_xlat66;
        let x_1419 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1415 * x_1416) + x_1419);
        let x_1423 : vec4<f32> = u_xlat15;
        let x_1424 : vec2<f32> = vec2<f32>(x_1423.z, x_1423.w);
        let x_1426 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec20;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1433.xy, x_1433.z);
        u_xlat66 = x_1435;
        let x_1437 : f32 = u_xlat18.w;
        let x_1438 : f32 = u_xlat66;
        let x_1441 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1437 * x_1438) + x_1441);
        let x_1445 : vec4<f32> = u_xlat16;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.x, x_1445.y);
        let x_1448 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec21;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1455.xy, x_1455.z);
        u_xlat66 = x_1457;
        let x_1459 : f32 = u_xlat19.x;
        let x_1460 : f32 = u_xlat66;
        let x_1463 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1459 * x_1460) + x_1463);
        let x_1467 : vec4<f32> = u_xlat16;
        let x_1468 : vec2<f32> = vec2<f32>(x_1467.z, x_1467.w);
        let x_1470 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec22;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1477.xy, x_1477.z);
        u_xlat66 = x_1479;
        let x_1481 : f32 = u_xlat19.y;
        let x_1482 : f32 = u_xlat66;
        let x_1485 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1481 * x_1482) + x_1485);
        let x_1489 : vec3<f32> = u_xlat28;
        let x_1490 : vec2<f32> = vec2<f32>(x_1489.x, x_1489.y);
        let x_1492 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec23;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1499.xy, x_1499.z);
        u_xlat66 = x_1501;
        let x_1503 : f32 = u_xlat19.z;
        let x_1504 : f32 = u_xlat66;
        let x_1507 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1503 * x_1504) + x_1507);
        let x_1511 : vec2<f32> = u_xlat54;
        let x_1513 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec24;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1520.xy, x_1520.z);
        u_xlat66 = x_1522;
        let x_1524 : f32 = u_xlat19.w;
        let x_1525 : f32 = u_xlat66;
        let x_1528 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1524 * x_1525) + x_1528);
        let x_1532 : vec4<f32> = u_xlat11;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.x, x_1532.y);
        let x_1535 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec25;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1542.xy, x_1542.z);
        u_xlat66 = x_1544;
        let x_1546 : f32 = u_xlat7.x;
        let x_1547 : f32 = u_xlat66;
        let x_1550 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1546 * x_1547) + x_1550);
        let x_1554 : vec4<f32> = u_xlat11;
        let x_1555 : vec2<f32> = vec2<f32>(x_1554.z, x_1554.w);
        let x_1557 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec26;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1564.xy, x_1564.z);
        u_xlat66 = x_1566;
        let x_1568 : f32 = u_xlat7.y;
        let x_1569 : f32 = u_xlat66;
        let x_1572 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1568 * x_1569) + x_1572);
        let x_1576 : vec2<f32> = u_xlat49;
        let x_1578 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec27;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1585.xy, x_1585.z);
        u_xlat66 = x_1587;
        let x_1589 : f32 = u_xlat7.z;
        let x_1590 : f32 = u_xlat66;
        let x_1593 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1589 * x_1590) + x_1593);
        let x_1597 : vec4<f32> = u_xlat6;
        let x_1598 : vec2<f32> = vec2<f32>(x_1597.x, x_1597.y);
        let x_1600 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec28;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1607.xy, x_1607.z);
        u_xlat6.x = x_1609;
        let x_1612 : f32 = u_xlat7.w;
        let x_1614 : f32 = u_xlat6.x;
        let x_1617 : f32 = u_xlat46.x;
        u_xlat65 = ((x_1612 * x_1614) + x_1617);
      }
    }
  } else {
    let x_1621 : vec4<f32> = vs_TEXCOORD6;
    let x_1622 : vec2<f32> = vec2<f32>(x_1621.x, x_1621.y);
    let x_1624 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
    let x_1631 : vec3<f32> = txVec29;
    let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1631.xy, x_1631.z);
    u_xlat65 = x_1633;
  }
  let x_1635 : f32 = x_367.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1635) + 1.0f);
  let x_1639 : f32 = u_xlat65;
  let x_1641 : f32 = x_367.x_MainLightShadowParams.x;
  let x_1644 : f32 = u_xlat6.x;
  u_xlat65 = ((x_1639 * x_1641) + x_1644);
  let x_1647 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_1647);
  let x_1651 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_1651 >= 1.0f);
  let x_1653 : bool = u_xlatb26;
  let x_1654 : bool = u_xlatb6;
  u_xlatb6 = (x_1653 | x_1654);
  let x_1656 : bool = u_xlatb6;
  let x_1657 : f32 = u_xlat65;
  u_xlat65 = select(x_1657, 1.0f, x_1656);
  let x_1659 : vec3<f32> = vs_TEXCOORD1;
  let x_1661 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1663 : vec3<f32> = (x_1659 + -(x_1661));
  let x_1664 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1663.x, x_1663.y, x_1663.z, x_1664.w);
  let x_1666 : vec4<f32> = u_xlat6;
  let x_1668 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1666.x, x_1666.y, x_1666.z), vec3<f32>(x_1668.x, x_1668.y, x_1668.z));
  let x_1673 : f32 = u_xlat6.x;
  let x_1675 : f32 = x_367.x_MainLightShadowParams.z;
  let x_1678 : f32 = x_367.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1673 * x_1675) + x_1678);
  let x_1682 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1682, 0.0f, 1.0f);
  let x_1685 : f32 = u_xlat65;
  u_xlat26 = (-(x_1685) + 1.0f);
  let x_1689 : f32 = u_xlat6.x;
  let x_1690 : f32 = u_xlat26;
  let x_1692 : f32 = u_xlat65;
  u_xlat65 = ((x_1689 * x_1690) + x_1692);
  let x_1700 : f32 = x_1698.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1700 == -1.0f));
  let x_1702 : bool = u_xlatb6;
  if (x_1702) {
    let x_1705 : vec3<f32> = vs_TEXCOORD1;
    let x_1708 : vec4<f32> = x_1698.x_MainLightWorldToLight[1i];
    let x_1710 : vec2<f32> = (vec2<f32>(x_1705.y, x_1705.y) * vec2<f32>(x_1708.x, x_1708.y));
    let x_1711 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1710.x, x_1710.y, x_1711.z, x_1711.w);
    let x_1714 : vec4<f32> = x_1698.x_MainLightWorldToLight[0i];
    let x_1716 : vec3<f32> = vs_TEXCOORD1;
    let x_1719 : vec4<f32> = u_xlat6;
    let x_1721 : vec2<f32> = ((vec2<f32>(x_1714.x, x_1714.y) * vec2<f32>(x_1716.x, x_1716.x)) + vec2<f32>(x_1719.x, x_1719.y));
    let x_1722 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1721.x, x_1721.y, x_1722.z, x_1722.w);
    let x_1725 : vec4<f32> = x_1698.x_MainLightWorldToLight[2i];
    let x_1727 : vec3<f32> = vs_TEXCOORD1;
    let x_1730 : vec4<f32> = u_xlat6;
    let x_1732 : vec2<f32> = ((vec2<f32>(x_1725.x, x_1725.y) * vec2<f32>(x_1727.z, x_1727.z)) + vec2<f32>(x_1730.x, x_1730.y));
    let x_1733 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1732.x, x_1732.y, x_1733.z, x_1733.w);
    let x_1735 : vec4<f32> = u_xlat6;
    let x_1739 : vec4<f32> = x_1698.x_MainLightWorldToLight[3i];
    let x_1741 : vec2<f32> = (vec2<f32>(x_1735.x, x_1735.y) + vec2<f32>(x_1739.x, x_1739.y));
    let x_1742 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1741.x, x_1741.y, x_1742.z, x_1742.w);
    let x_1744 : vec4<f32> = u_xlat6;
    let x_1747 : vec2<f32> = ((vec2<f32>(x_1744.x, x_1744.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1748 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1747.x, x_1747.y, x_1748.z, x_1748.w);
    let x_1755 : vec4<f32> = u_xlat6;
    let x_1758 : f32 = x_44.x_GlobalMipBias.x;
    let x_1759 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1755.x, x_1755.y), x_1758);
    u_xlat6 = x_1759;
    let x_1764 : f32 = x_1698.x_MainLightCookieTextureFormat;
    let x_1766 : f32 = x_1698.x_MainLightCookieTextureFormat;
    let x_1768 : f32 = x_1698.x_MainLightCookieTextureFormat;
    let x_1770 : f32 = x_1698.x_MainLightCookieTextureFormat;
    let x_1771 : vec4<f32> = vec4<f32>(x_1764, x_1766, x_1768, x_1770);
    let x_1779 : vec4<bool> = (vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1771.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1779.x, x_1779.y);
    let x_1782 : bool = u_xlatb7.y;
    if (x_1782) {
      let x_1787 : f32 = u_xlat6.w;
      x_1783 = x_1787;
    } else {
      let x_1790 : f32 = u_xlat6.x;
      x_1783 = x_1790;
    }
    let x_1791 : f32 = x_1783;
    u_xlat66 = x_1791;
    let x_1793 : bool = u_xlatb7.x;
    if (x_1793) {
      let x_1797 : vec4<f32> = u_xlat6;
      x_1794 = vec3<f32>(x_1797.x, x_1797.y, x_1797.z);
    } else {
      let x_1800 : f32 = u_xlat66;
      x_1794 = vec3<f32>(x_1800, x_1800, x_1800);
    }
    let x_1802 : vec3<f32> = x_1794;
    let x_1803 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1803.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1809 : vec4<f32> = u_xlat6;
  let x_1812 : vec4<f32> = x_44.x_MainLightColor;
  let x_1814 : vec3<f32> = (vec3<f32>(x_1809.x, x_1809.y, x_1809.z) * vec3<f32>(x_1812.x, x_1812.y, x_1812.z));
  let x_1815 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);
  let x_1817 : f32 = u_xlat45;
  let x_1819 : vec4<f32> = u_xlat6;
  let x_1821 : vec3<f32> = (vec3<f32>(x_1817, x_1817, x_1817) * vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
  let x_1822 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1821.x, x_1821.y, x_1821.z, x_1822.w);
  let x_1824 : vec3<f32> = u_xlat3;
  let x_1826 : vec4<f32> = u_xlat2;
  u_xlat66 = dot(-(x_1824), vec3<f32>(x_1826.x, x_1826.y, x_1826.z));
  let x_1829 : f32 = u_xlat66;
  let x_1830 : f32 = u_xlat66;
  u_xlat66 = (x_1829 + x_1830);
  let x_1832 : vec4<f32> = u_xlat2;
  let x_1834 : f32 = u_xlat66;
  let x_1838 : vec3<f32> = u_xlat3;
  let x_1840 : vec3<f32> = ((vec3<f32>(x_1832.x, x_1832.y, x_1832.z) * -(vec3<f32>(x_1834, x_1834, x_1834))) + -(x_1838));
  let x_1841 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1841.w);
  let x_1843 : vec4<f32> = u_xlat2;
  let x_1845 : vec3<f32> = u_xlat3;
  u_xlat66 = dot(vec3<f32>(x_1843.x, x_1843.y, x_1843.z), x_1845);
  let x_1847 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1847, 0.0f, 1.0f);
  let x_1849 : f32 = u_xlat66;
  u_xlat66 = (-(x_1849) + 1.0f);
  let x_1852 : f32 = u_xlat66;
  let x_1853 : f32 = u_xlat66;
  u_xlat66 = (x_1852 * x_1853);
  let x_1855 : f32 = u_xlat66;
  let x_1856 : f32 = u_xlat66;
  u_xlat66 = (x_1855 * x_1856);
  let x_1859 : f32 = u_xlat60;
  u_xlat67 = ((-(x_1859) * 0.699999988f) + 1.700000048f);
  let x_1865 : f32 = u_xlat60;
  let x_1866 : f32 = u_xlat67;
  u_xlat60 = (x_1865 * x_1866);
  let x_1868 : f32 = u_xlat60;
  u_xlat60 = (x_1868 * 6.0f);
  let x_1879 : vec4<f32> = u_xlat7;
  let x_1881 : f32 = u_xlat60;
  let x_1882 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1879.x, x_1879.y, x_1879.z), x_1881);
  u_xlat7 = x_1882;
  let x_1884 : f32 = u_xlat7.w;
  u_xlat60 = (x_1884 + -1.0f);
  let x_1887 : f32 = x_157.unity_SpecCube0_HDR.w;
  let x_1888 : f32 = u_xlat60;
  u_xlat60 = ((x_1887 * x_1888) + 1.0f);
  let x_1891 : f32 = u_xlat60;
  u_xlat60 = max(x_1891, 0.0f);
  let x_1893 : f32 = u_xlat60;
  u_xlat60 = log2(x_1893);
  let x_1895 : f32 = u_xlat60;
  let x_1897 : f32 = x_157.unity_SpecCube0_HDR.y;
  u_xlat60 = (x_1895 * x_1897);
  let x_1899 : f32 = u_xlat60;
  u_xlat60 = exp2(x_1899);
  let x_1901 : f32 = u_xlat60;
  let x_1903 : f32 = x_157.unity_SpecCube0_HDR.x;
  u_xlat60 = (x_1901 * x_1903);
  let x_1905 : vec4<f32> = u_xlat7;
  let x_1907 : f32 = u_xlat60;
  let x_1909 : vec3<f32> = (vec3<f32>(x_1905.x, x_1905.y, x_1905.z) * vec3<f32>(x_1907, x_1907, x_1907));
  let x_1910 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1909.x, x_1909.y, x_1909.z, x_1910.w);
  let x_1912 : f32 = u_xlat63;
  let x_1914 : f32 = u_xlat63;
  let x_1918 : vec2<f32> = ((vec2<f32>(x_1912, x_1912) * vec2<f32>(x_1914, x_1914)) + vec2<f32>(-1.0f, 1.0f));
  let x_1919 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1918.x, x_1918.y, x_1919.z, x_1919.w);
  let x_1922 : f32 = u_xlat8.y;
  u_xlat60 = (1.0f / x_1922);
  let x_1924 : vec4<f32> = u_xlat0;
  let x_1927 : f32 = u_xlat62;
  u_xlat28 = (-(vec3<f32>(x_1924.x, x_1924.y, x_1924.z)) + vec3<f32>(x_1927, x_1927, x_1927));
  let x_1930 : f32 = u_xlat66;
  let x_1932 : vec3<f32> = u_xlat28;
  let x_1934 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_1930, x_1930, x_1930) * x_1932) + vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
  let x_1937 : f32 = u_xlat60;
  let x_1939 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1937, x_1937, x_1937) * x_1939);
  let x_1941 : vec4<f32> = u_xlat7;
  let x_1943 : vec3<f32> = u_xlat28;
  let x_1944 : vec3<f32> = (vec3<f32>(x_1941.x, x_1941.y, x_1941.z) * x_1943);
  let x_1945 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1944.x, x_1944.y, x_1944.z, x_1945.w);
  let x_1947 : vec3<f32> = u_xlat4;
  let x_1948 : vec3<f32> = u_xlat21;
  let x_1950 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_1947 * x_1948) + vec3<f32>(x_1950.x, x_1950.y, x_1950.z));
  let x_1953 : f32 = u_xlat65;
  let x_1956 : f32 = x_157.unity_LightData.z;
  u_xlat60 = (x_1953 * x_1956);
  let x_1958 : vec4<f32> = u_xlat2;
  let x_1961 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat62 = dot(vec3<f32>(x_1958.x, x_1958.y, x_1958.z), vec3<f32>(x_1961.x, x_1961.y, x_1961.z));
  let x_1964 : f32 = u_xlat62;
  u_xlat62 = clamp(x_1964, 0.0f, 1.0f);
  let x_1966 : f32 = u_xlat60;
  let x_1967 : f32 = u_xlat62;
  u_xlat60 = (x_1966 * x_1967);
  let x_1969 : f32 = u_xlat60;
  let x_1971 : vec4<f32> = u_xlat6;
  let x_1973 : vec3<f32> = (vec3<f32>(x_1969, x_1969, x_1969) * vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
  let x_1974 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1976 : vec3<f32> = u_xlat3;
  let x_1978 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1980 : vec3<f32> = (x_1976 + vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
  let x_1981 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
  let x_1983 : vec4<f32> = u_xlat7;
  let x_1985 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1983.x, x_1983.y, x_1983.z), vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
  let x_1988 : f32 = u_xlat60;
  u_xlat60 = max(x_1988, 1.17549435e-37f);
  let x_1991 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1991);
  let x_1993 : f32 = u_xlat60;
  let x_1995 : vec4<f32> = u_xlat7;
  let x_1997 : vec3<f32> = (vec3<f32>(x_1993, x_1993, x_1993) * vec3<f32>(x_1995.x, x_1995.y, x_1995.z));
  let x_1998 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1997.x, x_1997.y, x_1997.z, x_1998.w);
  let x_2000 : vec4<f32> = u_xlat2;
  let x_2002 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2000.x, x_2000.y, x_2000.z), vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
  let x_2005 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2005, 0.0f, 1.0f);
  let x_2008 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2010 : vec4<f32> = u_xlat7;
  u_xlat62 = dot(vec3<f32>(x_2008.x, x_2008.y, x_2008.z), vec3<f32>(x_2010.x, x_2010.y, x_2010.z));
  let x_2013 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2013, 0.0f, 1.0f);
  let x_2015 : f32 = u_xlat60;
  let x_2016 : f32 = u_xlat60;
  u_xlat60 = (x_2015 * x_2016);
  let x_2018 : f32 = u_xlat60;
  let x_2020 : f32 = u_xlat8.x;
  u_xlat60 = ((x_2018 * x_2020) + 1.000010014f);
  let x_2024 : f32 = u_xlat62;
  let x_2025 : f32 = u_xlat62;
  u_xlat62 = (x_2024 * x_2025);
  let x_2027 : f32 = u_xlat60;
  let x_2028 : f32 = u_xlat60;
  u_xlat60 = (x_2027 * x_2028);
  let x_2030 : f32 = u_xlat62;
  u_xlat62 = max(x_2030, 0.100000001f);
  let x_2033 : f32 = u_xlat60;
  let x_2034 : f32 = u_xlat62;
  u_xlat60 = (x_2033 * x_2034);
  let x_2036 : f32 = u_xlat25;
  let x_2037 : f32 = u_xlat60;
  u_xlat60 = (x_2036 * x_2037);
  let x_2039 : f32 = u_xlat64;
  let x_2040 : f32 = u_xlat60;
  u_xlat60 = (x_2039 / x_2040);
  let x_2042 : vec4<f32> = u_xlat0;
  let x_2044 : f32 = u_xlat60;
  let x_2047 : vec3<f32> = u_xlat21;
  let x_2048 : vec3<f32> = ((vec3<f32>(x_2042.x, x_2042.y, x_2042.z) * vec3<f32>(x_2044, x_2044, x_2044)) + x_2047);
  let x_2049 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2048.x, x_2048.y, x_2048.z, x_2049.w);
  let x_2051 : vec4<f32> = u_xlat6;
  let x_2053 : vec4<f32> = u_xlat7;
  let x_2055 : vec3<f32> = (vec3<f32>(x_2051.x, x_2051.y, x_2051.z) * vec3<f32>(x_2053.x, x_2053.y, x_2053.z));
  let x_2056 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2055.x, x_2055.y, x_2055.z, x_2056.w);
  let x_2059 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2061 : f32 = x_157.unity_LightData.y;
  u_xlat60 = min(x_2059, x_2061);
  let x_2065 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2065));
  let x_2069 : f32 = x_1698.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2071 : f32 = x_1698.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2073 : f32 = x_1698.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2075 : f32 = x_1698.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2076 : vec4<f32> = vec4<f32>(x_2069, x_2071, x_2073, x_2075);
  let x_2082 : vec4<bool> = (vec4<f32>(x_2076.x, x_2076.y, x_2076.z, x_2076.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2082.x, x_2082.y);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2093 : u32 = u_xlatu_loop_1;
    let x_2094 : u32 = u_xlatu60;
    if ((x_2093 < x_2094)) {
    } else {
      break;
    }
    let x_2097 : u32 = u_xlatu_loop_1;
    u_xlatu63 = (x_2097 >> 2u);
    let x_2101 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2101 & 3u));
    let x_2104 : u32 = u_xlatu63;
    let x_2107 : vec4<f32> = x_157.unity_LightIndices[bitcast<i32>(x_2104)];
    let x_2117 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2122 : vec4<u32> = indexable[x_2117];
    u_xlat63 = dot(x_2107, bitcast<vec4<f32>>(x_2122));
    let x_2125 : f32 = u_xlat63;
    u_xlatu63 = bitcast<u32>(i32(x_2125));
    let x_2128 : vec3<f32> = vs_TEXCOORD1;
    let x_2140 : u32 = u_xlatu63;
    let x_2143 : vec4<f32> = x_2139.x_AdditionalLightsPosition[bitcast<i32>(x_2140)];
    let x_2146 : u32 = u_xlatu63;
    let x_2149 : vec4<f32> = x_2139.x_AdditionalLightsPosition[bitcast<i32>(x_2146)];
    let x_2151 : vec3<f32> = ((-(x_2128) * vec3<f32>(x_2143.w, x_2143.w, x_2143.w)) + vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
    let x_2152 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2151.x, x_2151.y, x_2151.z, x_2152.w);
    let x_2154 : vec4<f32> = u_xlat9;
    let x_2156 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2154.x, x_2154.y, x_2154.z), vec3<f32>(x_2156.x, x_2156.y, x_2156.z));
    let x_2159 : f32 = u_xlat65;
    u_xlat65 = max(x_2159, 6.10351562e-05f);
    let x_2162 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2162);
    let x_2164 : f32 = u_xlat66;
    let x_2166 : vec4<f32> = u_xlat9;
    let x_2168 : vec3<f32> = (vec3<f32>(x_2164, x_2164, x_2164) * vec3<f32>(x_2166.x, x_2166.y, x_2166.z));
    let x_2169 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2168.x, x_2168.y, x_2168.z, x_2169.w);
    let x_2172 : f32 = u_xlat65;
    u_xlat47.x = (1.0f / x_2172);
    let x_2175 : f32 = u_xlat65;
    let x_2176 : u32 = u_xlatu63;
    let x_2179 : f32 = x_2139.x_AdditionalLightsAttenuation[bitcast<i32>(x_2176)].x;
    u_xlat65 = (x_2175 * x_2179);
    let x_2181 : f32 = u_xlat65;
    let x_2183 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2181) * x_2183) + 1.0f);
    let x_2186 : f32 = u_xlat65;
    u_xlat65 = max(x_2186, 0.0f);
    let x_2188 : f32 = u_xlat65;
    let x_2189 : f32 = u_xlat65;
    u_xlat65 = (x_2188 * x_2189);
    let x_2191 : f32 = u_xlat65;
    let x_2193 : f32 = u_xlat47.x;
    u_xlat65 = (x_2191 * x_2193);
    let x_2195 : u32 = u_xlatu63;
    let x_2198 : vec4<f32> = x_2139.x_AdditionalLightsSpotDir[bitcast<i32>(x_2195)];
    let x_2200 : vec4<f32> = u_xlat10;
    u_xlat47.x = dot(vec3<f32>(x_2198.x, x_2198.y, x_2198.z), vec3<f32>(x_2200.x, x_2200.y, x_2200.z));
    let x_2205 : f32 = u_xlat47.x;
    let x_2206 : u32 = u_xlatu63;
    let x_2209 : f32 = x_2139.x_AdditionalLightsAttenuation[bitcast<i32>(x_2206)].z;
    let x_2211 : u32 = u_xlatu63;
    let x_2214 : f32 = x_2139.x_AdditionalLightsAttenuation[bitcast<i32>(x_2211)].w;
    u_xlat47.x = ((x_2205 * x_2209) + x_2214);
    let x_2218 : f32 = u_xlat47.x;
    u_xlat47.x = clamp(x_2218, 0.0f, 1.0f);
    let x_2222 : f32 = u_xlat47.x;
    let x_2224 : f32 = u_xlat47.x;
    u_xlat47.x = (x_2222 * x_2224);
    let x_2227 : f32 = u_xlat65;
    let x_2229 : f32 = u_xlat47.x;
    u_xlat65 = (x_2227 * x_2229);
    let x_2232 : u32 = u_xlatu63;
    u_xlatu47 = (x_2232 >> 5u);
    let x_2235 : u32 = u_xlatu63;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2235) & 31i)));
    let x_2241 : i32 = u_xlati67;
    let x_2243 : u32 = u_xlatu47;
    let x_2246 : f32 = x_1698.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2243)].el;
    u_xlati47 = bitcast<i32>((bitcast<u32>(x_2241) & bitcast<u32>(x_2246)));
    let x_2250 : i32 = u_xlati47;
    if ((x_2250 != 0i)) {
      let x_2260 : u32 = u_xlatu63;
      let x_2263 : f32 = x_2259.x_AdditionalLightsLightTypes[bitcast<i32>(x_2260)].el;
      u_xlati47 = i32(x_2263);
      let x_2265 : i32 = u_xlati47;
      u_xlati67 = select(1i, 0i, (x_2265 != 0i));
      let x_2269 : u32 = u_xlatu63;
      u_xlati69 = (bitcast<i32>(x_2269) << bitcast<u32>(2i));
      let x_2272 : i32 = u_xlati67;
      if ((x_2272 != 0i)) {
        let x_2276 : vec3<f32> = vs_TEXCOORD1;
        let x_2278 : i32 = u_xlati69;
        let x_2281 : i32 = u_xlati69;
        let x_2285 : vec4<f32> = x_2259.x_AdditionalLightsWorldToLights[((x_2278 + 1i) / 4i)][((x_2281 + 1i) % 4i)];
        let x_2287 : vec3<f32> = (vec3<f32>(x_2276.y, x_2276.y, x_2276.y) * vec3<f32>(x_2285.x, x_2285.y, x_2285.w));
        let x_2288 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
        let x_2290 : i32 = u_xlati69;
        let x_2292 : i32 = u_xlati69;
        let x_2295 : vec4<f32> = x_2259.x_AdditionalLightsWorldToLights[(x_2290 / 4i)][(x_2292 % 4i)];
        let x_2297 : vec3<f32> = vs_TEXCOORD1;
        let x_2300 : vec4<f32> = u_xlat11;
        let x_2302 : vec3<f32> = ((vec3<f32>(x_2295.x, x_2295.y, x_2295.w) * vec3<f32>(x_2297.x, x_2297.x, x_2297.x)) + vec3<f32>(x_2300.x, x_2300.y, x_2300.z));
        let x_2303 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2302.x, x_2302.y, x_2302.z, x_2303.w);
        let x_2305 : i32 = u_xlati69;
        let x_2308 : i32 = u_xlati69;
        let x_2312 : vec4<f32> = x_2259.x_AdditionalLightsWorldToLights[((x_2305 + 2i) / 4i)][((x_2308 + 2i) % 4i)];
        let x_2314 : vec3<f32> = vs_TEXCOORD1;
        let x_2317 : vec4<f32> = u_xlat11;
        let x_2319 : vec3<f32> = ((vec3<f32>(x_2312.x, x_2312.y, x_2312.w) * vec3<f32>(x_2314.z, x_2314.z, x_2314.z)) + vec3<f32>(x_2317.x, x_2317.y, x_2317.z));
        let x_2320 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2319.x, x_2319.y, x_2319.z, x_2320.w);
        let x_2322 : vec4<f32> = u_xlat11;
        let x_2324 : i32 = u_xlati69;
        let x_2327 : i32 = u_xlati69;
        let x_2331 : vec4<f32> = x_2259.x_AdditionalLightsWorldToLights[((x_2324 + 3i) / 4i)][((x_2327 + 3i) % 4i)];
        let x_2333 : vec3<f32> = (vec3<f32>(x_2322.x, x_2322.y, x_2322.z) + vec3<f32>(x_2331.x, x_2331.y, x_2331.w));
        let x_2334 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2333.x, x_2333.y, x_2333.z, x_2334.w);
        let x_2336 : vec4<f32> = u_xlat11;
        let x_2338 : vec4<f32> = u_xlat11;
        let x_2340 : vec2<f32> = (vec2<f32>(x_2336.x, x_2336.y) / vec2<f32>(x_2338.z, x_2338.z));
        let x_2341 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2340.x, x_2340.y, x_2341.z, x_2341.w);
        let x_2343 : vec4<f32> = u_xlat11;
        let x_2346 : vec2<f32> = ((vec2<f32>(x_2343.x, x_2343.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2347 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2346.x, x_2346.y, x_2347.z, x_2347.w);
        let x_2349 : vec4<f32> = u_xlat11;
        let x_2353 : vec2<f32> = clamp(vec2<f32>(x_2349.x, x_2349.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2354 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2353.x, x_2353.y, x_2354.z, x_2354.w);
        let x_2356 : u32 = u_xlatu63;
        let x_2359 : vec4<f32> = x_2259.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2356)];
        let x_2361 : vec4<f32> = u_xlat11;
        let x_2364 : u32 = u_xlatu63;
        let x_2367 : vec4<f32> = x_2259.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2364)];
        let x_2369 : vec2<f32> = ((vec2<f32>(x_2359.x, x_2359.y) * vec2<f32>(x_2361.x, x_2361.y)) + vec2<f32>(x_2367.z, x_2367.w));
        let x_2370 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2369.x, x_2369.y, x_2370.z, x_2370.w);
      } else {
        let x_2374 : i32 = u_xlati47;
        u_xlatb47 = (x_2374 == 1i);
        let x_2376 : bool = u_xlatb47;
        u_xlati47 = select(0i, 1i, x_2376);
        let x_2378 : i32 = u_xlati47;
        if ((x_2378 != 0i)) {
          let x_2382 : vec3<f32> = vs_TEXCOORD1;
          let x_2384 : i32 = u_xlati69;
          let x_2387 : i32 = u_xlati69;
          let x_2391 : vec4<f32> = x_2259.x_AdditionalLightsWorldToLights[((x_2384 + 1i) / 4i)][((x_2387 + 1i) % 4i)];
          u_xlat47 = (vec2<f32>(x_2382.y, x_2382.y) * vec2<f32>(x_2391.x, x_2391.y));
          let x_2394 : i32 = u_xlati69;
          let x_2396 : i32 = u_xlati69;
          let x_2399 : vec4<f32> = x_2259.x_AdditionalLightsWorldToLights[(x_2394 / 4i)][(x_2396 % 4i)];
          let x_2401 : vec3<f32> = vs_TEXCOORD1;
          let x_2404 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2399.x, x_2399.y) * vec2<f32>(x_2401.x, x_2401.x)) + x_2404);
          let x_2406 : i32 = u_xlati69;
          let x_2409 : i32 = u_xlati69;
          let x_2413 : vec4<f32> = x_2259.x_AdditionalLightsWorldToLights[((x_2406 + 2i) / 4i)][((x_2409 + 2i) % 4i)];
          let x_2415 : vec3<f32> = vs_TEXCOORD1;
          let x_2418 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2413.x, x_2413.y) * vec2<f32>(x_2415.z, x_2415.z)) + x_2418);
          let x_2420 : vec2<f32> = u_xlat47;
          let x_2421 : i32 = u_xlati69;
          let x_2424 : i32 = u_xlati69;
          let x_2428 : vec4<f32> = x_2259.x_AdditionalLightsWorldToLights[((x_2421 + 3i) / 4i)][((x_2424 + 3i) % 4i)];
          u_xlat47 = (x_2420 + vec2<f32>(x_2428.x, x_2428.y));
          let x_2431 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2431 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2434 : vec2<f32> = u_xlat47;
          u_xlat47 = fract(x_2434);
          let x_2436 : u32 = u_xlatu63;
          let x_2439 : vec4<f32> = x_2259.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2436)];
          let x_2441 : vec2<f32> = u_xlat47;
          let x_2443 : u32 = u_xlatu63;
          let x_2446 : vec4<f32> = x_2259.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2443)];
          let x_2448 : vec2<f32> = ((vec2<f32>(x_2439.x, x_2439.y) * x_2441) + vec2<f32>(x_2446.z, x_2446.w));
          let x_2449 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2448.x, x_2448.y, x_2449.z, x_2449.w);
        } else {
          let x_2452 : vec3<f32> = vs_TEXCOORD1;
          let x_2454 : i32 = u_xlati69;
          let x_2457 : i32 = u_xlati69;
          let x_2461 : vec4<f32> = x_2259.x_AdditionalLightsWorldToLights[((x_2454 + 1i) / 4i)][((x_2457 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2452.y, x_2452.y, x_2452.y, x_2452.y) * x_2461);
          let x_2463 : i32 = u_xlati69;
          let x_2465 : i32 = u_xlati69;
          let x_2468 : vec4<f32> = x_2259.x_AdditionalLightsWorldToLights[(x_2463 / 4i)][(x_2465 % 4i)];
          let x_2469 : vec3<f32> = vs_TEXCOORD1;
          let x_2472 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2468 * vec4<f32>(x_2469.x, x_2469.x, x_2469.x, x_2469.x)) + x_2472);
          let x_2474 : i32 = u_xlati69;
          let x_2477 : i32 = u_xlati69;
          let x_2481 : vec4<f32> = x_2259.x_AdditionalLightsWorldToLights[((x_2474 + 2i) / 4i)][((x_2477 + 2i) % 4i)];
          let x_2482 : vec3<f32> = vs_TEXCOORD1;
          let x_2485 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2481 * vec4<f32>(x_2482.z, x_2482.z, x_2482.z, x_2482.z)) + x_2485);
          let x_2487 : vec4<f32> = u_xlat12;
          let x_2488 : i32 = u_xlati69;
          let x_2491 : i32 = u_xlati69;
          let x_2495 : vec4<f32> = x_2259.x_AdditionalLightsWorldToLights[((x_2488 + 3i) / 4i)][((x_2491 + 3i) % 4i)];
          u_xlat12 = (x_2487 + x_2495);
          let x_2497 : vec4<f32> = u_xlat12;
          let x_2499 : vec4<f32> = u_xlat12;
          let x_2501 : vec3<f32> = (vec3<f32>(x_2497.x, x_2497.y, x_2497.z) / vec3<f32>(x_2499.w, x_2499.w, x_2499.w));
          let x_2502 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2501.x, x_2501.y, x_2501.z, x_2502.w);
          let x_2504 : vec4<f32> = u_xlat12;
          let x_2506 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(vec3<f32>(x_2504.x, x_2504.y, x_2504.z), vec3<f32>(x_2506.x, x_2506.y, x_2506.z));
          let x_2511 : f32 = u_xlat47.x;
          u_xlat47.x = inverseSqrt(x_2511);
          let x_2514 : vec2<f32> = u_xlat47;
          let x_2516 : vec4<f32> = u_xlat12;
          let x_2518 : vec3<f32> = (vec3<f32>(x_2514.x, x_2514.x, x_2514.x) * vec3<f32>(x_2516.x, x_2516.y, x_2516.z));
          let x_2519 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2518.x, x_2518.y, x_2518.z, x_2519.w);
          let x_2521 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(abs(vec3<f32>(x_2521.x, x_2521.y, x_2521.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2528 : f32 = u_xlat47.x;
          u_xlat47.x = max(x_2528, 0.000001f);
          let x_2533 : f32 = u_xlat47.x;
          u_xlat47.x = (1.0f / x_2533);
          let x_2536 : vec2<f32> = u_xlat47;
          let x_2538 : vec4<f32> = u_xlat12;
          let x_2540 : vec3<f32> = (vec3<f32>(x_2536.x, x_2536.x, x_2536.x) * vec3<f32>(x_2538.z, x_2538.x, x_2538.y));
          let x_2541 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2541.w);
          let x_2544 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2544);
          let x_2548 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2548, 0.0f, 1.0f);
          let x_2552 : vec4<f32> = u_xlat13;
          let x_2555 : vec4<bool> = (vec4<f32>(x_2552.y, x_2552.z, x_2552.y, x_2552.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2555.x, x_2555.y);
          let x_2559 : bool = u_xlatb51.x;
          if (x_2559) {
            let x_2564 : f32 = u_xlat13.x;
            x_2560 = x_2564;
          } else {
            let x_2567 : f32 = u_xlat13.x;
            x_2560 = -(x_2567);
          }
          let x_2569 : f32 = x_2560;
          u_xlat51.x = x_2569;
          let x_2572 : bool = u_xlatb51.y;
          if (x_2572) {
            let x_2577 : f32 = u_xlat13.x;
            x_2573 = x_2577;
          } else {
            let x_2580 : f32 = u_xlat13.x;
            x_2573 = -(x_2580);
          }
          let x_2582 : f32 = x_2573;
          u_xlat51.y = x_2582;
          let x_2584 : vec4<f32> = u_xlat12;
          let x_2586 : vec2<f32> = u_xlat47;
          let x_2589 : vec2<f32> = u_xlat51;
          u_xlat47 = ((vec2<f32>(x_2584.x, x_2584.y) * vec2<f32>(x_2586.x, x_2586.x)) + x_2589);
          let x_2591 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2591 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2594 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2594, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2598 : u32 = u_xlatu63;
          let x_2601 : vec4<f32> = x_2259.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2598)];
          let x_2603 : vec2<f32> = u_xlat47;
          let x_2605 : u32 = u_xlatu63;
          let x_2608 : vec4<f32> = x_2259.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2605)];
          let x_2610 : vec2<f32> = ((vec2<f32>(x_2601.x, x_2601.y) * x_2603) + vec2<f32>(x_2608.z, x_2608.w));
          let x_2611 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2610.x, x_2610.y, x_2611.z, x_2611.w);
        }
      }
      let x_2618 : vec4<f32> = u_xlat11;
      let x_2621 : f32 = x_44.x_GlobalMipBias.x;
      let x_2622 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2618.x, x_2618.y), x_2621);
      u_xlat11 = x_2622;
      let x_2624 : bool = u_xlatb7.y;
      if (x_2624) {
        let x_2629 : f32 = u_xlat11.w;
        x_2625 = x_2629;
      } else {
        let x_2632 : f32 = u_xlat11.x;
        x_2625 = x_2632;
      }
      let x_2633 : f32 = x_2625;
      u_xlat47.x = x_2633;
      let x_2636 : bool = u_xlatb7.x;
      if (x_2636) {
        let x_2640 : vec4<f32> = u_xlat11;
        x_2637 = vec3<f32>(x_2640.x, x_2640.y, x_2640.z);
      } else {
        let x_2643 : vec2<f32> = u_xlat47;
        x_2637 = vec3<f32>(x_2643.x, x_2643.x, x_2643.x);
      }
      let x_2645 : vec3<f32> = x_2637;
      let x_2646 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2645.x, x_2645.y, x_2645.z, x_2646.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2652 : vec4<f32> = u_xlat11;
    let x_2654 : u32 = u_xlatu63;
    let x_2657 : vec4<f32> = x_2139.x_AdditionalLightsColor[bitcast<i32>(x_2654)];
    let x_2659 : vec3<f32> = (vec3<f32>(x_2652.x, x_2652.y, x_2652.z) * vec3<f32>(x_2657.x, x_2657.y, x_2657.z));
    let x_2660 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2659.x, x_2659.y, x_2659.z, x_2660.w);
    let x_2662 : f32 = u_xlat45;
    let x_2664 : vec4<f32> = u_xlat11;
    let x_2666 : vec3<f32> = (vec3<f32>(x_2662, x_2662, x_2662) * vec3<f32>(x_2664.x, x_2664.y, x_2664.z));
    let x_2667 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2666.x, x_2666.y, x_2666.z, x_2667.w);
    let x_2669 : vec4<f32> = u_xlat2;
    let x_2671 : vec4<f32> = u_xlat10;
    u_xlat63 = dot(vec3<f32>(x_2669.x, x_2669.y, x_2669.z), vec3<f32>(x_2671.x, x_2671.y, x_2671.z));
    let x_2674 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2674, 0.0f, 1.0f);
    let x_2676 : f32 = u_xlat63;
    let x_2677 : f32 = u_xlat65;
    u_xlat63 = (x_2676 * x_2677);
    let x_2679 : f32 = u_xlat63;
    let x_2681 : vec4<f32> = u_xlat11;
    let x_2683 : vec3<f32> = (vec3<f32>(x_2679, x_2679, x_2679) * vec3<f32>(x_2681.x, x_2681.y, x_2681.z));
    let x_2684 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2683.x, x_2683.y, x_2683.z, x_2684.w);
    let x_2686 : vec4<f32> = u_xlat9;
    let x_2688 : f32 = u_xlat66;
    let x_2691 : vec3<f32> = u_xlat3;
    let x_2692 : vec3<f32> = ((vec3<f32>(x_2686.x, x_2686.y, x_2686.z) * vec3<f32>(x_2688, x_2688, x_2688)) + x_2691);
    let x_2693 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2692.x, x_2692.y, x_2692.z, x_2693.w);
    let x_2695 : vec4<f32> = u_xlat9;
    let x_2697 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2695.x, x_2695.y, x_2695.z), vec3<f32>(x_2697.x, x_2697.y, x_2697.z));
    let x_2700 : f32 = u_xlat63;
    u_xlat63 = max(x_2700, 1.17549435e-37f);
    let x_2702 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_2702);
    let x_2704 : f32 = u_xlat63;
    let x_2706 : vec4<f32> = u_xlat9;
    let x_2708 : vec3<f32> = (vec3<f32>(x_2704, x_2704, x_2704) * vec3<f32>(x_2706.x, x_2706.y, x_2706.z));
    let x_2709 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2708.x, x_2708.y, x_2708.z, x_2709.w);
    let x_2711 : vec4<f32> = u_xlat2;
    let x_2713 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2711.x, x_2711.y, x_2711.z), vec3<f32>(x_2713.x, x_2713.y, x_2713.z));
    let x_2716 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2716, 0.0f, 1.0f);
    let x_2718 : vec4<f32> = u_xlat10;
    let x_2720 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2718.x, x_2718.y, x_2718.z), vec3<f32>(x_2720.x, x_2720.y, x_2720.z));
    let x_2723 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2723, 0.0f, 1.0f);
    let x_2725 : f32 = u_xlat63;
    let x_2726 : f32 = u_xlat63;
    u_xlat63 = (x_2725 * x_2726);
    let x_2728 : f32 = u_xlat63;
    let x_2730 : f32 = u_xlat8.x;
    u_xlat63 = ((x_2728 * x_2730) + 1.000010014f);
    let x_2733 : f32 = u_xlat65;
    let x_2734 : f32 = u_xlat65;
    u_xlat65 = (x_2733 * x_2734);
    let x_2736 : f32 = u_xlat63;
    let x_2737 : f32 = u_xlat63;
    u_xlat63 = (x_2736 * x_2737);
    let x_2739 : f32 = u_xlat65;
    u_xlat65 = max(x_2739, 0.100000001f);
    let x_2741 : f32 = u_xlat63;
    let x_2742 : f32 = u_xlat65;
    u_xlat63 = (x_2741 * x_2742);
    let x_2744 : f32 = u_xlat25;
    let x_2745 : f32 = u_xlat63;
    u_xlat63 = (x_2744 * x_2745);
    let x_2747 : f32 = u_xlat64;
    let x_2748 : f32 = u_xlat63;
    u_xlat63 = (x_2747 / x_2748);
    let x_2750 : vec4<f32> = u_xlat0;
    let x_2752 : f32 = u_xlat63;
    let x_2755 : vec3<f32> = u_xlat21;
    let x_2756 : vec3<f32> = ((vec3<f32>(x_2750.x, x_2750.y, x_2750.z) * vec3<f32>(x_2752, x_2752, x_2752)) + x_2755);
    let x_2757 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2756.x, x_2756.y, x_2756.z, x_2757.w);
    let x_2759 : vec4<f32> = u_xlat9;
    let x_2761 : vec4<f32> = u_xlat11;
    let x_2764 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_2759.x, x_2759.y, x_2759.z) * vec3<f32>(x_2761.x, x_2761.y, x_2761.z)) + x_2764);

    continuing {
      let x_2766 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2766 + bitcast<u32>(1i));
    }
  }
  let x_2768 : vec3<f32> = u_xlat4;
  let x_2769 : vec4<f32> = u_xlat5;
  let x_2772 : vec4<f32> = u_xlat6;
  let x_2774 : vec3<f32> = ((x_2768 * vec3<f32>(x_2769.x, x_2769.x, x_2769.x)) + vec3<f32>(x_2772.x, x_2772.y, x_2772.z));
  let x_2775 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2774.x, x_2774.y, x_2774.z, x_2775.w);
  let x_2779 : vec3<f32> = u_xlat28;
  let x_2780 : vec4<f32> = u_xlat0;
  let x_2782 : vec3<f32> = (x_2779 + vec3<f32>(x_2780.x, x_2780.y, x_2780.z));
  let x_2783 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2782.x, x_2782.y, x_2782.z, x_2783.w);
  let x_2788 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2788 == 1.0f);
  let x_2790 : bool = u_xlatb0;
  if (x_2790) {
    let x_2795 : f32 = u_xlat1.x;
    x_2791 = x_2795;
  } else {
    x_2791 = 1.0f;
  }
  let x_2797 : f32 = x_2791;
  SV_Target0.w = x_2797;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

