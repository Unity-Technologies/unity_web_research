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
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_306 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1651 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1844 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2099 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2219 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlat21 : vec3<f32>;
  var u_xlat2 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat63 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat64 : f32;
  var u_xlat60 : f32;
  var u_xlat43 : f32;
  var u_xlatb5 : bool;
  var u_xlat5 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb25 : vec2<bool>;
  var u_xlat25 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat45 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat27 : vec2<f32>;
  var u_xlat16 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
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
  var u_xlatb45 : bool;
  var x_1604 : f32;
  var x_1734 : f32;
  var x_1745 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat28 : vec3<f32>;
  var u_xlatu60 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu23 : u32;
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
  var x_2520 : f32;
  var x_2533 : f32;
  var x_2585 : f32;
  var x_2597 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1 = x_63.x;
  let x_68 : vec4<f32> = vs_TEXCOORD3;
  let x_70 : vec4<f32> = vs_TEXCOORD3;
  u_xlat21.x = dot(vec3<f32>(x_68.x, x_68.y, x_68.z), vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_75 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat21;
  let x_80 : vec4<f32> = vs_TEXCOORD3;
  u_xlat21 = (vec3<f32>(x_78.x, x_78.x, x_78.x) * vec3<f32>(x_80.x, x_80.y, x_80.z));
  let x_88 : f32 = vs_TEXCOORD7.y;
  let x_92 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2 = (x_88 * x_92);
  let x_96 : f32 = x_44.unity_MatrixV[0i].z;
  let x_98 : f32 = vs_TEXCOORD7.x;
  let x_100 : f32 = u_xlat2;
  u_xlat2 = ((x_96 * x_98) + x_100);
  let x_104 : f32 = x_44.unity_MatrixV[2i].z;
  let x_106 : f32 = vs_TEXCOORD7.z;
  let x_108 : f32 = u_xlat2;
  u_xlat2 = ((x_104 * x_106) + x_108);
  let x_110 : f32 = u_xlat2;
  let x_113 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat2 = (x_110 + x_113);
  let x_115 : f32 = u_xlat2;
  let x_119 : f32 = x_44.x_ProjectionParams.y;
  u_xlat2 = (-(x_115) + -(x_119));
  let x_122 : f32 = u_xlat2;
  u_xlat2 = max(x_122, 0.0f);
  let x_125 : f32 = u_xlat2;
  let x_128 : f32 = x_44.unity_FogParams.x;
  u_xlat2 = (x_125 * x_128);
  let x_136 : vec4<f32> = vs_TEXCOORD0;
  let x_139 : f32 = x_44.x_GlobalMipBias.x;
  let x_140 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_136.z, x_136.w), x_139);
  u_xlat3 = x_140;
  let x_146 : vec4<f32> = vs_TEXCOORD0;
  let x_149 : f32 = x_44.x_GlobalMipBias.x;
  let x_150 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_146.z, x_146.w), x_149);
  u_xlat22 = vec3<f32>(x_150.x, x_150.y, x_150.z);
  let x_152 : vec4<f32> = u_xlat3;
  let x_156 : vec3<f32> = (vec3<f32>(x_152.x, x_152.y, x_152.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_157 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_159 : vec3<f32> = u_xlat21;
  let x_160 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_159, vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_165 : f32 = u_xlat3.x;
  u_xlat3.x = (x_165 + 0.5f);
  let x_169 : vec3<f32> = u_xlat22;
  let x_170 : vec4<f32> = u_xlat3;
  u_xlat22 = (x_169 * vec3<f32>(x_170.x, x_170.x, x_170.x));
  let x_174 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_174, 0.0001f);
  let x_178 : vec3<f32> = u_xlat22;
  let x_179 : vec4<f32> = u_xlat3;
  u_xlat22 = (x_178 / vec3<f32>(x_179.x, x_179.x, x_179.x));
  let x_185 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_186 : vec2<f32> = vec2<f32>(x_185.x, x_185.y);
  let x_190 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_186.x, x_186.y));
  let x_191 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_190.x, x_190.y, x_191.z, x_191.w);
  let x_193 : vec4<f32> = u_xlat3;
  let x_195 : vec4<f32> = hlslcc_FragCoord;
  let x_197 : vec2<f32> = (vec2<f32>(x_193.x, x_193.y) * vec2<f32>(x_195.x, x_195.y));
  let x_198 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_197.x, x_197.y, x_198.z, x_198.w);
  let x_202 : f32 = u_xlat3.y;
  let x_205 : f32 = x_44.x_ScaleBiasRt.x;
  let x_208 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23 = ((x_202 * x_205) + x_208);
  let x_210 : f32 = u_xlat23;
  u_xlat3.z = (-(x_210) + 1.0f);
  let x_214 : f32 = u_xlat1;
  u_xlat23 = ((-(x_214) * 0.959999979f) + 0.959999979f);
  let x_220 : f32 = u_xlat23;
  u_xlat63 = (-(x_220) + 1.0f);
  let x_224 : vec4<f32> = u_xlat0;
  let x_226 : f32 = u_xlat23;
  u_xlat4 = (vec3<f32>(x_224.x, x_224.y, x_224.z) * vec3<f32>(x_226, x_226, x_226));
  let x_229 : vec4<f32> = u_xlat0;
  let x_233 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_234 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : f32 = u_xlat1;
  let x_238 : vec4<f32> = u_xlat0;
  let x_243 : vec3<f32> = ((vec3<f32>(x_236, x_236, x_236) * vec3<f32>(x_238.x, x_238.y, x_238.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_244 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_247 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_247) + 1.0f);
  let x_250 : f32 = u_xlat1;
  let x_251 : f32 = u_xlat1;
  u_xlat23 = (x_250 * x_251);
  let x_253 : f32 = u_xlat23;
  u_xlat23 = max(x_253, 0.0078125f);
  let x_257 : f32 = u_xlat23;
  let x_258 : f32 = u_xlat23;
  u_xlat64 = (x_257 * x_258);
  let x_262 : f32 = u_xlat0.w;
  let x_263 : f32 = u_xlat63;
  u_xlat60 = (x_262 + x_263);
  let x_265 : f32 = u_xlat60;
  u_xlat60 = clamp(x_265, 0.0f, 1.0f);
  let x_267 : f32 = u_xlat23;
  u_xlat63 = ((x_267 * 4.0f) + 2.0f);
  let x_277 : vec4<f32> = u_xlat3;
  let x_280 : f32 = x_44.x_GlobalMipBias.x;
  let x_281 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_277.x, x_277.z), x_280);
  u_xlat3.x = x_281.x;
  let x_286 : f32 = u_xlat3.x;
  u_xlat43 = (x_286 + -1.0f);
  let x_291 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_292 : f32 = u_xlat43;
  u_xlat43 = ((x_291 * x_292) + 1.0f);
  let x_296 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_296, 1.0f);
  let x_308 : f32 = x_306.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_308);
  let x_310 : bool = u_xlatb5;
  if (x_310) {
    let x_314 : f32 = x_306.x_MainLightShadowParams.y;
    u_xlatb5 = (x_314 == 1.0f);
    let x_316 : bool = u_xlatb5;
    if (x_316) {
      let x_321 : vec4<f32> = vs_TEXCOORD8;
      let x_325 : vec4<f32> = x_306.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_321.x, x_321.y, x_321.x, x_321.y) + x_325);
      let x_328 : vec4<f32> = u_xlat5;
      let x_329 : vec2<f32> = vec2<f32>(x_328.x, x_328.y);
      let x_331 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_329.x, x_329.y, x_331);
      let x_344 : vec3<f32> = txVec0;
      let x_346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_344.xy, x_344.z);
      u_xlat6.x = x_346;
      let x_349 : vec4<f32> = u_xlat5;
      let x_350 : vec2<f32> = vec2<f32>(x_349.z, x_349.w);
      let x_352 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_350.x, x_350.y, x_352);
      let x_359 : vec3<f32> = txVec1;
      let x_361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_359.xy, x_359.z);
      u_xlat6.y = x_361;
      let x_363 : vec4<f32> = vs_TEXCOORD8;
      let x_366 : vec4<f32> = x_306.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_363.x, x_363.y, x_363.x, x_363.y) + x_366);
      let x_369 : vec4<f32> = u_xlat5;
      let x_370 : vec2<f32> = vec2<f32>(x_369.x, x_369.y);
      let x_372 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_379 : vec3<f32> = txVec2;
      let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_379.xy, x_379.z);
      u_xlat6.z = x_381;
      let x_384 : vec4<f32> = u_xlat5;
      let x_385 : vec2<f32> = vec2<f32>(x_384.z, x_384.w);
      let x_387 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_385.x, x_385.y, x_387);
      let x_394 : vec3<f32> = txVec3;
      let x_396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_394.xy, x_394.z);
      u_xlat6.w = x_396;
      let x_398 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_398, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_408 : f32 = x_306.x_MainLightShadowParams.y;
      u_xlatb25.x = (x_408 == 2.0f);
      let x_412 : bool = u_xlatb25.x;
      if (x_412) {
        let x_416 : vec4<f32> = vs_TEXCOORD8;
        let x_419 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_423 : vec2<f32> = ((vec2<f32>(x_416.x, x_416.y) * vec2<f32>(x_419.z, x_419.w)) + vec2<f32>(0.5f, 0.5f));
        let x_424 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_423.x, x_423.y, x_424.z);
        let x_426 : vec3<f32> = u_xlat25;
        let x_428 : vec2<f32> = floor(vec2<f32>(x_426.x, x_426.y));
        let x_429 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_428.x, x_428.y, x_429.z);
        let x_431 : vec4<f32> = vs_TEXCOORD8;
        let x_434 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_437 : vec3<f32> = u_xlat25;
        let x_440 : vec2<f32> = ((vec2<f32>(x_431.x, x_431.y) * vec2<f32>(x_434.z, x_434.w)) + -(vec2<f32>(x_437.x, x_437.y)));
        let x_441 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
        let x_444 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_444.x, x_444.x, x_444.y, x_444.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_449 : vec4<f32> = u_xlat7;
        let x_451 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_449.x, x_449.x, x_449.z, x_449.z) * vec4<f32>(x_451.x, x_451.x, x_451.z, x_451.z));
        let x_456 : vec4<f32> = u_xlat8;
        u_xlat46 = (vec2<f32>(x_456.y, x_456.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_461 : vec4<f32> = u_xlat8;
        let x_464 : vec4<f32> = u_xlat6;
        let x_467 : vec2<f32> = ((vec2<f32>(x_461.x, x_461.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_464.x, x_464.y)));
        let x_468 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_467.x, x_468.y, x_467.y, x_468.w);
        let x_470 : vec4<f32> = u_xlat6;
        let x_473 : vec2<f32> = (-(vec2<f32>(x_470.x, x_470.y)) + vec2<f32>(1.0f, 1.0f));
        let x_474 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_473.x, x_473.y, x_474.z, x_474.w);
        let x_477 : vec4<f32> = u_xlat6;
        u_xlat48 = min(vec2<f32>(x_477.x, x_477.y), vec2<f32>(0.0f, 0.0f));
        let x_481 : vec2<f32> = u_xlat48;
        let x_483 : vec2<f32> = u_xlat48;
        let x_485 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_481) * x_483) + vec2<f32>(x_485.x, x_485.y));
        let x_488 : vec4<f32> = u_xlat6;
        let x_490 : vec2<f32> = max(vec2<f32>(x_488.x, x_488.y), vec2<f32>(0.0f, 0.0f));
        let x_491 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
        let x_493 : vec4<f32> = u_xlat6;
        let x_496 : vec4<f32> = u_xlat6;
        let x_499 : vec4<f32> = u_xlat7;
        let x_501 : vec2<f32> = ((-(vec2<f32>(x_493.x, x_493.y)) * vec2<f32>(x_496.x, x_496.y)) + vec2<f32>(x_499.y, x_499.w));
        let x_502 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_504 + vec2<f32>(1.0f, 1.0f));
        let x_506 : vec4<f32> = u_xlat6;
        let x_508 : vec2<f32> = (vec2<f32>(x_506.x, x_506.y) + vec2<f32>(1.0f, 1.0f));
        let x_509 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
        let x_512 : vec4<f32> = u_xlat7;
        let x_516 : vec2<f32> = (vec2<f32>(x_512.x, x_512.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_517 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
        let x_520 : vec4<f32> = u_xlat8;
        let x_522 : vec2<f32> = (vec2<f32>(x_520.x, x_520.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_523 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
        let x_525 : vec2<f32> = u_xlat48;
        let x_526 : vec2<f32> = (x_525 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_527 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
        let x_530 : vec4<f32> = u_xlat6;
        let x_532 : vec2<f32> = (vec2<f32>(x_530.x, x_530.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_533 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
        let x_535 : vec4<f32> = u_xlat7;
        let x_537 : vec2<f32> = (vec2<f32>(x_535.y, x_535.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_538 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
        let x_541 : f32 = u_xlat8.x;
        u_xlat9.z = x_541;
        let x_544 : f32 = u_xlat6.x;
        u_xlat9.w = x_544;
        let x_547 : f32 = u_xlat11.x;
        u_xlat10.z = x_547;
        let x_550 : f32 = u_xlat46.x;
        u_xlat10.w = x_550;
        let x_552 : vec4<f32> = u_xlat9;
        let x_554 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_552.z, x_552.w, x_552.x, x_552.z) + vec4<f32>(x_554.z, x_554.w, x_554.x, x_554.z));
        let x_558 : f32 = u_xlat9.y;
        u_xlat8.z = x_558;
        let x_561 : f32 = u_xlat6.y;
        u_xlat8.w = x_561;
        let x_564 : f32 = u_xlat10.y;
        u_xlat11.z = x_564;
        let x_567 : f32 = u_xlat46.y;
        u_xlat11.w = x_567;
        let x_569 : vec4<f32> = u_xlat8;
        let x_571 : vec4<f32> = u_xlat11;
        let x_573 : vec3<f32> = (vec3<f32>(x_569.z, x_569.y, x_569.w) + vec3<f32>(x_571.z, x_571.y, x_571.w));
        let x_574 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
        let x_576 : vec4<f32> = u_xlat10;
        let x_578 : vec4<f32> = u_xlat7;
        let x_580 : vec3<f32> = (vec3<f32>(x_576.x, x_576.z, x_576.w) / vec3<f32>(x_578.z, x_578.w, x_578.y));
        let x_581 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
        let x_583 : vec4<f32> = u_xlat8;
        let x_588 : vec3<f32> = (vec3<f32>(x_583.x, x_583.y, x_583.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_589 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
        let x_591 : vec4<f32> = u_xlat11;
        let x_593 : vec4<f32> = u_xlat6;
        let x_595 : vec3<f32> = (vec3<f32>(x_591.z, x_591.y, x_591.w) / vec3<f32>(x_593.x, x_593.y, x_593.z));
        let x_596 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat9;
        let x_600 : vec3<f32> = (vec3<f32>(x_598.x, x_598.y, x_598.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_601 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
        let x_603 : vec4<f32> = u_xlat8;
        let x_606 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_608 : vec3<f32> = (vec3<f32>(x_603.y, x_603.x, x_603.z) * vec3<f32>(x_606.x, x_606.x, x_606.x));
        let x_609 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
        let x_611 : vec4<f32> = u_xlat9;
        let x_614 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_616 : vec3<f32> = (vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(x_614.y, x_614.y, x_614.y));
        let x_617 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
        let x_620 : f32 = u_xlat9.x;
        u_xlat8.w = x_620;
        let x_622 : vec3<f32> = u_xlat25;
        let x_625 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_628 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_622.x, x_622.y, x_622.x, x_622.y) * vec4<f32>(x_625.x, x_625.y, x_625.x, x_625.y)) + vec4<f32>(x_628.y, x_628.w, x_628.x, x_628.w));
        let x_631 : vec3<f32> = u_xlat25;
        let x_634 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_637 : vec4<f32> = u_xlat8;
        let x_639 : vec2<f32> = ((vec2<f32>(x_631.x, x_631.y) * vec2<f32>(x_634.x, x_634.y)) + vec2<f32>(x_637.z, x_637.w));
        let x_640 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_639.x, x_639.y, x_640.z, x_640.w);
        let x_643 : f32 = u_xlat8.y;
        u_xlat9.w = x_643;
        let x_645 : vec4<f32> = u_xlat9;
        let x_646 : vec2<f32> = vec2<f32>(x_645.y, x_645.z);
        let x_647 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_647.x, x_646.x, x_647.z, x_646.y);
        let x_650 : vec3<f32> = u_xlat25;
        let x_653 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_656 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_650.x, x_650.y, x_650.x, x_650.y) * vec4<f32>(x_653.x, x_653.y, x_653.x, x_653.y)) + vec4<f32>(x_656.x, x_656.y, x_656.z, x_656.y));
        let x_659 : vec3<f32> = u_xlat25;
        let x_662 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_665 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_659.x, x_659.y, x_659.x, x_659.y) * vec4<f32>(x_662.x, x_662.y, x_662.x, x_662.y)) + vec4<f32>(x_665.w, x_665.y, x_665.w, x_665.z));
        let x_668 : vec3<f32> = u_xlat25;
        let x_671 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_674 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_668.x, x_668.y, x_668.x, x_668.y) * vec4<f32>(x_671.x, x_671.y, x_671.x, x_671.y)) + vec4<f32>(x_674.x, x_674.w, x_674.z, x_674.w));
        let x_678 : vec4<f32> = u_xlat6;
        let x_680 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_678.x, x_678.x, x_678.x, x_678.y) * vec4<f32>(x_680.z, x_680.w, x_680.y, x_680.z));
        let x_684 : vec4<f32> = u_xlat6;
        let x_686 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_684.y, x_684.y, x_684.z, x_684.z) * x_686);
        let x_689 : f32 = u_xlat6.z;
        let x_691 : f32 = u_xlat7.y;
        u_xlat25.x = (x_689 * x_691);
        let x_695 : vec4<f32> = u_xlat10;
        let x_696 : vec2<f32> = vec2<f32>(x_695.x, x_695.y);
        let x_698 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_696.x, x_696.y, x_698);
        let x_706 : vec3<f32> = txVec4;
        let x_708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_706.xy, x_706.z);
        u_xlat45 = x_708;
        let x_710 : vec4<f32> = u_xlat10;
        let x_711 : vec2<f32> = vec2<f32>(x_710.z, x_710.w);
        let x_713 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_711.x, x_711.y, x_713);
        let x_721 : vec3<f32> = txVec5;
        let x_723 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_721.xy, x_721.z);
        u_xlat65 = x_723;
        let x_724 : f32 = u_xlat65;
        let x_726 : f32 = u_xlat13.y;
        u_xlat65 = (x_724 * x_726);
        let x_729 : f32 = u_xlat13.x;
        let x_730 : f32 = u_xlat45;
        let x_732 : f32 = u_xlat65;
        u_xlat45 = ((x_729 * x_730) + x_732);
        let x_735 : vec4<f32> = u_xlat11;
        let x_736 : vec2<f32> = vec2<f32>(x_735.x, x_735.y);
        let x_738 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_736.x, x_736.y, x_738);
        let x_745 : vec3<f32> = txVec6;
        let x_747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_745.xy, x_745.z);
        u_xlat65 = x_747;
        let x_749 : f32 = u_xlat13.z;
        let x_750 : f32 = u_xlat65;
        let x_752 : f32 = u_xlat45;
        u_xlat45 = ((x_749 * x_750) + x_752);
        let x_755 : vec4<f32> = u_xlat9;
        let x_756 : vec2<f32> = vec2<f32>(x_755.x, x_755.y);
        let x_758 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_756.x, x_756.y, x_758);
        let x_765 : vec3<f32> = txVec7;
        let x_767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_765.xy, x_765.z);
        u_xlat65 = x_767;
        let x_769 : f32 = u_xlat13.w;
        let x_770 : f32 = u_xlat65;
        let x_772 : f32 = u_xlat45;
        u_xlat45 = ((x_769 * x_770) + x_772);
        let x_775 : vec4<f32> = u_xlat12;
        let x_776 : vec2<f32> = vec2<f32>(x_775.x, x_775.y);
        let x_778 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_776.x, x_776.y, x_778);
        let x_785 : vec3<f32> = txVec8;
        let x_787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_785.xy, x_785.z);
        u_xlat65 = x_787;
        let x_789 : f32 = u_xlat14.x;
        let x_790 : f32 = u_xlat65;
        let x_792 : f32 = u_xlat45;
        u_xlat45 = ((x_789 * x_790) + x_792);
        let x_795 : vec4<f32> = u_xlat12;
        let x_796 : vec2<f32> = vec2<f32>(x_795.z, x_795.w);
        let x_798 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec9;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_805.xy, x_805.z);
        u_xlat65 = x_807;
        let x_809 : f32 = u_xlat14.y;
        let x_810 : f32 = u_xlat65;
        let x_812 : f32 = u_xlat45;
        u_xlat45 = ((x_809 * x_810) + x_812);
        let x_815 : vec4<f32> = u_xlat9;
        let x_816 : vec2<f32> = vec2<f32>(x_815.z, x_815.w);
        let x_818 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_816.x, x_816.y, x_818);
        let x_825 : vec3<f32> = txVec10;
        let x_827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_825.xy, x_825.z);
        u_xlat65 = x_827;
        let x_829 : f32 = u_xlat14.z;
        let x_830 : f32 = u_xlat65;
        let x_832 : f32 = u_xlat45;
        u_xlat45 = ((x_829 * x_830) + x_832);
        let x_835 : vec4<f32> = u_xlat8;
        let x_836 : vec2<f32> = vec2<f32>(x_835.x, x_835.y);
        let x_838 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_836.x, x_836.y, x_838);
        let x_845 : vec3<f32> = txVec11;
        let x_847 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_845.xy, x_845.z);
        u_xlat65 = x_847;
        let x_849 : f32 = u_xlat14.w;
        let x_850 : f32 = u_xlat65;
        let x_852 : f32 = u_xlat45;
        u_xlat45 = ((x_849 * x_850) + x_852);
        let x_855 : vec4<f32> = u_xlat8;
        let x_856 : vec2<f32> = vec2<f32>(x_855.z, x_855.w);
        let x_858 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_856.x, x_856.y, x_858);
        let x_865 : vec3<f32> = txVec12;
        let x_867 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_865.xy, x_865.z);
        u_xlat65 = x_867;
        let x_869 : f32 = u_xlat25.x;
        let x_870 : f32 = u_xlat65;
        let x_872 : f32 = u_xlat45;
        u_xlat5.x = ((x_869 * x_870) + x_872);
      } else {
        let x_876 : vec4<f32> = vs_TEXCOORD8;
        let x_879 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_882 : vec2<f32> = ((vec2<f32>(x_876.x, x_876.y) * vec2<f32>(x_879.z, x_879.w)) + vec2<f32>(0.5f, 0.5f));
        let x_883 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_882.x, x_882.y, x_883.z);
        let x_885 : vec3<f32> = u_xlat25;
        let x_887 : vec2<f32> = floor(vec2<f32>(x_885.x, x_885.y));
        let x_888 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_887.x, x_887.y, x_888.z);
        let x_890 : vec4<f32> = vs_TEXCOORD8;
        let x_893 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_896 : vec3<f32> = u_xlat25;
        let x_899 : vec2<f32> = ((vec2<f32>(x_890.x, x_890.y) * vec2<f32>(x_893.z, x_893.w)) + -(vec2<f32>(x_896.x, x_896.y)));
        let x_900 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_899.x, x_899.y, x_900.z, x_900.w);
        let x_902 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_902.x, x_902.x, x_902.y, x_902.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_905 : vec4<f32> = u_xlat7;
        let x_907 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_905.x, x_905.x, x_905.z, x_905.z) * vec4<f32>(x_907.x, x_907.x, x_907.z, x_907.z));
        let x_910 : vec4<f32> = u_xlat8;
        let x_914 : vec2<f32> = (vec2<f32>(x_910.y, x_910.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_915 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_915.x, x_914.x, x_915.z, x_914.y);
        let x_917 : vec4<f32> = u_xlat8;
        let x_920 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_917.x, x_917.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_920.x, x_920.y)));
        let x_924 : vec4<f32> = u_xlat6;
        let x_927 : vec2<f32> = (-(vec2<f32>(x_924.x, x_924.y)) + vec2<f32>(1.0f, 1.0f));
        let x_928 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_927.x, x_928.y, x_927.y, x_928.w);
        let x_930 : vec4<f32> = u_xlat6;
        let x_932 : vec2<f32> = min(vec2<f32>(x_930.x, x_930.y), vec2<f32>(0.0f, 0.0f));
        let x_933 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_932.x, x_932.y, x_933.z, x_933.w);
        let x_935 : vec4<f32> = u_xlat8;
        let x_938 : vec4<f32> = u_xlat8;
        let x_941 : vec4<f32> = u_xlat7;
        let x_943 : vec2<f32> = ((-(vec2<f32>(x_935.x, x_935.y)) * vec2<f32>(x_938.x, x_938.y)) + vec2<f32>(x_941.x, x_941.z));
        let x_944 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_943.x, x_944.y, x_943.y, x_944.w);
        let x_946 : vec4<f32> = u_xlat6;
        let x_948 : vec2<f32> = max(vec2<f32>(x_946.x, x_946.y), vec2<f32>(0.0f, 0.0f));
        let x_949 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_948.x, x_948.y, x_949.z, x_949.w);
        let x_951 : vec4<f32> = u_xlat8;
        let x_954 : vec4<f32> = u_xlat8;
        let x_957 : vec4<f32> = u_xlat7;
        let x_959 : vec2<f32> = ((-(vec2<f32>(x_951.x, x_951.y)) * vec2<f32>(x_954.x, x_954.y)) + vec2<f32>(x_957.y, x_957.w));
        let x_960 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_960.x, x_959.x, x_960.z, x_959.y);
        let x_962 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_962 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_966 : f32 = u_xlat7.y;
        u_xlat8.z = (x_966 * 0.081632003f);
        let x_970 : vec2<f32> = u_xlat46;
        let x_973 : vec2<f32> = (vec2<f32>(x_970.y, x_970.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_974 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_976 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_976.x, x_976.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_980 : f32 = u_xlat7.w;
        u_xlat10.z = (x_980 * 0.081632003f);
        let x_984 : f32 = u_xlat10.y;
        u_xlat8.x = x_984;
        let x_986 : vec4<f32> = u_xlat6;
        let x_993 : vec2<f32> = ((vec2<f32>(x_986.x, x_986.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_994 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_994.x, x_993.x, x_994.z, x_993.y);
        let x_996 : vec4<f32> = u_xlat6;
        let x_1000 : vec2<f32> = ((vec2<f32>(x_996.x, x_996.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1001 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1000.x, x_1001.y, x_1000.y, x_1001.w);
        let x_1004 : f32 = u_xlat46.x;
        u_xlat7.y = x_1004;
        let x_1007 : f32 = u_xlat9.y;
        u_xlat7.w = x_1007;
        let x_1009 : vec4<f32> = u_xlat7;
        let x_1010 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1009 + x_1010);
        let x_1012 : vec4<f32> = u_xlat6;
        let x_1015 : vec2<f32> = ((vec2<f32>(x_1012.y, x_1012.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1016 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1016.x, x_1015.x, x_1016.z, x_1015.y);
        let x_1018 : vec4<f32> = u_xlat6;
        let x_1021 : vec2<f32> = ((vec2<f32>(x_1018.y, x_1018.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1022 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1021.x, x_1022.y, x_1021.y, x_1022.w);
        let x_1025 : f32 = u_xlat46.y;
        u_xlat9.y = x_1025;
        let x_1027 : vec4<f32> = u_xlat9;
        let x_1028 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1027 + x_1028);
        let x_1030 : vec4<f32> = u_xlat7;
        let x_1031 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1030 / x_1031);
        let x_1033 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1033 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1039 : vec4<f32> = u_xlat9;
        let x_1040 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1039 / x_1040);
        let x_1042 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1042 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1044 : vec4<f32> = u_xlat7;
        let x_1047 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1044.w, x_1044.x, x_1044.y, x_1044.z) * vec4<f32>(x_1047.x, x_1047.x, x_1047.x, x_1047.x));
        let x_1050 : vec4<f32> = u_xlat9;
        let x_1053 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1050.x, x_1050.w, x_1050.y, x_1050.z) * vec4<f32>(x_1053.y, x_1053.y, x_1053.y, x_1053.y));
        let x_1056 : vec4<f32> = u_xlat7;
        let x_1057 : vec3<f32> = vec3<f32>(x_1056.y, x_1056.z, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1057.x, x_1058.y, x_1057.y, x_1057.z);
        let x_1061 : f32 = u_xlat9.x;
        u_xlat10.y = x_1061;
        let x_1063 : vec3<f32> = u_xlat25;
        let x_1066 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_1069 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1063.x, x_1063.y, x_1063.x, x_1063.y) * vec4<f32>(x_1066.x, x_1066.y, x_1066.x, x_1066.y)) + vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1069.y));
        let x_1072 : vec3<f32> = u_xlat25;
        let x_1075 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat10;
        let x_1080 : vec2<f32> = ((vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(x_1075.x, x_1075.y)) + vec2<f32>(x_1078.w, x_1078.y));
        let x_1081 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1080.x, x_1080.y, x_1081.z, x_1081.w);
        let x_1084 : f32 = u_xlat10.y;
        u_xlat7.y = x_1084;
        let x_1087 : f32 = u_xlat9.z;
        u_xlat10.y = x_1087;
        let x_1089 : vec3<f32> = u_xlat25;
        let x_1092 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y) * vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y)) + vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1095.y));
        let x_1099 : vec3<f32> = u_xlat25;
        let x_1102 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_1105 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1099.x, x_1099.y) * vec2<f32>(x_1102.x, x_1102.y)) + vec2<f32>(x_1105.w, x_1105.y));
        let x_1109 : f32 = u_xlat10.y;
        u_xlat7.z = x_1109;
        let x_1111 : vec3<f32> = u_xlat25;
        let x_1114 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_1117 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y) * vec4<f32>(x_1114.x, x_1114.y, x_1114.x, x_1114.y)) + vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.z));
        let x_1121 : f32 = u_xlat9.w;
        u_xlat10.y = x_1121;
        let x_1124 : vec3<f32> = u_xlat25;
        let x_1127 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_1130 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1124.x, x_1124.y, x_1124.x, x_1124.y) * vec4<f32>(x_1127.x, x_1127.y, x_1127.x, x_1127.y)) + vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1130.y));
        let x_1134 : vec3<f32> = u_xlat25;
        let x_1137 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_1140 : vec4<f32> = u_xlat10;
        u_xlat27 = ((vec2<f32>(x_1134.x, x_1134.y) * vec2<f32>(x_1137.x, x_1137.y)) + vec2<f32>(x_1140.w, x_1140.y));
        let x_1144 : f32 = u_xlat10.y;
        u_xlat7.w = x_1144;
        let x_1147 : vec3<f32> = u_xlat25;
        let x_1150 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_1153 : vec4<f32> = u_xlat7;
        u_xlat16 = ((vec2<f32>(x_1147.x, x_1147.y) * vec2<f32>(x_1150.x, x_1150.y)) + vec2<f32>(x_1153.x, x_1153.w));
        let x_1156 : vec4<f32> = u_xlat10;
        let x_1157 : vec3<f32> = vec3<f32>(x_1156.x, x_1156.z, x_1156.w);
        let x_1158 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1157.x, x_1158.y, x_1157.y, x_1157.z);
        let x_1160 : vec3<f32> = u_xlat25;
        let x_1163 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_1166 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1160.x, x_1160.y, x_1160.x, x_1160.y) * vec4<f32>(x_1163.x, x_1163.y, x_1163.x, x_1163.y)) + vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1166.y));
        let x_1170 : vec3<f32> = u_xlat25;
        let x_1173 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_1176 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1170.x, x_1170.y) * vec2<f32>(x_1173.x, x_1173.y)) + vec2<f32>(x_1176.w, x_1176.y));
        let x_1180 : f32 = u_xlat7.x;
        u_xlat9.x = x_1180;
        let x_1182 : vec3<f32> = u_xlat25;
        let x_1185 : vec4<f32> = x_306.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat9;
        let x_1190 : vec2<f32> = ((vec2<f32>(x_1182.x, x_1182.y) * vec2<f32>(x_1185.x, x_1185.y)) + vec2<f32>(x_1188.x, x_1188.y));
        let x_1191 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1190.x, x_1190.y, x_1191.z);
        let x_1194 : vec4<f32> = u_xlat6;
        let x_1196 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1194.x, x_1194.x, x_1194.x, x_1194.x) * x_1196);
        let x_1199 : vec4<f32> = u_xlat6;
        let x_1201 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1199.y, x_1199.y, x_1199.y, x_1199.y) * x_1201);
        let x_1204 : vec4<f32> = u_xlat6;
        let x_1206 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1204.z, x_1204.z, x_1204.z, x_1204.z) * x_1206);
        let x_1208 : vec4<f32> = u_xlat6;
        let x_1210 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1208.w, x_1208.w, x_1208.w, x_1208.w) * x_1210);
        let x_1213 : vec4<f32> = u_xlat11;
        let x_1214 : vec2<f32> = vec2<f32>(x_1213.x, x_1213.y);
        let x_1216 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1214.x, x_1214.y, x_1216);
        let x_1223 : vec3<f32> = txVec13;
        let x_1225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1223.xy, x_1223.z);
        u_xlat65 = x_1225;
        let x_1227 : vec4<f32> = u_xlat11;
        let x_1228 : vec2<f32> = vec2<f32>(x_1227.z, x_1227.w);
        let x_1230 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1228.x, x_1228.y, x_1230);
        let x_1237 : vec3<f32> = txVec14;
        let x_1239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1237.xy, x_1237.z);
        u_xlat7.x = x_1239;
        let x_1242 : f32 = u_xlat7.x;
        let x_1244 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1242 * x_1244);
        let x_1248 : f32 = u_xlat17.x;
        let x_1249 : f32 = u_xlat65;
        let x_1252 : f32 = u_xlat7.x;
        u_xlat65 = ((x_1248 * x_1249) + x_1252);
        let x_1255 : vec4<f32> = u_xlat12;
        let x_1256 : vec2<f32> = vec2<f32>(x_1255.x, x_1255.y);
        let x_1258 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
        let x_1265 : vec3<f32> = txVec15;
        let x_1267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1265.xy, x_1265.z);
        u_xlat7.x = x_1267;
        let x_1270 : f32 = u_xlat17.z;
        let x_1272 : f32 = u_xlat7.x;
        let x_1274 : f32 = u_xlat65;
        u_xlat65 = ((x_1270 * x_1272) + x_1274);
        let x_1277 : vec4<f32> = u_xlat14;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.x, x_1277.y);
        let x_1280 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1287 : vec3<f32> = txVec16;
        let x_1289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1287.xy, x_1287.z);
        u_xlat7.x = x_1289;
        let x_1292 : f32 = u_xlat17.w;
        let x_1294 : f32 = u_xlat7.x;
        let x_1296 : f32 = u_xlat65;
        u_xlat65 = ((x_1292 * x_1294) + x_1296);
        let x_1299 : vec4<f32> = u_xlat13;
        let x_1300 : vec2<f32> = vec2<f32>(x_1299.x, x_1299.y);
        let x_1302 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1300.x, x_1300.y, x_1302);
        let x_1309 : vec3<f32> = txVec17;
        let x_1311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1309.xy, x_1309.z);
        u_xlat7.x = x_1311;
        let x_1314 : f32 = u_xlat18.x;
        let x_1316 : f32 = u_xlat7.x;
        let x_1318 : f32 = u_xlat65;
        u_xlat65 = ((x_1314 * x_1316) + x_1318);
        let x_1321 : vec4<f32> = u_xlat13;
        let x_1322 : vec2<f32> = vec2<f32>(x_1321.z, x_1321.w);
        let x_1324 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1322.x, x_1322.y, x_1324);
        let x_1331 : vec3<f32> = txVec18;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1331.xy, x_1331.z);
        u_xlat7.x = x_1333;
        let x_1336 : f32 = u_xlat18.y;
        let x_1338 : f32 = u_xlat7.x;
        let x_1340 : f32 = u_xlat65;
        u_xlat65 = ((x_1336 * x_1338) + x_1340);
        let x_1343 : vec2<f32> = u_xlat52;
        let x_1345 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1343.x, x_1343.y, x_1345);
        let x_1352 : vec3<f32> = txVec19;
        let x_1354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1352.xy, x_1352.z);
        u_xlat7.x = x_1354;
        let x_1357 : f32 = u_xlat18.z;
        let x_1359 : f32 = u_xlat7.x;
        let x_1361 : f32 = u_xlat65;
        u_xlat65 = ((x_1357 * x_1359) + x_1361);
        let x_1364 : vec4<f32> = u_xlat14;
        let x_1365 : vec2<f32> = vec2<f32>(x_1364.z, x_1364.w);
        let x_1367 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1365.x, x_1365.y, x_1367);
        let x_1374 : vec3<f32> = txVec20;
        let x_1376 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1374.xy, x_1374.z);
        u_xlat7.x = x_1376;
        let x_1379 : f32 = u_xlat18.w;
        let x_1381 : f32 = u_xlat7.x;
        let x_1383 : f32 = u_xlat65;
        u_xlat65 = ((x_1379 * x_1381) + x_1383);
        let x_1386 : vec4<f32> = u_xlat15;
        let x_1387 : vec2<f32> = vec2<f32>(x_1386.x, x_1386.y);
        let x_1389 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1387.x, x_1387.y, x_1389);
        let x_1396 : vec3<f32> = txVec21;
        let x_1398 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1396.xy, x_1396.z);
        u_xlat7.x = x_1398;
        let x_1401 : f32 = u_xlat19.x;
        let x_1403 : f32 = u_xlat7.x;
        let x_1405 : f32 = u_xlat65;
        u_xlat65 = ((x_1401 * x_1403) + x_1405);
        let x_1408 : vec4<f32> = u_xlat15;
        let x_1409 : vec2<f32> = vec2<f32>(x_1408.z, x_1408.w);
        let x_1411 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1409.x, x_1409.y, x_1411);
        let x_1418 : vec3<f32> = txVec22;
        let x_1420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1418.xy, x_1418.z);
        u_xlat7.x = x_1420;
        let x_1423 : f32 = u_xlat19.y;
        let x_1425 : f32 = u_xlat7.x;
        let x_1427 : f32 = u_xlat65;
        u_xlat65 = ((x_1423 * x_1425) + x_1427);
        let x_1430 : vec2<f32> = u_xlat27;
        let x_1432 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec23;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1439.xy, x_1439.z);
        u_xlat7.x = x_1441;
        let x_1444 : f32 = u_xlat19.z;
        let x_1446 : f32 = u_xlat7.x;
        let x_1448 : f32 = u_xlat65;
        u_xlat65 = ((x_1444 * x_1446) + x_1448);
        let x_1451 : vec2<f32> = u_xlat16;
        let x_1453 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec24;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1460.xy, x_1460.z);
        u_xlat7.x = x_1462;
        let x_1465 : f32 = u_xlat19.w;
        let x_1467 : f32 = u_xlat7.x;
        let x_1469 : f32 = u_xlat65;
        u_xlat65 = ((x_1465 * x_1467) + x_1469);
        let x_1472 : vec4<f32> = u_xlat10;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.x, x_1472.y);
        let x_1475 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec25;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1482.xy, x_1482.z);
        u_xlat7.x = x_1484;
        let x_1487 : f32 = u_xlat6.x;
        let x_1489 : f32 = u_xlat7.x;
        let x_1491 : f32 = u_xlat65;
        u_xlat65 = ((x_1487 * x_1489) + x_1491);
        let x_1494 : vec4<f32> = u_xlat10;
        let x_1495 : vec2<f32> = vec2<f32>(x_1494.z, x_1494.w);
        let x_1497 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec26;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1504.xy, x_1504.z);
        u_xlat6.x = x_1506;
        let x_1509 : f32 = u_xlat6.y;
        let x_1511 : f32 = u_xlat6.x;
        let x_1513 : f32 = u_xlat65;
        u_xlat65 = ((x_1509 * x_1511) + x_1513);
        let x_1516 : vec2<f32> = u_xlat49;
        let x_1518 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec27;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1525.xy, x_1525.z);
        u_xlat6.x = x_1527;
        let x_1530 : f32 = u_xlat6.z;
        let x_1532 : f32 = u_xlat6.x;
        let x_1534 : f32 = u_xlat65;
        u_xlat65 = ((x_1530 * x_1532) + x_1534);
        let x_1537 : vec3<f32> = u_xlat25;
        let x_1538 : vec2<f32> = vec2<f32>(x_1537.x, x_1537.y);
        let x_1540 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1538.x, x_1538.y, x_1540);
        let x_1547 : vec3<f32> = txVec28;
        let x_1549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1547.xy, x_1547.z);
        u_xlat25.x = x_1549;
        let x_1552 : f32 = u_xlat6.w;
        let x_1554 : f32 = u_xlat25.x;
        let x_1556 : f32 = u_xlat65;
        u_xlat5.x = ((x_1552 * x_1554) + x_1556);
      }
    }
  } else {
    let x_1561 : vec4<f32> = vs_TEXCOORD8;
    let x_1562 : vec2<f32> = vec2<f32>(x_1561.x, x_1561.y);
    let x_1564 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
    let x_1571 : vec3<f32> = txVec29;
    let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1571.xy, x_1571.z);
    u_xlat5.x = x_1573;
  }
  let x_1576 : f32 = x_306.x_MainLightShadowParams.x;
  u_xlat25.x = (-(x_1576) + 1.0f);
  let x_1581 : f32 = u_xlat5.x;
  let x_1583 : f32 = x_306.x_MainLightShadowParams.x;
  let x_1586 : f32 = u_xlat25.x;
  u_xlat5.x = ((x_1581 * x_1583) + x_1586);
  let x_1590 : f32 = vs_TEXCOORD8.z;
  u_xlatb25.x = (0.0f >= x_1590);
  let x_1595 : f32 = vs_TEXCOORD8.z;
  u_xlatb45 = (x_1595 >= 1.0f);
  let x_1597 : bool = u_xlatb45;
  let x_1599 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_1597 | x_1599);
  let x_1603 : bool = u_xlatb25.x;
  if (x_1603) {
    x_1604 = 1.0f;
  } else {
    let x_1609 : f32 = u_xlat5.x;
    x_1604 = x_1609;
  }
  let x_1610 : f32 = x_1604;
  u_xlat5.x = x_1610;
  let x_1612 : vec3<f32> = vs_TEXCOORD7;
  let x_1615 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat25 = (x_1612 + -(x_1615));
  let x_1618 : vec3<f32> = u_xlat25;
  let x_1619 : vec3<f32> = u_xlat25;
  u_xlat25.x = dot(x_1618, x_1619);
  let x_1623 : f32 = u_xlat25.x;
  let x_1625 : f32 = x_306.x_MainLightShadowParams.z;
  let x_1628 : f32 = x_306.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_1623 * x_1625) + x_1628);
  let x_1632 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1632, 0.0f, 1.0f);
  let x_1636 : f32 = u_xlat5.x;
  u_xlat45 = (-(x_1636) + 1.0f);
  let x_1640 : f32 = u_xlat25.x;
  let x_1641 : f32 = u_xlat45;
  let x_1644 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1640 * x_1641) + x_1644);
  let x_1653 : f32 = x_1651.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_1653 == -1.0f));
  let x_1657 : bool = u_xlatb25.x;
  if (x_1657) {
    let x_1660 : vec3<f32> = vs_TEXCOORD7;
    let x_1663 : vec4<f32> = x_1651.x_MainLightWorldToLight[1i];
    let x_1665 : vec2<f32> = (vec2<f32>(x_1660.y, x_1660.y) * vec2<f32>(x_1663.x, x_1663.y));
    let x_1666 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1665.x, x_1665.y, x_1666.z);
    let x_1669 : vec4<f32> = x_1651.x_MainLightWorldToLight[0i];
    let x_1671 : vec3<f32> = vs_TEXCOORD7;
    let x_1674 : vec3<f32> = u_xlat25;
    let x_1676 : vec2<f32> = ((vec2<f32>(x_1669.x, x_1669.y) * vec2<f32>(x_1671.x, x_1671.x)) + vec2<f32>(x_1674.x, x_1674.y));
    let x_1677 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1676.x, x_1676.y, x_1677.z);
    let x_1680 : vec4<f32> = x_1651.x_MainLightWorldToLight[2i];
    let x_1682 : vec3<f32> = vs_TEXCOORD7;
    let x_1685 : vec3<f32> = u_xlat25;
    let x_1687 : vec2<f32> = ((vec2<f32>(x_1680.x, x_1680.y) * vec2<f32>(x_1682.z, x_1682.z)) + vec2<f32>(x_1685.x, x_1685.y));
    let x_1688 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1687.x, x_1687.y, x_1688.z);
    let x_1690 : vec3<f32> = u_xlat25;
    let x_1693 : vec4<f32> = x_1651.x_MainLightWorldToLight[3i];
    let x_1695 : vec2<f32> = (vec2<f32>(x_1690.x, x_1690.y) + vec2<f32>(x_1693.x, x_1693.y));
    let x_1696 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1695.x, x_1695.y, x_1696.z);
    let x_1698 : vec3<f32> = u_xlat25;
    let x_1701 : vec2<f32> = ((vec2<f32>(x_1698.x, x_1698.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1702 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1701.x, x_1701.y, x_1702.z);
    let x_1709 : vec3<f32> = u_xlat25;
    let x_1712 : f32 = x_44.x_GlobalMipBias.x;
    let x_1713 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1709.x, x_1709.y), x_1712);
    u_xlat6 = x_1713;
    let x_1715 : f32 = x_1651.x_MainLightCookieTextureFormat;
    let x_1717 : f32 = x_1651.x_MainLightCookieTextureFormat;
    let x_1719 : f32 = x_1651.x_MainLightCookieTextureFormat;
    let x_1721 : f32 = x_1651.x_MainLightCookieTextureFormat;
    let x_1722 : vec4<f32> = vec4<f32>(x_1715, x_1717, x_1719, x_1721);
    let x_1730 : vec4<bool> = (vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1722.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_1730.x, x_1730.y);
    let x_1733 : bool = u_xlatb25.y;
    if (x_1733) {
      let x_1738 : f32 = u_xlat6.w;
      x_1734 = x_1738;
    } else {
      let x_1741 : f32 = u_xlat6.x;
      x_1734 = x_1741;
    }
    let x_1742 : f32 = x_1734;
    u_xlat45 = x_1742;
    let x_1744 : bool = u_xlatb25.x;
    if (x_1744) {
      let x_1748 : vec4<f32> = u_xlat6;
      x_1745 = vec3<f32>(x_1748.x, x_1748.y, x_1748.z);
    } else {
      let x_1751 : f32 = u_xlat45;
      x_1745 = vec3<f32>(x_1751, x_1751, x_1751);
    }
    let x_1753 : vec3<f32> = x_1745;
    u_xlat25 = x_1753;
  } else {
    u_xlat25.x = 1.0f;
    u_xlat25.y = 1.0f;
    u_xlat25.z = 1.0f;
  }
  let x_1758 : vec3<f32> = u_xlat25;
  let x_1760 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat25 = (x_1758 * vec3<f32>(x_1760.x, x_1760.y, x_1760.z));
  let x_1763 : f32 = u_xlat43;
  let x_1765 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1763, x_1763, x_1763) * x_1765);
  let x_1768 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1768;
  let x_1772 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1772;
  let x_1776 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1776;
  let x_1779 : vec4<f32> = u_xlat6;
  let x_1782 : vec3<f32> = u_xlat21;
  u_xlat66 = dot(-(vec3<f32>(x_1779.x, x_1779.y, x_1779.z)), x_1782);
  let x_1784 : f32 = u_xlat66;
  let x_1785 : f32 = u_xlat66;
  u_xlat66 = (x_1784 + x_1785);
  let x_1787 : vec3<f32> = u_xlat21;
  let x_1788 : f32 = u_xlat66;
  let x_1792 : vec4<f32> = u_xlat6;
  let x_1795 : vec3<f32> = ((x_1787 * -(vec3<f32>(x_1788, x_1788, x_1788))) + -(vec3<f32>(x_1792.x, x_1792.y, x_1792.z)));
  let x_1796 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
  let x_1798 : vec3<f32> = u_xlat21;
  let x_1799 : vec4<f32> = u_xlat6;
  u_xlat66 = dot(x_1798, vec3<f32>(x_1799.x, x_1799.y, x_1799.z));
  let x_1802 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1802, 0.0f, 1.0f);
  let x_1804 : f32 = u_xlat66;
  u_xlat66 = (-(x_1804) + 1.0f);
  let x_1807 : f32 = u_xlat66;
  let x_1808 : f32 = u_xlat66;
  u_xlat66 = (x_1807 * x_1808);
  let x_1810 : f32 = u_xlat66;
  let x_1811 : f32 = u_xlat66;
  u_xlat66 = (x_1810 * x_1811);
  let x_1814 : f32 = u_xlat1;
  u_xlat67 = ((-(x_1814) * 0.699999988f) + 1.700000048f);
  let x_1820 : f32 = u_xlat1;
  let x_1821 : f32 = u_xlat67;
  u_xlat1 = (x_1820 * x_1821);
  let x_1823 : f32 = u_xlat1;
  u_xlat1 = (x_1823 * 6.0f);
  let x_1834 : vec4<f32> = u_xlat7;
  let x_1836 : f32 = u_xlat1;
  let x_1837 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1834.x, x_1834.y, x_1834.z), x_1836);
  u_xlat7 = x_1837;
  let x_1839 : f32 = u_xlat7.w;
  u_xlat1 = (x_1839 + -1.0f);
  let x_1846 : f32 = x_1844.unity_SpecCube0_HDR.w;
  let x_1847 : f32 = u_xlat1;
  u_xlat1 = ((x_1846 * x_1847) + 1.0f);
  let x_1850 : f32 = u_xlat1;
  u_xlat1 = max(x_1850, 0.0f);
  let x_1852 : f32 = u_xlat1;
  u_xlat1 = log2(x_1852);
  let x_1854 : f32 = u_xlat1;
  let x_1856 : f32 = x_1844.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1854 * x_1856);
  let x_1858 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1858);
  let x_1860 : f32 = u_xlat1;
  let x_1862 : f32 = x_1844.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1860 * x_1862);
  let x_1864 : vec4<f32> = u_xlat7;
  let x_1866 : f32 = u_xlat1;
  let x_1868 : vec3<f32> = (vec3<f32>(x_1864.x, x_1864.y, x_1864.z) * vec3<f32>(x_1866, x_1866, x_1866));
  let x_1869 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1868.x, x_1868.y, x_1868.z, x_1869.w);
  let x_1871 : f32 = u_xlat23;
  let x_1873 : f32 = u_xlat23;
  let x_1877 : vec2<f32> = ((vec2<f32>(x_1871, x_1871) * vec2<f32>(x_1873, x_1873)) + vec2<f32>(-1.0f, 1.0f));
  let x_1878 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1877.x, x_1877.y, x_1878.z, x_1878.w);
  let x_1881 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1881);
  let x_1884 : vec4<f32> = u_xlat0;
  let x_1887 : f32 = u_xlat60;
  u_xlat28 = (-(vec3<f32>(x_1884.x, x_1884.y, x_1884.z)) + vec3<f32>(x_1887, x_1887, x_1887));
  let x_1890 : f32 = u_xlat66;
  let x_1892 : vec3<f32> = u_xlat28;
  let x_1894 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_1890, x_1890, x_1890) * x_1892) + vec3<f32>(x_1894.x, x_1894.y, x_1894.z));
  let x_1897 : f32 = u_xlat1;
  let x_1899 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1897, x_1897, x_1897) * x_1899);
  let x_1901 : vec4<f32> = u_xlat7;
  let x_1903 : vec3<f32> = u_xlat28;
  let x_1904 : vec3<f32> = (vec3<f32>(x_1901.x, x_1901.y, x_1901.z) * x_1903);
  let x_1905 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1904.x, x_1904.y, x_1904.z, x_1905.w);
  let x_1907 : vec3<f32> = u_xlat22;
  let x_1908 : vec3<f32> = u_xlat4;
  let x_1910 : vec4<f32> = u_xlat7;
  u_xlat22 = ((x_1907 * x_1908) + vec3<f32>(x_1910.x, x_1910.y, x_1910.z));
  let x_1914 : f32 = u_xlat5.x;
  let x_1917 : f32 = x_1844.unity_LightData.z;
  u_xlat60 = (x_1914 * x_1917);
  let x_1919 : vec3<f32> = u_xlat21;
  let x_1921 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_1919, vec3<f32>(x_1921.x, x_1921.y, x_1921.z));
  let x_1924 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1924, 0.0f, 1.0f);
  let x_1926 : f32 = u_xlat60;
  let x_1927 : f32 = u_xlat1;
  u_xlat60 = (x_1926 * x_1927);
  let x_1929 : f32 = u_xlat60;
  let x_1931 : vec3<f32> = u_xlat25;
  let x_1932 : vec3<f32> = (vec3<f32>(x_1929, x_1929, x_1929) * x_1931);
  let x_1933 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1932.x, x_1932.y, x_1932.z, x_1933.w);
  let x_1935 : vec4<f32> = u_xlat6;
  let x_1938 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1940 : vec3<f32> = (vec3<f32>(x_1935.x, x_1935.y, x_1935.z) + vec3<f32>(x_1938.x, x_1938.y, x_1938.z));
  let x_1941 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1940.x, x_1940.y, x_1940.z, x_1941.w);
  let x_1943 : vec4<f32> = u_xlat7;
  let x_1945 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1943.x, x_1943.y, x_1943.z), vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
  let x_1948 : f32 = u_xlat60;
  u_xlat60 = max(x_1948, 1.17549435e-37f);
  let x_1951 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1951);
  let x_1953 : f32 = u_xlat60;
  let x_1955 : vec4<f32> = u_xlat7;
  let x_1957 : vec3<f32> = (vec3<f32>(x_1953, x_1953, x_1953) * vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
  let x_1958 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1957.x, x_1957.y, x_1957.z, x_1958.w);
  let x_1960 : vec3<f32> = u_xlat21;
  let x_1961 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_1960, vec3<f32>(x_1961.x, x_1961.y, x_1961.z));
  let x_1964 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1964, 0.0f, 1.0f);
  let x_1967 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1969 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_1967.x, x_1967.y, x_1967.z), vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
  let x_1972 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1972, 0.0f, 1.0f);
  let x_1974 : f32 = u_xlat60;
  let x_1975 : f32 = u_xlat60;
  u_xlat60 = (x_1974 * x_1975);
  let x_1977 : f32 = u_xlat60;
  let x_1979 : f32 = u_xlat8.x;
  u_xlat60 = ((x_1977 * x_1979) + 1.000010014f);
  let x_1983 : f32 = u_xlat1;
  let x_1984 : f32 = u_xlat1;
  u_xlat1 = (x_1983 * x_1984);
  let x_1986 : f32 = u_xlat60;
  let x_1987 : f32 = u_xlat60;
  u_xlat60 = (x_1986 * x_1987);
  let x_1989 : f32 = u_xlat1;
  u_xlat1 = max(x_1989, 0.100000001f);
  let x_1992 : f32 = u_xlat60;
  let x_1993 : f32 = u_xlat1;
  u_xlat60 = (x_1992 * x_1993);
  let x_1995 : f32 = u_xlat63;
  let x_1996 : f32 = u_xlat60;
  u_xlat60 = (x_1995 * x_1996);
  let x_1998 : f32 = u_xlat64;
  let x_1999 : f32 = u_xlat60;
  u_xlat60 = (x_1998 / x_1999);
  let x_2001 : vec4<f32> = u_xlat0;
  let x_2003 : f32 = u_xlat60;
  let x_2006 : vec3<f32> = u_xlat4;
  let x_2007 : vec3<f32> = ((vec3<f32>(x_2001.x, x_2001.y, x_2001.z) * vec3<f32>(x_2003, x_2003, x_2003)) + x_2006);
  let x_2008 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2007.x, x_2007.y, x_2007.z, x_2008.w);
  let x_2010 : vec4<f32> = u_xlat5;
  let x_2012 : vec4<f32> = u_xlat7;
  let x_2014 : vec3<f32> = (vec3<f32>(x_2010.x, x_2010.y, x_2010.z) * vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
  let x_2015 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2014.x, x_2014.y, x_2014.z, x_2015.w);
  let x_2018 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2020 : f32 = x_1844.unity_LightData.y;
  u_xlat60 = min(x_2018, x_2020);
  let x_2024 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2024));
  let x_2029 : f32 = x_1651.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2031 : f32 = x_1651.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2033 : f32 = x_1651.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2035 : f32 = x_1651.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2036 : vec4<f32> = vec4<f32>(x_2029, x_2031, x_2033, x_2035);
  let x_2042 : vec4<bool> = (vec4<f32>(x_2036.x, x_2036.y, x_2036.z, x_2036.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2042.x, x_2042.y);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2053 : u32 = u_xlatu_loop_1;
    let x_2054 : u32 = u_xlatu60;
    if ((x_2053 < x_2054)) {
    } else {
      break;
    }
    let x_2057 : u32 = u_xlatu_loop_1;
    u_xlatu23 = (x_2057 >> 2u);
    let x_2061 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2061 & 3u));
    let x_2064 : u32 = u_xlatu23;
    let x_2067 : vec4<f32> = x_1844.unity_LightIndices[bitcast<i32>(x_2064)];
    let x_2077 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2082 : vec4<u32> = indexable[x_2077];
    u_xlat23 = dot(x_2067, bitcast<vec4<f32>>(x_2082));
    let x_2085 : f32 = u_xlat23;
    u_xlatu23 = bitcast<u32>(i32(x_2085));
    let x_2088 : vec3<f32> = vs_TEXCOORD7;
    let x_2100 : u32 = u_xlatu23;
    let x_2103 : vec4<f32> = x_2099.x_AdditionalLightsPosition[bitcast<i32>(x_2100)];
    let x_2106 : u32 = u_xlatu23;
    let x_2109 : vec4<f32> = x_2099.x_AdditionalLightsPosition[bitcast<i32>(x_2106)];
    let x_2111 : vec3<f32> = ((-(x_2088) * vec3<f32>(x_2103.w, x_2103.w, x_2103.w)) + vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
    let x_2112 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
    let x_2114 : vec4<f32> = u_xlat9;
    let x_2116 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2114.x, x_2114.y, x_2114.z), vec3<f32>(x_2116.x, x_2116.y, x_2116.z));
    let x_2119 : f32 = u_xlat65;
    u_xlat65 = max(x_2119, 6.10351562e-05f);
    let x_2122 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2122);
    let x_2124 : f32 = u_xlat66;
    let x_2126 : vec4<f32> = u_xlat9;
    let x_2128 : vec3<f32> = (vec3<f32>(x_2124, x_2124, x_2124) * vec3<f32>(x_2126.x, x_2126.y, x_2126.z));
    let x_2129 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2128.x, x_2128.y, x_2128.z, x_2129.w);
    let x_2132 : f32 = u_xlat65;
    u_xlat47.x = (1.0f / x_2132);
    let x_2135 : f32 = u_xlat65;
    let x_2136 : u32 = u_xlatu23;
    let x_2139 : f32 = x_2099.x_AdditionalLightsAttenuation[bitcast<i32>(x_2136)].x;
    u_xlat65 = (x_2135 * x_2139);
    let x_2141 : f32 = u_xlat65;
    let x_2143 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2141) * x_2143) + 1.0f);
    let x_2146 : f32 = u_xlat65;
    u_xlat65 = max(x_2146, 0.0f);
    let x_2148 : f32 = u_xlat65;
    let x_2149 : f32 = u_xlat65;
    u_xlat65 = (x_2148 * x_2149);
    let x_2151 : f32 = u_xlat65;
    let x_2153 : f32 = u_xlat47.x;
    u_xlat65 = (x_2151 * x_2153);
    let x_2155 : u32 = u_xlatu23;
    let x_2158 : vec4<f32> = x_2099.x_AdditionalLightsSpotDir[bitcast<i32>(x_2155)];
    let x_2160 : vec4<f32> = u_xlat10;
    u_xlat47.x = dot(vec3<f32>(x_2158.x, x_2158.y, x_2158.z), vec3<f32>(x_2160.x, x_2160.y, x_2160.z));
    let x_2165 : f32 = u_xlat47.x;
    let x_2166 : u32 = u_xlatu23;
    let x_2169 : f32 = x_2099.x_AdditionalLightsAttenuation[bitcast<i32>(x_2166)].z;
    let x_2171 : u32 = u_xlatu23;
    let x_2174 : f32 = x_2099.x_AdditionalLightsAttenuation[bitcast<i32>(x_2171)].w;
    u_xlat47.x = ((x_2165 * x_2169) + x_2174);
    let x_2178 : f32 = u_xlat47.x;
    u_xlat47.x = clamp(x_2178, 0.0f, 1.0f);
    let x_2182 : f32 = u_xlat47.x;
    let x_2184 : f32 = u_xlat47.x;
    u_xlat47.x = (x_2182 * x_2184);
    let x_2187 : f32 = u_xlat65;
    let x_2189 : f32 = u_xlat47.x;
    u_xlat65 = (x_2187 * x_2189);
    let x_2192 : u32 = u_xlatu23;
    u_xlatu47 = (x_2192 >> 5u);
    let x_2195 : u32 = u_xlatu23;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2195) & 31i)));
    let x_2201 : i32 = u_xlati67;
    let x_2203 : u32 = u_xlatu47;
    let x_2206 : f32 = x_1651.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2203)].el;
    u_xlati47 = bitcast<i32>((bitcast<u32>(x_2201) & bitcast<u32>(x_2206)));
    let x_2210 : i32 = u_xlati47;
    if ((x_2210 != 0i)) {
      let x_2220 : u32 = u_xlatu23;
      let x_2223 : f32 = x_2219.x_AdditionalLightsLightTypes[bitcast<i32>(x_2220)].el;
      u_xlati47 = i32(x_2223);
      let x_2225 : i32 = u_xlati47;
      u_xlati67 = select(1i, 0i, (x_2225 != 0i));
      let x_2229 : u32 = u_xlatu23;
      u_xlati69 = (bitcast<i32>(x_2229) << bitcast<u32>(2i));
      let x_2232 : i32 = u_xlati67;
      if ((x_2232 != 0i)) {
        let x_2236 : vec3<f32> = vs_TEXCOORD7;
        let x_2238 : i32 = u_xlati69;
        let x_2241 : i32 = u_xlati69;
        let x_2245 : vec4<f32> = x_2219.x_AdditionalLightsWorldToLights[((x_2238 + 1i) / 4i)][((x_2241 + 1i) % 4i)];
        let x_2247 : vec3<f32> = (vec3<f32>(x_2236.y, x_2236.y, x_2236.y) * vec3<f32>(x_2245.x, x_2245.y, x_2245.w));
        let x_2248 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2247.x, x_2247.y, x_2247.z, x_2248.w);
        let x_2250 : i32 = u_xlati69;
        let x_2252 : i32 = u_xlati69;
        let x_2255 : vec4<f32> = x_2219.x_AdditionalLightsWorldToLights[(x_2250 / 4i)][(x_2252 % 4i)];
        let x_2257 : vec3<f32> = vs_TEXCOORD7;
        let x_2260 : vec4<f32> = u_xlat11;
        let x_2262 : vec3<f32> = ((vec3<f32>(x_2255.x, x_2255.y, x_2255.w) * vec3<f32>(x_2257.x, x_2257.x, x_2257.x)) + vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
        let x_2263 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
        let x_2265 : i32 = u_xlati69;
        let x_2268 : i32 = u_xlati69;
        let x_2272 : vec4<f32> = x_2219.x_AdditionalLightsWorldToLights[((x_2265 + 2i) / 4i)][((x_2268 + 2i) % 4i)];
        let x_2274 : vec3<f32> = vs_TEXCOORD7;
        let x_2277 : vec4<f32> = u_xlat11;
        let x_2279 : vec3<f32> = ((vec3<f32>(x_2272.x, x_2272.y, x_2272.w) * vec3<f32>(x_2274.z, x_2274.z, x_2274.z)) + vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
        let x_2280 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
        let x_2282 : vec4<f32> = u_xlat11;
        let x_2284 : i32 = u_xlati69;
        let x_2287 : i32 = u_xlati69;
        let x_2291 : vec4<f32> = x_2219.x_AdditionalLightsWorldToLights[((x_2284 + 3i) / 4i)][((x_2287 + 3i) % 4i)];
        let x_2293 : vec3<f32> = (vec3<f32>(x_2282.x, x_2282.y, x_2282.z) + vec3<f32>(x_2291.x, x_2291.y, x_2291.w));
        let x_2294 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2293.x, x_2293.y, x_2293.z, x_2294.w);
        let x_2296 : vec4<f32> = u_xlat11;
        let x_2298 : vec4<f32> = u_xlat11;
        let x_2300 : vec2<f32> = (vec2<f32>(x_2296.x, x_2296.y) / vec2<f32>(x_2298.z, x_2298.z));
        let x_2301 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2300.x, x_2300.y, x_2301.z, x_2301.w);
        let x_2303 : vec4<f32> = u_xlat11;
        let x_2306 : vec2<f32> = ((vec2<f32>(x_2303.x, x_2303.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2307 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2306.x, x_2306.y, x_2307.z, x_2307.w);
        let x_2309 : vec4<f32> = u_xlat11;
        let x_2313 : vec2<f32> = clamp(vec2<f32>(x_2309.x, x_2309.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2314 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2313.x, x_2313.y, x_2314.z, x_2314.w);
        let x_2316 : u32 = u_xlatu23;
        let x_2319 : vec4<f32> = x_2219.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2316)];
        let x_2321 : vec4<f32> = u_xlat11;
        let x_2324 : u32 = u_xlatu23;
        let x_2327 : vec4<f32> = x_2219.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2324)];
        let x_2329 : vec2<f32> = ((vec2<f32>(x_2319.x, x_2319.y) * vec2<f32>(x_2321.x, x_2321.y)) + vec2<f32>(x_2327.z, x_2327.w));
        let x_2330 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2329.x, x_2329.y, x_2330.z, x_2330.w);
      } else {
        let x_2334 : i32 = u_xlati47;
        u_xlatb47 = (x_2334 == 1i);
        let x_2336 : bool = u_xlatb47;
        u_xlati47 = select(0i, 1i, x_2336);
        let x_2338 : i32 = u_xlati47;
        if ((x_2338 != 0i)) {
          let x_2342 : vec3<f32> = vs_TEXCOORD7;
          let x_2344 : i32 = u_xlati69;
          let x_2347 : i32 = u_xlati69;
          let x_2351 : vec4<f32> = x_2219.x_AdditionalLightsWorldToLights[((x_2344 + 1i) / 4i)][((x_2347 + 1i) % 4i)];
          u_xlat47 = (vec2<f32>(x_2342.y, x_2342.y) * vec2<f32>(x_2351.x, x_2351.y));
          let x_2354 : i32 = u_xlati69;
          let x_2356 : i32 = u_xlati69;
          let x_2359 : vec4<f32> = x_2219.x_AdditionalLightsWorldToLights[(x_2354 / 4i)][(x_2356 % 4i)];
          let x_2361 : vec3<f32> = vs_TEXCOORD7;
          let x_2364 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2359.x, x_2359.y) * vec2<f32>(x_2361.x, x_2361.x)) + x_2364);
          let x_2366 : i32 = u_xlati69;
          let x_2369 : i32 = u_xlati69;
          let x_2373 : vec4<f32> = x_2219.x_AdditionalLightsWorldToLights[((x_2366 + 2i) / 4i)][((x_2369 + 2i) % 4i)];
          let x_2375 : vec3<f32> = vs_TEXCOORD7;
          let x_2378 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2373.x, x_2373.y) * vec2<f32>(x_2375.z, x_2375.z)) + x_2378);
          let x_2380 : vec2<f32> = u_xlat47;
          let x_2381 : i32 = u_xlati69;
          let x_2384 : i32 = u_xlati69;
          let x_2388 : vec4<f32> = x_2219.x_AdditionalLightsWorldToLights[((x_2381 + 3i) / 4i)][((x_2384 + 3i) % 4i)];
          u_xlat47 = (x_2380 + vec2<f32>(x_2388.x, x_2388.y));
          let x_2391 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2391 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2394 : vec2<f32> = u_xlat47;
          u_xlat47 = fract(x_2394);
          let x_2396 : u32 = u_xlatu23;
          let x_2399 : vec4<f32> = x_2219.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2396)];
          let x_2401 : vec2<f32> = u_xlat47;
          let x_2403 : u32 = u_xlatu23;
          let x_2406 : vec4<f32> = x_2219.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2403)];
          let x_2408 : vec2<f32> = ((vec2<f32>(x_2399.x, x_2399.y) * x_2401) + vec2<f32>(x_2406.z, x_2406.w));
          let x_2409 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2408.x, x_2408.y, x_2409.z, x_2409.w);
        } else {
          let x_2412 : vec3<f32> = vs_TEXCOORD7;
          let x_2414 : i32 = u_xlati69;
          let x_2417 : i32 = u_xlati69;
          let x_2421 : vec4<f32> = x_2219.x_AdditionalLightsWorldToLights[((x_2414 + 1i) / 4i)][((x_2417 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2412.y, x_2412.y, x_2412.y, x_2412.y) * x_2421);
          let x_2423 : i32 = u_xlati69;
          let x_2425 : i32 = u_xlati69;
          let x_2428 : vec4<f32> = x_2219.x_AdditionalLightsWorldToLights[(x_2423 / 4i)][(x_2425 % 4i)];
          let x_2429 : vec3<f32> = vs_TEXCOORD7;
          let x_2432 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2428 * vec4<f32>(x_2429.x, x_2429.x, x_2429.x, x_2429.x)) + x_2432);
          let x_2434 : i32 = u_xlati69;
          let x_2437 : i32 = u_xlati69;
          let x_2441 : vec4<f32> = x_2219.x_AdditionalLightsWorldToLights[((x_2434 + 2i) / 4i)][((x_2437 + 2i) % 4i)];
          let x_2442 : vec3<f32> = vs_TEXCOORD7;
          let x_2445 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2441 * vec4<f32>(x_2442.z, x_2442.z, x_2442.z, x_2442.z)) + x_2445);
          let x_2447 : vec4<f32> = u_xlat12;
          let x_2448 : i32 = u_xlati69;
          let x_2451 : i32 = u_xlati69;
          let x_2455 : vec4<f32> = x_2219.x_AdditionalLightsWorldToLights[((x_2448 + 3i) / 4i)][((x_2451 + 3i) % 4i)];
          u_xlat12 = (x_2447 + x_2455);
          let x_2457 : vec4<f32> = u_xlat12;
          let x_2459 : vec4<f32> = u_xlat12;
          let x_2461 : vec3<f32> = (vec3<f32>(x_2457.x, x_2457.y, x_2457.z) / vec3<f32>(x_2459.w, x_2459.w, x_2459.w));
          let x_2462 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2461.x, x_2461.y, x_2461.z, x_2462.w);
          let x_2464 : vec4<f32> = u_xlat12;
          let x_2466 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(vec3<f32>(x_2464.x, x_2464.y, x_2464.z), vec3<f32>(x_2466.x, x_2466.y, x_2466.z));
          let x_2471 : f32 = u_xlat47.x;
          u_xlat47.x = inverseSqrt(x_2471);
          let x_2474 : vec2<f32> = u_xlat47;
          let x_2476 : vec4<f32> = u_xlat12;
          let x_2478 : vec3<f32> = (vec3<f32>(x_2474.x, x_2474.x, x_2474.x) * vec3<f32>(x_2476.x, x_2476.y, x_2476.z));
          let x_2479 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2478.x, x_2478.y, x_2478.z, x_2479.w);
          let x_2481 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(abs(vec3<f32>(x_2481.x, x_2481.y, x_2481.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2488 : f32 = u_xlat47.x;
          u_xlat47.x = max(x_2488, 0.000001f);
          let x_2493 : f32 = u_xlat47.x;
          u_xlat47.x = (1.0f / x_2493);
          let x_2496 : vec2<f32> = u_xlat47;
          let x_2498 : vec4<f32> = u_xlat12;
          let x_2500 : vec3<f32> = (vec3<f32>(x_2496.x, x_2496.x, x_2496.x) * vec3<f32>(x_2498.z, x_2498.x, x_2498.y));
          let x_2501 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2501.w);
          let x_2504 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2504);
          let x_2508 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2508, 0.0f, 1.0f);
          let x_2512 : vec4<f32> = u_xlat13;
          let x_2515 : vec4<bool> = (vec4<f32>(x_2512.y, x_2512.z, x_2512.y, x_2512.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2515.x, x_2515.y);
          let x_2519 : bool = u_xlatb51.x;
          if (x_2519) {
            let x_2524 : f32 = u_xlat13.x;
            x_2520 = x_2524;
          } else {
            let x_2527 : f32 = u_xlat13.x;
            x_2520 = -(x_2527);
          }
          let x_2529 : f32 = x_2520;
          u_xlat51.x = x_2529;
          let x_2532 : bool = u_xlatb51.y;
          if (x_2532) {
            let x_2537 : f32 = u_xlat13.x;
            x_2533 = x_2537;
          } else {
            let x_2540 : f32 = u_xlat13.x;
            x_2533 = -(x_2540);
          }
          let x_2542 : f32 = x_2533;
          u_xlat51.y = x_2542;
          let x_2544 : vec4<f32> = u_xlat12;
          let x_2546 : vec2<f32> = u_xlat47;
          let x_2549 : vec2<f32> = u_xlat51;
          u_xlat47 = ((vec2<f32>(x_2544.x, x_2544.y) * vec2<f32>(x_2546.x, x_2546.x)) + x_2549);
          let x_2551 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2551 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2554 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2554, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2558 : u32 = u_xlatu23;
          let x_2561 : vec4<f32> = x_2219.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2558)];
          let x_2563 : vec2<f32> = u_xlat47;
          let x_2565 : u32 = u_xlatu23;
          let x_2568 : vec4<f32> = x_2219.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2565)];
          let x_2570 : vec2<f32> = ((vec2<f32>(x_2561.x, x_2561.y) * x_2563) + vec2<f32>(x_2568.z, x_2568.w));
          let x_2571 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2570.x, x_2570.y, x_2571.z, x_2571.w);
        }
      }
      let x_2578 : vec4<f32> = u_xlat11;
      let x_2581 : f32 = x_44.x_GlobalMipBias.x;
      let x_2582 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2578.x, x_2578.y), x_2581);
      u_xlat11 = x_2582;
      let x_2584 : bool = u_xlatb7.y;
      if (x_2584) {
        let x_2589 : f32 = u_xlat11.w;
        x_2585 = x_2589;
      } else {
        let x_2592 : f32 = u_xlat11.x;
        x_2585 = x_2592;
      }
      let x_2593 : f32 = x_2585;
      u_xlat47.x = x_2593;
      let x_2596 : bool = u_xlatb7.x;
      if (x_2596) {
        let x_2600 : vec4<f32> = u_xlat11;
        x_2597 = vec3<f32>(x_2600.x, x_2600.y, x_2600.z);
      } else {
        let x_2603 : vec2<f32> = u_xlat47;
        x_2597 = vec3<f32>(x_2603.x, x_2603.x, x_2603.x);
      }
      let x_2605 : vec3<f32> = x_2597;
      let x_2606 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2605.x, x_2605.y, x_2605.z, x_2606.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2612 : vec4<f32> = u_xlat11;
    let x_2614 : u32 = u_xlatu23;
    let x_2617 : vec4<f32> = x_2099.x_AdditionalLightsColor[bitcast<i32>(x_2614)];
    let x_2619 : vec3<f32> = (vec3<f32>(x_2612.x, x_2612.y, x_2612.z) * vec3<f32>(x_2617.x, x_2617.y, x_2617.z));
    let x_2620 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2619.x, x_2619.y, x_2619.z, x_2620.w);
    let x_2622 : f32 = u_xlat43;
    let x_2624 : vec4<f32> = u_xlat11;
    let x_2626 : vec3<f32> = (vec3<f32>(x_2622, x_2622, x_2622) * vec3<f32>(x_2624.x, x_2624.y, x_2624.z));
    let x_2627 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2626.x, x_2626.y, x_2626.z, x_2627.w);
    let x_2629 : vec3<f32> = u_xlat21;
    let x_2630 : vec4<f32> = u_xlat10;
    u_xlat23 = dot(x_2629, vec3<f32>(x_2630.x, x_2630.y, x_2630.z));
    let x_2633 : f32 = u_xlat23;
    u_xlat23 = clamp(x_2633, 0.0f, 1.0f);
    let x_2635 : f32 = u_xlat23;
    let x_2636 : f32 = u_xlat65;
    u_xlat23 = (x_2635 * x_2636);
    let x_2638 : f32 = u_xlat23;
    let x_2640 : vec4<f32> = u_xlat11;
    let x_2642 : vec3<f32> = (vec3<f32>(x_2638, x_2638, x_2638) * vec3<f32>(x_2640.x, x_2640.y, x_2640.z));
    let x_2643 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
    let x_2645 : vec4<f32> = u_xlat9;
    let x_2647 : f32 = u_xlat66;
    let x_2650 : vec4<f32> = u_xlat6;
    let x_2652 : vec3<f32> = ((vec3<f32>(x_2645.x, x_2645.y, x_2645.z) * vec3<f32>(x_2647, x_2647, x_2647)) + vec3<f32>(x_2650.x, x_2650.y, x_2650.z));
    let x_2653 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2652.x, x_2652.y, x_2652.z, x_2653.w);
    let x_2655 : vec4<f32> = u_xlat9;
    let x_2657 : vec4<f32> = u_xlat9;
    u_xlat23 = dot(vec3<f32>(x_2655.x, x_2655.y, x_2655.z), vec3<f32>(x_2657.x, x_2657.y, x_2657.z));
    let x_2660 : f32 = u_xlat23;
    u_xlat23 = max(x_2660, 1.17549435e-37f);
    let x_2662 : f32 = u_xlat23;
    u_xlat23 = inverseSqrt(x_2662);
    let x_2664 : f32 = u_xlat23;
    let x_2666 : vec4<f32> = u_xlat9;
    let x_2668 : vec3<f32> = (vec3<f32>(x_2664, x_2664, x_2664) * vec3<f32>(x_2666.x, x_2666.y, x_2666.z));
    let x_2669 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2669.w);
    let x_2671 : vec3<f32> = u_xlat21;
    let x_2672 : vec4<f32> = u_xlat9;
    u_xlat23 = dot(x_2671, vec3<f32>(x_2672.x, x_2672.y, x_2672.z));
    let x_2675 : f32 = u_xlat23;
    u_xlat23 = clamp(x_2675, 0.0f, 1.0f);
    let x_2677 : vec4<f32> = u_xlat10;
    let x_2679 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2677.x, x_2677.y, x_2677.z), vec3<f32>(x_2679.x, x_2679.y, x_2679.z));
    let x_2682 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2682, 0.0f, 1.0f);
    let x_2684 : f32 = u_xlat23;
    let x_2685 : f32 = u_xlat23;
    u_xlat23 = (x_2684 * x_2685);
    let x_2687 : f32 = u_xlat23;
    let x_2689 : f32 = u_xlat8.x;
    u_xlat23 = ((x_2687 * x_2689) + 1.000010014f);
    let x_2692 : f32 = u_xlat65;
    let x_2693 : f32 = u_xlat65;
    u_xlat65 = (x_2692 * x_2693);
    let x_2695 : f32 = u_xlat23;
    let x_2696 : f32 = u_xlat23;
    u_xlat23 = (x_2695 * x_2696);
    let x_2698 : f32 = u_xlat65;
    u_xlat65 = max(x_2698, 0.100000001f);
    let x_2700 : f32 = u_xlat23;
    let x_2701 : f32 = u_xlat65;
    u_xlat23 = (x_2700 * x_2701);
    let x_2703 : f32 = u_xlat63;
    let x_2704 : f32 = u_xlat23;
    u_xlat23 = (x_2703 * x_2704);
    let x_2706 : f32 = u_xlat64;
    let x_2707 : f32 = u_xlat23;
    u_xlat23 = (x_2706 / x_2707);
    let x_2709 : vec4<f32> = u_xlat0;
    let x_2711 : f32 = u_xlat23;
    let x_2714 : vec3<f32> = u_xlat4;
    let x_2715 : vec3<f32> = ((vec3<f32>(x_2709.x, x_2709.y, x_2709.z) * vec3<f32>(x_2711, x_2711, x_2711)) + x_2714);
    let x_2716 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2715.x, x_2715.y, x_2715.z, x_2716.w);
    let x_2718 : vec4<f32> = u_xlat9;
    let x_2720 : vec4<f32> = u_xlat11;
    let x_2723 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_2718.x, x_2718.y, x_2718.z) * vec3<f32>(x_2720.x, x_2720.y, x_2720.z)) + x_2723);

    continuing {
      let x_2725 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2725 + bitcast<u32>(1i));
    }
  }
  let x_2727 : vec3<f32> = u_xlat22;
  let x_2728 : vec4<f32> = u_xlat3;
  let x_2731 : vec4<f32> = u_xlat5;
  let x_2733 : vec3<f32> = ((x_2727 * vec3<f32>(x_2728.x, x_2728.x, x_2728.x)) + vec3<f32>(x_2731.x, x_2731.y, x_2731.z));
  let x_2734 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2733.x, x_2733.y, x_2733.z, x_2734.w);
  let x_2736 : vec3<f32> = u_xlat28;
  let x_2737 : vec4<f32> = u_xlat0;
  let x_2739 : vec3<f32> = (x_2736 + vec3<f32>(x_2737.x, x_2737.y, x_2737.z));
  let x_2740 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2739.x, x_2739.y, x_2739.z, x_2740.w);
  let x_2742 : f32 = u_xlat2;
  let x_2743 : f32 = u_xlat2;
  u_xlat60 = (x_2742 * -(x_2743));
  let x_2746 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2746);
  let x_2748 : vec4<f32> = u_xlat0;
  let x_2752 : vec4<f32> = x_44.unity_FogColor;
  let x_2755 : vec3<f32> = (vec3<f32>(x_2748.x, x_2748.y, x_2748.z) + -(vec3<f32>(x_2752.x, x_2752.y, x_2752.z)));
  let x_2756 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2755.x, x_2755.y, x_2755.z, x_2756.w);
  let x_2760 : f32 = u_xlat60;
  let x_2762 : vec4<f32> = u_xlat0;
  let x_2766 : vec4<f32> = x_44.unity_FogColor;
  let x_2768 : vec3<f32> = ((vec3<f32>(x_2760, x_2760, x_2760) * vec3<f32>(x_2762.x, x_2762.y, x_2762.z)) + vec3<f32>(x_2766.x, x_2766.y, x_2766.z));
  let x_2769 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2768.x, x_2768.y, x_2768.z, x_2769.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

