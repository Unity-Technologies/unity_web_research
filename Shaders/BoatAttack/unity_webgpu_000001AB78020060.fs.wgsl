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
  unity_OrthoParams : vec4<f32>,
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

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_348 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1678 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1865 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2120 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2240 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb21 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat21 : vec3<f32>;
  var x_111 : vec3<f32>;
  var u_xlat62 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlat24 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat64 : f32;
  var u_xlat60 : f32;
  var u_xlat44 : f32;
  var u_xlatb65 : bool;
  var u_xlat6 : vec4<f32>;
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
  var x_1762 : f32;
  var x_1773 : vec3<f32>;
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
  var x_2541 : f32;
  var x_2554 : f32;
  var x_2606 : f32;
  var x_2618 : vec3<f32>;
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
  let x_70 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb21 = (x_70 == 0.0f);
  let x_77 : vec3<f32> = vs_TEXCOORD7;
  let x_82 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_77) + x_82);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat41 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat41;
  u_xlat41 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat41;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_107 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_107;
  let x_110 : bool = u_xlatb21;
  if (x_110) {
    let x_114 : vec3<f32> = u_xlat2;
    x_111 = x_114;
  } else {
    let x_116 : vec4<f32> = u_xlat3;
    x_111 = vec3<f32>(x_116.x, x_116.y, x_116.z);
  }
  let x_118 : vec3<f32> = x_111;
  u_xlat21 = x_118;
  let x_120 : vec3<f32> = vs_TEXCOORD3;
  let x_121 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_120, x_121);
  let x_125 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_125);
  let x_128 : vec3<f32> = u_xlat2;
  let x_130 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_128.x, x_128.x, x_128.x) * x_130);
  let x_134 : f32 = vs_TEXCOORD7.y;
  let x_136 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat62 = (x_134 * x_136);
  let x_139 : f32 = x_44.unity_MatrixV[0i].z;
  let x_141 : f32 = vs_TEXCOORD7.x;
  let x_143 : f32 = u_xlat62;
  u_xlat62 = ((x_139 * x_141) + x_143);
  let x_146 : f32 = x_44.unity_MatrixV[2i].z;
  let x_148 : f32 = vs_TEXCOORD7.z;
  let x_150 : f32 = u_xlat62;
  u_xlat62 = ((x_146 * x_148) + x_150);
  let x_152 : f32 = u_xlat62;
  let x_155 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat62 = (x_152 + x_155);
  let x_157 : f32 = u_xlat62;
  let x_161 : f32 = x_44.x_ProjectionParams.y;
  u_xlat62 = (-(x_157) + -(x_161));
  let x_164 : f32 = u_xlat62;
  u_xlat62 = max(x_164, 0.0f);
  let x_166 : f32 = u_xlat62;
  let x_169 : f32 = x_44.unity_FogParams.x;
  u_xlat62 = (x_166 * x_169);
  let x_176 : vec4<f32> = vs_TEXCOORD0;
  let x_179 : f32 = x_44.x_GlobalMipBias.x;
  let x_180 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_176.z, x_176.w), x_179);
  u_xlat3 = x_180;
  let x_186 : vec4<f32> = vs_TEXCOORD0;
  let x_189 : f32 = x_44.x_GlobalMipBias.x;
  let x_190 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_186.z, x_186.w), x_189);
  u_xlat4 = vec3<f32>(x_190.x, x_190.y, x_190.z);
  let x_192 : vec4<f32> = u_xlat3;
  let x_196 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_199 : vec3<f32> = u_xlat2;
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_199, vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_205 : f32 = u_xlat3.x;
  u_xlat3.x = (x_205 + 0.5f);
  let x_209 : vec4<f32> = u_xlat3;
  let x_211 : vec3<f32> = u_xlat4;
  let x_212 : vec3<f32> = (vec3<f32>(x_209.x, x_209.x, x_209.x) * x_211);
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_217 : f32 = u_xlat3.w;
  u_xlat63 = max(x_217, 0.0001f);
  let x_220 : vec4<f32> = u_xlat3;
  let x_222 : f32 = u_xlat63;
  let x_224 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) / vec3<f32>(x_222, x_222, x_222));
  let x_225 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_230 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_231 : vec2<f32> = vec2<f32>(x_230.x, x_230.y);
  let x_235 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_231.x, x_231.y));
  let x_236 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_235.x, x_235.y, x_236.z);
  let x_238 : vec3<f32> = u_xlat4;
  let x_240 : vec4<f32> = hlslcc_FragCoord;
  let x_242 : vec2<f32> = (vec2<f32>(x_238.x, x_238.y) * vec2<f32>(x_240.x, x_240.y));
  let x_243 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_242.x, x_242.y, x_243.z);
  let x_246 : f32 = u_xlat4.y;
  let x_249 : f32 = x_44.x_ScaleBiasRt.x;
  let x_252 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat63 = ((x_246 * x_249) + x_252);
  let x_254 : f32 = u_xlat63;
  u_xlat4.z = (-(x_254) + 1.0f);
  let x_258 : f32 = u_xlat1;
  u_xlat63 = ((-(x_258) * 0.959999979f) + 0.959999979f);
  let x_264 : f32 = u_xlat63;
  u_xlat24 = (-(x_264) + 1.0f);
  let x_268 : vec4<f32> = u_xlat0;
  let x_270 : f32 = u_xlat63;
  u_xlat5 = (vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270, x_270, x_270));
  let x_273 : vec4<f32> = u_xlat0;
  let x_277 : vec3<f32> = (vec3<f32>(x_273.x, x_273.y, x_273.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : f32 = u_xlat1;
  let x_282 : vec4<f32> = u_xlat0;
  let x_287 : vec3<f32> = ((vec3<f32>(x_280, x_280, x_280) * vec3<f32>(x_282.x, x_282.y, x_282.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_291 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_291) + 1.0f);
  let x_294 : f32 = u_xlat1;
  let x_295 : f32 = u_xlat1;
  u_xlat63 = (x_294 * x_295);
  let x_297 : f32 = u_xlat63;
  u_xlat63 = max(x_297, 0.0078125f);
  let x_301 : f32 = u_xlat63;
  let x_302 : f32 = u_xlat63;
  u_xlat64 = (x_301 * x_302);
  let x_306 : f32 = u_xlat0.w;
  let x_307 : f32 = u_xlat24;
  u_xlat60 = (x_306 + x_307);
  let x_309 : f32 = u_xlat60;
  u_xlat60 = clamp(x_309, 0.0f, 1.0f);
  let x_311 : f32 = u_xlat63;
  u_xlat24 = ((x_311 * 4.0f) + 2.0f);
  let x_321 : vec3<f32> = u_xlat4;
  let x_324 : f32 = x_44.x_GlobalMipBias.x;
  let x_325 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_321.x, x_321.z), x_324);
  u_xlat4.x = x_325.x;
  let x_330 : f32 = u_xlat4.x;
  u_xlat44 = (x_330 + -1.0f);
  let x_335 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_336 : f32 = u_xlat44;
  u_xlat44 = ((x_335 * x_336) + 1.0f);
  let x_340 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_340, 1.0f);
  let x_350 : f32 = x_348.x_MainLightShadowParams.y;
  u_xlatb65 = (0.0f < x_350);
  let x_352 : bool = u_xlatb65;
  if (x_352) {
    let x_356 : f32 = x_348.x_MainLightShadowParams.y;
    u_xlatb65 = (x_356 == 1.0f);
    let x_358 : bool = u_xlatb65;
    if (x_358) {
      let x_363 : vec4<f32> = vs_TEXCOORD8;
      let x_366 : vec4<f32> = x_348.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_363.x, x_363.y, x_363.x, x_363.y) + x_366);
      let x_369 : vec4<f32> = u_xlat6;
      let x_370 : vec2<f32> = vec2<f32>(x_369.x, x_369.y);
      let x_372 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_385 : vec3<f32> = txVec0;
      let x_387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_385.xy, x_385.z);
      u_xlat7.x = x_387;
      let x_390 : vec4<f32> = u_xlat6;
      let x_391 : vec2<f32> = vec2<f32>(x_390.z, x_390.w);
      let x_393 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_391.x, x_391.y, x_393);
      let x_400 : vec3<f32> = txVec1;
      let x_402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_400.xy, x_400.z);
      u_xlat7.y = x_402;
      let x_404 : vec4<f32> = vs_TEXCOORD8;
      let x_407 : vec4<f32> = x_348.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_404.x, x_404.y, x_404.x, x_404.y) + x_407);
      let x_410 : vec4<f32> = u_xlat6;
      let x_411 : vec2<f32> = vec2<f32>(x_410.x, x_410.y);
      let x_413 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_411.x, x_411.y, x_413);
      let x_420 : vec3<f32> = txVec2;
      let x_422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_420.xy, x_420.z);
      u_xlat7.z = x_422;
      let x_425 : vec4<f32> = u_xlat6;
      let x_426 : vec2<f32> = vec2<f32>(x_425.z, x_425.w);
      let x_428 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_426.x, x_426.y, x_428);
      let x_435 : vec3<f32> = txVec3;
      let x_437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_435.xy, x_435.z);
      u_xlat7.w = x_437;
      let x_440 : vec4<f32> = u_xlat7;
      u_xlat65 = dot(x_440, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_447 : f32 = x_348.x_MainLightShadowParams.y;
      u_xlatb6 = (x_447 == 2.0f);
      let x_449 : bool = u_xlatb6;
      if (x_449) {
        let x_452 : vec4<f32> = vs_TEXCOORD8;
        let x_455 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_459 : vec2<f32> = ((vec2<f32>(x_452.x, x_452.y) * vec2<f32>(x_455.z, x_455.w)) + vec2<f32>(0.5f, 0.5f));
        let x_460 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
        let x_462 : vec4<f32> = u_xlat6;
        let x_464 : vec2<f32> = floor(vec2<f32>(x_462.x, x_462.y));
        let x_465 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
        let x_469 : vec4<f32> = vs_TEXCOORD8;
        let x_472 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_475 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_469.x, x_469.y) * vec2<f32>(x_472.z, x_472.w)) + -(vec2<f32>(x_475.x, x_475.y)));
        let x_479 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_479.x, x_479.x, x_479.y, x_479.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_484 : vec4<f32> = u_xlat7;
        let x_486 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_484.x, x_484.x, x_484.z, x_484.z) * vec4<f32>(x_486.x, x_486.x, x_486.z, x_486.z));
        let x_489 : vec4<f32> = u_xlat8;
        let x_493 : vec2<f32> = (vec2<f32>(x_489.y, x_489.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_494 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_493.x, x_494.y, x_493.y, x_494.w);
        let x_496 : vec4<f32> = u_xlat8;
        let x_499 : vec2<f32> = u_xlat46;
        let x_501 : vec2<f32> = ((vec2<f32>(x_496.x, x_496.z) * vec2<f32>(0.5f, 0.5f)) + -(x_499));
        let x_502 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_505 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_505) + vec2<f32>(1.0f, 1.0f));
        let x_509 : vec2<f32> = u_xlat46;
        let x_511 : vec2<f32> = min(x_509, vec2<f32>(0.0f, 0.0f));
        let x_512 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
        let x_514 : vec4<f32> = u_xlat9;
        let x_517 : vec4<f32> = u_xlat9;
        let x_520 : vec2<f32> = u_xlat48;
        let x_521 : vec2<f32> = ((-(vec2<f32>(x_514.x, x_514.y)) * vec2<f32>(x_517.x, x_517.y)) + x_520);
        let x_522 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
        let x_524 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_524, vec2<f32>(0.0f, 0.0f));
        let x_526 : vec2<f32> = u_xlat46;
        let x_528 : vec2<f32> = u_xlat46;
        let x_530 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_526) * x_528) + vec2<f32>(x_530.y, x_530.w));
        let x_533 : vec4<f32> = u_xlat9;
        let x_535 : vec2<f32> = (vec2<f32>(x_533.x, x_533.y) + vec2<f32>(1.0f, 1.0f));
        let x_536 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
        let x_538 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_538 + vec2<f32>(1.0f, 1.0f));
        let x_541 : vec4<f32> = u_xlat8;
        let x_545 : vec2<f32> = (vec2<f32>(x_541.x, x_541.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_546 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
        let x_548 : vec2<f32> = u_xlat48;
        let x_549 : vec2<f32> = (x_548 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_550 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
        let x_552 : vec4<f32> = u_xlat9;
        let x_554 : vec2<f32> = (vec2<f32>(x_552.x, x_552.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_555 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
        let x_558 : vec2<f32> = u_xlat46;
        let x_559 : vec2<f32> = (x_558 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_560 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
        let x_562 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_562.y, x_562.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_566 : f32 = u_xlat9.x;
        u_xlat10.z = x_566;
        let x_569 : f32 = u_xlat46.x;
        u_xlat10.w = x_569;
        let x_572 : f32 = u_xlat11.x;
        u_xlat8.z = x_572;
        let x_575 : f32 = u_xlat7.x;
        u_xlat8.w = x_575;
        let x_578 : vec4<f32> = u_xlat8;
        let x_580 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_578.z, x_578.w, x_578.x, x_578.z) + vec4<f32>(x_580.z, x_580.w, x_580.x, x_580.z));
        let x_584 : f32 = u_xlat10.y;
        u_xlat9.z = x_584;
        let x_587 : f32 = u_xlat46.y;
        u_xlat9.w = x_587;
        let x_590 : f32 = u_xlat8.y;
        u_xlat11.z = x_590;
        let x_593 : f32 = u_xlat7.z;
        u_xlat11.w = x_593;
        let x_595 : vec4<f32> = u_xlat9;
        let x_597 : vec4<f32> = u_xlat11;
        let x_599 : vec3<f32> = (vec3<f32>(x_595.z, x_595.y, x_595.w) + vec3<f32>(x_597.z, x_597.y, x_597.w));
        let x_600 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
        let x_602 : vec4<f32> = u_xlat8;
        let x_604 : vec4<f32> = u_xlat12;
        let x_606 : vec3<f32> = (vec3<f32>(x_602.x, x_602.z, x_602.w) / vec3<f32>(x_604.z, x_604.w, x_604.y));
        let x_607 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
        let x_609 : vec4<f32> = u_xlat8;
        let x_614 : vec3<f32> = (vec3<f32>(x_609.x, x_609.y, x_609.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_615 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
        let x_617 : vec4<f32> = u_xlat11;
        let x_619 : vec4<f32> = u_xlat7;
        let x_621 : vec3<f32> = (vec3<f32>(x_617.z, x_617.y, x_617.w) / vec3<f32>(x_619.x, x_619.y, x_619.z));
        let x_622 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
        let x_624 : vec4<f32> = u_xlat9;
        let x_626 : vec3<f32> = (vec3<f32>(x_624.x, x_624.y, x_624.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_627 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
        let x_629 : vec4<f32> = u_xlat8;
        let x_632 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_634 : vec3<f32> = (vec3<f32>(x_629.y, x_629.x, x_629.z) * vec3<f32>(x_632.x, x_632.x, x_632.x));
        let x_635 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
        let x_637 : vec4<f32> = u_xlat9;
        let x_640 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_642 : vec3<f32> = (vec3<f32>(x_637.x, x_637.y, x_637.z) * vec3<f32>(x_640.y, x_640.y, x_640.y));
        let x_643 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
        let x_646 : f32 = u_xlat9.x;
        u_xlat8.w = x_646;
        let x_648 : vec4<f32> = u_xlat6;
        let x_651 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_654 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_648.x, x_648.y, x_648.x, x_648.y) * vec4<f32>(x_651.x, x_651.y, x_651.x, x_651.y)) + vec4<f32>(x_654.y, x_654.w, x_654.x, x_654.w));
        let x_657 : vec4<f32> = u_xlat6;
        let x_660 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_663 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_657.x, x_657.y) * vec2<f32>(x_660.x, x_660.y)) + vec2<f32>(x_663.z, x_663.w));
        let x_667 : f32 = u_xlat8.y;
        u_xlat9.w = x_667;
        let x_669 : vec4<f32> = u_xlat9;
        let x_670 : vec2<f32> = vec2<f32>(x_669.y, x_669.z);
        let x_671 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_671.x, x_670.x, x_671.z, x_670.y);
        let x_673 : vec4<f32> = u_xlat6;
        let x_676 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_679 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_673.x, x_673.y, x_673.x, x_673.y) * vec4<f32>(x_676.x, x_676.y, x_676.x, x_676.y)) + vec4<f32>(x_679.x, x_679.y, x_679.z, x_679.y));
        let x_682 : vec4<f32> = u_xlat6;
        let x_685 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_688 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_682.x, x_682.y, x_682.x, x_682.y) * vec4<f32>(x_685.x, x_685.y, x_685.x, x_685.y)) + vec4<f32>(x_688.w, x_688.y, x_688.w, x_688.z));
        let x_691 : vec4<f32> = u_xlat6;
        let x_694 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_697 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_691.x, x_691.y, x_691.x, x_691.y) * vec4<f32>(x_694.x, x_694.y, x_694.x, x_694.y)) + vec4<f32>(x_697.x, x_697.w, x_697.z, x_697.w));
        let x_701 : vec4<f32> = u_xlat7;
        let x_703 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_701.x, x_701.x, x_701.x, x_701.y) * vec4<f32>(x_703.z, x_703.w, x_703.y, x_703.z));
        let x_707 : vec4<f32> = u_xlat7;
        let x_709 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_707.y, x_707.y, x_707.z, x_707.z) * x_709);
        let x_712 : f32 = u_xlat7.z;
        let x_714 : f32 = u_xlat12.y;
        u_xlat6.x = (x_712 * x_714);
        let x_718 : vec4<f32> = u_xlat10;
        let x_719 : vec2<f32> = vec2<f32>(x_718.x, x_718.y);
        let x_721 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_719.x, x_719.y, x_721);
        let x_729 : vec3<f32> = txVec4;
        let x_731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_729.xy, x_729.z);
        u_xlat26 = x_731;
        let x_733 : vec4<f32> = u_xlat10;
        let x_734 : vec2<f32> = vec2<f32>(x_733.z, x_733.w);
        let x_736 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_734.x, x_734.y, x_736);
        let x_743 : vec3<f32> = txVec5;
        let x_745 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_743.xy, x_743.z);
        u_xlat7.x = x_745;
        let x_748 : f32 = u_xlat7.x;
        let x_750 : f32 = u_xlat13.y;
        u_xlat7.x = (x_748 * x_750);
        let x_754 : f32 = u_xlat13.x;
        let x_755 : f32 = u_xlat26;
        let x_758 : f32 = u_xlat7.x;
        u_xlat26 = ((x_754 * x_755) + x_758);
        let x_761 : vec2<f32> = u_xlat46;
        let x_763 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_761.x, x_761.y, x_763);
        let x_770 : vec3<f32> = txVec6;
        let x_772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_770.xy, x_770.z);
        u_xlat46.x = x_772;
        let x_775 : f32 = u_xlat13.z;
        let x_777 : f32 = u_xlat46.x;
        let x_779 : f32 = u_xlat26;
        u_xlat26 = ((x_775 * x_777) + x_779);
        let x_782 : vec4<f32> = u_xlat9;
        let x_783 : vec2<f32> = vec2<f32>(x_782.x, x_782.y);
        let x_785 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_783.x, x_783.y, x_785);
        let x_792 : vec3<f32> = txVec7;
        let x_794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_792.xy, x_792.z);
        u_xlat46.x = x_794;
        let x_797 : f32 = u_xlat13.w;
        let x_799 : f32 = u_xlat46.x;
        let x_801 : f32 = u_xlat26;
        u_xlat26 = ((x_797 * x_799) + x_801);
        let x_804 : vec4<f32> = u_xlat11;
        let x_805 : vec2<f32> = vec2<f32>(x_804.x, x_804.y);
        let x_807 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_805.x, x_805.y, x_807);
        let x_814 : vec3<f32> = txVec8;
        let x_816 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_814.xy, x_814.z);
        u_xlat46.x = x_816;
        let x_819 : f32 = u_xlat14.x;
        let x_821 : f32 = u_xlat46.x;
        let x_823 : f32 = u_xlat26;
        u_xlat26 = ((x_819 * x_821) + x_823);
        let x_826 : vec4<f32> = u_xlat11;
        let x_827 : vec2<f32> = vec2<f32>(x_826.z, x_826.w);
        let x_829 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_827.x, x_827.y, x_829);
        let x_836 : vec3<f32> = txVec9;
        let x_838 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_836.xy, x_836.z);
        u_xlat46.x = x_838;
        let x_841 : f32 = u_xlat14.y;
        let x_843 : f32 = u_xlat46.x;
        let x_845 : f32 = u_xlat26;
        u_xlat26 = ((x_841 * x_843) + x_845);
        let x_848 : vec4<f32> = u_xlat9;
        let x_849 : vec2<f32> = vec2<f32>(x_848.z, x_848.w);
        let x_851 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_849.x, x_849.y, x_851);
        let x_858 : vec3<f32> = txVec10;
        let x_860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_858.xy, x_858.z);
        u_xlat46.x = x_860;
        let x_863 : f32 = u_xlat14.z;
        let x_865 : f32 = u_xlat46.x;
        let x_867 : f32 = u_xlat26;
        u_xlat26 = ((x_863 * x_865) + x_867);
        let x_870 : vec4<f32> = u_xlat8;
        let x_871 : vec2<f32> = vec2<f32>(x_870.x, x_870.y);
        let x_873 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_871.x, x_871.y, x_873);
        let x_880 : vec3<f32> = txVec11;
        let x_882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_880.xy, x_880.z);
        u_xlat46.x = x_882;
        let x_885 : f32 = u_xlat14.w;
        let x_887 : f32 = u_xlat46.x;
        let x_889 : f32 = u_xlat26;
        u_xlat26 = ((x_885 * x_887) + x_889);
        let x_892 : vec4<f32> = u_xlat8;
        let x_893 : vec2<f32> = vec2<f32>(x_892.z, x_892.w);
        let x_895 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_893.x, x_893.y, x_895);
        let x_902 : vec3<f32> = txVec12;
        let x_904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_902.xy, x_902.z);
        u_xlat46.x = x_904;
        let x_907 : f32 = u_xlat6.x;
        let x_909 : f32 = u_xlat46.x;
        let x_911 : f32 = u_xlat26;
        u_xlat65 = ((x_907 * x_909) + x_911);
      } else {
        let x_914 : vec4<f32> = vs_TEXCOORD8;
        let x_917 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_920 : vec2<f32> = ((vec2<f32>(x_914.x, x_914.y) * vec2<f32>(x_917.z, x_917.w)) + vec2<f32>(0.5f, 0.5f));
        let x_921 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_920.x, x_920.y, x_921.z, x_921.w);
        let x_923 : vec4<f32> = u_xlat6;
        let x_925 : vec2<f32> = floor(vec2<f32>(x_923.x, x_923.y));
        let x_926 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_925.x, x_925.y, x_926.z, x_926.w);
        let x_928 : vec4<f32> = vs_TEXCOORD8;
        let x_931 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_934 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_928.x, x_928.y) * vec2<f32>(x_931.z, x_931.w)) + -(vec2<f32>(x_934.x, x_934.y)));
        let x_938 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_938.x, x_938.x, x_938.y, x_938.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_941 : vec4<f32> = u_xlat7;
        let x_943 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_941.x, x_941.x, x_941.z, x_941.z) * vec4<f32>(x_943.x, x_943.x, x_943.z, x_943.z));
        let x_946 : vec4<f32> = u_xlat8;
        let x_950 : vec2<f32> = (vec2<f32>(x_946.y, x_946.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_951 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_951.x, x_950.x, x_951.z, x_950.y);
        let x_953 : vec4<f32> = u_xlat8;
        let x_956 : vec2<f32> = u_xlat46;
        let x_958 : vec2<f32> = ((vec2<f32>(x_953.x, x_953.z) * vec2<f32>(0.5f, 0.5f)) + -(x_956));
        let x_959 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_958.x, x_959.y, x_958.y, x_959.w);
        let x_961 : vec2<f32> = u_xlat46;
        let x_963 : vec2<f32> = (-(x_961) + vec2<f32>(1.0f, 1.0f));
        let x_964 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_963.x, x_963.y, x_964.z, x_964.w);
        let x_966 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_966, vec2<f32>(0.0f, 0.0f));
        let x_968 : vec2<f32> = u_xlat48;
        let x_970 : vec2<f32> = u_xlat48;
        let x_972 : vec4<f32> = u_xlat8;
        let x_974 : vec2<f32> = ((-(x_968) * x_970) + vec2<f32>(x_972.x, x_972.y));
        let x_975 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_974.x, x_974.y, x_975.z, x_975.w);
        let x_977 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_977, vec2<f32>(0.0f, 0.0f));
        let x_980 : vec2<f32> = u_xlat48;
        let x_982 : vec2<f32> = u_xlat48;
        let x_984 : vec4<f32> = u_xlat7;
        let x_986 : vec2<f32> = ((-(x_980) * x_982) + vec2<f32>(x_984.y, x_984.w));
        let x_987 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_986.x, x_987.y, x_986.y);
        let x_989 : vec4<f32> = u_xlat8;
        let x_992 : vec2<f32> = (vec2<f32>(x_989.x, x_989.y) + vec2<f32>(2.0f, 2.0f));
        let x_993 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_992.x, x_992.y, x_993.z, x_993.w);
        let x_995 : vec3<f32> = u_xlat27;
        let x_997 : vec2<f32> = (vec2<f32>(x_995.x, x_995.z) + vec2<f32>(2.0f, 2.0f));
        let x_998 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_998.x, x_997.x, x_998.z, x_997.y);
        let x_1001 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1001 * 0.081632003f);
        let x_1005 : vec4<f32> = u_xlat7;
        let x_1008 : vec3<f32> = (vec3<f32>(x_1005.z, x_1005.x, x_1005.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1009 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
        let x_1011 : vec4<f32> = u_xlat8;
        let x_1014 : vec2<f32> = (vec2<f32>(x_1011.x, x_1011.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1015 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1014.x, x_1014.y, x_1015.z, x_1015.w);
        let x_1018 : f32 = u_xlat11.y;
        u_xlat10.x = x_1018;
        let x_1020 : vec2<f32> = u_xlat46;
        let x_1027 : vec2<f32> = ((vec2<f32>(x_1020.x, x_1020.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1028 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1028.x, x_1027.x, x_1028.z, x_1027.y);
        let x_1030 : vec2<f32> = u_xlat46;
        let x_1034 : vec2<f32> = ((vec2<f32>(x_1030.x, x_1030.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1035 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1034.x, x_1035.y, x_1034.y, x_1035.w);
        let x_1038 : f32 = u_xlat7.x;
        u_xlat8.y = x_1038;
        let x_1041 : f32 = u_xlat9.y;
        u_xlat8.w = x_1041;
        let x_1043 : vec4<f32> = u_xlat8;
        let x_1044 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1043 + x_1044);
        let x_1046 : vec2<f32> = u_xlat46;
        let x_1049 : vec2<f32> = ((vec2<f32>(x_1046.y, x_1046.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1050 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1050.x, x_1049.x, x_1050.z, x_1049.y);
        let x_1052 : vec2<f32> = u_xlat46;
        let x_1055 : vec2<f32> = ((vec2<f32>(x_1052.y, x_1052.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1055.x, x_1056.y, x_1055.y, x_1056.w);
        let x_1059 : f32 = u_xlat7.y;
        u_xlat9.y = x_1059;
        let x_1061 : vec4<f32> = u_xlat9;
        let x_1062 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1061 + x_1062);
        let x_1064 : vec4<f32> = u_xlat8;
        let x_1065 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1064 / x_1065);
        let x_1067 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1067 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1073 : vec4<f32> = u_xlat9;
        let x_1074 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1073 / x_1074);
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1076 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1078 : vec4<f32> = u_xlat8;
        let x_1081 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1078.w, x_1078.x, x_1078.y, x_1078.z) * vec4<f32>(x_1081.x, x_1081.x, x_1081.x, x_1081.x));
        let x_1084 : vec4<f32> = u_xlat9;
        let x_1087 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1084.x, x_1084.w, x_1084.y, x_1084.z) * vec4<f32>(x_1087.y, x_1087.y, x_1087.y, x_1087.y));
        let x_1090 : vec4<f32> = u_xlat8;
        let x_1091 : vec3<f32> = vec3<f32>(x_1090.y, x_1090.z, x_1090.w);
        let x_1092 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1091.x, x_1092.y, x_1091.y, x_1091.z);
        let x_1095 : f32 = u_xlat9.x;
        u_xlat11.y = x_1095;
        let x_1097 : vec4<f32> = u_xlat6;
        let x_1100 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y) * vec4<f32>(x_1100.x, x_1100.y, x_1100.x, x_1100.y)) + vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1103.y));
        let x_1106 : vec4<f32> = u_xlat6;
        let x_1109 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1109.x, x_1109.y)) + vec2<f32>(x_1112.w, x_1112.y));
        let x_1116 : f32 = u_xlat11.y;
        u_xlat8.y = x_1116;
        let x_1119 : f32 = u_xlat9.z;
        u_xlat11.y = x_1119;
        let x_1121 : vec4<f32> = u_xlat6;
        let x_1124 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_1127 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1121.x, x_1121.y, x_1121.x, x_1121.y) * vec4<f32>(x_1124.x, x_1124.y, x_1124.x, x_1124.y)) + vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1127.y));
        let x_1130 : vec4<f32> = u_xlat6;
        let x_1133 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_1136 : vec4<f32> = u_xlat11;
        let x_1138 : vec2<f32> = ((vec2<f32>(x_1130.x, x_1130.y) * vec2<f32>(x_1133.x, x_1133.y)) + vec2<f32>(x_1136.w, x_1136.y));
        let x_1139 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1138.x, x_1138.y, x_1139.z, x_1139.w);
        let x_1142 : f32 = u_xlat11.y;
        u_xlat8.z = x_1142;
        let x_1145 : vec4<f32> = u_xlat6;
        let x_1148 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y) * vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.y)) + vec4<f32>(x_1151.x, x_1151.y, x_1151.x, x_1151.z));
        let x_1155 : f32 = u_xlat9.w;
        u_xlat11.y = x_1155;
        let x_1158 : vec4<f32> = u_xlat6;
        let x_1161 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_1164 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1158.x, x_1158.y, x_1158.x, x_1158.y) * vec4<f32>(x_1161.x, x_1161.y, x_1161.x, x_1161.y)) + vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1164.y));
        let x_1168 : vec4<f32> = u_xlat6;
        let x_1171 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_1174 : vec4<f32> = u_xlat11;
        let x_1176 : vec2<f32> = ((vec2<f32>(x_1168.x, x_1168.y) * vec2<f32>(x_1171.x, x_1171.y)) + vec2<f32>(x_1174.w, x_1174.y));
        let x_1177 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1176.x, x_1176.y, x_1177.z);
        let x_1180 : f32 = u_xlat11.y;
        u_xlat8.w = x_1180;
        let x_1183 : vec4<f32> = u_xlat6;
        let x_1186 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_1189 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1183.x, x_1183.y) * vec2<f32>(x_1186.x, x_1186.y)) + vec2<f32>(x_1189.x, x_1189.w));
        let x_1192 : vec4<f32> = u_xlat11;
        let x_1193 : vec3<f32> = vec3<f32>(x_1192.x, x_1192.z, x_1192.w);
        let x_1194 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1193.x, x_1194.y, x_1193.y, x_1193.z);
        let x_1196 : vec4<f32> = u_xlat6;
        let x_1199 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_1202 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1196.x, x_1196.y, x_1196.x, x_1196.y) * vec4<f32>(x_1199.x, x_1199.y, x_1199.x, x_1199.y)) + vec4<f32>(x_1202.x, x_1202.y, x_1202.z, x_1202.y));
        let x_1206 : vec4<f32> = u_xlat6;
        let x_1209 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_1212 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1206.x, x_1206.y) * vec2<f32>(x_1209.x, x_1209.y)) + vec2<f32>(x_1212.w, x_1212.y));
        let x_1216 : f32 = u_xlat8.x;
        u_xlat9.x = x_1216;
        let x_1218 : vec4<f32> = u_xlat6;
        let x_1221 : vec4<f32> = x_348.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat9;
        let x_1226 : vec2<f32> = ((vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(x_1221.x, x_1221.y)) + vec2<f32>(x_1224.x, x_1224.y));
        let x_1227 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1226.x, x_1226.y, x_1227.z, x_1227.w);
        let x_1230 : vec4<f32> = u_xlat7;
        let x_1232 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1230.x, x_1230.x, x_1230.x, x_1230.x) * x_1232);
        let x_1235 : vec4<f32> = u_xlat7;
        let x_1237 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1235.y, x_1235.y, x_1235.y, x_1235.y) * x_1237);
        let x_1240 : vec4<f32> = u_xlat7;
        let x_1242 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1240.z, x_1240.z, x_1240.z, x_1240.z) * x_1242);
        let x_1244 : vec4<f32> = u_xlat7;
        let x_1246 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1244.w, x_1244.w, x_1244.w, x_1244.w) * x_1246);
        let x_1249 : vec4<f32> = u_xlat12;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.x, x_1249.y);
        let x_1252 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1259 : vec3<f32> = txVec13;
        let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1259.xy, x_1259.z);
        u_xlat8.x = x_1261;
        let x_1264 : vec4<f32> = u_xlat12;
        let x_1265 : vec2<f32> = vec2<f32>(x_1264.z, x_1264.w);
        let x_1267 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1275 : vec3<f32> = txVec14;
        let x_1277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1275.xy, x_1275.z);
        u_xlat68 = x_1277;
        let x_1278 : f32 = u_xlat68;
        let x_1280 : f32 = u_xlat17.y;
        u_xlat68 = (x_1278 * x_1280);
        let x_1283 : f32 = u_xlat17.x;
        let x_1285 : f32 = u_xlat8.x;
        let x_1287 : f32 = u_xlat68;
        u_xlat8.x = ((x_1283 * x_1285) + x_1287);
        let x_1291 : vec2<f32> = u_xlat46;
        let x_1293 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1291.x, x_1291.y, x_1293);
        let x_1300 : vec3<f32> = txVec15;
        let x_1302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1300.xy, x_1300.z);
        u_xlat46.x = x_1302;
        let x_1305 : f32 = u_xlat17.z;
        let x_1307 : f32 = u_xlat46.x;
        let x_1310 : f32 = u_xlat8.x;
        u_xlat46.x = ((x_1305 * x_1307) + x_1310);
        let x_1314 : vec4<f32> = u_xlat15;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.x, x_1314.y);
        let x_1317 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1325 : vec3<f32> = txVec16;
        let x_1327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1325.xy, x_1325.z);
        u_xlat66 = x_1327;
        let x_1329 : f32 = u_xlat17.w;
        let x_1330 : f32 = u_xlat66;
        let x_1333 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1329 * x_1330) + x_1333);
        let x_1337 : vec4<f32> = u_xlat13;
        let x_1338 : vec2<f32> = vec2<f32>(x_1337.x, x_1337.y);
        let x_1340 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1338.x, x_1338.y, x_1340);
        let x_1347 : vec3<f32> = txVec17;
        let x_1349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1347.xy, x_1347.z);
        u_xlat66 = x_1349;
        let x_1351 : f32 = u_xlat18.x;
        let x_1352 : f32 = u_xlat66;
        let x_1355 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1351 * x_1352) + x_1355);
        let x_1359 : vec4<f32> = u_xlat13;
        let x_1360 : vec2<f32> = vec2<f32>(x_1359.z, x_1359.w);
        let x_1362 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1360.x, x_1360.y, x_1362);
        let x_1369 : vec3<f32> = txVec18;
        let x_1371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1369.xy, x_1369.z);
        u_xlat66 = x_1371;
        let x_1373 : f32 = u_xlat18.y;
        let x_1374 : f32 = u_xlat66;
        let x_1377 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1373 * x_1374) + x_1377);
        let x_1381 : vec4<f32> = u_xlat14;
        let x_1382 : vec2<f32> = vec2<f32>(x_1381.x, x_1381.y);
        let x_1384 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec19;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1391.xy, x_1391.z);
        u_xlat66 = x_1393;
        let x_1395 : f32 = u_xlat18.z;
        let x_1396 : f32 = u_xlat66;
        let x_1399 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1395 * x_1396) + x_1399);
        let x_1403 : vec4<f32> = u_xlat15;
        let x_1404 : vec2<f32> = vec2<f32>(x_1403.z, x_1403.w);
        let x_1406 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec20;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1413.xy, x_1413.z);
        u_xlat66 = x_1415;
        let x_1417 : f32 = u_xlat18.w;
        let x_1418 : f32 = u_xlat66;
        let x_1421 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1417 * x_1418) + x_1421);
        let x_1425 : vec4<f32> = u_xlat16;
        let x_1426 : vec2<f32> = vec2<f32>(x_1425.x, x_1425.y);
        let x_1428 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1426.x, x_1426.y, x_1428);
        let x_1435 : vec3<f32> = txVec21;
        let x_1437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1435.xy, x_1435.z);
        u_xlat66 = x_1437;
        let x_1439 : f32 = u_xlat19.x;
        let x_1440 : f32 = u_xlat66;
        let x_1443 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1439 * x_1440) + x_1443);
        let x_1447 : vec4<f32> = u_xlat16;
        let x_1448 : vec2<f32> = vec2<f32>(x_1447.z, x_1447.w);
        let x_1450 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1448.x, x_1448.y, x_1450);
        let x_1457 : vec3<f32> = txVec22;
        let x_1459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1457.xy, x_1457.z);
        u_xlat66 = x_1459;
        let x_1461 : f32 = u_xlat19.y;
        let x_1462 : f32 = u_xlat66;
        let x_1465 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1461 * x_1462) + x_1465);
        let x_1469 : vec3<f32> = u_xlat28;
        let x_1470 : vec2<f32> = vec2<f32>(x_1469.x, x_1469.y);
        let x_1472 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec23;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1479.xy, x_1479.z);
        u_xlat66 = x_1481;
        let x_1483 : f32 = u_xlat19.z;
        let x_1484 : f32 = u_xlat66;
        let x_1487 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1483 * x_1484) + x_1487);
        let x_1491 : vec2<f32> = u_xlat54;
        let x_1493 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1491.x, x_1491.y, x_1493);
        let x_1500 : vec3<f32> = txVec24;
        let x_1502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1500.xy, x_1500.z);
        u_xlat66 = x_1502;
        let x_1504 : f32 = u_xlat19.w;
        let x_1505 : f32 = u_xlat66;
        let x_1508 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1504 * x_1505) + x_1508);
        let x_1512 : vec4<f32> = u_xlat11;
        let x_1513 : vec2<f32> = vec2<f32>(x_1512.x, x_1512.y);
        let x_1515 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
        let x_1522 : vec3<f32> = txVec25;
        let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1522.xy, x_1522.z);
        u_xlat66 = x_1524;
        let x_1526 : f32 = u_xlat7.x;
        let x_1527 : f32 = u_xlat66;
        let x_1530 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1526 * x_1527) + x_1530);
        let x_1534 : vec4<f32> = u_xlat11;
        let x_1535 : vec2<f32> = vec2<f32>(x_1534.z, x_1534.w);
        let x_1537 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1535.x, x_1535.y, x_1537);
        let x_1544 : vec3<f32> = txVec26;
        let x_1546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1544.xy, x_1544.z);
        u_xlat66 = x_1546;
        let x_1548 : f32 = u_xlat7.y;
        let x_1549 : f32 = u_xlat66;
        let x_1552 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1548 * x_1549) + x_1552);
        let x_1556 : vec2<f32> = u_xlat49;
        let x_1558 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec27;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1565.xy, x_1565.z);
        u_xlat66 = x_1567;
        let x_1569 : f32 = u_xlat7.z;
        let x_1570 : f32 = u_xlat66;
        let x_1573 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1569 * x_1570) + x_1573);
        let x_1577 : vec4<f32> = u_xlat6;
        let x_1578 : vec2<f32> = vec2<f32>(x_1577.x, x_1577.y);
        let x_1580 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1578.x, x_1578.y, x_1580);
        let x_1587 : vec3<f32> = txVec28;
        let x_1589 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1587.xy, x_1587.z);
        u_xlat6.x = x_1589;
        let x_1592 : f32 = u_xlat7.w;
        let x_1594 : f32 = u_xlat6.x;
        let x_1597 : f32 = u_xlat46.x;
        u_xlat65 = ((x_1592 * x_1594) + x_1597);
      }
    }
  } else {
    let x_1601 : vec4<f32> = vs_TEXCOORD8;
    let x_1602 : vec2<f32> = vec2<f32>(x_1601.x, x_1601.y);
    let x_1604 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1602.x, x_1602.y, x_1604);
    let x_1611 : vec3<f32> = txVec29;
    let x_1613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1611.xy, x_1611.z);
    u_xlat65 = x_1613;
  }
  let x_1615 : f32 = x_348.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1615) + 1.0f);
  let x_1619 : f32 = u_xlat65;
  let x_1621 : f32 = x_348.x_MainLightShadowParams.x;
  let x_1624 : f32 = u_xlat6.x;
  u_xlat65 = ((x_1619 * x_1621) + x_1624);
  let x_1627 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_1627);
  let x_1631 : f32 = vs_TEXCOORD8.z;
  u_xlatb26 = (x_1631 >= 1.0f);
  let x_1633 : bool = u_xlatb26;
  let x_1634 : bool = u_xlatb6;
  u_xlatb6 = (x_1633 | x_1634);
  let x_1636 : bool = u_xlatb6;
  let x_1637 : f32 = u_xlat65;
  u_xlat65 = select(x_1637, 1.0f, x_1636);
  let x_1639 : vec3<f32> = vs_TEXCOORD7;
  let x_1641 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1643 : vec3<f32> = (x_1639 + -(x_1641));
  let x_1644 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1643.x, x_1643.y, x_1643.z, x_1644.w);
  let x_1646 : vec4<f32> = u_xlat6;
  let x_1648 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1646.x, x_1646.y, x_1646.z), vec3<f32>(x_1648.x, x_1648.y, x_1648.z));
  let x_1653 : f32 = u_xlat6.x;
  let x_1655 : f32 = x_348.x_MainLightShadowParams.z;
  let x_1658 : f32 = x_348.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1653 * x_1655) + x_1658);
  let x_1662 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1662, 0.0f, 1.0f);
  let x_1665 : f32 = u_xlat65;
  u_xlat26 = (-(x_1665) + 1.0f);
  let x_1669 : f32 = u_xlat6.x;
  let x_1670 : f32 = u_xlat26;
  let x_1672 : f32 = u_xlat65;
  u_xlat65 = ((x_1669 * x_1670) + x_1672);
  let x_1680 : f32 = x_1678.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1680 == -1.0f));
  let x_1682 : bool = u_xlatb6;
  if (x_1682) {
    let x_1685 : vec3<f32> = vs_TEXCOORD7;
    let x_1688 : vec4<f32> = x_1678.x_MainLightWorldToLight[1i];
    let x_1690 : vec2<f32> = (vec2<f32>(x_1685.y, x_1685.y) * vec2<f32>(x_1688.x, x_1688.y));
    let x_1691 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1690.x, x_1690.y, x_1691.z, x_1691.w);
    let x_1694 : vec4<f32> = x_1678.x_MainLightWorldToLight[0i];
    let x_1696 : vec3<f32> = vs_TEXCOORD7;
    let x_1699 : vec4<f32> = u_xlat6;
    let x_1701 : vec2<f32> = ((vec2<f32>(x_1694.x, x_1694.y) * vec2<f32>(x_1696.x, x_1696.x)) + vec2<f32>(x_1699.x, x_1699.y));
    let x_1702 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1701.x, x_1701.y, x_1702.z, x_1702.w);
    let x_1705 : vec4<f32> = x_1678.x_MainLightWorldToLight[2i];
    let x_1707 : vec3<f32> = vs_TEXCOORD7;
    let x_1710 : vec4<f32> = u_xlat6;
    let x_1712 : vec2<f32> = ((vec2<f32>(x_1705.x, x_1705.y) * vec2<f32>(x_1707.z, x_1707.z)) + vec2<f32>(x_1710.x, x_1710.y));
    let x_1713 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1712.x, x_1712.y, x_1713.z, x_1713.w);
    let x_1715 : vec4<f32> = u_xlat6;
    let x_1718 : vec4<f32> = x_1678.x_MainLightWorldToLight[3i];
    let x_1720 : vec2<f32> = (vec2<f32>(x_1715.x, x_1715.y) + vec2<f32>(x_1718.x, x_1718.y));
    let x_1721 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1720.x, x_1720.y, x_1721.z, x_1721.w);
    let x_1723 : vec4<f32> = u_xlat6;
    let x_1726 : vec2<f32> = ((vec2<f32>(x_1723.x, x_1723.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1727 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1726.x, x_1726.y, x_1727.z, x_1727.w);
    let x_1734 : vec4<f32> = u_xlat6;
    let x_1737 : f32 = x_44.x_GlobalMipBias.x;
    let x_1738 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1734.x, x_1734.y), x_1737);
    u_xlat6 = x_1738;
    let x_1743 : f32 = x_1678.x_MainLightCookieTextureFormat;
    let x_1745 : f32 = x_1678.x_MainLightCookieTextureFormat;
    let x_1747 : f32 = x_1678.x_MainLightCookieTextureFormat;
    let x_1749 : f32 = x_1678.x_MainLightCookieTextureFormat;
    let x_1750 : vec4<f32> = vec4<f32>(x_1743, x_1745, x_1747, x_1749);
    let x_1758 : vec4<bool> = (vec4<f32>(x_1750.x, x_1750.y, x_1750.z, x_1750.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1758.x, x_1758.y);
    let x_1761 : bool = u_xlatb7.y;
    if (x_1761) {
      let x_1766 : f32 = u_xlat6.w;
      x_1762 = x_1766;
    } else {
      let x_1769 : f32 = u_xlat6.x;
      x_1762 = x_1769;
    }
    let x_1770 : f32 = x_1762;
    u_xlat66 = x_1770;
    let x_1772 : bool = u_xlatb7.x;
    if (x_1772) {
      let x_1776 : vec4<f32> = u_xlat6;
      x_1773 = vec3<f32>(x_1776.x, x_1776.y, x_1776.z);
    } else {
      let x_1779 : f32 = u_xlat66;
      x_1773 = vec3<f32>(x_1779, x_1779, x_1779);
    }
    let x_1781 : vec3<f32> = x_1773;
    let x_1782 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1788 : vec4<f32> = u_xlat6;
  let x_1791 : vec4<f32> = x_44.x_MainLightColor;
  let x_1793 : vec3<f32> = (vec3<f32>(x_1788.x, x_1788.y, x_1788.z) * vec3<f32>(x_1791.x, x_1791.y, x_1791.z));
  let x_1794 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1793.x, x_1793.y, x_1793.z, x_1794.w);
  let x_1796 : f32 = u_xlat44;
  let x_1798 : vec4<f32> = u_xlat6;
  let x_1800 : vec3<f32> = (vec3<f32>(x_1796, x_1796, x_1796) * vec3<f32>(x_1798.x, x_1798.y, x_1798.z));
  let x_1801 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1800.x, x_1800.y, x_1800.z, x_1801.w);
  let x_1803 : vec3<f32> = u_xlat21;
  let x_1805 : vec3<f32> = u_xlat2;
  u_xlat66 = dot(-(x_1803), x_1805);
  let x_1807 : f32 = u_xlat66;
  let x_1808 : f32 = u_xlat66;
  u_xlat66 = (x_1807 + x_1808);
  let x_1810 : vec3<f32> = u_xlat2;
  let x_1811 : f32 = u_xlat66;
  let x_1815 : vec3<f32> = u_xlat21;
  let x_1817 : vec3<f32> = ((x_1810 * -(vec3<f32>(x_1811, x_1811, x_1811))) + -(x_1815));
  let x_1818 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
  let x_1820 : vec3<f32> = u_xlat2;
  let x_1821 : vec3<f32> = u_xlat21;
  u_xlat66 = dot(x_1820, x_1821);
  let x_1823 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1823, 0.0f, 1.0f);
  let x_1825 : f32 = u_xlat66;
  u_xlat66 = (-(x_1825) + 1.0f);
  let x_1828 : f32 = u_xlat66;
  let x_1829 : f32 = u_xlat66;
  u_xlat66 = (x_1828 * x_1829);
  let x_1831 : f32 = u_xlat66;
  let x_1832 : f32 = u_xlat66;
  u_xlat66 = (x_1831 * x_1832);
  let x_1835 : f32 = u_xlat1;
  u_xlat67 = ((-(x_1835) * 0.699999988f) + 1.700000048f);
  let x_1841 : f32 = u_xlat1;
  let x_1842 : f32 = u_xlat67;
  u_xlat1 = (x_1841 * x_1842);
  let x_1844 : f32 = u_xlat1;
  u_xlat1 = (x_1844 * 6.0f);
  let x_1855 : vec4<f32> = u_xlat7;
  let x_1857 : f32 = u_xlat1;
  let x_1858 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1855.x, x_1855.y, x_1855.z), x_1857);
  u_xlat7 = x_1858;
  let x_1860 : f32 = u_xlat7.w;
  u_xlat1 = (x_1860 + -1.0f);
  let x_1867 : f32 = x_1865.unity_SpecCube0_HDR.w;
  let x_1868 : f32 = u_xlat1;
  u_xlat1 = ((x_1867 * x_1868) + 1.0f);
  let x_1871 : f32 = u_xlat1;
  u_xlat1 = max(x_1871, 0.0f);
  let x_1873 : f32 = u_xlat1;
  u_xlat1 = log2(x_1873);
  let x_1875 : f32 = u_xlat1;
  let x_1877 : f32 = x_1865.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1875 * x_1877);
  let x_1879 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1879);
  let x_1881 : f32 = u_xlat1;
  let x_1883 : f32 = x_1865.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1881 * x_1883);
  let x_1885 : vec4<f32> = u_xlat7;
  let x_1887 : f32 = u_xlat1;
  let x_1889 : vec3<f32> = (vec3<f32>(x_1885.x, x_1885.y, x_1885.z) * vec3<f32>(x_1887, x_1887, x_1887));
  let x_1890 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1890.w);
  let x_1892 : f32 = u_xlat63;
  let x_1894 : f32 = u_xlat63;
  let x_1898 : vec2<f32> = ((vec2<f32>(x_1892, x_1892) * vec2<f32>(x_1894, x_1894)) + vec2<f32>(-1.0f, 1.0f));
  let x_1899 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1898.x, x_1898.y, x_1899.z, x_1899.w);
  let x_1902 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1902);
  let x_1904 : vec4<f32> = u_xlat0;
  let x_1907 : f32 = u_xlat60;
  u_xlat28 = (-(vec3<f32>(x_1904.x, x_1904.y, x_1904.z)) + vec3<f32>(x_1907, x_1907, x_1907));
  let x_1910 : f32 = u_xlat66;
  let x_1912 : vec3<f32> = u_xlat28;
  let x_1914 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_1910, x_1910, x_1910) * x_1912) + vec3<f32>(x_1914.x, x_1914.y, x_1914.z));
  let x_1917 : f32 = u_xlat1;
  let x_1919 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1917, x_1917, x_1917) * x_1919);
  let x_1921 : vec4<f32> = u_xlat7;
  let x_1923 : vec3<f32> = u_xlat28;
  let x_1924 : vec3<f32> = (vec3<f32>(x_1921.x, x_1921.y, x_1921.z) * x_1923);
  let x_1925 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
  let x_1927 : vec4<f32> = u_xlat3;
  let x_1929 : vec3<f32> = u_xlat5;
  let x_1931 : vec4<f32> = u_xlat7;
  let x_1933 : vec3<f32> = ((vec3<f32>(x_1927.x, x_1927.y, x_1927.z) * x_1929) + vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
  let x_1934 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
  let x_1936 : f32 = u_xlat65;
  let x_1939 : f32 = x_1865.unity_LightData.z;
  u_xlat60 = (x_1936 * x_1939);
  let x_1941 : vec3<f32> = u_xlat2;
  let x_1943 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_1941, vec3<f32>(x_1943.x, x_1943.y, x_1943.z));
  let x_1946 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1946, 0.0f, 1.0f);
  let x_1948 : f32 = u_xlat60;
  let x_1949 : f32 = u_xlat1;
  u_xlat60 = (x_1948 * x_1949);
  let x_1951 : f32 = u_xlat60;
  let x_1953 : vec4<f32> = u_xlat6;
  let x_1955 : vec3<f32> = (vec3<f32>(x_1951, x_1951, x_1951) * vec3<f32>(x_1953.x, x_1953.y, x_1953.z));
  let x_1956 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1955.x, x_1955.y, x_1955.z, x_1956.w);
  let x_1958 : vec3<f32> = u_xlat21;
  let x_1960 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1962 : vec3<f32> = (x_1958 + vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
  let x_1963 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1962.x, x_1962.y, x_1962.z, x_1963.w);
  let x_1965 : vec4<f32> = u_xlat7;
  let x_1967 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1965.x, x_1965.y, x_1965.z), vec3<f32>(x_1967.x, x_1967.y, x_1967.z));
  let x_1970 : f32 = u_xlat60;
  u_xlat60 = max(x_1970, 1.17549435e-37f);
  let x_1973 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1973);
  let x_1975 : f32 = u_xlat60;
  let x_1977 : vec4<f32> = u_xlat7;
  let x_1979 : vec3<f32> = (vec3<f32>(x_1975, x_1975, x_1975) * vec3<f32>(x_1977.x, x_1977.y, x_1977.z));
  let x_1980 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1979.x, x_1979.y, x_1979.z, x_1980.w);
  let x_1982 : vec3<f32> = u_xlat2;
  let x_1983 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_1982, vec3<f32>(x_1983.x, x_1983.y, x_1983.z));
  let x_1986 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1986, 0.0f, 1.0f);
  let x_1989 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1991 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_1989.x, x_1989.y, x_1989.z), vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
  let x_1994 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1994, 0.0f, 1.0f);
  let x_1996 : f32 = u_xlat60;
  let x_1997 : f32 = u_xlat60;
  u_xlat60 = (x_1996 * x_1997);
  let x_1999 : f32 = u_xlat60;
  let x_2001 : f32 = u_xlat8.x;
  u_xlat60 = ((x_1999 * x_2001) + 1.000010014f);
  let x_2005 : f32 = u_xlat1;
  let x_2006 : f32 = u_xlat1;
  u_xlat1 = (x_2005 * x_2006);
  let x_2008 : f32 = u_xlat60;
  let x_2009 : f32 = u_xlat60;
  u_xlat60 = (x_2008 * x_2009);
  let x_2011 : f32 = u_xlat1;
  u_xlat1 = max(x_2011, 0.100000001f);
  let x_2014 : f32 = u_xlat60;
  let x_2015 : f32 = u_xlat1;
  u_xlat60 = (x_2014 * x_2015);
  let x_2017 : f32 = u_xlat24;
  let x_2018 : f32 = u_xlat60;
  u_xlat60 = (x_2017 * x_2018);
  let x_2020 : f32 = u_xlat64;
  let x_2021 : f32 = u_xlat60;
  u_xlat60 = (x_2020 / x_2021);
  let x_2023 : vec4<f32> = u_xlat0;
  let x_2025 : f32 = u_xlat60;
  let x_2028 : vec3<f32> = u_xlat5;
  let x_2029 : vec3<f32> = ((vec3<f32>(x_2023.x, x_2023.y, x_2023.z) * vec3<f32>(x_2025, x_2025, x_2025)) + x_2028);
  let x_2030 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
  let x_2032 : vec4<f32> = u_xlat6;
  let x_2034 : vec4<f32> = u_xlat7;
  let x_2036 : vec3<f32> = (vec3<f32>(x_2032.x, x_2032.y, x_2032.z) * vec3<f32>(x_2034.x, x_2034.y, x_2034.z));
  let x_2037 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2036.x, x_2036.y, x_2036.z, x_2037.w);
  let x_2040 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2042 : f32 = x_1865.unity_LightData.y;
  u_xlat60 = min(x_2040, x_2042);
  let x_2046 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2046));
  let x_2050 : f32 = x_1678.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2052 : f32 = x_1678.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2054 : f32 = x_1678.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2056 : f32 = x_1678.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2057 : vec4<f32> = vec4<f32>(x_2050, x_2052, x_2054, x_2056);
  let x_2063 : vec4<bool> = (vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2057.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2063.x, x_2063.y);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2074 : u32 = u_xlatu_loop_1;
    let x_2075 : u32 = u_xlatu60;
    if ((x_2074 < x_2075)) {
    } else {
      break;
    }
    let x_2078 : u32 = u_xlatu_loop_1;
    u_xlatu63 = (x_2078 >> 2u);
    let x_2082 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2082 & 3u));
    let x_2085 : u32 = u_xlatu63;
    let x_2088 : vec4<f32> = x_1865.unity_LightIndices[bitcast<i32>(x_2085)];
    let x_2098 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2103 : vec4<u32> = indexable[x_2098];
    u_xlat63 = dot(x_2088, bitcast<vec4<f32>>(x_2103));
    let x_2106 : f32 = u_xlat63;
    u_xlatu63 = bitcast<u32>(i32(x_2106));
    let x_2109 : vec3<f32> = vs_TEXCOORD7;
    let x_2121 : u32 = u_xlatu63;
    let x_2124 : vec4<f32> = x_2120.x_AdditionalLightsPosition[bitcast<i32>(x_2121)];
    let x_2127 : u32 = u_xlatu63;
    let x_2130 : vec4<f32> = x_2120.x_AdditionalLightsPosition[bitcast<i32>(x_2127)];
    let x_2132 : vec3<f32> = ((-(x_2109) * vec3<f32>(x_2124.w, x_2124.w, x_2124.w)) + vec3<f32>(x_2130.x, x_2130.y, x_2130.z));
    let x_2133 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2132.x, x_2132.y, x_2132.z, x_2133.w);
    let x_2135 : vec4<f32> = u_xlat9;
    let x_2137 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2135.x, x_2135.y, x_2135.z), vec3<f32>(x_2137.x, x_2137.y, x_2137.z));
    let x_2140 : f32 = u_xlat65;
    u_xlat65 = max(x_2140, 6.10351562e-05f);
    let x_2143 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2143);
    let x_2145 : f32 = u_xlat66;
    let x_2147 : vec4<f32> = u_xlat9;
    let x_2149 : vec3<f32> = (vec3<f32>(x_2145, x_2145, x_2145) * vec3<f32>(x_2147.x, x_2147.y, x_2147.z));
    let x_2150 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2149.x, x_2149.y, x_2149.z, x_2150.w);
    let x_2153 : f32 = u_xlat65;
    u_xlat47.x = (1.0f / x_2153);
    let x_2156 : f32 = u_xlat65;
    let x_2157 : u32 = u_xlatu63;
    let x_2160 : f32 = x_2120.x_AdditionalLightsAttenuation[bitcast<i32>(x_2157)].x;
    u_xlat65 = (x_2156 * x_2160);
    let x_2162 : f32 = u_xlat65;
    let x_2164 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2162) * x_2164) + 1.0f);
    let x_2167 : f32 = u_xlat65;
    u_xlat65 = max(x_2167, 0.0f);
    let x_2169 : f32 = u_xlat65;
    let x_2170 : f32 = u_xlat65;
    u_xlat65 = (x_2169 * x_2170);
    let x_2172 : f32 = u_xlat65;
    let x_2174 : f32 = u_xlat47.x;
    u_xlat65 = (x_2172 * x_2174);
    let x_2176 : u32 = u_xlatu63;
    let x_2179 : vec4<f32> = x_2120.x_AdditionalLightsSpotDir[bitcast<i32>(x_2176)];
    let x_2181 : vec4<f32> = u_xlat10;
    u_xlat47.x = dot(vec3<f32>(x_2179.x, x_2179.y, x_2179.z), vec3<f32>(x_2181.x, x_2181.y, x_2181.z));
    let x_2186 : f32 = u_xlat47.x;
    let x_2187 : u32 = u_xlatu63;
    let x_2190 : f32 = x_2120.x_AdditionalLightsAttenuation[bitcast<i32>(x_2187)].z;
    let x_2192 : u32 = u_xlatu63;
    let x_2195 : f32 = x_2120.x_AdditionalLightsAttenuation[bitcast<i32>(x_2192)].w;
    u_xlat47.x = ((x_2186 * x_2190) + x_2195);
    let x_2199 : f32 = u_xlat47.x;
    u_xlat47.x = clamp(x_2199, 0.0f, 1.0f);
    let x_2203 : f32 = u_xlat47.x;
    let x_2205 : f32 = u_xlat47.x;
    u_xlat47.x = (x_2203 * x_2205);
    let x_2208 : f32 = u_xlat65;
    let x_2210 : f32 = u_xlat47.x;
    u_xlat65 = (x_2208 * x_2210);
    let x_2213 : u32 = u_xlatu63;
    u_xlatu47 = (x_2213 >> 5u);
    let x_2216 : u32 = u_xlatu63;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2216) & 31i)));
    let x_2222 : i32 = u_xlati67;
    let x_2224 : u32 = u_xlatu47;
    let x_2227 : f32 = x_1678.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2224)].el;
    u_xlati47 = bitcast<i32>((bitcast<u32>(x_2222) & bitcast<u32>(x_2227)));
    let x_2231 : i32 = u_xlati47;
    if ((x_2231 != 0i)) {
      let x_2241 : u32 = u_xlatu63;
      let x_2244 : f32 = x_2240.x_AdditionalLightsLightTypes[bitcast<i32>(x_2241)].el;
      u_xlati47 = i32(x_2244);
      let x_2246 : i32 = u_xlati47;
      u_xlati67 = select(1i, 0i, (x_2246 != 0i));
      let x_2250 : u32 = u_xlatu63;
      u_xlati69 = (bitcast<i32>(x_2250) << bitcast<u32>(2i));
      let x_2253 : i32 = u_xlati67;
      if ((x_2253 != 0i)) {
        let x_2257 : vec3<f32> = vs_TEXCOORD7;
        let x_2259 : i32 = u_xlati69;
        let x_2262 : i32 = u_xlati69;
        let x_2266 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_2259 + 1i) / 4i)][((x_2262 + 1i) % 4i)];
        let x_2268 : vec3<f32> = (vec3<f32>(x_2257.y, x_2257.y, x_2257.y) * vec3<f32>(x_2266.x, x_2266.y, x_2266.w));
        let x_2269 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2268.x, x_2268.y, x_2268.z, x_2269.w);
        let x_2271 : i32 = u_xlati69;
        let x_2273 : i32 = u_xlati69;
        let x_2276 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[(x_2271 / 4i)][(x_2273 % 4i)];
        let x_2278 : vec3<f32> = vs_TEXCOORD7;
        let x_2281 : vec4<f32> = u_xlat11;
        let x_2283 : vec3<f32> = ((vec3<f32>(x_2276.x, x_2276.y, x_2276.w) * vec3<f32>(x_2278.x, x_2278.x, x_2278.x)) + vec3<f32>(x_2281.x, x_2281.y, x_2281.z));
        let x_2284 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2283.x, x_2283.y, x_2283.z, x_2284.w);
        let x_2286 : i32 = u_xlati69;
        let x_2289 : i32 = u_xlati69;
        let x_2293 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_2286 + 2i) / 4i)][((x_2289 + 2i) % 4i)];
        let x_2295 : vec3<f32> = vs_TEXCOORD7;
        let x_2298 : vec4<f32> = u_xlat11;
        let x_2300 : vec3<f32> = ((vec3<f32>(x_2293.x, x_2293.y, x_2293.w) * vec3<f32>(x_2295.z, x_2295.z, x_2295.z)) + vec3<f32>(x_2298.x, x_2298.y, x_2298.z));
        let x_2301 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
        let x_2303 : vec4<f32> = u_xlat11;
        let x_2305 : i32 = u_xlati69;
        let x_2308 : i32 = u_xlati69;
        let x_2312 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_2305 + 3i) / 4i)][((x_2308 + 3i) % 4i)];
        let x_2314 : vec3<f32> = (vec3<f32>(x_2303.x, x_2303.y, x_2303.z) + vec3<f32>(x_2312.x, x_2312.y, x_2312.w));
        let x_2315 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2314.x, x_2314.y, x_2314.z, x_2315.w);
        let x_2317 : vec4<f32> = u_xlat11;
        let x_2319 : vec4<f32> = u_xlat11;
        let x_2321 : vec2<f32> = (vec2<f32>(x_2317.x, x_2317.y) / vec2<f32>(x_2319.z, x_2319.z));
        let x_2322 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2321.x, x_2321.y, x_2322.z, x_2322.w);
        let x_2324 : vec4<f32> = u_xlat11;
        let x_2327 : vec2<f32> = ((vec2<f32>(x_2324.x, x_2324.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2328 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2327.x, x_2327.y, x_2328.z, x_2328.w);
        let x_2330 : vec4<f32> = u_xlat11;
        let x_2334 : vec2<f32> = clamp(vec2<f32>(x_2330.x, x_2330.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2335 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2334.x, x_2334.y, x_2335.z, x_2335.w);
        let x_2337 : u32 = u_xlatu63;
        let x_2340 : vec4<f32> = x_2240.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2337)];
        let x_2342 : vec4<f32> = u_xlat11;
        let x_2345 : u32 = u_xlatu63;
        let x_2348 : vec4<f32> = x_2240.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2345)];
        let x_2350 : vec2<f32> = ((vec2<f32>(x_2340.x, x_2340.y) * vec2<f32>(x_2342.x, x_2342.y)) + vec2<f32>(x_2348.z, x_2348.w));
        let x_2351 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2350.x, x_2350.y, x_2351.z, x_2351.w);
      } else {
        let x_2355 : i32 = u_xlati47;
        u_xlatb47 = (x_2355 == 1i);
        let x_2357 : bool = u_xlatb47;
        u_xlati47 = select(0i, 1i, x_2357);
        let x_2359 : i32 = u_xlati47;
        if ((x_2359 != 0i)) {
          let x_2363 : vec3<f32> = vs_TEXCOORD7;
          let x_2365 : i32 = u_xlati69;
          let x_2368 : i32 = u_xlati69;
          let x_2372 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_2365 + 1i) / 4i)][((x_2368 + 1i) % 4i)];
          u_xlat47 = (vec2<f32>(x_2363.y, x_2363.y) * vec2<f32>(x_2372.x, x_2372.y));
          let x_2375 : i32 = u_xlati69;
          let x_2377 : i32 = u_xlati69;
          let x_2380 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[(x_2375 / 4i)][(x_2377 % 4i)];
          let x_2382 : vec3<f32> = vs_TEXCOORD7;
          let x_2385 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2380.x, x_2380.y) * vec2<f32>(x_2382.x, x_2382.x)) + x_2385);
          let x_2387 : i32 = u_xlati69;
          let x_2390 : i32 = u_xlati69;
          let x_2394 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_2387 + 2i) / 4i)][((x_2390 + 2i) % 4i)];
          let x_2396 : vec3<f32> = vs_TEXCOORD7;
          let x_2399 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2394.x, x_2394.y) * vec2<f32>(x_2396.z, x_2396.z)) + x_2399);
          let x_2401 : vec2<f32> = u_xlat47;
          let x_2402 : i32 = u_xlati69;
          let x_2405 : i32 = u_xlati69;
          let x_2409 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_2402 + 3i) / 4i)][((x_2405 + 3i) % 4i)];
          u_xlat47 = (x_2401 + vec2<f32>(x_2409.x, x_2409.y));
          let x_2412 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2412 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2415 : vec2<f32> = u_xlat47;
          u_xlat47 = fract(x_2415);
          let x_2417 : u32 = u_xlatu63;
          let x_2420 : vec4<f32> = x_2240.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2417)];
          let x_2422 : vec2<f32> = u_xlat47;
          let x_2424 : u32 = u_xlatu63;
          let x_2427 : vec4<f32> = x_2240.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2424)];
          let x_2429 : vec2<f32> = ((vec2<f32>(x_2420.x, x_2420.y) * x_2422) + vec2<f32>(x_2427.z, x_2427.w));
          let x_2430 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2429.x, x_2429.y, x_2430.z, x_2430.w);
        } else {
          let x_2433 : vec3<f32> = vs_TEXCOORD7;
          let x_2435 : i32 = u_xlati69;
          let x_2438 : i32 = u_xlati69;
          let x_2442 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_2435 + 1i) / 4i)][((x_2438 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2433.y, x_2433.y, x_2433.y, x_2433.y) * x_2442);
          let x_2444 : i32 = u_xlati69;
          let x_2446 : i32 = u_xlati69;
          let x_2449 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[(x_2444 / 4i)][(x_2446 % 4i)];
          let x_2450 : vec3<f32> = vs_TEXCOORD7;
          let x_2453 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2449 * vec4<f32>(x_2450.x, x_2450.x, x_2450.x, x_2450.x)) + x_2453);
          let x_2455 : i32 = u_xlati69;
          let x_2458 : i32 = u_xlati69;
          let x_2462 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_2455 + 2i) / 4i)][((x_2458 + 2i) % 4i)];
          let x_2463 : vec3<f32> = vs_TEXCOORD7;
          let x_2466 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2462 * vec4<f32>(x_2463.z, x_2463.z, x_2463.z, x_2463.z)) + x_2466);
          let x_2468 : vec4<f32> = u_xlat12;
          let x_2469 : i32 = u_xlati69;
          let x_2472 : i32 = u_xlati69;
          let x_2476 : vec4<f32> = x_2240.x_AdditionalLightsWorldToLights[((x_2469 + 3i) / 4i)][((x_2472 + 3i) % 4i)];
          u_xlat12 = (x_2468 + x_2476);
          let x_2478 : vec4<f32> = u_xlat12;
          let x_2480 : vec4<f32> = u_xlat12;
          let x_2482 : vec3<f32> = (vec3<f32>(x_2478.x, x_2478.y, x_2478.z) / vec3<f32>(x_2480.w, x_2480.w, x_2480.w));
          let x_2483 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);
          let x_2485 : vec4<f32> = u_xlat12;
          let x_2487 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(vec3<f32>(x_2485.x, x_2485.y, x_2485.z), vec3<f32>(x_2487.x, x_2487.y, x_2487.z));
          let x_2492 : f32 = u_xlat47.x;
          u_xlat47.x = inverseSqrt(x_2492);
          let x_2495 : vec2<f32> = u_xlat47;
          let x_2497 : vec4<f32> = u_xlat12;
          let x_2499 : vec3<f32> = (vec3<f32>(x_2495.x, x_2495.x, x_2495.x) * vec3<f32>(x_2497.x, x_2497.y, x_2497.z));
          let x_2500 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2499.x, x_2499.y, x_2499.z, x_2500.w);
          let x_2502 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(abs(vec3<f32>(x_2502.x, x_2502.y, x_2502.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2509 : f32 = u_xlat47.x;
          u_xlat47.x = max(x_2509, 0.000001f);
          let x_2514 : f32 = u_xlat47.x;
          u_xlat47.x = (1.0f / x_2514);
          let x_2517 : vec2<f32> = u_xlat47;
          let x_2519 : vec4<f32> = u_xlat12;
          let x_2521 : vec3<f32> = (vec3<f32>(x_2517.x, x_2517.x, x_2517.x) * vec3<f32>(x_2519.z, x_2519.x, x_2519.y));
          let x_2522 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2521.x, x_2521.y, x_2521.z, x_2522.w);
          let x_2525 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2525);
          let x_2529 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2529, 0.0f, 1.0f);
          let x_2533 : vec4<f32> = u_xlat13;
          let x_2536 : vec4<bool> = (vec4<f32>(x_2533.y, x_2533.z, x_2533.y, x_2533.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2536.x, x_2536.y);
          let x_2540 : bool = u_xlatb51.x;
          if (x_2540) {
            let x_2545 : f32 = u_xlat13.x;
            x_2541 = x_2545;
          } else {
            let x_2548 : f32 = u_xlat13.x;
            x_2541 = -(x_2548);
          }
          let x_2550 : f32 = x_2541;
          u_xlat51.x = x_2550;
          let x_2553 : bool = u_xlatb51.y;
          if (x_2553) {
            let x_2558 : f32 = u_xlat13.x;
            x_2554 = x_2558;
          } else {
            let x_2561 : f32 = u_xlat13.x;
            x_2554 = -(x_2561);
          }
          let x_2563 : f32 = x_2554;
          u_xlat51.y = x_2563;
          let x_2565 : vec4<f32> = u_xlat12;
          let x_2567 : vec2<f32> = u_xlat47;
          let x_2570 : vec2<f32> = u_xlat51;
          u_xlat47 = ((vec2<f32>(x_2565.x, x_2565.y) * vec2<f32>(x_2567.x, x_2567.x)) + x_2570);
          let x_2572 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2572 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2575 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2575, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2579 : u32 = u_xlatu63;
          let x_2582 : vec4<f32> = x_2240.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2579)];
          let x_2584 : vec2<f32> = u_xlat47;
          let x_2586 : u32 = u_xlatu63;
          let x_2589 : vec4<f32> = x_2240.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2586)];
          let x_2591 : vec2<f32> = ((vec2<f32>(x_2582.x, x_2582.y) * x_2584) + vec2<f32>(x_2589.z, x_2589.w));
          let x_2592 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2591.x, x_2591.y, x_2592.z, x_2592.w);
        }
      }
      let x_2599 : vec4<f32> = u_xlat11;
      let x_2602 : f32 = x_44.x_GlobalMipBias.x;
      let x_2603 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2599.x, x_2599.y), x_2602);
      u_xlat11 = x_2603;
      let x_2605 : bool = u_xlatb7.y;
      if (x_2605) {
        let x_2610 : f32 = u_xlat11.w;
        x_2606 = x_2610;
      } else {
        let x_2613 : f32 = u_xlat11.x;
        x_2606 = x_2613;
      }
      let x_2614 : f32 = x_2606;
      u_xlat47.x = x_2614;
      let x_2617 : bool = u_xlatb7.x;
      if (x_2617) {
        let x_2621 : vec4<f32> = u_xlat11;
        x_2618 = vec3<f32>(x_2621.x, x_2621.y, x_2621.z);
      } else {
        let x_2624 : vec2<f32> = u_xlat47;
        x_2618 = vec3<f32>(x_2624.x, x_2624.x, x_2624.x);
      }
      let x_2626 : vec3<f32> = x_2618;
      let x_2627 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2626.x, x_2626.y, x_2626.z, x_2627.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2633 : vec4<f32> = u_xlat11;
    let x_2635 : u32 = u_xlatu63;
    let x_2638 : vec4<f32> = x_2120.x_AdditionalLightsColor[bitcast<i32>(x_2635)];
    let x_2640 : vec3<f32> = (vec3<f32>(x_2633.x, x_2633.y, x_2633.z) * vec3<f32>(x_2638.x, x_2638.y, x_2638.z));
    let x_2641 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2640.x, x_2640.y, x_2640.z, x_2641.w);
    let x_2643 : f32 = u_xlat44;
    let x_2645 : vec4<f32> = u_xlat11;
    let x_2647 : vec3<f32> = (vec3<f32>(x_2643, x_2643, x_2643) * vec3<f32>(x_2645.x, x_2645.y, x_2645.z));
    let x_2648 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2647.x, x_2647.y, x_2647.z, x_2648.w);
    let x_2650 : vec3<f32> = u_xlat2;
    let x_2651 : vec4<f32> = u_xlat10;
    u_xlat63 = dot(x_2650, vec3<f32>(x_2651.x, x_2651.y, x_2651.z));
    let x_2654 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2654, 0.0f, 1.0f);
    let x_2656 : f32 = u_xlat63;
    let x_2657 : f32 = u_xlat65;
    u_xlat63 = (x_2656 * x_2657);
    let x_2659 : f32 = u_xlat63;
    let x_2661 : vec4<f32> = u_xlat11;
    let x_2663 : vec3<f32> = (vec3<f32>(x_2659, x_2659, x_2659) * vec3<f32>(x_2661.x, x_2661.y, x_2661.z));
    let x_2664 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2663.x, x_2663.y, x_2663.z, x_2664.w);
    let x_2666 : vec4<f32> = u_xlat9;
    let x_2668 : f32 = u_xlat66;
    let x_2671 : vec3<f32> = u_xlat21;
    let x_2672 : vec3<f32> = ((vec3<f32>(x_2666.x, x_2666.y, x_2666.z) * vec3<f32>(x_2668, x_2668, x_2668)) + x_2671);
    let x_2673 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2672.x, x_2672.y, x_2672.z, x_2673.w);
    let x_2675 : vec4<f32> = u_xlat9;
    let x_2677 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2675.x, x_2675.y, x_2675.z), vec3<f32>(x_2677.x, x_2677.y, x_2677.z));
    let x_2680 : f32 = u_xlat63;
    u_xlat63 = max(x_2680, 1.17549435e-37f);
    let x_2682 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_2682);
    let x_2684 : f32 = u_xlat63;
    let x_2686 : vec4<f32> = u_xlat9;
    let x_2688 : vec3<f32> = (vec3<f32>(x_2684, x_2684, x_2684) * vec3<f32>(x_2686.x, x_2686.y, x_2686.z));
    let x_2689 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2688.x, x_2688.y, x_2688.z, x_2689.w);
    let x_2691 : vec3<f32> = u_xlat2;
    let x_2692 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(x_2691, vec3<f32>(x_2692.x, x_2692.y, x_2692.z));
    let x_2695 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2695, 0.0f, 1.0f);
    let x_2697 : vec4<f32> = u_xlat10;
    let x_2699 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2697.x, x_2697.y, x_2697.z), vec3<f32>(x_2699.x, x_2699.y, x_2699.z));
    let x_2702 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2702, 0.0f, 1.0f);
    let x_2704 : f32 = u_xlat63;
    let x_2705 : f32 = u_xlat63;
    u_xlat63 = (x_2704 * x_2705);
    let x_2707 : f32 = u_xlat63;
    let x_2709 : f32 = u_xlat8.x;
    u_xlat63 = ((x_2707 * x_2709) + 1.000010014f);
    let x_2712 : f32 = u_xlat65;
    let x_2713 : f32 = u_xlat65;
    u_xlat65 = (x_2712 * x_2713);
    let x_2715 : f32 = u_xlat63;
    let x_2716 : f32 = u_xlat63;
    u_xlat63 = (x_2715 * x_2716);
    let x_2718 : f32 = u_xlat65;
    u_xlat65 = max(x_2718, 0.100000001f);
    let x_2720 : f32 = u_xlat63;
    let x_2721 : f32 = u_xlat65;
    u_xlat63 = (x_2720 * x_2721);
    let x_2723 : f32 = u_xlat24;
    let x_2724 : f32 = u_xlat63;
    u_xlat63 = (x_2723 * x_2724);
    let x_2726 : f32 = u_xlat64;
    let x_2727 : f32 = u_xlat63;
    u_xlat63 = (x_2726 / x_2727);
    let x_2729 : vec4<f32> = u_xlat0;
    let x_2731 : f32 = u_xlat63;
    let x_2734 : vec3<f32> = u_xlat5;
    let x_2735 : vec3<f32> = ((vec3<f32>(x_2729.x, x_2729.y, x_2729.z) * vec3<f32>(x_2731, x_2731, x_2731)) + x_2734);
    let x_2736 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2735.x, x_2735.y, x_2735.z, x_2736.w);
    let x_2738 : vec4<f32> = u_xlat9;
    let x_2740 : vec4<f32> = u_xlat11;
    let x_2743 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_2738.x, x_2738.y, x_2738.z) * vec3<f32>(x_2740.x, x_2740.y, x_2740.z)) + x_2743);

    continuing {
      let x_2745 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2745 + bitcast<u32>(1i));
    }
  }
  let x_2747 : vec4<f32> = u_xlat3;
  let x_2749 : vec3<f32> = u_xlat4;
  let x_2752 : vec4<f32> = u_xlat6;
  let x_2754 : vec3<f32> = ((vec3<f32>(x_2747.x, x_2747.y, x_2747.z) * vec3<f32>(x_2749.x, x_2749.x, x_2749.x)) + vec3<f32>(x_2752.x, x_2752.y, x_2752.z));
  let x_2755 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2754.x, x_2754.y, x_2754.z, x_2755.w);
  let x_2757 : vec3<f32> = u_xlat28;
  let x_2758 : vec4<f32> = u_xlat0;
  let x_2760 : vec3<f32> = (x_2757 + vec3<f32>(x_2758.x, x_2758.y, x_2758.z));
  let x_2761 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2760.x, x_2760.y, x_2760.z, x_2761.w);
  let x_2763 : f32 = u_xlat62;
  let x_2764 : f32 = u_xlat62;
  u_xlat60 = (x_2763 * -(x_2764));
  let x_2767 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2767);
  let x_2769 : vec4<f32> = u_xlat0;
  let x_2773 : vec4<f32> = x_44.unity_FogColor;
  let x_2776 : vec3<f32> = (vec3<f32>(x_2769.x, x_2769.y, x_2769.z) + -(vec3<f32>(x_2773.x, x_2773.y, x_2773.z)));
  let x_2777 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2776.x, x_2776.y, x_2776.z, x_2777.w);
  let x_2781 : f32 = u_xlat60;
  let x_2783 : vec4<f32> = u_xlat0;
  let x_2787 : vec4<f32> = x_44.unity_FogColor;
  let x_2789 : vec3<f32> = ((vec3<f32>(x_2781, x_2781, x_2781) * vec3<f32>(x_2783.x, x_2783.y, x_2783.z)) + vec3<f32>(x_2787.x, x_2787.y, x_2787.z));
  let x_2790 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2789.x, x_2789.y, x_2789.z, x_2790.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

