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

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_250 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1605 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1723 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1897 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2018 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat20 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var x_111 : vec3<f32>;
  var u_xlat58 : f32;
  var u_xlat59 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat60 : f32;
  var u_xlatb23 : bool;
  var u_xlat5 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatb42 : vec2<bool>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat61 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat25 : vec2<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat63 : f32;
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
  var u_xlat24 : f32;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb61 : bool;
  var x_1555 : f32;
  var x_1673 : f32;
  var x_1684 : vec3<f32>;
  var u_xlat62 : f32;
  var u_xlatu5 : u32;
  var u_xlatb24 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu63 : u32;
  var u_xlati7 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat64 : f32;
  var u_xlatu8 : u32;
  var u_xlati27 : i32;
  var u_xlati8 : i32;
  var u_xlati46 : i32;
  var u_xlat27 : vec3<f32>;
  var u_xlatb8 : bool;
  var u_xlatb47 : vec2<bool>;
  var u_xlat47 : vec2<f32>;
  var x_2338 : f32;
  var x_2351 : f32;
  var u_xlat65 : f32;
  var x_2413 : f32;
  var x_2424 : vec3<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : bool;
  var x_2592 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_67 == 0.0f);
  let x_74 : vec3<f32> = vs_TEXCOORD1;
  let x_79 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat20 = (-(x_74) + x_79);
  let x_82 : vec3<f32> = u_xlat20;
  let x_83 : vec3<f32> = u_xlat20;
  u_xlat2.x = dot(x_82, x_83);
  let x_88 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat20;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat20 = (x_91 * vec3<f32>(x_92.x, x_92.x, x_92.x));
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat2.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2.y = x_102;
  let x_107 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat2.z = x_107;
  let x_110 : bool = u_xlatb1;
  if (x_110) {
    let x_114 : vec3<f32> = u_xlat20;
    x_111 = x_114;
  } else {
    let x_116 : vec3<f32> = u_xlat2;
    x_111 = x_116;
  }
  let x_117 : vec3<f32> = x_111;
  u_xlat1 = x_117;
  let x_120 : vec3<f32> = vs_TEXCOORD2;
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  u_xlat58 = dot(x_120, x_121);
  let x_123 : f32 = u_xlat58;
  u_xlat58 = inverseSqrt(x_123);
  let x_125 : f32 = u_xlat58;
  let x_127 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_125, x_125, x_125) * x_127);
  let x_129 : vec3<f32> = u_xlat1;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat58 = dot(x_129, x_130);
  let x_132 : f32 = u_xlat58;
  u_xlat58 = max(x_132, 1.17549435e-37f);
  let x_135 : f32 = u_xlat58;
  u_xlat58 = inverseSqrt(x_135);
  let x_139 : f32 = vs_TEXCOORD1.y;
  let x_141 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat59 = (x_139 * x_141);
  let x_144 : f32 = x_44.unity_MatrixV[0i].z;
  let x_146 : f32 = vs_TEXCOORD1.x;
  let x_148 : f32 = u_xlat59;
  u_xlat59 = ((x_144 * x_146) + x_148);
  let x_151 : f32 = x_44.unity_MatrixV[2i].z;
  let x_153 : f32 = vs_TEXCOORD1.z;
  let x_155 : f32 = u_xlat59;
  u_xlat59 = ((x_151 * x_153) + x_155);
  let x_157 : f32 = u_xlat59;
  let x_160 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat59 = (x_157 + x_160);
  let x_162 : f32 = u_xlat59;
  let x_166 : f32 = x_44.x_ProjectionParams.y;
  u_xlat59 = (-(x_162) + -(x_166));
  let x_169 : f32 = u_xlat59;
  u_xlat59 = max(x_169, 0.0f);
  let x_171 : f32 = u_xlat59;
  let x_174 : f32 = x_44.unity_FogParams.x;
  u_xlat59 = (x_171 * x_174);
  let x_183 : vec2<f32> = vs_TEXCOORD7;
  let x_185 : f32 = x_44.x_GlobalMipBias.x;
  let x_186 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_183, x_185);
  u_xlat3 = vec3<f32>(x_186.x, x_186.y, x_186.z);
  let x_191 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_192 : vec2<f32> = vec2<f32>(x_191.x, x_191.y);
  let x_196 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_192.x, x_192.y));
  let x_197 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : vec3<f32> = u_xlat4;
  let x_201 : vec4<f32> = hlslcc_FragCoord;
  let x_203 : vec2<f32> = (vec2<f32>(x_199.x, x_199.y) * vec2<f32>(x_201.x, x_201.y));
  let x_204 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_203.x, x_203.y, x_204.z);
  let x_208 : f32 = u_xlat4.y;
  let x_211 : f32 = x_44.x_ScaleBiasRt.x;
  let x_214 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_208 * x_211) + x_214);
  let x_216 : f32 = u_xlat60;
  u_xlat4.z = (-(x_216) + 1.0f);
  let x_225 : vec3<f32> = u_xlat4;
  let x_228 : f32 = x_44.x_GlobalMipBias.x;
  let x_229 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_225.x, x_225.z), x_228);
  u_xlat60 = x_229.x;
  let x_231 : f32 = u_xlat60;
  u_xlat4.x = (x_231 + -1.0f);
  let x_237 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_239 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_237 * x_239) + 1.0f);
  let x_243 : f32 = u_xlat60;
  u_xlat60 = min(x_243, 1.0f);
  let x_252 : f32 = x_250.x_MainLightShadowParams.y;
  u_xlatb23 = (0.0f < x_252);
  let x_254 : bool = u_xlatb23;
  if (x_254) {
    let x_258 : f32 = x_250.x_MainLightShadowParams.y;
    u_xlatb23 = (x_258 == 1.0f);
    let x_260 : bool = u_xlatb23;
    if (x_260) {
      let x_265 : vec4<f32> = vs_TEXCOORD6;
      let x_268 : vec4<f32> = x_250.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_265.x, x_265.y, x_265.x, x_265.y) + x_268);
      let x_271 : vec4<f32> = u_xlat5;
      let x_272 : vec2<f32> = vec2<f32>(x_271.x, x_271.y);
      let x_274 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_272.x, x_272.y, x_274);
      let x_287 : vec3<f32> = txVec0;
      let x_289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_287.xy, x_287.z);
      u_xlat6.x = x_289;
      let x_292 : vec4<f32> = u_xlat5;
      let x_293 : vec2<f32> = vec2<f32>(x_292.z, x_292.w);
      let x_295 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_293.x, x_293.y, x_295);
      let x_302 : vec3<f32> = txVec1;
      let x_304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_302.xy, x_302.z);
      u_xlat6.y = x_304;
      let x_306 : vec4<f32> = vs_TEXCOORD6;
      let x_309 : vec4<f32> = x_250.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_306.x, x_306.y, x_306.x, x_306.y) + x_309);
      let x_312 : vec4<f32> = u_xlat5;
      let x_313 : vec2<f32> = vec2<f32>(x_312.x, x_312.y);
      let x_315 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_313.x, x_313.y, x_315);
      let x_322 : vec3<f32> = txVec2;
      let x_324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_322.xy, x_322.z);
      u_xlat6.z = x_324;
      let x_327 : vec4<f32> = u_xlat5;
      let x_328 : vec2<f32> = vec2<f32>(x_327.z, x_327.w);
      let x_330 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_328.x, x_328.y, x_330);
      let x_337 : vec3<f32> = txVec3;
      let x_339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_337.xy, x_337.z);
      u_xlat6.w = x_339;
      let x_342 : vec4<f32> = u_xlat6;
      u_xlat23.x = dot(x_342, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_352 : f32 = x_250.x_MainLightShadowParams.y;
      u_xlatb42.x = (x_352 == 2.0f);
      let x_357 : bool = u_xlatb42.x;
      if (x_357) {
        let x_362 : vec4<f32> = vs_TEXCOORD6;
        let x_365 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        u_xlat42 = ((vec2<f32>(x_362.x, x_362.y) * vec2<f32>(x_365.z, x_365.w)) + vec2<f32>(0.5f, 0.5f));
        let x_371 : vec2<f32> = u_xlat42;
        u_xlat42 = floor(x_371);
        let x_373 : vec4<f32> = vs_TEXCOORD6;
        let x_376 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_379 : vec2<f32> = u_xlat42;
        let x_381 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(x_376.z, x_376.w)) + -(x_379));
        let x_382 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_381.x, x_381.y, x_382.z, x_382.w);
        let x_384 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_384.x, x_384.x, x_384.y, x_384.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_389 : vec4<f32> = u_xlat6;
        let x_391 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_389.x, x_389.x, x_389.z, x_389.z) * vec4<f32>(x_391.x, x_391.x, x_391.z, x_391.z));
        let x_395 : vec4<f32> = u_xlat7;
        u_xlat43 = (vec2<f32>(x_395.y, x_395.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_400 : vec4<f32> = u_xlat7;
        let x_403 : vec4<f32> = u_xlat5;
        let x_406 : vec2<f32> = ((vec2<f32>(x_400.x, x_400.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_403.x, x_403.y)));
        let x_407 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_406.x, x_407.y, x_406.y, x_407.w);
        let x_409 : vec4<f32> = u_xlat5;
        let x_412 : vec2<f32> = (-(vec2<f32>(x_409.x, x_409.y)) + vec2<f32>(1.0f, 1.0f));
        let x_413 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_412.x, x_412.y, x_413.z, x_413.w);
        let x_416 : vec4<f32> = u_xlat5;
        u_xlat45 = min(vec2<f32>(x_416.x, x_416.y), vec2<f32>(0.0f, 0.0f));
        let x_420 : vec2<f32> = u_xlat45;
        let x_422 : vec2<f32> = u_xlat45;
        let x_424 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_420) * x_422) + vec2<f32>(x_424.x, x_424.y));
        let x_427 : vec4<f32> = u_xlat5;
        let x_429 : vec2<f32> = max(vec2<f32>(x_427.x, x_427.y), vec2<f32>(0.0f, 0.0f));
        let x_430 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_429.x, x_429.y, x_430.z, x_430.w);
        let x_432 : vec4<f32> = u_xlat5;
        let x_435 : vec4<f32> = u_xlat5;
        let x_438 : vec4<f32> = u_xlat6;
        let x_440 : vec2<f32> = ((-(vec2<f32>(x_432.x, x_432.y)) * vec2<f32>(x_435.x, x_435.y)) + vec2<f32>(x_438.y, x_438.w));
        let x_441 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
        let x_443 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_443 + vec2<f32>(1.0f, 1.0f));
        let x_445 : vec4<f32> = u_xlat5;
        let x_447 : vec2<f32> = (vec2<f32>(x_445.x, x_445.y) + vec2<f32>(1.0f, 1.0f));
        let x_448 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
        let x_451 : vec4<f32> = u_xlat6;
        let x_455 : vec2<f32> = (vec2<f32>(x_451.x, x_451.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_456 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
        let x_459 : vec4<f32> = u_xlat7;
        let x_461 : vec2<f32> = (vec2<f32>(x_459.x, x_459.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_462 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
        let x_464 : vec2<f32> = u_xlat45;
        let x_465 : vec2<f32> = (x_464 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_466 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
        let x_469 : vec4<f32> = u_xlat5;
        let x_471 : vec2<f32> = (vec2<f32>(x_469.x, x_469.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_472 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
        let x_474 : vec4<f32> = u_xlat6;
        let x_476 : vec2<f32> = (vec2<f32>(x_474.y, x_474.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_477 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_476.x, x_476.y, x_477.z, x_477.w);
        let x_480 : f32 = u_xlat7.x;
        u_xlat8.z = x_480;
        let x_483 : f32 = u_xlat5.x;
        u_xlat8.w = x_483;
        let x_486 : f32 = u_xlat10.x;
        u_xlat9.z = x_486;
        let x_489 : f32 = u_xlat43.x;
        u_xlat9.w = x_489;
        let x_491 : vec4<f32> = u_xlat8;
        let x_493 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_491.z, x_491.w, x_491.x, x_491.z) + vec4<f32>(x_493.z, x_493.w, x_493.x, x_493.z));
        let x_497 : f32 = u_xlat8.y;
        u_xlat7.z = x_497;
        let x_500 : f32 = u_xlat5.y;
        u_xlat7.w = x_500;
        let x_503 : f32 = u_xlat9.y;
        u_xlat10.z = x_503;
        let x_506 : f32 = u_xlat43.y;
        u_xlat10.w = x_506;
        let x_508 : vec4<f32> = u_xlat7;
        let x_510 : vec4<f32> = u_xlat10;
        let x_512 : vec3<f32> = (vec3<f32>(x_508.z, x_508.y, x_508.w) + vec3<f32>(x_510.z, x_510.y, x_510.w));
        let x_513 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
        let x_515 : vec4<f32> = u_xlat9;
        let x_517 : vec4<f32> = u_xlat6;
        let x_519 : vec3<f32> = (vec3<f32>(x_515.x, x_515.z, x_515.w) / vec3<f32>(x_517.z, x_517.w, x_517.y));
        let x_520 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
        let x_522 : vec4<f32> = u_xlat7;
        let x_528 : vec3<f32> = (vec3<f32>(x_522.x, x_522.y, x_522.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_529 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
        let x_531 : vec4<f32> = u_xlat10;
        let x_533 : vec4<f32> = u_xlat5;
        let x_535 : vec3<f32> = (vec3<f32>(x_531.z, x_531.y, x_531.w) / vec3<f32>(x_533.x, x_533.y, x_533.z));
        let x_536 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
        let x_538 : vec4<f32> = u_xlat8;
        let x_540 : vec3<f32> = (vec3<f32>(x_538.x, x_538.y, x_538.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_541 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
        let x_543 : vec4<f32> = u_xlat7;
        let x_546 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_548 : vec3<f32> = (vec3<f32>(x_543.y, x_543.x, x_543.z) * vec3<f32>(x_546.x, x_546.x, x_546.x));
        let x_549 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
        let x_551 : vec4<f32> = u_xlat8;
        let x_554 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_556 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) * vec3<f32>(x_554.y, x_554.y, x_554.y));
        let x_557 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
        let x_560 : f32 = u_xlat8.x;
        u_xlat7.w = x_560;
        let x_562 : vec2<f32> = u_xlat42;
        let x_565 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_568 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_562.x, x_562.y, x_562.x, x_562.y) * vec4<f32>(x_565.x, x_565.y, x_565.x, x_565.y)) + vec4<f32>(x_568.y, x_568.w, x_568.x, x_568.w));
        let x_571 : vec2<f32> = u_xlat42;
        let x_573 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_576 : vec4<f32> = u_xlat7;
        let x_578 : vec2<f32> = ((x_571 * vec2<f32>(x_573.x, x_573.y)) + vec2<f32>(x_576.z, x_576.w));
        let x_579 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_578.x, x_578.y, x_579.z, x_579.w);
        let x_582 : f32 = u_xlat7.y;
        u_xlat8.w = x_582;
        let x_584 : vec4<f32> = u_xlat8;
        let x_585 : vec2<f32> = vec2<f32>(x_584.y, x_584.z);
        let x_586 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_586.x, x_585.x, x_586.z, x_585.y);
        let x_589 : vec2<f32> = u_xlat42;
        let x_592 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_595 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_589.x, x_589.y, x_589.x, x_589.y) * vec4<f32>(x_592.x, x_592.y, x_592.x, x_592.y)) + vec4<f32>(x_595.x, x_595.y, x_595.z, x_595.y));
        let x_598 : vec2<f32> = u_xlat42;
        let x_601 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_604 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_598.x, x_598.y, x_598.x, x_598.y) * vec4<f32>(x_601.x, x_601.y, x_601.x, x_601.y)) + vec4<f32>(x_604.w, x_604.y, x_604.w, x_604.z));
        let x_607 : vec2<f32> = u_xlat42;
        let x_610 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_613 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_607.x, x_607.y, x_607.x, x_607.y) * vec4<f32>(x_610.x, x_610.y, x_610.x, x_610.y)) + vec4<f32>(x_613.x, x_613.w, x_613.z, x_613.w));
        let x_617 : vec4<f32> = u_xlat5;
        let x_619 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_617.x, x_617.x, x_617.x, x_617.y) * vec4<f32>(x_619.z, x_619.w, x_619.y, x_619.z));
        let x_623 : vec4<f32> = u_xlat5;
        let x_625 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_623.y, x_623.y, x_623.z, x_623.z) * x_625);
        let x_628 : f32 = u_xlat5.z;
        let x_630 : f32 = u_xlat6.y;
        u_xlat42.x = (x_628 * x_630);
        let x_634 : vec4<f32> = u_xlat9;
        let x_635 : vec2<f32> = vec2<f32>(x_634.x, x_634.y);
        let x_637 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_635.x, x_635.y, x_637);
        let x_645 : vec3<f32> = txVec4;
        let x_647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_645.xy, x_645.z);
        u_xlat61 = x_647;
        let x_649 : vec4<f32> = u_xlat9;
        let x_650 : vec2<f32> = vec2<f32>(x_649.z, x_649.w);
        let x_652 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_650.x, x_650.y, x_652);
        let x_659 : vec3<f32> = txVec5;
        let x_661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_659.xy, x_659.z);
        u_xlat5.x = x_661;
        let x_664 : f32 = u_xlat5.x;
        let x_666 : f32 = u_xlat12.y;
        u_xlat5.x = (x_664 * x_666);
        let x_670 : f32 = u_xlat12.x;
        let x_671 : f32 = u_xlat61;
        let x_674 : f32 = u_xlat5.x;
        u_xlat61 = ((x_670 * x_671) + x_674);
        let x_677 : vec4<f32> = u_xlat10;
        let x_678 : vec2<f32> = vec2<f32>(x_677.x, x_677.y);
        let x_680 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_678.x, x_678.y, x_680);
        let x_687 : vec3<f32> = txVec6;
        let x_689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_687.xy, x_687.z);
        u_xlat5.x = x_689;
        let x_692 : f32 = u_xlat12.z;
        let x_694 : f32 = u_xlat5.x;
        let x_696 : f32 = u_xlat61;
        u_xlat61 = ((x_692 * x_694) + x_696);
        let x_699 : vec4<f32> = u_xlat8;
        let x_700 : vec2<f32> = vec2<f32>(x_699.x, x_699.y);
        let x_702 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_700.x, x_700.y, x_702);
        let x_709 : vec3<f32> = txVec7;
        let x_711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_709.xy, x_709.z);
        u_xlat5.x = x_711;
        let x_714 : f32 = u_xlat12.w;
        let x_716 : f32 = u_xlat5.x;
        let x_718 : f32 = u_xlat61;
        u_xlat61 = ((x_714 * x_716) + x_718);
        let x_721 : vec4<f32> = u_xlat11;
        let x_722 : vec2<f32> = vec2<f32>(x_721.x, x_721.y);
        let x_724 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_722.x, x_722.y, x_724);
        let x_731 : vec3<f32> = txVec8;
        let x_733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_731.xy, x_731.z);
        u_xlat5.x = x_733;
        let x_736 : f32 = u_xlat13.x;
        let x_738 : f32 = u_xlat5.x;
        let x_740 : f32 = u_xlat61;
        u_xlat61 = ((x_736 * x_738) + x_740);
        let x_743 : vec4<f32> = u_xlat11;
        let x_744 : vec2<f32> = vec2<f32>(x_743.z, x_743.w);
        let x_746 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_744.x, x_744.y, x_746);
        let x_753 : vec3<f32> = txVec9;
        let x_755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_753.xy, x_753.z);
        u_xlat5.x = x_755;
        let x_758 : f32 = u_xlat13.y;
        let x_760 : f32 = u_xlat5.x;
        let x_762 : f32 = u_xlat61;
        u_xlat61 = ((x_758 * x_760) + x_762);
        let x_765 : vec4<f32> = u_xlat8;
        let x_766 : vec2<f32> = vec2<f32>(x_765.z, x_765.w);
        let x_768 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_766.x, x_766.y, x_768);
        let x_775 : vec3<f32> = txVec10;
        let x_777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_775.xy, x_775.z);
        u_xlat5.x = x_777;
        let x_780 : f32 = u_xlat13.z;
        let x_782 : f32 = u_xlat5.x;
        let x_784 : f32 = u_xlat61;
        u_xlat61 = ((x_780 * x_782) + x_784);
        let x_787 : vec4<f32> = u_xlat7;
        let x_788 : vec2<f32> = vec2<f32>(x_787.x, x_787.y);
        let x_790 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_788.x, x_788.y, x_790);
        let x_797 : vec3<f32> = txVec11;
        let x_799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_797.xy, x_797.z);
        u_xlat5.x = x_799;
        let x_802 : f32 = u_xlat13.w;
        let x_804 : f32 = u_xlat5.x;
        let x_806 : f32 = u_xlat61;
        u_xlat61 = ((x_802 * x_804) + x_806);
        let x_809 : vec4<f32> = u_xlat7;
        let x_810 : vec2<f32> = vec2<f32>(x_809.z, x_809.w);
        let x_812 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_810.x, x_810.y, x_812);
        let x_819 : vec3<f32> = txVec12;
        let x_821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_819.xy, x_819.z);
        u_xlat5.x = x_821;
        let x_824 : f32 = u_xlat42.x;
        let x_826 : f32 = u_xlat5.x;
        let x_828 : f32 = u_xlat61;
        u_xlat23.x = ((x_824 * x_826) + x_828);
      } else {
        let x_832 : vec4<f32> = vs_TEXCOORD6;
        let x_835 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        u_xlat42 = ((vec2<f32>(x_832.x, x_832.y) * vec2<f32>(x_835.z, x_835.w)) + vec2<f32>(0.5f, 0.5f));
        let x_839 : vec2<f32> = u_xlat42;
        u_xlat42 = floor(x_839);
        let x_841 : vec4<f32> = vs_TEXCOORD6;
        let x_844 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_847 : vec2<f32> = u_xlat42;
        let x_849 : vec2<f32> = ((vec2<f32>(x_841.x, x_841.y) * vec2<f32>(x_844.z, x_844.w)) + -(x_847));
        let x_850 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_850.w);
        let x_852 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_852.x, x_852.x, x_852.y, x_852.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_855 : vec4<f32> = u_xlat6;
        let x_857 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_855.x, x_855.x, x_855.z, x_855.z) * vec4<f32>(x_857.x, x_857.x, x_857.z, x_857.z));
        let x_860 : vec4<f32> = u_xlat7;
        let x_864 : vec2<f32> = (vec2<f32>(x_860.y, x_860.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_865 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_865.x, x_864.x, x_865.z, x_864.y);
        let x_867 : vec4<f32> = u_xlat7;
        let x_870 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_867.x, x_867.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_870.x, x_870.y)));
        let x_874 : vec4<f32> = u_xlat5;
        let x_877 : vec2<f32> = (-(vec2<f32>(x_874.x, x_874.y)) + vec2<f32>(1.0f, 1.0f));
        let x_878 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_877.x, x_878.y, x_877.y, x_878.w);
        let x_880 : vec4<f32> = u_xlat5;
        let x_882 : vec2<f32> = min(vec2<f32>(x_880.x, x_880.y), vec2<f32>(0.0f, 0.0f));
        let x_883 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_882.x, x_882.y, x_883.z, x_883.w);
        let x_885 : vec4<f32> = u_xlat7;
        let x_888 : vec4<f32> = u_xlat7;
        let x_891 : vec4<f32> = u_xlat6;
        let x_893 : vec2<f32> = ((-(vec2<f32>(x_885.x, x_885.y)) * vec2<f32>(x_888.x, x_888.y)) + vec2<f32>(x_891.x, x_891.z));
        let x_894 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_893.x, x_894.y, x_893.y, x_894.w);
        let x_896 : vec4<f32> = u_xlat5;
        let x_898 : vec2<f32> = max(vec2<f32>(x_896.x, x_896.y), vec2<f32>(0.0f, 0.0f));
        let x_899 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_898.x, x_898.y, x_899.z, x_899.w);
        let x_901 : vec4<f32> = u_xlat7;
        let x_904 : vec4<f32> = u_xlat7;
        let x_907 : vec4<f32> = u_xlat6;
        let x_909 : vec2<f32> = ((-(vec2<f32>(x_901.x, x_901.y)) * vec2<f32>(x_904.x, x_904.y)) + vec2<f32>(x_907.y, x_907.w));
        let x_910 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_910.x, x_909.x, x_910.z, x_909.y);
        let x_912 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_912 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_916 : f32 = u_xlat6.y;
        u_xlat7.z = (x_916 * 0.081632003f);
        let x_920 : vec2<f32> = u_xlat43;
        let x_923 : vec2<f32> = (vec2<f32>(x_920.y, x_920.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_924 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_923.x, x_923.y, x_924.z, x_924.w);
        let x_926 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_926.x, x_926.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_930 : f32 = u_xlat6.w;
        u_xlat9.z = (x_930 * 0.081632003f);
        let x_934 : f32 = u_xlat9.y;
        u_xlat7.x = x_934;
        let x_936 : vec4<f32> = u_xlat5;
        let x_943 : vec2<f32> = ((vec2<f32>(x_936.x, x_936.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_944 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_944.x, x_943.x, x_944.z, x_943.y);
        let x_946 : vec4<f32> = u_xlat5;
        let x_950 : vec2<f32> = ((vec2<f32>(x_946.x, x_946.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_951 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_950.x, x_951.y, x_950.y, x_951.w);
        let x_954 : f32 = u_xlat43.x;
        u_xlat6.y = x_954;
        let x_957 : f32 = u_xlat8.y;
        u_xlat6.w = x_957;
        let x_959 : vec4<f32> = u_xlat6;
        let x_960 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_959 + x_960);
        let x_962 : vec4<f32> = u_xlat5;
        let x_965 : vec2<f32> = ((vec2<f32>(x_962.y, x_962.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_966 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_966.x, x_965.x, x_966.z, x_965.y);
        let x_968 : vec4<f32> = u_xlat5;
        let x_971 : vec2<f32> = ((vec2<f32>(x_968.y, x_968.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_972 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_971.x, x_972.y, x_971.y, x_972.w);
        let x_975 : f32 = u_xlat43.y;
        u_xlat8.y = x_975;
        let x_977 : vec4<f32> = u_xlat8;
        let x_978 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_977 + x_978);
        let x_980 : vec4<f32> = u_xlat6;
        let x_981 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_980 / x_981);
        let x_983 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_983 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_989 : vec4<f32> = u_xlat8;
        let x_990 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_989 / x_990);
        let x_992 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_992 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_994 : vec4<f32> = u_xlat6;
        let x_997 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_994.w, x_994.x, x_994.y, x_994.z) * vec4<f32>(x_997.x, x_997.x, x_997.x, x_997.x));
        let x_1000 : vec4<f32> = u_xlat8;
        let x_1003 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1000.x, x_1000.w, x_1000.y, x_1000.z) * vec4<f32>(x_1003.y, x_1003.y, x_1003.y, x_1003.y));
        let x_1006 : vec4<f32> = u_xlat6;
        let x_1007 : vec3<f32> = vec3<f32>(x_1006.y, x_1006.z, x_1006.w);
        let x_1008 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1007.x, x_1008.y, x_1007.y, x_1007.z);
        let x_1011 : f32 = u_xlat8.x;
        u_xlat9.y = x_1011;
        let x_1013 : vec2<f32> = u_xlat42;
        let x_1016 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_1019 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y) * vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.y)) + vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1019.y));
        let x_1022 : vec2<f32> = u_xlat42;
        let x_1024 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_1027 : vec4<f32> = u_xlat9;
        let x_1029 : vec2<f32> = ((x_1022 * vec2<f32>(x_1024.x, x_1024.y)) + vec2<f32>(x_1027.w, x_1027.y));
        let x_1030 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1029.x, x_1029.y, x_1030.z, x_1030.w);
        let x_1033 : f32 = u_xlat9.y;
        u_xlat6.y = x_1033;
        let x_1036 : f32 = u_xlat8.z;
        u_xlat9.y = x_1036;
        let x_1038 : vec2<f32> = u_xlat42;
        let x_1041 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_1044 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1038.x, x_1038.y, x_1038.x, x_1038.y) * vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y)) + vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1044.y));
        let x_1048 : vec2<f32> = u_xlat42;
        let x_1050 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_1053 : vec4<f32> = u_xlat9;
        u_xlat49 = ((x_1048 * vec2<f32>(x_1050.x, x_1050.y)) + vec2<f32>(x_1053.w, x_1053.y));
        let x_1057 : f32 = u_xlat9.y;
        u_xlat6.z = x_1057;
        let x_1059 : vec2<f32> = u_xlat42;
        let x_1062 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1059.x, x_1059.y, x_1059.x, x_1059.y) * vec4<f32>(x_1062.x, x_1062.y, x_1062.x, x_1062.y)) + vec4<f32>(x_1065.x, x_1065.y, x_1065.x, x_1065.z));
        let x_1069 : f32 = u_xlat8.w;
        u_xlat9.y = x_1069;
        let x_1072 : vec2<f32> = u_xlat42;
        let x_1075 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y) * vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y)) + vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1078.y));
        let x_1082 : vec2<f32> = u_xlat42;
        let x_1084 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat9;
        u_xlat25 = ((x_1082 * vec2<f32>(x_1084.x, x_1084.y)) + vec2<f32>(x_1087.w, x_1087.y));
        let x_1091 : f32 = u_xlat9.y;
        u_xlat6.w = x_1091;
        let x_1094 : vec2<f32> = u_xlat42;
        let x_1096 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_1099 : vec4<f32> = u_xlat6;
        u_xlat15 = ((x_1094 * vec2<f32>(x_1096.x, x_1096.y)) + vec2<f32>(x_1099.x, x_1099.w));
        let x_1102 : vec4<f32> = u_xlat9;
        let x_1103 : vec3<f32> = vec3<f32>(x_1102.x, x_1102.z, x_1102.w);
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1103.z);
        let x_1106 : vec2<f32> = u_xlat42;
        let x_1109 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1106.x, x_1106.y, x_1106.x, x_1106.y) * vec4<f32>(x_1109.x, x_1109.y, x_1109.x, x_1109.y)) + vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1112.y));
        let x_1116 : vec2<f32> = u_xlat42;
        let x_1118 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_1121 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1116 * vec2<f32>(x_1118.x, x_1118.y)) + vec2<f32>(x_1121.w, x_1121.y));
        let x_1125 : f32 = u_xlat6.x;
        u_xlat8.x = x_1125;
        let x_1127 : vec2<f32> = u_xlat42;
        let x_1129 : vec4<f32> = x_250.x_MainLightShadowmapSize;
        let x_1132 : vec4<f32> = u_xlat8;
        u_xlat42 = ((x_1127 * vec2<f32>(x_1129.x, x_1129.y)) + vec2<f32>(x_1132.x, x_1132.y));
        let x_1136 : vec4<f32> = u_xlat5;
        let x_1138 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1136.x, x_1136.x, x_1136.x, x_1136.x) * x_1138);
        let x_1141 : vec4<f32> = u_xlat5;
        let x_1143 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1141.y, x_1141.y, x_1141.y, x_1141.y) * x_1143);
        let x_1146 : vec4<f32> = u_xlat5;
        let x_1148 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1146.z, x_1146.z, x_1146.z, x_1146.z) * x_1148);
        let x_1150 : vec4<f32> = u_xlat5;
        let x_1152 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1150.w, x_1150.w, x_1150.w, x_1150.w) * x_1152);
        let x_1155 : vec4<f32> = u_xlat10;
        let x_1156 : vec2<f32> = vec2<f32>(x_1155.x, x_1155.y);
        let x_1158 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1156.x, x_1156.y, x_1158);
        let x_1165 : vec3<f32> = txVec13;
        let x_1167 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1165.xy, x_1165.z);
        u_xlat6.x = x_1167;
        let x_1170 : vec4<f32> = u_xlat10;
        let x_1171 : vec2<f32> = vec2<f32>(x_1170.z, x_1170.w);
        let x_1173 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1171.x, x_1171.y, x_1173);
        let x_1181 : vec3<f32> = txVec14;
        let x_1183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1181.xy, x_1181.z);
        u_xlat63 = x_1183;
        let x_1184 : f32 = u_xlat63;
        let x_1186 : f32 = u_xlat16.y;
        u_xlat63 = (x_1184 * x_1186);
        let x_1189 : f32 = u_xlat16.x;
        let x_1191 : f32 = u_xlat6.x;
        let x_1193 : f32 = u_xlat63;
        u_xlat6.x = ((x_1189 * x_1191) + x_1193);
        let x_1197 : vec4<f32> = u_xlat11;
        let x_1198 : vec2<f32> = vec2<f32>(x_1197.x, x_1197.y);
        let x_1200 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1198.x, x_1198.y, x_1200);
        let x_1207 : vec3<f32> = txVec15;
        let x_1209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1207.xy, x_1207.z);
        u_xlat63 = x_1209;
        let x_1211 : f32 = u_xlat16.z;
        let x_1212 : f32 = u_xlat63;
        let x_1215 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1211 * x_1212) + x_1215);
        let x_1219 : vec4<f32> = u_xlat13;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.x, x_1219.y);
        let x_1222 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec16;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1229.xy, x_1229.z);
        u_xlat63 = x_1231;
        let x_1233 : f32 = u_xlat16.w;
        let x_1234 : f32 = u_xlat63;
        let x_1237 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1233 * x_1234) + x_1237);
        let x_1241 : vec4<f32> = u_xlat12;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.x, x_1241.y);
        let x_1244 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec17;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1251.xy, x_1251.z);
        u_xlat63 = x_1253;
        let x_1255 : f32 = u_xlat17.x;
        let x_1256 : f32 = u_xlat63;
        let x_1259 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1255 * x_1256) + x_1259);
        let x_1263 : vec4<f32> = u_xlat12;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.z, x_1263.w);
        let x_1266 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec18;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1273.xy, x_1273.z);
        u_xlat63 = x_1275;
        let x_1277 : f32 = u_xlat17.y;
        let x_1278 : f32 = u_xlat63;
        let x_1281 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1277 * x_1278) + x_1281);
        let x_1285 : vec2<f32> = u_xlat49;
        let x_1287 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec19;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1294.xy, x_1294.z);
        u_xlat63 = x_1296;
        let x_1298 : f32 = u_xlat17.z;
        let x_1299 : f32 = u_xlat63;
        let x_1302 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1298 * x_1299) + x_1302);
        let x_1306 : vec4<f32> = u_xlat13;
        let x_1307 : vec2<f32> = vec2<f32>(x_1306.z, x_1306.w);
        let x_1309 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1307.x, x_1307.y, x_1309);
        let x_1316 : vec3<f32> = txVec20;
        let x_1318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1316.xy, x_1316.z);
        u_xlat63 = x_1318;
        let x_1320 : f32 = u_xlat17.w;
        let x_1321 : f32 = u_xlat63;
        let x_1324 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1320 * x_1321) + x_1324);
        let x_1328 : vec4<f32> = u_xlat14;
        let x_1329 : vec2<f32> = vec2<f32>(x_1328.x, x_1328.y);
        let x_1331 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1338 : vec3<f32> = txVec21;
        let x_1340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1338.xy, x_1338.z);
        u_xlat63 = x_1340;
        let x_1342 : f32 = u_xlat18.x;
        let x_1343 : f32 = u_xlat63;
        let x_1346 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1342 * x_1343) + x_1346);
        let x_1350 : vec4<f32> = u_xlat14;
        let x_1351 : vec2<f32> = vec2<f32>(x_1350.z, x_1350.w);
        let x_1353 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1351.x, x_1351.y, x_1353);
        let x_1360 : vec3<f32> = txVec22;
        let x_1362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1360.xy, x_1360.z);
        u_xlat63 = x_1362;
        let x_1364 : f32 = u_xlat18.y;
        let x_1365 : f32 = u_xlat63;
        let x_1368 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1364 * x_1365) + x_1368);
        let x_1372 : vec2<f32> = u_xlat25;
        let x_1374 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec23;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1381.xy, x_1381.z);
        u_xlat25.x = x_1383;
        let x_1386 : f32 = u_xlat18.z;
        let x_1388 : f32 = u_xlat25.x;
        let x_1391 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1386 * x_1388) + x_1391);
        let x_1395 : vec2<f32> = u_xlat15;
        let x_1397 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec24;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1404.xy, x_1404.z);
        u_xlat25.x = x_1406;
        let x_1409 : f32 = u_xlat18.w;
        let x_1411 : f32 = u_xlat25.x;
        let x_1414 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1409 * x_1411) + x_1414);
        let x_1418 : vec4<f32> = u_xlat9;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
        let x_1421 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec25;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1428.xy, x_1428.z);
        u_xlat25.x = x_1430;
        let x_1433 : f32 = u_xlat5.x;
        let x_1435 : f32 = u_xlat25.x;
        let x_1438 : f32 = u_xlat6.x;
        u_xlat5.x = ((x_1433 * x_1435) + x_1438);
        let x_1442 : vec4<f32> = u_xlat9;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.z, x_1442.w);
        let x_1445 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec26;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1452.xy, x_1452.z);
        u_xlat6.x = x_1454;
        let x_1457 : f32 = u_xlat5.y;
        let x_1459 : f32 = u_xlat6.x;
        let x_1462 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1457 * x_1459) + x_1462);
        let x_1466 : vec2<f32> = u_xlat46;
        let x_1468 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1476 : vec3<f32> = txVec27;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1476.xy, x_1476.z);
        u_xlat24 = x_1478;
        let x_1480 : f32 = u_xlat5.z;
        let x_1481 : f32 = u_xlat24;
        let x_1484 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1480 * x_1481) + x_1484);
        let x_1488 : vec2<f32> = u_xlat42;
        let x_1490 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec28;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1497.xy, x_1497.z);
        u_xlat42.x = x_1499;
        let x_1502 : f32 = u_xlat5.w;
        let x_1504 : f32 = u_xlat42.x;
        let x_1507 : f32 = u_xlat5.x;
        u_xlat23.x = ((x_1502 * x_1504) + x_1507);
      }
    }
  } else {
    let x_1512 : vec4<f32> = vs_TEXCOORD6;
    let x_1513 : vec2<f32> = vec2<f32>(x_1512.x, x_1512.y);
    let x_1515 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
    let x_1522 : vec3<f32> = txVec29;
    let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1522.xy, x_1522.z);
    u_xlat23.x = x_1524;
  }
  let x_1527 : f32 = x_250.x_MainLightShadowParams.x;
  u_xlat42.x = (-(x_1527) + 1.0f);
  let x_1532 : f32 = u_xlat23.x;
  let x_1534 : f32 = x_250.x_MainLightShadowParams.x;
  let x_1537 : f32 = u_xlat42.x;
  u_xlat23.x = ((x_1532 * x_1534) + x_1537);
  let x_1541 : f32 = vs_TEXCOORD6.z;
  u_xlatb42.x = (0.0f >= x_1541);
  let x_1546 : f32 = vs_TEXCOORD6.z;
  u_xlatb61 = (x_1546 >= 1.0f);
  let x_1548 : bool = u_xlatb61;
  let x_1550 : bool = u_xlatb42.x;
  u_xlatb42.x = (x_1548 | x_1550);
  let x_1554 : bool = u_xlatb42.x;
  if (x_1554) {
    x_1555 = 1.0f;
  } else {
    let x_1560 : f32 = u_xlat23.x;
    x_1555 = x_1560;
  }
  let x_1561 : f32 = x_1555;
  u_xlat23.x = x_1561;
  let x_1563 : vec3<f32> = vs_TEXCOORD1;
  let x_1565 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1567 : vec3<f32> = (x_1563 + -(x_1565));
  let x_1568 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1567.x, x_1567.y, x_1567.z, x_1568.w);
  let x_1570 : vec4<f32> = u_xlat5;
  let x_1572 : vec4<f32> = u_xlat5;
  u_xlat42.x = dot(vec3<f32>(x_1570.x, x_1570.y, x_1570.z), vec3<f32>(x_1572.x, x_1572.y, x_1572.z));
  let x_1577 : f32 = u_xlat42.x;
  let x_1579 : f32 = x_250.x_MainLightShadowParams.z;
  let x_1582 : f32 = x_250.x_MainLightShadowParams.w;
  u_xlat42.x = ((x_1577 * x_1579) + x_1582);
  let x_1586 : f32 = u_xlat42.x;
  u_xlat42.x = clamp(x_1586, 0.0f, 1.0f);
  let x_1590 : f32 = u_xlat23.x;
  u_xlat61 = (-(x_1590) + 1.0f);
  let x_1594 : f32 = u_xlat42.x;
  let x_1595 : f32 = u_xlat61;
  let x_1598 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_1594 * x_1595) + x_1598);
  let x_1607 : f32 = x_1605.x_MainLightCookieTextureFormat;
  u_xlatb42.x = !((x_1607 == -1.0f));
  let x_1611 : bool = u_xlatb42.x;
  if (x_1611) {
    let x_1614 : vec3<f32> = vs_TEXCOORD1;
    let x_1617 : vec4<f32> = x_1605.x_MainLightWorldToLight[1i];
    u_xlat42 = (vec2<f32>(x_1614.y, x_1614.y) * vec2<f32>(x_1617.x, x_1617.y));
    let x_1621 : vec4<f32> = x_1605.x_MainLightWorldToLight[0i];
    let x_1623 : vec3<f32> = vs_TEXCOORD1;
    let x_1626 : vec2<f32> = u_xlat42;
    u_xlat42 = ((vec2<f32>(x_1621.x, x_1621.y) * vec2<f32>(x_1623.x, x_1623.x)) + x_1626);
    let x_1629 : vec4<f32> = x_1605.x_MainLightWorldToLight[2i];
    let x_1631 : vec3<f32> = vs_TEXCOORD1;
    let x_1634 : vec2<f32> = u_xlat42;
    u_xlat42 = ((vec2<f32>(x_1629.x, x_1629.y) * vec2<f32>(x_1631.z, x_1631.z)) + x_1634);
    let x_1636 : vec2<f32> = u_xlat42;
    let x_1638 : vec4<f32> = x_1605.x_MainLightWorldToLight[3i];
    u_xlat42 = (x_1636 + vec2<f32>(x_1638.x, x_1638.y));
    let x_1641 : vec2<f32> = u_xlat42;
    u_xlat42 = ((x_1641 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1649 : vec2<f32> = u_xlat42;
    let x_1651 : f32 = x_44.x_GlobalMipBias.x;
    let x_1652 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1649, x_1651);
    u_xlat5 = x_1652;
    let x_1654 : f32 = x_1605.x_MainLightCookieTextureFormat;
    let x_1656 : f32 = x_1605.x_MainLightCookieTextureFormat;
    let x_1658 : f32 = x_1605.x_MainLightCookieTextureFormat;
    let x_1660 : f32 = x_1605.x_MainLightCookieTextureFormat;
    let x_1661 : vec4<f32> = vec4<f32>(x_1654, x_1656, x_1658, x_1660);
    let x_1669 : vec4<bool> = (vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1661.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb42 = vec2<bool>(x_1669.x, x_1669.y);
    let x_1672 : bool = u_xlatb42.y;
    if (x_1672) {
      let x_1677 : f32 = u_xlat5.w;
      x_1673 = x_1677;
    } else {
      let x_1680 : f32 = u_xlat5.x;
      x_1673 = x_1680;
    }
    let x_1681 : f32 = x_1673;
    u_xlat61 = x_1681;
    let x_1683 : bool = u_xlatb42.x;
    if (x_1683) {
      let x_1687 : vec4<f32> = u_xlat5;
      x_1684 = vec3<f32>(x_1687.x, x_1687.y, x_1687.z);
    } else {
      let x_1690 : f32 = u_xlat61;
      x_1684 = vec3<f32>(x_1690, x_1690, x_1690);
    }
    let x_1692 : vec3<f32> = x_1684;
    let x_1693 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1699 : vec4<f32> = u_xlat5;
  let x_1702 : vec4<f32> = x_44.x_MainLightColor;
  let x_1704 : vec3<f32> = (vec3<f32>(x_1699.x, x_1699.y, x_1699.z) * vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
  let x_1705 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1704.x, x_1704.y, x_1704.z, x_1705.w);
  let x_1707 : vec3<f32> = u_xlat4;
  let x_1709 : vec4<f32> = u_xlat5;
  let x_1711 : vec3<f32> = (vec3<f32>(x_1707.x, x_1707.x, x_1707.x) * vec3<f32>(x_1709.x, x_1709.y, x_1709.z));
  let x_1712 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1711.x, x_1711.y, x_1711.z, x_1712.w);
  let x_1714 : f32 = u_xlat60;
  let x_1716 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_1714, x_1714, x_1714) * x_1716);
  let x_1719 : f32 = u_xlat23.x;
  let x_1726 : f32 = x_1723.unity_LightData.z;
  u_xlat60 = (x_1719 * x_1726);
  let x_1728 : f32 = u_xlat60;
  let x_1730 : vec4<f32> = u_xlat5;
  u_xlat23 = (vec3<f32>(x_1728, x_1728, x_1728) * vec3<f32>(x_1730.x, x_1730.y, x_1730.z));
  let x_1733 : vec3<f32> = u_xlat2;
  let x_1735 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat60 = dot(x_1733, vec3<f32>(x_1735.x, x_1735.y, x_1735.z));
  let x_1738 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1738, 0.0f, 1.0f);
  let x_1740 : f32 = u_xlat60;
  let x_1742 : vec3<f32> = u_xlat23;
  let x_1743 : vec3<f32> = (vec3<f32>(x_1740, x_1740, x_1740) * x_1742);
  let x_1744 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1743.x, x_1743.y, x_1743.z, x_1744.w);
  let x_1747 : f32 = u_xlat0.x;
  u_xlat60 = ((x_1747 * 10.0f) + 1.0f);
  let x_1751 : f32 = u_xlat60;
  u_xlat60 = exp2(x_1751);
  let x_1753 : vec3<f32> = u_xlat1;
  let x_1754 : f32 = u_xlat58;
  let x_1758 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1760 : vec3<f32> = ((x_1753 * vec3<f32>(x_1754, x_1754, x_1754)) + vec3<f32>(x_1758.x, x_1758.y, x_1758.z));
  let x_1761 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1760.x, x_1760.y, x_1760.z, x_1761.w);
  let x_1764 : vec4<f32> = u_xlat6;
  let x_1766 : vec4<f32> = u_xlat6;
  u_xlat62 = dot(vec3<f32>(x_1764.x, x_1764.y, x_1764.z), vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
  let x_1769 : f32 = u_xlat62;
  u_xlat62 = max(x_1769, 1.17549435e-37f);
  let x_1771 : f32 = u_xlat62;
  u_xlat62 = inverseSqrt(x_1771);
  let x_1773 : f32 = u_xlat62;
  let x_1775 : vec4<f32> = u_xlat6;
  let x_1777 : vec3<f32> = (vec3<f32>(x_1773, x_1773, x_1773) * vec3<f32>(x_1775.x, x_1775.y, x_1775.z));
  let x_1778 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1778.w);
  let x_1780 : vec3<f32> = u_xlat2;
  let x_1781 : vec4<f32> = u_xlat6;
  u_xlat62 = dot(x_1780, vec3<f32>(x_1781.x, x_1781.y, x_1781.z));
  let x_1784 : f32 = u_xlat62;
  u_xlat62 = clamp(x_1784, 0.0f, 1.0f);
  let x_1786 : f32 = u_xlat62;
  u_xlat62 = log2(x_1786);
  let x_1788 : f32 = u_xlat60;
  let x_1789 : f32 = u_xlat62;
  u_xlat62 = (x_1788 * x_1789);
  let x_1791 : f32 = u_xlat62;
  u_xlat62 = exp2(x_1791);
  let x_1793 : f32 = u_xlat62;
  let x_1796 : vec4<f32> = x_56.x_SpecColor;
  let x_1798 : vec3<f32> = (vec3<f32>(x_1793, x_1793, x_1793) * vec3<f32>(x_1796.x, x_1796.y, x_1796.z));
  let x_1799 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1798.x, x_1798.y, x_1798.z, x_1799.w);
  let x_1801 : vec3<f32> = u_xlat23;
  let x_1802 : vec4<f32> = u_xlat6;
  u_xlat23 = (x_1801 * vec3<f32>(x_1802.x, x_1802.y, x_1802.z));
  let x_1805 : vec4<f32> = u_xlat5;
  let x_1807 : vec4<f32> = u_xlat0;
  let x_1810 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_1805.x, x_1805.y, x_1805.z) * vec3<f32>(x_1807.y, x_1807.z, x_1807.w)) + x_1810);
  let x_1813 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1815 : f32 = x_1723.unity_LightData.y;
  u_xlat5.x = min(x_1813, x_1815);
  let x_1821 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_1821));
  let x_1826 : f32 = x_1605.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1828 : f32 = x_1605.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1830 : f32 = x_1605.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1832 : f32 = x_1605.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1833 : vec4<f32> = vec4<f32>(x_1826, x_1828, x_1830, x_1832);
  let x_1840 : vec4<bool> = (vec4<f32>(x_1833.x, x_1833.y, x_1833.z, x_1833.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb24 = vec2<bool>(x_1840.x, x_1840.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1851 : u32 = u_xlatu_loop_1;
    let x_1852 : u32 = u_xlatu5;
    if ((x_1851 < x_1852)) {
    } else {
      break;
    }
    let x_1855 : u32 = u_xlatu_loop_1;
    u_xlatu63 = (x_1855 >> 2u);
    let x_1859 : u32 = u_xlatu_loop_1;
    u_xlati7 = bitcast<i32>((x_1859 & 3u));
    let x_1862 : u32 = u_xlatu63;
    let x_1865 : vec4<f32> = x_1723.unity_LightIndices[bitcast<i32>(x_1862)];
    let x_1875 : i32 = u_xlati7;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1880 : vec4<u32> = indexable[x_1875];
    u_xlat63 = dot(x_1865, bitcast<vec4<f32>>(x_1880));
    let x_1883 : f32 = u_xlat63;
    u_xlatu63 = bitcast<u32>(i32(x_1883));
    let x_1886 : vec3<f32> = vs_TEXCOORD1;
    let x_1898 : u32 = u_xlatu63;
    let x_1901 : vec4<f32> = x_1897.x_AdditionalLightsPosition[bitcast<i32>(x_1898)];
    let x_1904 : u32 = u_xlatu63;
    let x_1907 : vec4<f32> = x_1897.x_AdditionalLightsPosition[bitcast<i32>(x_1904)];
    let x_1909 : vec3<f32> = ((-(x_1886) * vec3<f32>(x_1901.w, x_1901.w, x_1901.w)) + vec3<f32>(x_1907.x, x_1907.y, x_1907.z));
    let x_1910 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1909.x, x_1909.y, x_1909.z, x_1910.w);
    let x_1913 : vec4<f32> = u_xlat7;
    let x_1915 : vec4<f32> = u_xlat7;
    u_xlat64 = dot(vec3<f32>(x_1913.x, x_1913.y, x_1913.z), vec3<f32>(x_1915.x, x_1915.y, x_1915.z));
    let x_1918 : f32 = u_xlat64;
    u_xlat64 = max(x_1918, 6.10351562e-05f);
    let x_1921 : f32 = u_xlat64;
    u_xlat8.x = inverseSqrt(x_1921);
    let x_1924 : vec4<f32> = u_xlat7;
    let x_1926 : vec4<f32> = u_xlat8;
    let x_1928 : vec3<f32> = (vec3<f32>(x_1924.x, x_1924.y, x_1924.z) * vec3<f32>(x_1926.x, x_1926.x, x_1926.x));
    let x_1929 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1928.x, x_1928.y, x_1928.z, x_1929.w);
    let x_1931 : f32 = u_xlat64;
    u_xlat8.x = (1.0f / x_1931);
    let x_1934 : f32 = u_xlat64;
    let x_1935 : u32 = u_xlatu63;
    let x_1938 : f32 = x_1897.x_AdditionalLightsAttenuation[bitcast<i32>(x_1935)].x;
    u_xlat64 = (x_1934 * x_1938);
    let x_1940 : f32 = u_xlat64;
    let x_1942 : f32 = u_xlat64;
    u_xlat64 = ((-(x_1940) * x_1942) + 1.0f);
    let x_1945 : f32 = u_xlat64;
    u_xlat64 = max(x_1945, 0.0f);
    let x_1947 : f32 = u_xlat64;
    let x_1948 : f32 = u_xlat64;
    u_xlat64 = (x_1947 * x_1948);
    let x_1950 : f32 = u_xlat64;
    let x_1952 : f32 = u_xlat8.x;
    u_xlat64 = (x_1950 * x_1952);
    let x_1954 : u32 = u_xlatu63;
    let x_1957 : vec4<f32> = x_1897.x_AdditionalLightsSpotDir[bitcast<i32>(x_1954)];
    let x_1959 : vec4<f32> = u_xlat7;
    u_xlat8.x = dot(vec3<f32>(x_1957.x, x_1957.y, x_1957.z), vec3<f32>(x_1959.x, x_1959.y, x_1959.z));
    let x_1964 : f32 = u_xlat8.x;
    let x_1965 : u32 = u_xlatu63;
    let x_1968 : f32 = x_1897.x_AdditionalLightsAttenuation[bitcast<i32>(x_1965)].z;
    let x_1970 : u32 = u_xlatu63;
    let x_1973 : f32 = x_1897.x_AdditionalLightsAttenuation[bitcast<i32>(x_1970)].w;
    u_xlat8.x = ((x_1964 * x_1968) + x_1973);
    let x_1977 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1977, 0.0f, 1.0f);
    let x_1981 : f32 = u_xlat8.x;
    let x_1983 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1981 * x_1983);
    let x_1986 : f32 = u_xlat64;
    let x_1988 : f32 = u_xlat8.x;
    u_xlat64 = (x_1986 * x_1988);
    let x_1991 : u32 = u_xlatu63;
    u_xlatu8 = (x_1991 >> 5u);
    let x_1994 : u32 = u_xlatu63;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_1994) & 31i)));
    let x_2000 : i32 = u_xlati27;
    let x_2002 : u32 = u_xlatu8;
    let x_2005 : f32 = x_1605.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2002)].el;
    u_xlati8 = bitcast<i32>((bitcast<u32>(x_2000) & bitcast<u32>(x_2005)));
    let x_2009 : i32 = u_xlati8;
    if ((x_2009 != 0i)) {
      let x_2019 : u32 = u_xlatu63;
      let x_2022 : f32 = x_2018.x_AdditionalLightsLightTypes[bitcast<i32>(x_2019)].el;
      u_xlati8 = i32(x_2022);
      let x_2024 : i32 = u_xlati8;
      u_xlati27 = select(1i, 0i, (x_2024 != 0i));
      let x_2028 : u32 = u_xlatu63;
      u_xlati46 = (bitcast<i32>(x_2028) << bitcast<u32>(2i));
      let x_2031 : i32 = u_xlati27;
      if ((x_2031 != 0i)) {
        let x_2035 : vec3<f32> = vs_TEXCOORD1;
        let x_2037 : i32 = u_xlati46;
        let x_2040 : i32 = u_xlati46;
        let x_2044 : vec4<f32> = x_2018.x_AdditionalLightsWorldToLights[((x_2037 + 1i) / 4i)][((x_2040 + 1i) % 4i)];
        let x_2046 : vec3<f32> = (vec3<f32>(x_2035.y, x_2035.y, x_2035.y) * vec3<f32>(x_2044.x, x_2044.y, x_2044.w));
        let x_2047 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2046.x, x_2046.y, x_2046.z, x_2047.w);
        let x_2049 : i32 = u_xlati46;
        let x_2051 : i32 = u_xlati46;
        let x_2054 : vec4<f32> = x_2018.x_AdditionalLightsWorldToLights[(x_2049 / 4i)][(x_2051 % 4i)];
        let x_2056 : vec3<f32> = vs_TEXCOORD1;
        let x_2059 : vec4<f32> = u_xlat9;
        let x_2061 : vec3<f32> = ((vec3<f32>(x_2054.x, x_2054.y, x_2054.w) * vec3<f32>(x_2056.x, x_2056.x, x_2056.x)) + vec3<f32>(x_2059.x, x_2059.y, x_2059.z));
        let x_2062 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
        let x_2064 : i32 = u_xlati46;
        let x_2067 : i32 = u_xlati46;
        let x_2071 : vec4<f32> = x_2018.x_AdditionalLightsWorldToLights[((x_2064 + 2i) / 4i)][((x_2067 + 2i) % 4i)];
        let x_2073 : vec3<f32> = vs_TEXCOORD1;
        let x_2076 : vec4<f32> = u_xlat9;
        let x_2078 : vec3<f32> = ((vec3<f32>(x_2071.x, x_2071.y, x_2071.w) * vec3<f32>(x_2073.z, x_2073.z, x_2073.z)) + vec3<f32>(x_2076.x, x_2076.y, x_2076.z));
        let x_2079 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
        let x_2081 : vec4<f32> = u_xlat9;
        let x_2083 : i32 = u_xlati46;
        let x_2086 : i32 = u_xlati46;
        let x_2090 : vec4<f32> = x_2018.x_AdditionalLightsWorldToLights[((x_2083 + 3i) / 4i)][((x_2086 + 3i) % 4i)];
        let x_2092 : vec3<f32> = (vec3<f32>(x_2081.x, x_2081.y, x_2081.z) + vec3<f32>(x_2090.x, x_2090.y, x_2090.w));
        let x_2093 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2092.x, x_2092.y, x_2092.z, x_2093.w);
        let x_2096 : vec4<f32> = u_xlat9;
        let x_2098 : vec4<f32> = u_xlat9;
        let x_2100 : vec2<f32> = (vec2<f32>(x_2096.x, x_2096.y) / vec2<f32>(x_2098.z, x_2098.z));
        let x_2101 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_2100.x, x_2101.y, x_2100.y);
        let x_2103 : vec3<f32> = u_xlat27;
        let x_2106 : vec2<f32> = ((vec2<f32>(x_2103.x, x_2103.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2107 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_2106.x, x_2107.y, x_2106.y);
        let x_2109 : vec3<f32> = u_xlat27;
        let x_2113 : vec2<f32> = clamp(vec2<f32>(x_2109.x, x_2109.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2114 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_2113.x, x_2114.y, x_2113.y);
        let x_2116 : u32 = u_xlatu63;
        let x_2119 : vec4<f32> = x_2018.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2116)];
        let x_2121 : vec3<f32> = u_xlat27;
        let x_2124 : u32 = u_xlatu63;
        let x_2127 : vec4<f32> = x_2018.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2124)];
        let x_2129 : vec2<f32> = ((vec2<f32>(x_2119.x, x_2119.y) * vec2<f32>(x_2121.x, x_2121.z)) + vec2<f32>(x_2127.z, x_2127.w));
        let x_2130 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_2129.x, x_2130.y, x_2129.y);
      } else {
        let x_2134 : i32 = u_xlati8;
        u_xlatb8 = (x_2134 == 1i);
        let x_2136 : bool = u_xlatb8;
        u_xlati8 = select(0i, 1i, x_2136);
        let x_2138 : i32 = u_xlati8;
        if ((x_2138 != 0i)) {
          let x_2142 : vec3<f32> = vs_TEXCOORD1;
          let x_2144 : i32 = u_xlati46;
          let x_2147 : i32 = u_xlati46;
          let x_2151 : vec4<f32> = x_2018.x_AdditionalLightsWorldToLights[((x_2144 + 1i) / 4i)][((x_2147 + 1i) % 4i)];
          let x_2153 : vec2<f32> = (vec2<f32>(x_2142.y, x_2142.y) * vec2<f32>(x_2151.x, x_2151.y));
          let x_2154 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2153.x, x_2153.y, x_2154.z, x_2154.w);
          let x_2156 : i32 = u_xlati46;
          let x_2158 : i32 = u_xlati46;
          let x_2161 : vec4<f32> = x_2018.x_AdditionalLightsWorldToLights[(x_2156 / 4i)][(x_2158 % 4i)];
          let x_2163 : vec3<f32> = vs_TEXCOORD1;
          let x_2166 : vec4<f32> = u_xlat9;
          let x_2168 : vec2<f32> = ((vec2<f32>(x_2161.x, x_2161.y) * vec2<f32>(x_2163.x, x_2163.x)) + vec2<f32>(x_2166.x, x_2166.y));
          let x_2169 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2168.x, x_2168.y, x_2169.z, x_2169.w);
          let x_2171 : i32 = u_xlati46;
          let x_2174 : i32 = u_xlati46;
          let x_2178 : vec4<f32> = x_2018.x_AdditionalLightsWorldToLights[((x_2171 + 2i) / 4i)][((x_2174 + 2i) % 4i)];
          let x_2180 : vec3<f32> = vs_TEXCOORD1;
          let x_2183 : vec4<f32> = u_xlat9;
          let x_2185 : vec2<f32> = ((vec2<f32>(x_2178.x, x_2178.y) * vec2<f32>(x_2180.z, x_2180.z)) + vec2<f32>(x_2183.x, x_2183.y));
          let x_2186 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2185.x, x_2185.y, x_2186.z, x_2186.w);
          let x_2188 : vec4<f32> = u_xlat9;
          let x_2190 : i32 = u_xlati46;
          let x_2193 : i32 = u_xlati46;
          let x_2197 : vec4<f32> = x_2018.x_AdditionalLightsWorldToLights[((x_2190 + 3i) / 4i)][((x_2193 + 3i) % 4i)];
          let x_2199 : vec2<f32> = (vec2<f32>(x_2188.x, x_2188.y) + vec2<f32>(x_2197.x, x_2197.y));
          let x_2200 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2199.x, x_2199.y, x_2200.z, x_2200.w);
          let x_2202 : vec4<f32> = u_xlat9;
          let x_2205 : vec2<f32> = ((vec2<f32>(x_2202.x, x_2202.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2206 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2205.x, x_2205.y, x_2206.z, x_2206.w);
          let x_2208 : vec4<f32> = u_xlat9;
          let x_2210 : vec2<f32> = fract(vec2<f32>(x_2208.x, x_2208.y));
          let x_2211 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2210.x, x_2210.y, x_2211.z, x_2211.w);
          let x_2213 : u32 = u_xlatu63;
          let x_2216 : vec4<f32> = x_2018.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2213)];
          let x_2218 : vec4<f32> = u_xlat9;
          let x_2221 : u32 = u_xlatu63;
          let x_2224 : vec4<f32> = x_2018.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2221)];
          let x_2226 : vec2<f32> = ((vec2<f32>(x_2216.x, x_2216.y) * vec2<f32>(x_2218.x, x_2218.y)) + vec2<f32>(x_2224.z, x_2224.w));
          let x_2227 : vec3<f32> = u_xlat27;
          u_xlat27 = vec3<f32>(x_2226.x, x_2227.y, x_2226.y);
        } else {
          let x_2230 : vec3<f32> = vs_TEXCOORD1;
          let x_2232 : i32 = u_xlati46;
          let x_2235 : i32 = u_xlati46;
          let x_2239 : vec4<f32> = x_2018.x_AdditionalLightsWorldToLights[((x_2232 + 1i) / 4i)][((x_2235 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2230.y, x_2230.y, x_2230.y, x_2230.y) * x_2239);
          let x_2241 : i32 = u_xlati46;
          let x_2243 : i32 = u_xlati46;
          let x_2246 : vec4<f32> = x_2018.x_AdditionalLightsWorldToLights[(x_2241 / 4i)][(x_2243 % 4i)];
          let x_2247 : vec3<f32> = vs_TEXCOORD1;
          let x_2250 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2246 * vec4<f32>(x_2247.x, x_2247.x, x_2247.x, x_2247.x)) + x_2250);
          let x_2252 : i32 = u_xlati46;
          let x_2255 : i32 = u_xlati46;
          let x_2259 : vec4<f32> = x_2018.x_AdditionalLightsWorldToLights[((x_2252 + 2i) / 4i)][((x_2255 + 2i) % 4i)];
          let x_2260 : vec3<f32> = vs_TEXCOORD1;
          let x_2263 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2259 * vec4<f32>(x_2260.z, x_2260.z, x_2260.z, x_2260.z)) + x_2263);
          let x_2265 : vec4<f32> = u_xlat9;
          let x_2266 : i32 = u_xlati46;
          let x_2269 : i32 = u_xlati46;
          let x_2273 : vec4<f32> = x_2018.x_AdditionalLightsWorldToLights[((x_2266 + 3i) / 4i)][((x_2269 + 3i) % 4i)];
          u_xlat9 = (x_2265 + x_2273);
          let x_2275 : vec4<f32> = u_xlat9;
          let x_2277 : vec4<f32> = u_xlat9;
          let x_2279 : vec3<f32> = (vec3<f32>(x_2275.x, x_2275.y, x_2275.z) / vec3<f32>(x_2277.w, x_2277.w, x_2277.w));
          let x_2280 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
          let x_2282 : vec4<f32> = u_xlat9;
          let x_2284 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(vec3<f32>(x_2282.x, x_2282.y, x_2282.z), vec3<f32>(x_2284.x, x_2284.y, x_2284.z));
          let x_2289 : f32 = u_xlat8.x;
          u_xlat8.x = inverseSqrt(x_2289);
          let x_2292 : vec4<f32> = u_xlat8;
          let x_2294 : vec4<f32> = u_xlat9;
          let x_2296 : vec3<f32> = (vec3<f32>(x_2292.x, x_2292.x, x_2292.x) * vec3<f32>(x_2294.x, x_2294.y, x_2294.z));
          let x_2297 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2296.x, x_2296.y, x_2296.z, x_2297.w);
          let x_2299 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(abs(vec3<f32>(x_2299.x, x_2299.y, x_2299.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2306 : f32 = u_xlat8.x;
          u_xlat8.x = max(x_2306, 0.000001f);
          let x_2311 : f32 = u_xlat8.x;
          u_xlat8.x = (1.0f / x_2311);
          let x_2314 : vec4<f32> = u_xlat8;
          let x_2316 : vec4<f32> = u_xlat9;
          let x_2318 : vec3<f32> = (vec3<f32>(x_2314.x, x_2314.x, x_2314.x) * vec3<f32>(x_2316.z, x_2316.x, x_2316.y));
          let x_2319 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2318.x, x_2318.y, x_2318.z, x_2319.w);
          let x_2322 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2322);
          let x_2326 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2326, 0.0f, 1.0f);
          let x_2330 : vec4<f32> = u_xlat10;
          let x_2333 : vec4<bool> = (vec4<f32>(x_2330.y, x_2330.z, x_2330.y, x_2330.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb47 = vec2<bool>(x_2333.x, x_2333.y);
          let x_2337 : bool = u_xlatb47.x;
          if (x_2337) {
            let x_2342 : f32 = u_xlat10.x;
            x_2338 = x_2342;
          } else {
            let x_2345 : f32 = u_xlat10.x;
            x_2338 = -(x_2345);
          }
          let x_2347 : f32 = x_2338;
          u_xlat47.x = x_2347;
          let x_2350 : bool = u_xlatb47.y;
          if (x_2350) {
            let x_2355 : f32 = u_xlat10.x;
            x_2351 = x_2355;
          } else {
            let x_2358 : f32 = u_xlat10.x;
            x_2351 = -(x_2358);
          }
          let x_2360 : f32 = x_2351;
          u_xlat47.y = x_2360;
          let x_2362 : vec4<f32> = u_xlat9;
          let x_2364 : vec4<f32> = u_xlat8;
          let x_2367 : vec2<f32> = u_xlat47;
          let x_2368 : vec2<f32> = ((vec2<f32>(x_2362.x, x_2362.y) * vec2<f32>(x_2364.x, x_2364.x)) + x_2367);
          let x_2369 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2368.x, x_2369.y, x_2368.y, x_2369.w);
          let x_2371 : vec4<f32> = u_xlat8;
          let x_2374 : vec2<f32> = ((vec2<f32>(x_2371.x, x_2371.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2375 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2374.x, x_2375.y, x_2374.y, x_2375.w);
          let x_2377 : vec4<f32> = u_xlat8;
          let x_2381 : vec2<f32> = clamp(vec2<f32>(x_2377.x, x_2377.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2382 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2381.x, x_2382.y, x_2381.y, x_2382.w);
          let x_2384 : u32 = u_xlatu63;
          let x_2387 : vec4<f32> = x_2018.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2384)];
          let x_2389 : vec4<f32> = u_xlat8;
          let x_2392 : u32 = u_xlatu63;
          let x_2395 : vec4<f32> = x_2018.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2392)];
          let x_2397 : vec2<f32> = ((vec2<f32>(x_2387.x, x_2387.y) * vec2<f32>(x_2389.x, x_2389.z)) + vec2<f32>(x_2395.z, x_2395.w));
          let x_2398 : vec3<f32> = u_xlat27;
          u_xlat27 = vec3<f32>(x_2397.x, x_2398.y, x_2397.y);
        }
      }
      let x_2405 : vec3<f32> = u_xlat27;
      let x_2408 : f32 = x_44.x_GlobalMipBias.x;
      let x_2409 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2405.x, x_2405.z), x_2408);
      u_xlat8 = x_2409;
      let x_2412 : bool = u_xlatb24.y;
      if (x_2412) {
        let x_2417 : f32 = u_xlat8.w;
        x_2413 = x_2417;
      } else {
        let x_2420 : f32 = u_xlat8.x;
        x_2413 = x_2420;
      }
      let x_2421 : f32 = x_2413;
      u_xlat65 = x_2421;
      let x_2423 : bool = u_xlatb24.x;
      if (x_2423) {
        let x_2427 : vec4<f32> = u_xlat8;
        x_2424 = vec3<f32>(x_2427.x, x_2427.y, x_2427.z);
      } else {
        let x_2430 : f32 = u_xlat65;
        x_2424 = vec3<f32>(x_2430, x_2430, x_2430);
      }
      let x_2432 : vec3<f32> = x_2424;
      let x_2433 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2432.x, x_2432.y, x_2432.z, x_2433.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2439 : vec4<f32> = u_xlat8;
    let x_2441 : u32 = u_xlatu63;
    let x_2444 : vec4<f32> = x_1897.x_AdditionalLightsColor[bitcast<i32>(x_2441)];
    let x_2446 : vec3<f32> = (vec3<f32>(x_2439.x, x_2439.y, x_2439.z) * vec3<f32>(x_2444.x, x_2444.y, x_2444.z));
    let x_2447 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2446.x, x_2446.y, x_2446.z, x_2447.w);
    let x_2449 : vec3<f32> = u_xlat4;
    let x_2451 : vec4<f32> = u_xlat8;
    let x_2453 : vec3<f32> = (vec3<f32>(x_2449.x, x_2449.x, x_2449.x) * vec3<f32>(x_2451.x, x_2451.y, x_2451.z));
    let x_2454 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2453.x, x_2453.y, x_2453.z, x_2454.w);
    let x_2456 : f32 = u_xlat64;
    let x_2458 : vec4<f32> = u_xlat8;
    let x_2460 : vec3<f32> = (vec3<f32>(x_2456, x_2456, x_2456) * vec3<f32>(x_2458.x, x_2458.y, x_2458.z));
    let x_2461 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2460.x, x_2460.y, x_2460.z, x_2461.w);
    let x_2463 : vec3<f32> = u_xlat2;
    let x_2464 : vec4<f32> = u_xlat7;
    u_xlat63 = dot(x_2463, vec3<f32>(x_2464.x, x_2464.y, x_2464.z));
    let x_2467 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2467, 0.0f, 1.0f);
    let x_2469 : f32 = u_xlat63;
    let x_2471 : vec4<f32> = u_xlat8;
    let x_2473 : vec3<f32> = (vec3<f32>(x_2469, x_2469, x_2469) * vec3<f32>(x_2471.x, x_2471.y, x_2471.z));
    let x_2474 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2473.x, x_2473.y, x_2473.z, x_2474.w);
    let x_2476 : vec3<f32> = u_xlat1;
    let x_2477 : f32 = u_xlat58;
    let x_2480 : vec4<f32> = u_xlat7;
    let x_2482 : vec3<f32> = ((x_2476 * vec3<f32>(x_2477, x_2477, x_2477)) + vec3<f32>(x_2480.x, x_2480.y, x_2480.z));
    let x_2483 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);
    let x_2485 : vec4<f32> = u_xlat7;
    let x_2487 : vec4<f32> = u_xlat7;
    u_xlat63 = dot(vec3<f32>(x_2485.x, x_2485.y, x_2485.z), vec3<f32>(x_2487.x, x_2487.y, x_2487.z));
    let x_2490 : f32 = u_xlat63;
    u_xlat63 = max(x_2490, 1.17549435e-37f);
    let x_2492 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_2492);
    let x_2494 : f32 = u_xlat63;
    let x_2496 : vec4<f32> = u_xlat7;
    let x_2498 : vec3<f32> = (vec3<f32>(x_2494, x_2494, x_2494) * vec3<f32>(x_2496.x, x_2496.y, x_2496.z));
    let x_2499 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2499.w);
    let x_2501 : vec3<f32> = u_xlat2;
    let x_2502 : vec4<f32> = u_xlat7;
    u_xlat63 = dot(x_2501, vec3<f32>(x_2502.x, x_2502.y, x_2502.z));
    let x_2505 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2505, 0.0f, 1.0f);
    let x_2507 : f32 = u_xlat63;
    u_xlat63 = log2(x_2507);
    let x_2509 : f32 = u_xlat60;
    let x_2510 : f32 = u_xlat63;
    u_xlat63 = (x_2509 * x_2510);
    let x_2512 : f32 = u_xlat63;
    u_xlat63 = exp2(x_2512);
    let x_2514 : f32 = u_xlat63;
    let x_2517 : vec4<f32> = x_56.x_SpecColor;
    let x_2519 : vec3<f32> = (vec3<f32>(x_2514, x_2514, x_2514) * vec3<f32>(x_2517.x, x_2517.y, x_2517.z));
    let x_2520 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2519.x, x_2519.y, x_2519.z, x_2520.w);
    let x_2522 : vec4<f32> = u_xlat7;
    let x_2524 : vec4<f32> = u_xlat8;
    let x_2526 : vec3<f32> = (vec3<f32>(x_2522.x, x_2522.y, x_2522.z) * vec3<f32>(x_2524.x, x_2524.y, x_2524.z));
    let x_2527 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2526.x, x_2526.y, x_2526.z, x_2527.w);
    let x_2529 : vec4<f32> = u_xlat9;
    let x_2531 : vec4<f32> = u_xlat0;
    let x_2534 : vec4<f32> = u_xlat7;
    let x_2536 : vec3<f32> = ((vec3<f32>(x_2529.x, x_2529.y, x_2529.z) * vec3<f32>(x_2531.y, x_2531.z, x_2531.w)) + vec3<f32>(x_2534.x, x_2534.y, x_2534.z));
    let x_2537 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2536.x, x_2536.y, x_2536.z, x_2537.w);
    let x_2539 : vec4<f32> = u_xlat6;
    let x_2541 : vec4<f32> = u_xlat7;
    let x_2543 : vec3<f32> = (vec3<f32>(x_2539.x, x_2539.y, x_2539.z) + vec3<f32>(x_2541.x, x_2541.y, x_2541.z));
    let x_2544 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2544.w);

    continuing {
      let x_2546 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2546 + bitcast<u32>(1i));
    }
  }
  let x_2549 : vec3<f32> = u_xlat3;
  let x_2550 : vec4<f32> = u_xlat0;
  let x_2553 : vec3<f32> = u_xlat23;
  u_xlat19 = ((x_2549 * vec3<f32>(x_2550.y, x_2550.z, x_2550.w)) + x_2553);
  let x_2555 : vec4<f32> = u_xlat6;
  let x_2557 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_2555.x, x_2555.y, x_2555.z) + x_2557);
  let x_2559 : f32 = u_xlat59;
  let x_2560 : f32 = u_xlat59;
  u_xlat1.x = (x_2559 * -(x_2560));
  let x_2565 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2565);
  let x_2568 : vec3<f32> = u_xlat19;
  let x_2571 : vec4<f32> = x_44.unity_FogColor;
  u_xlat19 = (x_2568 + -(vec3<f32>(x_2571.x, x_2571.y, x_2571.z)));
  let x_2577 : vec3<f32> = u_xlat1;
  let x_2579 : vec3<f32> = u_xlat19;
  let x_2582 : vec4<f32> = x_44.unity_FogColor;
  let x_2584 : vec3<f32> = ((vec3<f32>(x_2577.x, x_2577.x, x_2577.x) * x_2579) + vec3<f32>(x_2582.x, x_2582.y, x_2582.z));
  let x_2585 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2584.x, x_2584.y, x_2584.z, x_2585.w);
  let x_2589 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2589 == 1.0f);
  let x_2591 : bool = u_xlatb19;
  if (x_2591) {
    let x_2596 : f32 = u_xlat0.x;
    x_2592 = x_2596;
  } else {
    x_2592 = 1.0f;
  }
  let x_2598 : f32 = x_2592;
  SV_Target0.w = x_2598;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

