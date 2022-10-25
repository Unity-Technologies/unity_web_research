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
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_301 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_1635 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2117 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2225 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat59 : f32;
  var u_xlat22 : f32;
  var u_xlat60 : f32;
  var u_xlat57 : f32;
  var u_xlat41 : f32;
  var u_xlatb61 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat61 : f32;
  var u_xlatb5 : bool;
  var u_xlat43 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat24 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat26 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat64 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat62 : f32;
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
  var u_xlatb24 : bool;
  var u_xlatb6 : vec2<bool>;
  var x_1721 : f32;
  var x_1732 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlat27 : vec3<f32>;
  var u_xlat58 : f32;
  var u_xlatu57 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu59 : u32;
  var u_xlati61 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu63 : u32;
  var u_xlati45 : i32;
  var u_xlati63 : i32;
  var u_xlati64 : i32;
  var u_xlatb63 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlatb45 : vec2<bool>;
  var x_2518 : f32;
  var x_2531 : f32;
  var x_2583 : f32;
  var x_2594 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_49);
  u_xlat0 = x_50;
  let x_58 : vec4<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_43.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_58.x, x_58.y), x_61);
  u_xlat1.x = x_62.x;
  let x_68 : vec4<f32> = vs_TEXCOORD3;
  let x_70 : vec4<f32> = vs_TEXCOORD3;
  u_xlat20.x = dot(vec3<f32>(x_68.x, x_68.y, x_68.z), vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_75 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_75);
  let x_79 : vec3<f32> = u_xlat20;
  let x_81 : vec4<f32> = vs_TEXCOORD3;
  let x_83 : vec3<f32> = (vec3<f32>(x_79.x, x_79.x, x_79.x) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  u_xlat2.w = 1.0f;
  let x_97 : vec4<f32> = x_93.unity_SHAr;
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_97, x_98);
  let x_103 : vec4<f32> = x_93.unity_SHAg;
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_103, x_104);
  let x_110 : vec4<f32> = x_93.unity_SHAb;
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_110, x_111);
  let x_115 : vec4<f32> = u_xlat2;
  let x_117 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_115.y, x_115.z, x_115.z, x_115.x) * vec4<f32>(x_117.x, x_117.y, x_117.z, x_117.z));
  let x_123 : vec4<f32> = x_93.unity_SHBr;
  let x_124 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_123, x_124);
  let x_129 : vec4<f32> = x_93.unity_SHBg;
  let x_130 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_129, x_130);
  let x_135 : vec4<f32> = x_93.unity_SHBb;
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_135, x_136);
  let x_140 : f32 = u_xlat2.y;
  let x_142 : f32 = u_xlat2.y;
  u_xlat20.x = (x_140 * x_142);
  let x_146 : f32 = u_xlat2.x;
  let x_148 : f32 = u_xlat2.x;
  let x_151 : f32 = u_xlat20.x;
  u_xlat20.x = ((x_146 * x_148) + -(x_151));
  let x_157 : vec4<f32> = x_93.unity_SHC;
  let x_159 : vec3<f32> = u_xlat20;
  let x_162 : vec4<f32> = u_xlat5;
  u_xlat20 = ((vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(x_159.x, x_159.x, x_159.x)) + vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_165 : vec3<f32> = u_xlat20;
  let x_166 : vec3<f32> = u_xlat3;
  u_xlat20 = (x_165 + x_166);
  let x_168 : vec3<f32> = u_xlat20;
  u_xlat20 = max(x_168, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_175 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_176 : vec2<f32> = vec2<f32>(x_175.x, x_175.y);
  let x_180 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_176.x, x_176.y));
  let x_181 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_180.x, x_180.y, x_181.z);
  let x_183 : vec3<f32> = u_xlat3;
  let x_185 : vec4<f32> = hlslcc_FragCoord;
  let x_187 : vec2<f32> = (vec2<f32>(x_183.x, x_183.y) * vec2<f32>(x_185.x, x_185.y));
  let x_188 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_187.x, x_187.y, x_188.z);
  let x_192 : f32 = u_xlat3.y;
  let x_195 : f32 = x_43.x_ScaleBiasRt.x;
  let x_198 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat59 = ((x_192 * x_195) + x_198);
  let x_200 : f32 = u_xlat59;
  u_xlat3.z = (-(x_200) + 1.0f);
  let x_205 : f32 = u_xlat1.x;
  u_xlat59 = ((-(x_205) * 0.959999979f) + 0.959999979f);
  let x_211 : f32 = u_xlat59;
  u_xlat22 = (-(x_211) + 1.0f);
  let x_214 : vec4<f32> = u_xlat0;
  let x_216 : f32 = u_xlat59;
  let x_218 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216, x_216, x_216));
  let x_219 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec4<f32> = u_xlat0;
  let x_225 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_226 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : vec3<f32> = u_xlat1;
  let x_230 : vec4<f32> = u_xlat0;
  let x_235 : vec3<f32> = ((vec3<f32>(x_228.x, x_228.x, x_228.x) * vec3<f32>(x_230.x, x_230.y, x_230.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_236 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_239 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_239) + 1.0f);
  let x_244 : f32 = u_xlat1.x;
  let x_246 : f32 = u_xlat1.x;
  u_xlat59 = (x_244 * x_246);
  let x_248 : f32 = u_xlat59;
  u_xlat59 = max(x_248, 0.0078125f);
  let x_252 : f32 = u_xlat59;
  let x_253 : f32 = u_xlat59;
  u_xlat60 = (x_252 * x_253);
  let x_257 : f32 = u_xlat0.w;
  let x_258 : f32 = u_xlat22;
  u_xlat57 = (x_257 + x_258);
  let x_260 : f32 = u_xlat57;
  u_xlat57 = clamp(x_260, 0.0f, 1.0f);
  let x_262 : f32 = u_xlat59;
  u_xlat22 = ((x_262 * 4.0f) + 2.0f);
  let x_272 : vec3<f32> = u_xlat3;
  let x_275 : f32 = x_43.x_GlobalMipBias.x;
  let x_276 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_272.x, x_272.z), x_275);
  u_xlat3.x = x_276.x;
  let x_281 : f32 = u_xlat3.x;
  u_xlat41 = (x_281 + -1.0f);
  let x_286 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_287 : f32 = u_xlat41;
  u_xlat41 = ((x_286 * x_287) + 1.0f);
  let x_291 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_291, 1.0f);
  let x_304 : f32 = x_301.x_MainLightShadowParams.y;
  u_xlatb61 = (0.0f < x_304);
  let x_306 : bool = u_xlatb61;
  if (x_306) {
    let x_310 : f32 = x_301.x_MainLightShadowParams.y;
    u_xlatb61 = (x_310 == 1.0f);
    let x_312 : bool = u_xlatb61;
    if (x_312) {
      let x_316 : vec4<f32> = vs_TEXCOORD8;
      let x_320 : vec4<f32> = x_301.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_316.x, x_316.y, x_316.x, x_316.y) + x_320);
      let x_323 : vec4<f32> = u_xlat5;
      let x_324 : vec2<f32> = vec2<f32>(x_323.x, x_323.y);
      let x_326 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_324.x, x_324.y, x_326);
      let x_339 : vec3<f32> = txVec0;
      let x_341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_339.xy, x_339.z);
      u_xlat6.x = x_341;
      let x_344 : vec4<f32> = u_xlat5;
      let x_345 : vec2<f32> = vec2<f32>(x_344.z, x_344.w);
      let x_347 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_345.x, x_345.y, x_347);
      let x_354 : vec3<f32> = txVec1;
      let x_356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_354.xy, x_354.z);
      u_xlat6.y = x_356;
      let x_358 : vec4<f32> = vs_TEXCOORD8;
      let x_361 : vec4<f32> = x_301.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_358.x, x_358.y, x_358.x, x_358.y) + x_361);
      let x_364 : vec4<f32> = u_xlat5;
      let x_365 : vec2<f32> = vec2<f32>(x_364.x, x_364.y);
      let x_367 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_365.x, x_365.y, x_367);
      let x_374 : vec3<f32> = txVec2;
      let x_376 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_374.xy, x_374.z);
      u_xlat6.z = x_376;
      let x_379 : vec4<f32> = u_xlat5;
      let x_380 : vec2<f32> = vec2<f32>(x_379.z, x_379.w);
      let x_382 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_380.x, x_380.y, x_382);
      let x_389 : vec3<f32> = txVec3;
      let x_391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_389.xy, x_389.z);
      u_xlat6.w = x_391;
      let x_394 : vec4<f32> = u_xlat6;
      u_xlat61 = dot(x_394, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_401 : f32 = x_301.x_MainLightShadowParams.y;
      u_xlatb5 = (x_401 == 2.0f);
      let x_403 : bool = u_xlatb5;
      if (x_403) {
        let x_406 : vec4<f32> = vs_TEXCOORD8;
        let x_410 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_415 : vec2<f32> = ((vec2<f32>(x_406.x, x_406.y) * vec2<f32>(x_410.z, x_410.w)) + vec2<f32>(0.5f, 0.5f));
        let x_416 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
        let x_418 : vec4<f32> = u_xlat5;
        let x_420 : vec2<f32> = floor(vec2<f32>(x_418.x, x_418.y));
        let x_421 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_420.x, x_420.y, x_421.z, x_421.w);
        let x_425 : vec4<f32> = vs_TEXCOORD8;
        let x_428 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_431 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_425.x, x_425.y) * vec2<f32>(x_428.z, x_428.w)) + -(vec2<f32>(x_431.x, x_431.y)));
        let x_435 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_435.x, x_435.x, x_435.y, x_435.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_440 : vec4<f32> = u_xlat6;
        let x_442 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_440.x, x_440.x, x_440.z, x_440.z) * vec4<f32>(x_442.x, x_442.x, x_442.z, x_442.z));
        let x_445 : vec4<f32> = u_xlat7;
        let x_449 : vec2<f32> = (vec2<f32>(x_445.y, x_445.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_450 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_449.x, x_450.y, x_449.y, x_450.w);
        let x_452 : vec4<f32> = u_xlat7;
        let x_455 : vec2<f32> = u_xlat43;
        let x_457 : vec2<f32> = ((vec2<f32>(x_452.x, x_452.z) * vec2<f32>(0.5f, 0.5f)) + -(x_455));
        let x_458 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
        let x_461 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_461) + vec2<f32>(1.0f, 1.0f));
        let x_465 : vec2<f32> = u_xlat43;
        let x_467 : vec2<f32> = min(x_465, vec2<f32>(0.0f, 0.0f));
        let x_468 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
        let x_470 : vec4<f32> = u_xlat8;
        let x_473 : vec4<f32> = u_xlat8;
        let x_476 : vec2<f32> = u_xlat45;
        let x_477 : vec2<f32> = ((-(vec2<f32>(x_470.x, x_470.y)) * vec2<f32>(x_473.x, x_473.y)) + x_476);
        let x_478 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
        let x_480 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_480, vec2<f32>(0.0f, 0.0f));
        let x_482 : vec2<f32> = u_xlat43;
        let x_484 : vec2<f32> = u_xlat43;
        let x_486 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_482) * x_484) + vec2<f32>(x_486.y, x_486.w));
        let x_489 : vec4<f32> = u_xlat8;
        let x_491 : vec2<f32> = (vec2<f32>(x_489.x, x_489.y) + vec2<f32>(1.0f, 1.0f));
        let x_492 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
        let x_494 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_494 + vec2<f32>(1.0f, 1.0f));
        let x_497 : vec4<f32> = u_xlat7;
        let x_501 : vec2<f32> = (vec2<f32>(x_497.x, x_497.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_502 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec2<f32> = u_xlat45;
        let x_505 : vec2<f32> = (x_504 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_506 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
        let x_508 : vec4<f32> = u_xlat8;
        let x_510 : vec2<f32> = (vec2<f32>(x_508.x, x_508.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_511 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_511.w);
        let x_514 : vec2<f32> = u_xlat43;
        let x_515 : vec2<f32> = (x_514 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_516 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
        let x_518 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_518.y, x_518.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_522 : f32 = u_xlat8.x;
        u_xlat9.z = x_522;
        let x_525 : f32 = u_xlat43.x;
        u_xlat9.w = x_525;
        let x_528 : f32 = u_xlat10.x;
        u_xlat7.z = x_528;
        let x_531 : f32 = u_xlat6.x;
        u_xlat7.w = x_531;
        let x_534 : vec4<f32> = u_xlat7;
        let x_536 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_534.z, x_534.w, x_534.x, x_534.z) + vec4<f32>(x_536.z, x_536.w, x_536.x, x_536.z));
        let x_540 : f32 = u_xlat9.y;
        u_xlat8.z = x_540;
        let x_543 : f32 = u_xlat43.y;
        u_xlat8.w = x_543;
        let x_546 : f32 = u_xlat7.y;
        u_xlat10.z = x_546;
        let x_549 : f32 = u_xlat6.z;
        u_xlat10.w = x_549;
        let x_551 : vec4<f32> = u_xlat8;
        let x_553 : vec4<f32> = u_xlat10;
        let x_555 : vec3<f32> = (vec3<f32>(x_551.z, x_551.y, x_551.w) + vec3<f32>(x_553.z, x_553.y, x_553.w));
        let x_556 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
        let x_558 : vec4<f32> = u_xlat7;
        let x_560 : vec4<f32> = u_xlat11;
        let x_562 : vec3<f32> = (vec3<f32>(x_558.x, x_558.z, x_558.w) / vec3<f32>(x_560.z, x_560.w, x_560.y));
        let x_563 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
        let x_565 : vec4<f32> = u_xlat7;
        let x_571 : vec3<f32> = (vec3<f32>(x_565.x, x_565.y, x_565.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_572 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
        let x_574 : vec4<f32> = u_xlat10;
        let x_576 : vec4<f32> = u_xlat6;
        let x_578 : vec3<f32> = (vec3<f32>(x_574.z, x_574.y, x_574.w) / vec3<f32>(x_576.x, x_576.y, x_576.z));
        let x_579 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
        let x_581 : vec4<f32> = u_xlat8;
        let x_583 : vec3<f32> = (vec3<f32>(x_581.x, x_581.y, x_581.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_584 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
        let x_586 : vec4<f32> = u_xlat7;
        let x_589 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_591 : vec3<f32> = (vec3<f32>(x_586.y, x_586.x, x_586.z) * vec3<f32>(x_589.x, x_589.x, x_589.x));
        let x_592 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
        let x_594 : vec4<f32> = u_xlat8;
        let x_597 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_599 : vec3<f32> = (vec3<f32>(x_594.x, x_594.y, x_594.z) * vec3<f32>(x_597.y, x_597.y, x_597.y));
        let x_600 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
        let x_603 : f32 = u_xlat8.x;
        u_xlat7.w = x_603;
        let x_605 : vec4<f32> = u_xlat5;
        let x_608 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_611 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_605.x, x_605.y, x_605.x, x_605.y) * vec4<f32>(x_608.x, x_608.y, x_608.x, x_608.y)) + vec4<f32>(x_611.y, x_611.w, x_611.x, x_611.w));
        let x_614 : vec4<f32> = u_xlat5;
        let x_617 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_620 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_614.x, x_614.y) * vec2<f32>(x_617.x, x_617.y)) + vec2<f32>(x_620.z, x_620.w));
        let x_624 : f32 = u_xlat7.y;
        u_xlat8.w = x_624;
        let x_626 : vec4<f32> = u_xlat8;
        let x_627 : vec2<f32> = vec2<f32>(x_626.y, x_626.z);
        let x_628 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_628.x, x_627.x, x_628.z, x_627.y);
        let x_630 : vec4<f32> = u_xlat5;
        let x_633 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_636 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_630.x, x_630.y, x_630.x, x_630.y) * vec4<f32>(x_633.x, x_633.y, x_633.x, x_633.y)) + vec4<f32>(x_636.x, x_636.y, x_636.z, x_636.y));
        let x_639 : vec4<f32> = u_xlat5;
        let x_642 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_645 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_639.x, x_639.y, x_639.x, x_639.y) * vec4<f32>(x_642.x, x_642.y, x_642.x, x_642.y)) + vec4<f32>(x_645.w, x_645.y, x_645.w, x_645.z));
        let x_648 : vec4<f32> = u_xlat5;
        let x_651 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_654 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_648.x, x_648.y, x_648.x, x_648.y) * vec4<f32>(x_651.x, x_651.y, x_651.x, x_651.y)) + vec4<f32>(x_654.x, x_654.w, x_654.z, x_654.w));
        let x_658 : vec4<f32> = u_xlat6;
        let x_660 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_658.x, x_658.x, x_658.x, x_658.y) * vec4<f32>(x_660.z, x_660.w, x_660.y, x_660.z));
        let x_664 : vec4<f32> = u_xlat6;
        let x_666 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_664.y, x_664.y, x_664.z, x_664.z) * x_666);
        let x_669 : f32 = u_xlat6.z;
        let x_671 : f32 = u_xlat11.y;
        u_xlat5.x = (x_669 * x_671);
        let x_675 : vec4<f32> = u_xlat9;
        let x_676 : vec2<f32> = vec2<f32>(x_675.x, x_675.y);
        let x_678 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_676.x, x_676.y, x_678);
        let x_686 : vec3<f32> = txVec4;
        let x_688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_686.xy, x_686.z);
        u_xlat24 = x_688;
        let x_690 : vec4<f32> = u_xlat9;
        let x_691 : vec2<f32> = vec2<f32>(x_690.z, x_690.w);
        let x_693 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_691.x, x_691.y, x_693);
        let x_700 : vec3<f32> = txVec5;
        let x_702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_700.xy, x_700.z);
        u_xlat6.x = x_702;
        let x_705 : f32 = u_xlat6.x;
        let x_707 : f32 = u_xlat12.y;
        u_xlat6.x = (x_705 * x_707);
        let x_711 : f32 = u_xlat12.x;
        let x_712 : f32 = u_xlat24;
        let x_715 : f32 = u_xlat6.x;
        u_xlat24 = ((x_711 * x_712) + x_715);
        let x_718 : vec2<f32> = u_xlat43;
        let x_720 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_718.x, x_718.y, x_720);
        let x_727 : vec3<f32> = txVec6;
        let x_729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_727.xy, x_727.z);
        u_xlat43.x = x_729;
        let x_732 : f32 = u_xlat12.z;
        let x_734 : f32 = u_xlat43.x;
        let x_736 : f32 = u_xlat24;
        u_xlat24 = ((x_732 * x_734) + x_736);
        let x_739 : vec4<f32> = u_xlat8;
        let x_740 : vec2<f32> = vec2<f32>(x_739.x, x_739.y);
        let x_742 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_740.x, x_740.y, x_742);
        let x_749 : vec3<f32> = txVec7;
        let x_751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_749.xy, x_749.z);
        u_xlat43.x = x_751;
        let x_754 : f32 = u_xlat12.w;
        let x_756 : f32 = u_xlat43.x;
        let x_758 : f32 = u_xlat24;
        u_xlat24 = ((x_754 * x_756) + x_758);
        let x_761 : vec4<f32> = u_xlat10;
        let x_762 : vec2<f32> = vec2<f32>(x_761.x, x_761.y);
        let x_764 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_762.x, x_762.y, x_764);
        let x_771 : vec3<f32> = txVec8;
        let x_773 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_771.xy, x_771.z);
        u_xlat43.x = x_773;
        let x_776 : f32 = u_xlat13.x;
        let x_778 : f32 = u_xlat43.x;
        let x_780 : f32 = u_xlat24;
        u_xlat24 = ((x_776 * x_778) + x_780);
        let x_783 : vec4<f32> = u_xlat10;
        let x_784 : vec2<f32> = vec2<f32>(x_783.z, x_783.w);
        let x_786 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_784.x, x_784.y, x_786);
        let x_793 : vec3<f32> = txVec9;
        let x_795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_793.xy, x_793.z);
        u_xlat43.x = x_795;
        let x_798 : f32 = u_xlat13.y;
        let x_800 : f32 = u_xlat43.x;
        let x_802 : f32 = u_xlat24;
        u_xlat24 = ((x_798 * x_800) + x_802);
        let x_805 : vec4<f32> = u_xlat8;
        let x_806 : vec2<f32> = vec2<f32>(x_805.z, x_805.w);
        let x_808 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_806.x, x_806.y, x_808);
        let x_815 : vec3<f32> = txVec10;
        let x_817 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_815.xy, x_815.z);
        u_xlat43.x = x_817;
        let x_820 : f32 = u_xlat13.z;
        let x_822 : f32 = u_xlat43.x;
        let x_824 : f32 = u_xlat24;
        u_xlat24 = ((x_820 * x_822) + x_824);
        let x_827 : vec4<f32> = u_xlat7;
        let x_828 : vec2<f32> = vec2<f32>(x_827.x, x_827.y);
        let x_830 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_828.x, x_828.y, x_830);
        let x_837 : vec3<f32> = txVec11;
        let x_839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_837.xy, x_837.z);
        u_xlat43.x = x_839;
        let x_842 : f32 = u_xlat13.w;
        let x_844 : f32 = u_xlat43.x;
        let x_846 : f32 = u_xlat24;
        u_xlat24 = ((x_842 * x_844) + x_846);
        let x_849 : vec4<f32> = u_xlat7;
        let x_850 : vec2<f32> = vec2<f32>(x_849.z, x_849.w);
        let x_852 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_850.x, x_850.y, x_852);
        let x_859 : vec3<f32> = txVec12;
        let x_861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_859.xy, x_859.z);
        u_xlat43.x = x_861;
        let x_864 : f32 = u_xlat5.x;
        let x_866 : f32 = u_xlat43.x;
        let x_868 : f32 = u_xlat24;
        u_xlat61 = ((x_864 * x_866) + x_868);
      } else {
        let x_871 : vec4<f32> = vs_TEXCOORD8;
        let x_874 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_877 : vec2<f32> = ((vec2<f32>(x_871.x, x_871.y) * vec2<f32>(x_874.z, x_874.w)) + vec2<f32>(0.5f, 0.5f));
        let x_878 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_877.x, x_877.y, x_878.z, x_878.w);
        let x_880 : vec4<f32> = u_xlat5;
        let x_882 : vec2<f32> = floor(vec2<f32>(x_880.x, x_880.y));
        let x_883 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_882.x, x_882.y, x_883.z, x_883.w);
        let x_885 : vec4<f32> = vs_TEXCOORD8;
        let x_888 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_891 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_885.x, x_885.y) * vec2<f32>(x_888.z, x_888.w)) + -(vec2<f32>(x_891.x, x_891.y)));
        let x_895 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_895.x, x_895.x, x_895.y, x_895.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_898 : vec4<f32> = u_xlat6;
        let x_900 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_898.x, x_898.x, x_898.z, x_898.z) * vec4<f32>(x_900.x, x_900.x, x_900.z, x_900.z));
        let x_903 : vec4<f32> = u_xlat7;
        let x_907 : vec2<f32> = (vec2<f32>(x_903.y, x_903.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_908 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_908.x, x_907.x, x_908.z, x_907.y);
        let x_910 : vec4<f32> = u_xlat7;
        let x_913 : vec2<f32> = u_xlat43;
        let x_915 : vec2<f32> = ((vec2<f32>(x_910.x, x_910.z) * vec2<f32>(0.5f, 0.5f)) + -(x_913));
        let x_916 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_915.x, x_916.y, x_915.y, x_916.w);
        let x_918 : vec2<f32> = u_xlat43;
        let x_920 : vec2<f32> = (-(x_918) + vec2<f32>(1.0f, 1.0f));
        let x_921 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_920.x, x_920.y, x_921.z, x_921.w);
        let x_923 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_923, vec2<f32>(0.0f, 0.0f));
        let x_925 : vec2<f32> = u_xlat45;
        let x_927 : vec2<f32> = u_xlat45;
        let x_929 : vec4<f32> = u_xlat7;
        let x_931 : vec2<f32> = ((-(x_925) * x_927) + vec2<f32>(x_929.x, x_929.y));
        let x_932 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
        let x_934 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_934, vec2<f32>(0.0f, 0.0f));
        let x_937 : vec2<f32> = u_xlat45;
        let x_939 : vec2<f32> = u_xlat45;
        let x_941 : vec4<f32> = u_xlat6;
        let x_943 : vec2<f32> = ((-(x_937) * x_939) + vec2<f32>(x_941.y, x_941.w));
        let x_944 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_943.x, x_944.y, x_943.y);
        let x_946 : vec4<f32> = u_xlat7;
        let x_949 : vec2<f32> = (vec2<f32>(x_946.x, x_946.y) + vec2<f32>(2.0f, 2.0f));
        let x_950 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
        let x_952 : vec3<f32> = u_xlat25;
        let x_954 : vec2<f32> = (vec2<f32>(x_952.x, x_952.z) + vec2<f32>(2.0f, 2.0f));
        let x_955 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_955.x, x_954.x, x_955.z, x_954.y);
        let x_958 : f32 = u_xlat6.y;
        u_xlat9.z = (x_958 * 0.081632003f);
        let x_962 : vec4<f32> = u_xlat6;
        let x_965 : vec3<f32> = (vec3<f32>(x_962.z, x_962.x, x_962.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_966 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
        let x_968 : vec4<f32> = u_xlat7;
        let x_971 : vec2<f32> = (vec2<f32>(x_968.x, x_968.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_972 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
        let x_975 : f32 = u_xlat10.y;
        u_xlat9.x = x_975;
        let x_977 : vec2<f32> = u_xlat43;
        let x_984 : vec2<f32> = ((vec2<f32>(x_977.x, x_977.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_985 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_985.x, x_984.x, x_985.z, x_984.y);
        let x_987 : vec2<f32> = u_xlat43;
        let x_991 : vec2<f32> = ((vec2<f32>(x_987.x, x_987.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_992 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_991.x, x_992.y, x_991.y, x_992.w);
        let x_995 : f32 = u_xlat6.x;
        u_xlat7.y = x_995;
        let x_998 : f32 = u_xlat8.y;
        u_xlat7.w = x_998;
        let x_1000 : vec4<f32> = u_xlat7;
        let x_1001 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1000 + x_1001);
        let x_1003 : vec2<f32> = u_xlat43;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1003.y, x_1003.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1007 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1007.x, x_1006.x, x_1007.z, x_1006.y);
        let x_1009 : vec2<f32> = u_xlat43;
        let x_1012 : vec2<f32> = ((vec2<f32>(x_1009.y, x_1009.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1013 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1012.x, x_1013.y, x_1012.y, x_1013.w);
        let x_1016 : f32 = u_xlat6.y;
        u_xlat8.y = x_1016;
        let x_1018 : vec4<f32> = u_xlat8;
        let x_1019 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1018 + x_1019);
        let x_1021 : vec4<f32> = u_xlat7;
        let x_1022 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1021 / x_1022);
        let x_1024 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1024 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1030 : vec4<f32> = u_xlat8;
        let x_1031 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1030 / x_1031);
        let x_1033 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1033 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1035 : vec4<f32> = u_xlat7;
        let x_1038 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1035.w, x_1035.x, x_1035.y, x_1035.z) * vec4<f32>(x_1038.x, x_1038.x, x_1038.x, x_1038.x));
        let x_1041 : vec4<f32> = u_xlat8;
        let x_1044 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1041.x, x_1041.w, x_1041.y, x_1041.z) * vec4<f32>(x_1044.y, x_1044.y, x_1044.y, x_1044.y));
        let x_1047 : vec4<f32> = u_xlat7;
        let x_1048 : vec3<f32> = vec3<f32>(x_1047.y, x_1047.z, x_1047.w);
        let x_1049 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1048.x, x_1049.y, x_1048.y, x_1048.z);
        let x_1052 : f32 = u_xlat8.x;
        u_xlat10.y = x_1052;
        let x_1054 : vec4<f32> = u_xlat5;
        let x_1057 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1060 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.y) * vec4<f32>(x_1057.x, x_1057.y, x_1057.x, x_1057.y)) + vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1060.y));
        let x_1063 : vec4<f32> = u_xlat5;
        let x_1066 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1069 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1063.x, x_1063.y) * vec2<f32>(x_1066.x, x_1066.y)) + vec2<f32>(x_1069.w, x_1069.y));
        let x_1073 : f32 = u_xlat10.y;
        u_xlat7.y = x_1073;
        let x_1076 : f32 = u_xlat8.z;
        u_xlat10.y = x_1076;
        let x_1078 : vec4<f32> = u_xlat5;
        let x_1081 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1084 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1078.x, x_1078.y, x_1078.x, x_1078.y) * vec4<f32>(x_1081.x, x_1081.y, x_1081.x, x_1081.y)) + vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1084.y));
        let x_1087 : vec4<f32> = u_xlat5;
        let x_1090 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1093 : vec4<f32> = u_xlat10;
        let x_1095 : vec2<f32> = ((vec2<f32>(x_1087.x, x_1087.y) * vec2<f32>(x_1090.x, x_1090.y)) + vec2<f32>(x_1093.w, x_1093.y));
        let x_1096 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
        let x_1099 : f32 = u_xlat10.y;
        u_xlat7.z = x_1099;
        let x_1102 : vec4<f32> = u_xlat5;
        let x_1105 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1108 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1102.x, x_1102.y, x_1102.x, x_1102.y) * vec4<f32>(x_1105.x, x_1105.y, x_1105.x, x_1105.y)) + vec4<f32>(x_1108.x, x_1108.y, x_1108.x, x_1108.z));
        let x_1112 : f32 = u_xlat8.w;
        u_xlat10.y = x_1112;
        let x_1115 : vec4<f32> = u_xlat5;
        let x_1118 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1121 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y) * vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y)) + vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1121.y));
        let x_1125 : vec4<f32> = u_xlat5;
        let x_1128 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1125.x, x_1125.y) * vec2<f32>(x_1128.x, x_1128.y)) + vec2<f32>(x_1131.w, x_1131.y));
        let x_1135 : f32 = u_xlat10.y;
        u_xlat7.w = x_1135;
        let x_1138 : vec4<f32> = u_xlat5;
        let x_1141 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1138.x, x_1138.y) * vec2<f32>(x_1141.x, x_1141.y)) + vec2<f32>(x_1144.x, x_1144.w));
        let x_1147 : vec4<f32> = u_xlat10;
        let x_1148 : vec3<f32> = vec3<f32>(x_1147.x, x_1147.z, x_1147.w);
        let x_1149 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1148.x, x_1149.y, x_1148.y, x_1148.z);
        let x_1151 : vec4<f32> = u_xlat5;
        let x_1154 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1157 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1151.x, x_1151.y, x_1151.x, x_1151.y) * vec4<f32>(x_1154.x, x_1154.y, x_1154.x, x_1154.y)) + vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1157.y));
        let x_1161 : vec4<f32> = u_xlat5;
        let x_1164 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1167 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1161.x, x_1161.y) * vec2<f32>(x_1164.x, x_1164.y)) + vec2<f32>(x_1167.w, x_1167.y));
        let x_1171 : f32 = u_xlat7.x;
        u_xlat8.x = x_1171;
        let x_1173 : vec4<f32> = u_xlat5;
        let x_1176 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1179 : vec4<f32> = u_xlat8;
        let x_1181 : vec2<f32> = ((vec2<f32>(x_1173.x, x_1173.y) * vec2<f32>(x_1176.x, x_1176.y)) + vec2<f32>(x_1179.x, x_1179.y));
        let x_1182 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1181.x, x_1181.y, x_1182.z, x_1182.w);
        let x_1185 : vec4<f32> = u_xlat6;
        let x_1187 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1185.x, x_1185.x, x_1185.x, x_1185.x) * x_1187);
        let x_1190 : vec4<f32> = u_xlat6;
        let x_1192 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1190.y, x_1190.y, x_1190.y, x_1190.y) * x_1192);
        let x_1195 : vec4<f32> = u_xlat6;
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1195.z, x_1195.z, x_1195.z, x_1195.z) * x_1197);
        let x_1199 : vec4<f32> = u_xlat6;
        let x_1201 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1199.w, x_1199.w, x_1199.w, x_1199.w) * x_1201);
        let x_1204 : vec4<f32> = u_xlat11;
        let x_1205 : vec2<f32> = vec2<f32>(x_1204.x, x_1204.y);
        let x_1207 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1205.x, x_1205.y, x_1207);
        let x_1214 : vec3<f32> = txVec13;
        let x_1216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1214.xy, x_1214.z);
        u_xlat7.x = x_1216;
        let x_1219 : vec4<f32> = u_xlat11;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.z, x_1219.w);
        let x_1222 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1230 : vec3<f32> = txVec14;
        let x_1232 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1230.xy, x_1230.z);
        u_xlat64 = x_1232;
        let x_1233 : f32 = u_xlat64;
        let x_1235 : f32 = u_xlat16.y;
        u_xlat64 = (x_1233 * x_1235);
        let x_1238 : f32 = u_xlat16.x;
        let x_1240 : f32 = u_xlat7.x;
        let x_1242 : f32 = u_xlat64;
        u_xlat7.x = ((x_1238 * x_1240) + x_1242);
        let x_1246 : vec2<f32> = u_xlat43;
        let x_1248 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1246.x, x_1246.y, x_1248);
        let x_1255 : vec3<f32> = txVec15;
        let x_1257 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1255.xy, x_1255.z);
        u_xlat43.x = x_1257;
        let x_1260 : f32 = u_xlat16.z;
        let x_1262 : f32 = u_xlat43.x;
        let x_1265 : f32 = u_xlat7.x;
        u_xlat43.x = ((x_1260 * x_1262) + x_1265);
        let x_1269 : vec4<f32> = u_xlat14;
        let x_1270 : vec2<f32> = vec2<f32>(x_1269.x, x_1269.y);
        let x_1272 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1270.x, x_1270.y, x_1272);
        let x_1280 : vec3<f32> = txVec16;
        let x_1282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1280.xy, x_1280.z);
        u_xlat62 = x_1282;
        let x_1284 : f32 = u_xlat16.w;
        let x_1285 : f32 = u_xlat62;
        let x_1288 : f32 = u_xlat43.x;
        u_xlat43.x = ((x_1284 * x_1285) + x_1288);
        let x_1292 : vec4<f32> = u_xlat12;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.x, x_1292.y);
        let x_1295 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1293.x, x_1293.y, x_1295);
        let x_1302 : vec3<f32> = txVec17;
        let x_1304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1302.xy, x_1302.z);
        u_xlat62 = x_1304;
        let x_1306 : f32 = u_xlat17.x;
        let x_1307 : f32 = u_xlat62;
        let x_1310 : f32 = u_xlat43.x;
        u_xlat43.x = ((x_1306 * x_1307) + x_1310);
        let x_1314 : vec4<f32> = u_xlat12;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.z, x_1314.w);
        let x_1317 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1324 : vec3<f32> = txVec18;
        let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1324.xy, x_1324.z);
        u_xlat62 = x_1326;
        let x_1328 : f32 = u_xlat17.y;
        let x_1329 : f32 = u_xlat62;
        let x_1332 : f32 = u_xlat43.x;
        u_xlat43.x = ((x_1328 * x_1329) + x_1332);
        let x_1336 : vec4<f32> = u_xlat13;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.x, x_1336.y);
        let x_1339 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1337.x, x_1337.y, x_1339);
        let x_1346 : vec3<f32> = txVec19;
        let x_1348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1346.xy, x_1346.z);
        u_xlat62 = x_1348;
        let x_1350 : f32 = u_xlat17.z;
        let x_1351 : f32 = u_xlat62;
        let x_1354 : f32 = u_xlat43.x;
        u_xlat43.x = ((x_1350 * x_1351) + x_1354);
        let x_1358 : vec4<f32> = u_xlat14;
        let x_1359 : vec2<f32> = vec2<f32>(x_1358.z, x_1358.w);
        let x_1361 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec20;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1368.xy, x_1368.z);
        u_xlat62 = x_1370;
        let x_1372 : f32 = u_xlat17.w;
        let x_1373 : f32 = u_xlat62;
        let x_1376 : f32 = u_xlat43.x;
        u_xlat43.x = ((x_1372 * x_1373) + x_1376);
        let x_1380 : vec4<f32> = u_xlat15;
        let x_1381 : vec2<f32> = vec2<f32>(x_1380.x, x_1380.y);
        let x_1383 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1381.x, x_1381.y, x_1383);
        let x_1390 : vec3<f32> = txVec21;
        let x_1392 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1390.xy, x_1390.z);
        u_xlat62 = x_1392;
        let x_1394 : f32 = u_xlat18.x;
        let x_1395 : f32 = u_xlat62;
        let x_1398 : f32 = u_xlat43.x;
        u_xlat43.x = ((x_1394 * x_1395) + x_1398);
        let x_1402 : vec4<f32> = u_xlat15;
        let x_1403 : vec2<f32> = vec2<f32>(x_1402.z, x_1402.w);
        let x_1405 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec22;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1412.xy, x_1412.z);
        u_xlat62 = x_1414;
        let x_1416 : f32 = u_xlat18.y;
        let x_1417 : f32 = u_xlat62;
        let x_1420 : f32 = u_xlat43.x;
        u_xlat43.x = ((x_1416 * x_1417) + x_1420);
        let x_1424 : vec2<f32> = u_xlat26;
        let x_1426 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec23;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1433.xy, x_1433.z);
        u_xlat62 = x_1435;
        let x_1437 : f32 = u_xlat18.z;
        let x_1438 : f32 = u_xlat62;
        let x_1441 : f32 = u_xlat43.x;
        u_xlat43.x = ((x_1437 * x_1438) + x_1441);
        let x_1445 : vec2<f32> = u_xlat51;
        let x_1447 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec24;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1454.xy, x_1454.z);
        u_xlat62 = x_1456;
        let x_1458 : f32 = u_xlat18.w;
        let x_1459 : f32 = u_xlat62;
        let x_1462 : f32 = u_xlat43.x;
        u_xlat43.x = ((x_1458 * x_1459) + x_1462);
        let x_1466 : vec4<f32> = u_xlat10;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.x, x_1466.y);
        let x_1469 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec25;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1476.xy, x_1476.z);
        u_xlat62 = x_1478;
        let x_1480 : f32 = u_xlat6.x;
        let x_1481 : f32 = u_xlat62;
        let x_1484 : f32 = u_xlat43.x;
        u_xlat43.x = ((x_1480 * x_1481) + x_1484);
        let x_1488 : vec4<f32> = u_xlat10;
        let x_1489 : vec2<f32> = vec2<f32>(x_1488.z, x_1488.w);
        let x_1491 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec26;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1498.xy, x_1498.z);
        u_xlat62 = x_1500;
        let x_1502 : f32 = u_xlat6.y;
        let x_1503 : f32 = u_xlat62;
        let x_1506 : f32 = u_xlat43.x;
        u_xlat43.x = ((x_1502 * x_1503) + x_1506);
        let x_1510 : vec2<f32> = u_xlat46;
        let x_1512 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec27;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1519.xy, x_1519.z);
        u_xlat62 = x_1521;
        let x_1523 : f32 = u_xlat6.z;
        let x_1524 : f32 = u_xlat62;
        let x_1527 : f32 = u_xlat43.x;
        u_xlat43.x = ((x_1523 * x_1524) + x_1527);
        let x_1531 : vec4<f32> = u_xlat5;
        let x_1532 : vec2<f32> = vec2<f32>(x_1531.x, x_1531.y);
        let x_1534 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec28;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1541.xy, x_1541.z);
        u_xlat5.x = x_1543;
        let x_1546 : f32 = u_xlat6.w;
        let x_1548 : f32 = u_xlat5.x;
        let x_1551 : f32 = u_xlat43.x;
        u_xlat61 = ((x_1546 * x_1548) + x_1551);
      }
    }
  } else {
    let x_1555 : vec4<f32> = vs_TEXCOORD8;
    let x_1556 : vec2<f32> = vec2<f32>(x_1555.x, x_1555.y);
    let x_1558 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
    let x_1565 : vec3<f32> = txVec29;
    let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1565.xy, x_1565.z);
    u_xlat61 = x_1567;
  }
  let x_1569 : f32 = x_301.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1569) + 1.0f);
  let x_1573 : f32 = u_xlat61;
  let x_1575 : f32 = x_301.x_MainLightShadowParams.x;
  let x_1578 : f32 = u_xlat5.x;
  u_xlat61 = ((x_1573 * x_1575) + x_1578);
  let x_1581 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_1581);
  let x_1585 : f32 = vs_TEXCOORD8.z;
  u_xlatb24 = (x_1585 >= 1.0f);
  let x_1587 : bool = u_xlatb24;
  let x_1588 : bool = u_xlatb5;
  u_xlatb5 = (x_1587 | x_1588);
  let x_1590 : bool = u_xlatb5;
  let x_1591 : f32 = u_xlat61;
  u_xlat61 = select(x_1591, 1.0f, x_1590);
  let x_1595 : vec3<f32> = vs_TEXCOORD7;
  let x_1598 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1600 : vec3<f32> = (x_1595 + -(x_1598));
  let x_1601 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
  let x_1603 : vec4<f32> = u_xlat5;
  let x_1605 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1603.x, x_1603.y, x_1603.z), vec3<f32>(x_1605.x, x_1605.y, x_1605.z));
  let x_1610 : f32 = u_xlat5.x;
  let x_1612 : f32 = x_301.x_MainLightShadowParams.z;
  let x_1615 : f32 = x_301.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1610 * x_1612) + x_1615);
  let x_1619 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1619, 0.0f, 1.0f);
  let x_1622 : f32 = u_xlat61;
  u_xlat24 = (-(x_1622) + 1.0f);
  let x_1626 : f32 = u_xlat5.x;
  let x_1627 : f32 = u_xlat24;
  let x_1629 : f32 = u_xlat61;
  u_xlat61 = ((x_1626 * x_1627) + x_1629);
  let x_1638 : f32 = x_1635.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_1638 == -1.0f));
  let x_1640 : bool = u_xlatb5;
  if (x_1640) {
    let x_1643 : vec3<f32> = vs_TEXCOORD7;
    let x_1646 : vec4<f32> = x_1635.x_MainLightWorldToLight[1i];
    let x_1648 : vec2<f32> = (vec2<f32>(x_1643.y, x_1643.y) * vec2<f32>(x_1646.x, x_1646.y));
    let x_1649 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1648.x, x_1648.y, x_1649.z, x_1649.w);
    let x_1652 : vec4<f32> = x_1635.x_MainLightWorldToLight[0i];
    let x_1654 : vec3<f32> = vs_TEXCOORD7;
    let x_1657 : vec4<f32> = u_xlat5;
    let x_1659 : vec2<f32> = ((vec2<f32>(x_1652.x, x_1652.y) * vec2<f32>(x_1654.x, x_1654.x)) + vec2<f32>(x_1657.x, x_1657.y));
    let x_1660 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1659.x, x_1659.y, x_1660.z, x_1660.w);
    let x_1663 : vec4<f32> = x_1635.x_MainLightWorldToLight[2i];
    let x_1665 : vec3<f32> = vs_TEXCOORD7;
    let x_1668 : vec4<f32> = u_xlat5;
    let x_1670 : vec2<f32> = ((vec2<f32>(x_1663.x, x_1663.y) * vec2<f32>(x_1665.z, x_1665.z)) + vec2<f32>(x_1668.x, x_1668.y));
    let x_1671 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1670.x, x_1670.y, x_1671.z, x_1671.w);
    let x_1673 : vec4<f32> = u_xlat5;
    let x_1677 : vec4<f32> = x_1635.x_MainLightWorldToLight[3i];
    let x_1679 : vec2<f32> = (vec2<f32>(x_1673.x, x_1673.y) + vec2<f32>(x_1677.x, x_1677.y));
    let x_1680 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1679.x, x_1679.y, x_1680.z, x_1680.w);
    let x_1682 : vec4<f32> = u_xlat5;
    let x_1685 : vec2<f32> = ((vec2<f32>(x_1682.x, x_1682.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1686 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1685.x, x_1685.y, x_1686.z, x_1686.w);
    let x_1693 : vec4<f32> = u_xlat5;
    let x_1696 : f32 = x_43.x_GlobalMipBias.x;
    let x_1697 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1693.x, x_1693.y), x_1696);
    u_xlat5 = x_1697;
    let x_1702 : f32 = x_1635.x_MainLightCookieTextureFormat;
    let x_1704 : f32 = x_1635.x_MainLightCookieTextureFormat;
    let x_1706 : f32 = x_1635.x_MainLightCookieTextureFormat;
    let x_1708 : f32 = x_1635.x_MainLightCookieTextureFormat;
    let x_1709 : vec4<f32> = vec4<f32>(x_1702, x_1704, x_1706, x_1708);
    let x_1717 : vec4<bool> = (vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1709.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1717.x, x_1717.y);
    let x_1720 : bool = u_xlatb6.y;
    if (x_1720) {
      let x_1725 : f32 = u_xlat5.w;
      x_1721 = x_1725;
    } else {
      let x_1728 : f32 = u_xlat5.x;
      x_1721 = x_1728;
    }
    let x_1729 : f32 = x_1721;
    u_xlat62 = x_1729;
    let x_1731 : bool = u_xlatb6.x;
    if (x_1731) {
      let x_1735 : vec4<f32> = u_xlat5;
      x_1732 = vec3<f32>(x_1735.x, x_1735.y, x_1735.z);
    } else {
      let x_1738 : f32 = u_xlat62;
      x_1732 = vec3<f32>(x_1738, x_1738, x_1738);
    }
    let x_1740 : vec3<f32> = x_1732;
    let x_1741 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1740.x, x_1740.y, x_1740.z, x_1741.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1747 : vec4<f32> = u_xlat5;
  let x_1750 : vec4<f32> = x_43.x_MainLightColor;
  let x_1752 : vec3<f32> = (vec3<f32>(x_1747.x, x_1747.y, x_1747.z) * vec3<f32>(x_1750.x, x_1750.y, x_1750.z));
  let x_1753 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1753.w);
  let x_1755 : f32 = u_xlat41;
  let x_1757 : vec4<f32> = u_xlat5;
  let x_1759 : vec3<f32> = (vec3<f32>(x_1755, x_1755, x_1755) * vec3<f32>(x_1757.x, x_1757.y, x_1757.z));
  let x_1760 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1759.x, x_1759.y, x_1759.z, x_1760.w);
  let x_1763 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1763;
  let x_1767 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1767;
  let x_1771 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1771;
  let x_1773 : vec4<f32> = u_xlat6;
  let x_1776 : vec4<f32> = u_xlat2;
  u_xlat62 = dot(-(vec3<f32>(x_1773.x, x_1773.y, x_1773.z)), vec3<f32>(x_1776.x, x_1776.y, x_1776.z));
  let x_1779 : f32 = u_xlat62;
  let x_1780 : f32 = u_xlat62;
  u_xlat62 = (x_1779 + x_1780);
  let x_1782 : vec4<f32> = u_xlat2;
  let x_1784 : f32 = u_xlat62;
  let x_1788 : vec4<f32> = u_xlat6;
  let x_1791 : vec3<f32> = ((vec3<f32>(x_1782.x, x_1782.y, x_1782.z) * -(vec3<f32>(x_1784, x_1784, x_1784))) + -(vec3<f32>(x_1788.x, x_1788.y, x_1788.z)));
  let x_1792 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1791.x, x_1791.y, x_1791.z, x_1792.w);
  let x_1794 : vec4<f32> = u_xlat2;
  let x_1796 : vec4<f32> = u_xlat6;
  u_xlat62 = dot(vec3<f32>(x_1794.x, x_1794.y, x_1794.z), vec3<f32>(x_1796.x, x_1796.y, x_1796.z));
  let x_1799 : f32 = u_xlat62;
  u_xlat62 = clamp(x_1799, 0.0f, 1.0f);
  let x_1801 : f32 = u_xlat62;
  u_xlat62 = (-(x_1801) + 1.0f);
  let x_1804 : f32 = u_xlat62;
  let x_1805 : f32 = u_xlat62;
  u_xlat62 = (x_1804 * x_1805);
  let x_1807 : f32 = u_xlat62;
  let x_1808 : f32 = u_xlat62;
  u_xlat62 = (x_1807 * x_1808);
  let x_1812 : f32 = u_xlat1.x;
  u_xlat63 = ((-(x_1812) * 0.699999988f) + 1.700000048f);
  let x_1819 : f32 = u_xlat1.x;
  let x_1820 : f32 = u_xlat63;
  u_xlat1.x = (x_1819 * x_1820);
  let x_1824 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1824 * 6.0f);
  let x_1836 : vec4<f32> = u_xlat7;
  let x_1839 : f32 = u_xlat1.x;
  let x_1840 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1836.x, x_1836.y, x_1836.z), x_1839);
  u_xlat7 = x_1840;
  let x_1842 : f32 = u_xlat7.w;
  u_xlat1.x = (x_1842 + -1.0f);
  let x_1846 : f32 = x_93.unity_SpecCube0_HDR.w;
  let x_1848 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1846 * x_1848) + 1.0f);
  let x_1853 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1853, 0.0f);
  let x_1857 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1857);
  let x_1861 : f32 = u_xlat1.x;
  let x_1863 : f32 = x_93.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1861 * x_1863);
  let x_1867 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1867);
  let x_1871 : f32 = u_xlat1.x;
  let x_1873 : f32 = x_93.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1871 * x_1873);
  let x_1876 : vec4<f32> = u_xlat7;
  let x_1878 : vec3<f32> = u_xlat1;
  let x_1880 : vec3<f32> = (vec3<f32>(x_1876.x, x_1876.y, x_1876.z) * vec3<f32>(x_1878.x, x_1878.x, x_1878.x));
  let x_1881 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1881.w);
  let x_1883 : f32 = u_xlat59;
  let x_1885 : f32 = u_xlat59;
  let x_1889 : vec2<f32> = ((vec2<f32>(x_1883, x_1883) * vec2<f32>(x_1885, x_1885)) + vec2<f32>(-1.0f, 1.0f));
  let x_1890 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1889.x, x_1889.y, x_1890.z, x_1890.w);
  let x_1893 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_1893);
  let x_1897 : vec4<f32> = u_xlat0;
  let x_1900 : f32 = u_xlat57;
  u_xlat27 = (-(vec3<f32>(x_1897.x, x_1897.y, x_1897.z)) + vec3<f32>(x_1900, x_1900, x_1900));
  let x_1903 : f32 = u_xlat62;
  let x_1905 : vec3<f32> = u_xlat27;
  let x_1907 : vec4<f32> = u_xlat0;
  u_xlat27 = ((vec3<f32>(x_1903, x_1903, x_1903) * x_1905) + vec3<f32>(x_1907.x, x_1907.y, x_1907.z));
  let x_1910 : vec3<f32> = u_xlat1;
  let x_1912 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_1910.x, x_1910.x, x_1910.x) * x_1912);
  let x_1914 : vec4<f32> = u_xlat7;
  let x_1916 : vec3<f32> = u_xlat27;
  let x_1917 : vec3<f32> = (vec3<f32>(x_1914.x, x_1914.y, x_1914.z) * x_1916);
  let x_1918 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);
  let x_1920 : vec3<f32> = u_xlat20;
  let x_1921 : vec4<f32> = u_xlat4;
  let x_1924 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_1920 * vec3<f32>(x_1921.x, x_1921.y, x_1921.z)) + vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
  let x_1927 : f32 = u_xlat61;
  let x_1930 : f32 = x_93.unity_LightData.z;
  u_xlat57 = (x_1927 * x_1930);
  let x_1933 : vec4<f32> = u_xlat2;
  let x_1936 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat58 = dot(vec3<f32>(x_1933.x, x_1933.y, x_1933.z), vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
  let x_1939 : f32 = u_xlat58;
  u_xlat58 = clamp(x_1939, 0.0f, 1.0f);
  let x_1941 : f32 = u_xlat57;
  let x_1942 : f32 = u_xlat58;
  u_xlat57 = (x_1941 * x_1942);
  let x_1944 : f32 = u_xlat57;
  let x_1946 : vec4<f32> = u_xlat5;
  let x_1948 : vec3<f32> = (vec3<f32>(x_1944, x_1944, x_1944) * vec3<f32>(x_1946.x, x_1946.y, x_1946.z));
  let x_1949 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1948.x, x_1948.y, x_1948.z, x_1949.w);
  let x_1951 : vec4<f32> = u_xlat6;
  let x_1954 : vec4<f32> = x_43.x_MainLightPosition;
  let x_1956 : vec3<f32> = (vec3<f32>(x_1951.x, x_1951.y, x_1951.z) + vec3<f32>(x_1954.x, x_1954.y, x_1954.z));
  let x_1957 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1956.x, x_1956.y, x_1956.z, x_1957.w);
  let x_1959 : vec4<f32> = u_xlat7;
  let x_1961 : vec4<f32> = u_xlat7;
  u_xlat57 = dot(vec3<f32>(x_1959.x, x_1959.y, x_1959.z), vec3<f32>(x_1961.x, x_1961.y, x_1961.z));
  let x_1964 : f32 = u_xlat57;
  u_xlat57 = max(x_1964, 1.17549435e-37f);
  let x_1967 : f32 = u_xlat57;
  u_xlat57 = inverseSqrt(x_1967);
  let x_1969 : f32 = u_xlat57;
  let x_1971 : vec4<f32> = u_xlat7;
  let x_1973 : vec3<f32> = (vec3<f32>(x_1969, x_1969, x_1969) * vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
  let x_1974 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1976 : vec4<f32> = u_xlat2;
  let x_1978 : vec4<f32> = u_xlat7;
  u_xlat57 = dot(vec3<f32>(x_1976.x, x_1976.y, x_1976.z), vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
  let x_1981 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1981, 0.0f, 1.0f);
  let x_1984 : vec4<f32> = x_43.x_MainLightPosition;
  let x_1986 : vec4<f32> = u_xlat7;
  u_xlat58 = dot(vec3<f32>(x_1984.x, x_1984.y, x_1984.z), vec3<f32>(x_1986.x, x_1986.y, x_1986.z));
  let x_1989 : f32 = u_xlat58;
  u_xlat58 = clamp(x_1989, 0.0f, 1.0f);
  let x_1991 : f32 = u_xlat57;
  let x_1992 : f32 = u_xlat57;
  u_xlat57 = (x_1991 * x_1992);
  let x_1994 : f32 = u_xlat57;
  let x_1996 : f32 = u_xlat8.x;
  u_xlat57 = ((x_1994 * x_1996) + 1.000010014f);
  let x_2000 : f32 = u_xlat58;
  let x_2001 : f32 = u_xlat58;
  u_xlat58 = (x_2000 * x_2001);
  let x_2003 : f32 = u_xlat57;
  let x_2004 : f32 = u_xlat57;
  u_xlat57 = (x_2003 * x_2004);
  let x_2006 : f32 = u_xlat58;
  u_xlat58 = max(x_2006, 0.100000001f);
  let x_2009 : f32 = u_xlat57;
  let x_2010 : f32 = u_xlat58;
  u_xlat57 = (x_2009 * x_2010);
  let x_2012 : f32 = u_xlat22;
  let x_2013 : f32 = u_xlat57;
  u_xlat57 = (x_2012 * x_2013);
  let x_2015 : f32 = u_xlat60;
  let x_2016 : f32 = u_xlat57;
  u_xlat57 = (x_2015 / x_2016);
  let x_2018 : vec4<f32> = u_xlat0;
  let x_2020 : f32 = u_xlat57;
  let x_2023 : vec4<f32> = u_xlat4;
  let x_2025 : vec3<f32> = ((vec3<f32>(x_2018.x, x_2018.y, x_2018.z) * vec3<f32>(x_2020, x_2020, x_2020)) + vec3<f32>(x_2023.x, x_2023.y, x_2023.z));
  let x_2026 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
  let x_2028 : vec4<f32> = u_xlat5;
  let x_2030 : vec4<f32> = u_xlat7;
  let x_2032 : vec3<f32> = (vec3<f32>(x_2028.x, x_2028.y, x_2028.z) * vec3<f32>(x_2030.x, x_2030.y, x_2030.z));
  let x_2033 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2032.x, x_2032.y, x_2032.z, x_2033.w);
  let x_2036 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_2038 : f32 = x_93.unity_LightData.y;
  u_xlat57 = min(x_2036, x_2038);
  let x_2042 : f32 = u_xlat57;
  u_xlatu57 = bitcast<u32>(i32(x_2042));
  let x_2047 : f32 = x_1635.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2049 : f32 = x_1635.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2051 : f32 = x_1635.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2053 : f32 = x_1635.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2054 : vec4<f32> = vec4<f32>(x_2047, x_2049, x_2051, x_2053);
  let x_2060 : vec4<bool> = (vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2054.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2060.x, x_2060.y);
  u_xlat27.x = 0.0f;
  u_xlat27.y = 0.0f;
  u_xlat27.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2071 : u32 = u_xlatu_loop_1;
    let x_2072 : u32 = u_xlatu57;
    if ((x_2071 < x_2072)) {
    } else {
      break;
    }
    let x_2075 : u32 = u_xlatu_loop_1;
    u_xlatu59 = (x_2075 >> 2u);
    let x_2079 : u32 = u_xlatu_loop_1;
    u_xlati61 = bitcast<i32>((x_2079 & 3u));
    let x_2082 : u32 = u_xlatu59;
    let x_2085 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_2082)];
    let x_2095 : i32 = u_xlati61;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2100 : vec4<u32> = indexable[x_2095];
    u_xlat59 = dot(x_2085, bitcast<vec4<f32>>(x_2100));
    let x_2103 : f32 = u_xlat59;
    u_xlatu59 = bitcast<u32>(i32(x_2103));
    let x_2106 : vec3<f32> = vs_TEXCOORD7;
    let x_2118 : u32 = u_xlatu59;
    let x_2121 : vec4<f32> = x_2117.x_AdditionalLightsPosition[bitcast<i32>(x_2118)];
    let x_2124 : u32 = u_xlatu59;
    let x_2127 : vec4<f32> = x_2117.x_AdditionalLightsPosition[bitcast<i32>(x_2124)];
    let x_2129 : vec3<f32> = ((-(x_2106) * vec3<f32>(x_2121.w, x_2121.w, x_2121.w)) + vec3<f32>(x_2127.x, x_2127.y, x_2127.z));
    let x_2130 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2129.x, x_2129.y, x_2129.z, x_2130.w);
    let x_2132 : vec4<f32> = u_xlat9;
    let x_2134 : vec4<f32> = u_xlat9;
    u_xlat61 = dot(vec3<f32>(x_2132.x, x_2132.y, x_2132.z), vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
    let x_2137 : f32 = u_xlat61;
    u_xlat61 = max(x_2137, 6.10351562e-05f);
    let x_2140 : f32 = u_xlat61;
    u_xlat62 = inverseSqrt(x_2140);
    let x_2142 : f32 = u_xlat62;
    let x_2144 : vec4<f32> = u_xlat9;
    let x_2146 : vec3<f32> = (vec3<f32>(x_2142, x_2142, x_2142) * vec3<f32>(x_2144.x, x_2144.y, x_2144.z));
    let x_2147 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2146.x, x_2146.y, x_2146.z, x_2147.w);
    let x_2149 : f32 = u_xlat61;
    u_xlat63 = (1.0f / x_2149);
    let x_2151 : f32 = u_xlat61;
    let x_2152 : u32 = u_xlatu59;
    let x_2155 : f32 = x_2117.x_AdditionalLightsAttenuation[bitcast<i32>(x_2152)].x;
    u_xlat61 = (x_2151 * x_2155);
    let x_2157 : f32 = u_xlat61;
    let x_2159 : f32 = u_xlat61;
    u_xlat61 = ((-(x_2157) * x_2159) + 1.0f);
    let x_2162 : f32 = u_xlat61;
    u_xlat61 = max(x_2162, 0.0f);
    let x_2164 : f32 = u_xlat61;
    let x_2165 : f32 = u_xlat61;
    u_xlat61 = (x_2164 * x_2165);
    let x_2167 : f32 = u_xlat61;
    let x_2168 : f32 = u_xlat63;
    u_xlat61 = (x_2167 * x_2168);
    let x_2170 : u32 = u_xlatu59;
    let x_2173 : vec4<f32> = x_2117.x_AdditionalLightsSpotDir[bitcast<i32>(x_2170)];
    let x_2175 : vec4<f32> = u_xlat10;
    u_xlat63 = dot(vec3<f32>(x_2173.x, x_2173.y, x_2173.z), vec3<f32>(x_2175.x, x_2175.y, x_2175.z));
    let x_2178 : f32 = u_xlat63;
    let x_2179 : u32 = u_xlatu59;
    let x_2182 : f32 = x_2117.x_AdditionalLightsAttenuation[bitcast<i32>(x_2179)].z;
    let x_2184 : u32 = u_xlatu59;
    let x_2187 : f32 = x_2117.x_AdditionalLightsAttenuation[bitcast<i32>(x_2184)].w;
    u_xlat63 = ((x_2178 * x_2182) + x_2187);
    let x_2189 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2189, 0.0f, 1.0f);
    let x_2191 : f32 = u_xlat63;
    let x_2192 : f32 = u_xlat63;
    u_xlat63 = (x_2191 * x_2192);
    let x_2194 : f32 = u_xlat61;
    let x_2195 : f32 = u_xlat63;
    u_xlat61 = (x_2194 * x_2195);
    let x_2198 : u32 = u_xlatu59;
    u_xlatu63 = (x_2198 >> 5u);
    let x_2201 : u32 = u_xlatu59;
    u_xlati45 = (1i << bitcast<u32>((bitcast<i32>(x_2201) & 31i)));
    let x_2207 : i32 = u_xlati45;
    let x_2209 : u32 = u_xlatu63;
    let x_2212 : f32 = x_1635.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2209)].el;
    u_xlati63 = bitcast<i32>((bitcast<u32>(x_2207) & bitcast<u32>(x_2212)));
    let x_2216 : i32 = u_xlati63;
    if ((x_2216 != 0i)) {
      let x_2226 : u32 = u_xlatu59;
      let x_2229 : f32 = x_2225.x_AdditionalLightsLightTypes[bitcast<i32>(x_2226)].el;
      u_xlati63 = i32(x_2229);
      let x_2231 : i32 = u_xlati63;
      u_xlati45 = select(1i, 0i, (x_2231 != 0i));
      let x_2235 : u32 = u_xlatu59;
      u_xlati64 = (bitcast<i32>(x_2235) << bitcast<u32>(2i));
      let x_2238 : i32 = u_xlati45;
      if ((x_2238 != 0i)) {
        let x_2242 : vec3<f32> = vs_TEXCOORD7;
        let x_2244 : i32 = u_xlati64;
        let x_2247 : i32 = u_xlati64;
        let x_2251 : vec4<f32> = x_2225.x_AdditionalLightsWorldToLights[((x_2244 + 1i) / 4i)][((x_2247 + 1i) % 4i)];
        let x_2253 : vec3<f32> = (vec3<f32>(x_2242.y, x_2242.y, x_2242.y) * vec3<f32>(x_2251.x, x_2251.y, x_2251.w));
        let x_2254 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2254.w);
        let x_2256 : i32 = u_xlati64;
        let x_2258 : i32 = u_xlati64;
        let x_2261 : vec4<f32> = x_2225.x_AdditionalLightsWorldToLights[(x_2256 / 4i)][(x_2258 % 4i)];
        let x_2263 : vec3<f32> = vs_TEXCOORD7;
        let x_2266 : vec4<f32> = u_xlat11;
        let x_2268 : vec3<f32> = ((vec3<f32>(x_2261.x, x_2261.y, x_2261.w) * vec3<f32>(x_2263.x, x_2263.x, x_2263.x)) + vec3<f32>(x_2266.x, x_2266.y, x_2266.z));
        let x_2269 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2268.x, x_2268.y, x_2268.z, x_2269.w);
        let x_2271 : i32 = u_xlati64;
        let x_2274 : i32 = u_xlati64;
        let x_2278 : vec4<f32> = x_2225.x_AdditionalLightsWorldToLights[((x_2271 + 2i) / 4i)][((x_2274 + 2i) % 4i)];
        let x_2280 : vec3<f32> = vs_TEXCOORD7;
        let x_2283 : vec4<f32> = u_xlat11;
        let x_2285 : vec3<f32> = ((vec3<f32>(x_2278.x, x_2278.y, x_2278.w) * vec3<f32>(x_2280.z, x_2280.z, x_2280.z)) + vec3<f32>(x_2283.x, x_2283.y, x_2283.z));
        let x_2286 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2285.x, x_2285.y, x_2285.z, x_2286.w);
        let x_2288 : vec4<f32> = u_xlat11;
        let x_2290 : i32 = u_xlati64;
        let x_2293 : i32 = u_xlati64;
        let x_2297 : vec4<f32> = x_2225.x_AdditionalLightsWorldToLights[((x_2290 + 3i) / 4i)][((x_2293 + 3i) % 4i)];
        let x_2299 : vec3<f32> = (vec3<f32>(x_2288.x, x_2288.y, x_2288.z) + vec3<f32>(x_2297.x, x_2297.y, x_2297.w));
        let x_2300 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2299.x, x_2299.y, x_2299.z, x_2300.w);
        let x_2302 : vec4<f32> = u_xlat11;
        let x_2304 : vec4<f32> = u_xlat11;
        let x_2306 : vec2<f32> = (vec2<f32>(x_2302.x, x_2302.y) / vec2<f32>(x_2304.z, x_2304.z));
        let x_2307 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2306.x, x_2306.y, x_2307.z, x_2307.w);
        let x_2309 : vec4<f32> = u_xlat11;
        let x_2312 : vec2<f32> = ((vec2<f32>(x_2309.x, x_2309.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2313 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2312.x, x_2312.y, x_2313.z, x_2313.w);
        let x_2315 : vec4<f32> = u_xlat11;
        let x_2319 : vec2<f32> = clamp(vec2<f32>(x_2315.x, x_2315.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2320 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2319.x, x_2319.y, x_2320.z, x_2320.w);
        let x_2322 : u32 = u_xlatu59;
        let x_2325 : vec4<f32> = x_2225.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2322)];
        let x_2327 : vec4<f32> = u_xlat11;
        let x_2330 : u32 = u_xlatu59;
        let x_2333 : vec4<f32> = x_2225.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2330)];
        let x_2335 : vec2<f32> = ((vec2<f32>(x_2325.x, x_2325.y) * vec2<f32>(x_2327.x, x_2327.y)) + vec2<f32>(x_2333.z, x_2333.w));
        let x_2336 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2335.x, x_2335.y, x_2336.z, x_2336.w);
      } else {
        let x_2340 : i32 = u_xlati63;
        u_xlatb63 = (x_2340 == 1i);
        let x_2342 : bool = u_xlatb63;
        u_xlati63 = select(0i, 1i, x_2342);
        let x_2344 : i32 = u_xlati63;
        if ((x_2344 != 0i)) {
          let x_2349 : vec3<f32> = vs_TEXCOORD7;
          let x_2351 : i32 = u_xlati64;
          let x_2354 : i32 = u_xlati64;
          let x_2358 : vec4<f32> = x_2225.x_AdditionalLightsWorldToLights[((x_2351 + 1i) / 4i)][((x_2354 + 1i) % 4i)];
          u_xlat49 = (vec2<f32>(x_2349.y, x_2349.y) * vec2<f32>(x_2358.x, x_2358.y));
          let x_2361 : i32 = u_xlati64;
          let x_2363 : i32 = u_xlati64;
          let x_2366 : vec4<f32> = x_2225.x_AdditionalLightsWorldToLights[(x_2361 / 4i)][(x_2363 % 4i)];
          let x_2368 : vec3<f32> = vs_TEXCOORD7;
          let x_2371 : vec2<f32> = u_xlat49;
          u_xlat49 = ((vec2<f32>(x_2366.x, x_2366.y) * vec2<f32>(x_2368.x, x_2368.x)) + x_2371);
          let x_2373 : i32 = u_xlati64;
          let x_2376 : i32 = u_xlati64;
          let x_2380 : vec4<f32> = x_2225.x_AdditionalLightsWorldToLights[((x_2373 + 2i) / 4i)][((x_2376 + 2i) % 4i)];
          let x_2382 : vec3<f32> = vs_TEXCOORD7;
          let x_2385 : vec2<f32> = u_xlat49;
          u_xlat49 = ((vec2<f32>(x_2380.x, x_2380.y) * vec2<f32>(x_2382.z, x_2382.z)) + x_2385);
          let x_2387 : vec2<f32> = u_xlat49;
          let x_2388 : i32 = u_xlati64;
          let x_2391 : i32 = u_xlati64;
          let x_2395 : vec4<f32> = x_2225.x_AdditionalLightsWorldToLights[((x_2388 + 3i) / 4i)][((x_2391 + 3i) % 4i)];
          u_xlat49 = (x_2387 + vec2<f32>(x_2395.x, x_2395.y));
          let x_2398 : vec2<f32> = u_xlat49;
          u_xlat49 = ((x_2398 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2401 : vec2<f32> = u_xlat49;
          u_xlat49 = fract(x_2401);
          let x_2403 : u32 = u_xlatu59;
          let x_2406 : vec4<f32> = x_2225.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2403)];
          let x_2408 : vec2<f32> = u_xlat49;
          let x_2410 : u32 = u_xlatu59;
          let x_2413 : vec4<f32> = x_2225.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2410)];
          let x_2415 : vec2<f32> = ((vec2<f32>(x_2406.x, x_2406.y) * x_2408) + vec2<f32>(x_2413.z, x_2413.w));
          let x_2416 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2415.x, x_2415.y, x_2416.z, x_2416.w);
        } else {
          let x_2419 : vec3<f32> = vs_TEXCOORD7;
          let x_2421 : i32 = u_xlati64;
          let x_2424 : i32 = u_xlati64;
          let x_2428 : vec4<f32> = x_2225.x_AdditionalLightsWorldToLights[((x_2421 + 1i) / 4i)][((x_2424 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2419.y, x_2419.y, x_2419.y, x_2419.y) * x_2428);
          let x_2430 : i32 = u_xlati64;
          let x_2432 : i32 = u_xlati64;
          let x_2435 : vec4<f32> = x_2225.x_AdditionalLightsWorldToLights[(x_2430 / 4i)][(x_2432 % 4i)];
          let x_2436 : vec3<f32> = vs_TEXCOORD7;
          let x_2439 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2435 * vec4<f32>(x_2436.x, x_2436.x, x_2436.x, x_2436.x)) + x_2439);
          let x_2441 : i32 = u_xlati64;
          let x_2444 : i32 = u_xlati64;
          let x_2448 : vec4<f32> = x_2225.x_AdditionalLightsWorldToLights[((x_2441 + 2i) / 4i)][((x_2444 + 2i) % 4i)];
          let x_2449 : vec3<f32> = vs_TEXCOORD7;
          let x_2452 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2448 * vec4<f32>(x_2449.z, x_2449.z, x_2449.z, x_2449.z)) + x_2452);
          let x_2454 : vec4<f32> = u_xlat12;
          let x_2455 : i32 = u_xlati64;
          let x_2458 : i32 = u_xlati64;
          let x_2462 : vec4<f32> = x_2225.x_AdditionalLightsWorldToLights[((x_2455 + 3i) / 4i)][((x_2458 + 3i) % 4i)];
          u_xlat12 = (x_2454 + x_2462);
          let x_2464 : vec4<f32> = u_xlat12;
          let x_2466 : vec4<f32> = u_xlat12;
          let x_2468 : vec3<f32> = (vec3<f32>(x_2464.x, x_2464.y, x_2464.z) / vec3<f32>(x_2466.w, x_2466.w, x_2466.w));
          let x_2469 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2468.x, x_2468.y, x_2468.z, x_2469.w);
          let x_2471 : vec4<f32> = u_xlat12;
          let x_2473 : vec4<f32> = u_xlat12;
          u_xlat63 = dot(vec3<f32>(x_2471.x, x_2471.y, x_2471.z), vec3<f32>(x_2473.x, x_2473.y, x_2473.z));
          let x_2476 : f32 = u_xlat63;
          u_xlat63 = inverseSqrt(x_2476);
          let x_2478 : f32 = u_xlat63;
          let x_2480 : vec4<f32> = u_xlat12;
          let x_2482 : vec3<f32> = (vec3<f32>(x_2478, x_2478, x_2478) * vec3<f32>(x_2480.x, x_2480.y, x_2480.z));
          let x_2483 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);
          let x_2485 : vec4<f32> = u_xlat12;
          u_xlat63 = dot(abs(vec3<f32>(x_2485.x, x_2485.y, x_2485.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2490 : f32 = u_xlat63;
          u_xlat63 = max(x_2490, 0.000001f);
          let x_2493 : f32 = u_xlat63;
          u_xlat63 = (1.0f / x_2493);
          let x_2495 : f32 = u_xlat63;
          let x_2497 : vec4<f32> = u_xlat12;
          let x_2499 : vec3<f32> = (vec3<f32>(x_2495, x_2495, x_2495) * vec3<f32>(x_2497.z, x_2497.x, x_2497.y));
          let x_2500 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2499.x, x_2499.y, x_2499.z, x_2500.w);
          let x_2503 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2503);
          let x_2507 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2507, 0.0f, 1.0f);
          let x_2511 : vec4<f32> = u_xlat13;
          let x_2514 : vec4<bool> = (vec4<f32>(x_2511.y, x_2511.z, x_2511.y, x_2511.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb45 = vec2<bool>(x_2514.x, x_2514.y);
          let x_2517 : bool = u_xlatb45.x;
          if (x_2517) {
            let x_2522 : f32 = u_xlat13.x;
            x_2518 = x_2522;
          } else {
            let x_2525 : f32 = u_xlat13.x;
            x_2518 = -(x_2525);
          }
          let x_2527 : f32 = x_2518;
          u_xlat45.x = x_2527;
          let x_2530 : bool = u_xlatb45.y;
          if (x_2530) {
            let x_2535 : f32 = u_xlat13.x;
            x_2531 = x_2535;
          } else {
            let x_2538 : f32 = u_xlat13.x;
            x_2531 = -(x_2538);
          }
          let x_2540 : f32 = x_2531;
          u_xlat45.y = x_2540;
          let x_2542 : vec4<f32> = u_xlat12;
          let x_2544 : f32 = u_xlat63;
          let x_2547 : vec2<f32> = u_xlat45;
          u_xlat45 = ((vec2<f32>(x_2542.x, x_2542.y) * vec2<f32>(x_2544, x_2544)) + x_2547);
          let x_2549 : vec2<f32> = u_xlat45;
          u_xlat45 = ((x_2549 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2552 : vec2<f32> = u_xlat45;
          u_xlat45 = clamp(x_2552, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2556 : u32 = u_xlatu59;
          let x_2559 : vec4<f32> = x_2225.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2556)];
          let x_2561 : vec2<f32> = u_xlat45;
          let x_2563 : u32 = u_xlatu59;
          let x_2566 : vec4<f32> = x_2225.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2563)];
          let x_2568 : vec2<f32> = ((vec2<f32>(x_2559.x, x_2559.y) * x_2561) + vec2<f32>(x_2566.z, x_2566.w));
          let x_2569 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2568.x, x_2568.y, x_2569.z, x_2569.w);
        }
      }
      let x_2576 : vec4<f32> = u_xlat11;
      let x_2579 : f32 = x_43.x_GlobalMipBias.x;
      let x_2580 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2576.x, x_2576.y), x_2579);
      u_xlat11 = x_2580;
      let x_2582 : bool = u_xlatb7.y;
      if (x_2582) {
        let x_2587 : f32 = u_xlat11.w;
        x_2583 = x_2587;
      } else {
        let x_2590 : f32 = u_xlat11.x;
        x_2583 = x_2590;
      }
      let x_2591 : f32 = x_2583;
      u_xlat63 = x_2591;
      let x_2593 : bool = u_xlatb7.x;
      if (x_2593) {
        let x_2597 : vec4<f32> = u_xlat11;
        x_2594 = vec3<f32>(x_2597.x, x_2597.y, x_2597.z);
      } else {
        let x_2600 : f32 = u_xlat63;
        x_2594 = vec3<f32>(x_2600, x_2600, x_2600);
      }
      let x_2602 : vec3<f32> = x_2594;
      let x_2603 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2602.x, x_2602.y, x_2602.z, x_2603.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2609 : vec4<f32> = u_xlat11;
    let x_2611 : u32 = u_xlatu59;
    let x_2614 : vec4<f32> = x_2117.x_AdditionalLightsColor[bitcast<i32>(x_2611)];
    let x_2616 : vec3<f32> = (vec3<f32>(x_2609.x, x_2609.y, x_2609.z) * vec3<f32>(x_2614.x, x_2614.y, x_2614.z));
    let x_2617 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2616.x, x_2616.y, x_2616.z, x_2617.w);
    let x_2619 : f32 = u_xlat41;
    let x_2621 : vec4<f32> = u_xlat11;
    let x_2623 : vec3<f32> = (vec3<f32>(x_2619, x_2619, x_2619) * vec3<f32>(x_2621.x, x_2621.y, x_2621.z));
    let x_2624 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2623.x, x_2623.y, x_2623.z, x_2624.w);
    let x_2626 : vec4<f32> = u_xlat2;
    let x_2628 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(vec3<f32>(x_2626.x, x_2626.y, x_2626.z), vec3<f32>(x_2628.x, x_2628.y, x_2628.z));
    let x_2631 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2631, 0.0f, 1.0f);
    let x_2633 : f32 = u_xlat59;
    let x_2634 : f32 = u_xlat61;
    u_xlat59 = (x_2633 * x_2634);
    let x_2636 : f32 = u_xlat59;
    let x_2638 : vec4<f32> = u_xlat11;
    let x_2640 : vec3<f32> = (vec3<f32>(x_2636, x_2636, x_2636) * vec3<f32>(x_2638.x, x_2638.y, x_2638.z));
    let x_2641 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2640.x, x_2640.y, x_2640.z, x_2641.w);
    let x_2643 : vec4<f32> = u_xlat9;
    let x_2645 : f32 = u_xlat62;
    let x_2648 : vec4<f32> = u_xlat6;
    let x_2650 : vec3<f32> = ((vec3<f32>(x_2643.x, x_2643.y, x_2643.z) * vec3<f32>(x_2645, x_2645, x_2645)) + vec3<f32>(x_2648.x, x_2648.y, x_2648.z));
    let x_2651 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2650.x, x_2650.y, x_2650.z, x_2651.w);
    let x_2653 : vec4<f32> = u_xlat9;
    let x_2655 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_2653.x, x_2653.y, x_2653.z), vec3<f32>(x_2655.x, x_2655.y, x_2655.z));
    let x_2658 : f32 = u_xlat59;
    u_xlat59 = max(x_2658, 1.17549435e-37f);
    let x_2660 : f32 = u_xlat59;
    u_xlat59 = inverseSqrt(x_2660);
    let x_2662 : f32 = u_xlat59;
    let x_2664 : vec4<f32> = u_xlat9;
    let x_2666 : vec3<f32> = (vec3<f32>(x_2662, x_2662, x_2662) * vec3<f32>(x_2664.x, x_2664.y, x_2664.z));
    let x_2667 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2666.x, x_2666.y, x_2666.z, x_2667.w);
    let x_2669 : vec4<f32> = u_xlat2;
    let x_2671 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_2669.x, x_2669.y, x_2669.z), vec3<f32>(x_2671.x, x_2671.y, x_2671.z));
    let x_2674 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2674, 0.0f, 1.0f);
    let x_2676 : vec4<f32> = u_xlat10;
    let x_2678 : vec4<f32> = u_xlat9;
    u_xlat61 = dot(vec3<f32>(x_2676.x, x_2676.y, x_2676.z), vec3<f32>(x_2678.x, x_2678.y, x_2678.z));
    let x_2681 : f32 = u_xlat61;
    u_xlat61 = clamp(x_2681, 0.0f, 1.0f);
    let x_2683 : f32 = u_xlat59;
    let x_2684 : f32 = u_xlat59;
    u_xlat59 = (x_2683 * x_2684);
    let x_2686 : f32 = u_xlat59;
    let x_2688 : f32 = u_xlat8.x;
    u_xlat59 = ((x_2686 * x_2688) + 1.000010014f);
    let x_2691 : f32 = u_xlat61;
    let x_2692 : f32 = u_xlat61;
    u_xlat61 = (x_2691 * x_2692);
    let x_2694 : f32 = u_xlat59;
    let x_2695 : f32 = u_xlat59;
    u_xlat59 = (x_2694 * x_2695);
    let x_2697 : f32 = u_xlat61;
    u_xlat61 = max(x_2697, 0.100000001f);
    let x_2699 : f32 = u_xlat59;
    let x_2700 : f32 = u_xlat61;
    u_xlat59 = (x_2699 * x_2700);
    let x_2702 : f32 = u_xlat22;
    let x_2703 : f32 = u_xlat59;
    u_xlat59 = (x_2702 * x_2703);
    let x_2705 : f32 = u_xlat60;
    let x_2706 : f32 = u_xlat59;
    u_xlat59 = (x_2705 / x_2706);
    let x_2708 : vec4<f32> = u_xlat0;
    let x_2710 : f32 = u_xlat59;
    let x_2713 : vec4<f32> = u_xlat4;
    let x_2715 : vec3<f32> = ((vec3<f32>(x_2708.x, x_2708.y, x_2708.z) * vec3<f32>(x_2710, x_2710, x_2710)) + vec3<f32>(x_2713.x, x_2713.y, x_2713.z));
    let x_2716 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2715.x, x_2715.y, x_2715.z, x_2716.w);
    let x_2718 : vec4<f32> = u_xlat9;
    let x_2720 : vec4<f32> = u_xlat11;
    let x_2723 : vec3<f32> = u_xlat27;
    u_xlat27 = ((vec3<f32>(x_2718.x, x_2718.y, x_2718.z) * vec3<f32>(x_2720.x, x_2720.y, x_2720.z)) + x_2723);

    continuing {
      let x_2725 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2725 + bitcast<u32>(1i));
    }
  }
  let x_2727 : vec3<f32> = u_xlat1;
  let x_2728 : vec3<f32> = u_xlat3;
  let x_2731 : vec4<f32> = u_xlat5;
  let x_2733 : vec3<f32> = ((x_2727 * vec3<f32>(x_2728.x, x_2728.x, x_2728.x)) + vec3<f32>(x_2731.x, x_2731.y, x_2731.z));
  let x_2734 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2733.x, x_2733.y, x_2733.z, x_2734.w);
  let x_2738 : vec3<f32> = u_xlat27;
  let x_2739 : vec4<f32> = u_xlat0;
  let x_2741 : vec3<f32> = (x_2738 + vec3<f32>(x_2739.x, x_2739.y, x_2739.z));
  let x_2742 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2741.x, x_2741.y, x_2741.z, x_2742.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

