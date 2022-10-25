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
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_163 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_298 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1642 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_1945 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2055 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat20 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat59 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat58 : f32;
  var u_xlat60 : f32;
  var u_xlatb4 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb23 : vec2<bool>;
  var u_xlat23 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
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
  var u_xlat42 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat61 : f32;
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
  var u_xlatb42 : bool;
  var x_1596 : f32;
  var x_1726 : f32;
  var x_1737 : vec3<f32>;
  var u_xlatu61 : u32;
  var u_xlatb5 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu62 : u32;
  var u_xlati63 : i32;
  var u_xlat62 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat63 : f32;
  var u_xlat64 : f32;
  var u_xlatu64 : u32;
  var u_xlati8 : i32;
  var u_xlati64 : i32;
  var u_xlati27 : i32;
  var u_xlatb64 : bool;
  var u_xlatb27 : vec3<bool>;
  var u_xlat27 : vec3<f32>;
  var x_2370 : f32;
  var x_2383 : f32;
  var x_2445 : f32;
  var x_2456 : vec3<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : bool;
  var x_2603 : f32;
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
  let x_95 : bool = u_xlatb1;
  if (x_95) {
    let x_100 : f32 = u_xlat20.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat2.x = x_107;
  let x_109 : bool = u_xlatb1;
  if (x_109) {
    let x_115 : f32 = u_xlat20.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat2.y = x_119;
  let x_121 : bool = u_xlatb1;
  if (x_121) {
    let x_126 : f32 = u_xlat20.z;
    x_122 = x_126;
  } else {
    let x_130 : f32 = x_44.unity_MatrixV[2i].z;
    x_122 = x_130;
  }
  let x_131 : f32 = x_122;
  u_xlat2.z = x_131;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_140);
  let x_143 : vec4<f32> = u_xlat1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec3<f32> = u_xlat2;
  let x_151 : vec3<f32> = u_xlat2;
  u_xlat59 = dot(x_150, x_151);
  let x_153 : f32 = u_xlat59;
  u_xlat59 = max(x_153, 1.17549435e-37f);
  let x_156 : f32 = u_xlat59;
  u_xlat59 = inverseSqrt(x_156);
  u_xlat1.w = 1.0f;
  let x_166 : vec4<f32> = x_163.unity_SHAr;
  let x_167 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_166, x_167);
  let x_172 : vec4<f32> = x_163.unity_SHAg;
  let x_173 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_172, x_173);
  let x_178 : vec4<f32> = x_163.unity_SHAb;
  let x_179 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_178, x_179);
  let x_183 : vec4<f32> = u_xlat1;
  let x_185 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_183.y, x_183.z, x_183.z, x_183.x) * vec4<f32>(x_185.x, x_185.y, x_185.z, x_185.z));
  let x_191 : vec4<f32> = x_163.unity_SHBr;
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_191, x_192);
  let x_197 : vec4<f32> = x_163.unity_SHBg;
  let x_198 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_197, x_198);
  let x_203 : vec4<f32> = x_163.unity_SHBb;
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_203, x_204);
  let x_209 : f32 = u_xlat1.y;
  let x_211 : f32 = u_xlat1.y;
  u_xlat58 = (x_209 * x_211);
  let x_214 : f32 = u_xlat1.x;
  let x_216 : f32 = u_xlat1.x;
  let x_218 : f32 = u_xlat58;
  u_xlat58 = ((x_214 * x_216) + -(x_218));
  let x_223 : vec4<f32> = x_163.unity_SHC;
  let x_225 : f32 = u_xlat58;
  let x_228 : vec4<f32> = u_xlat5;
  let x_230 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225, x_225, x_225)) + vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec3<f32> = u_xlat3;
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_233 + vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_237, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_242 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_243 : vec2<f32> = vec2<f32>(x_242.x, x_242.y);
  let x_247 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_243.x, x_243.y));
  let x_248 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_247.x, x_247.y, x_248.z, x_248.w);
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec4<f32> = hlslcc_FragCoord;
  let x_254 : vec2<f32> = (vec2<f32>(x_250.x, x_250.y) * vec2<f32>(x_252.x, x_252.y));
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_254.x, x_254.y, x_255.z, x_255.w);
  let x_258 : f32 = u_xlat4.y;
  let x_261 : f32 = x_44.x_ScaleBiasRt.x;
  let x_264 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat58 = ((x_258 * x_261) + x_264);
  let x_266 : f32 = u_xlat58;
  u_xlat4.z = (-(x_266) + 1.0f);
  let x_275 : vec4<f32> = u_xlat4;
  let x_278 : f32 = x_44.x_GlobalMipBias.x;
  let x_279 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_275.x, x_275.z), x_278);
  u_xlat58 = x_279.x;
  let x_282 : f32 = u_xlat58;
  u_xlat60 = (x_282 + -1.0f);
  let x_287 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_288 : f32 = u_xlat60;
  u_xlat60 = ((x_287 * x_288) + 1.0f);
  let x_291 : f32 = u_xlat58;
  u_xlat58 = min(x_291, 1.0f);
  let x_300 : f32 = x_298.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_300);
  let x_302 : bool = u_xlatb4;
  if (x_302) {
    let x_306 : f32 = x_298.x_MainLightShadowParams.y;
    u_xlatb4 = (x_306 == 1.0f);
    let x_308 : bool = u_xlatb4;
    if (x_308) {
      let x_312 : vec4<f32> = vs_TEXCOORD6;
      let x_315 : vec4<f32> = x_298.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_312.x, x_312.y, x_312.x, x_312.y) + x_315);
      let x_318 : vec4<f32> = u_xlat4;
      let x_319 : vec2<f32> = vec2<f32>(x_318.x, x_318.y);
      let x_321 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_319.x, x_319.y, x_321);
      let x_333 : vec3<f32> = txVec0;
      let x_335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_333.xy, x_333.z);
      u_xlat5.x = x_335;
      let x_338 : vec4<f32> = u_xlat4;
      let x_339 : vec2<f32> = vec2<f32>(x_338.z, x_338.w);
      let x_341 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_339.x, x_339.y, x_341);
      let x_348 : vec3<f32> = txVec1;
      let x_350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_348.xy, x_348.z);
      u_xlat5.y = x_350;
      let x_352 : vec4<f32> = vs_TEXCOORD6;
      let x_355 : vec4<f32> = x_298.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_352.x, x_352.y, x_352.x, x_352.y) + x_355);
      let x_358 : vec4<f32> = u_xlat4;
      let x_359 : vec2<f32> = vec2<f32>(x_358.x, x_358.y);
      let x_361 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_359.x, x_359.y, x_361);
      let x_368 : vec3<f32> = txVec2;
      let x_370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_368.xy, x_368.z);
      u_xlat5.z = x_370;
      let x_373 : vec4<f32> = u_xlat4;
      let x_374 : vec2<f32> = vec2<f32>(x_373.z, x_373.w);
      let x_376 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_374.x, x_374.y, x_376);
      let x_383 : vec3<f32> = txVec3;
      let x_385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_383.xy, x_383.z);
      u_xlat5.w = x_385;
      let x_387 : vec4<f32> = u_xlat5;
      u_xlat4.x = dot(x_387, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_397 : f32 = x_298.x_MainLightShadowParams.y;
      u_xlatb23.x = (x_397 == 2.0f);
      let x_402 : bool = u_xlatb23.x;
      if (x_402) {
        let x_406 : vec4<f32> = vs_TEXCOORD6;
        let x_409 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_414 : vec2<f32> = ((vec2<f32>(x_406.x, x_406.y) * vec2<f32>(x_409.z, x_409.w)) + vec2<f32>(0.5f, 0.5f));
        let x_415 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_414.x, x_414.y, x_415.z);
        let x_417 : vec3<f32> = u_xlat23;
        let x_419 : vec2<f32> = floor(vec2<f32>(x_417.x, x_417.y));
        let x_420 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_419.x, x_419.y, x_420.z);
        let x_422 : vec4<f32> = vs_TEXCOORD6;
        let x_425 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_428 : vec3<f32> = u_xlat23;
        let x_431 : vec2<f32> = ((vec2<f32>(x_422.x, x_422.y) * vec2<f32>(x_425.z, x_425.w)) + -(vec2<f32>(x_428.x, x_428.y)));
        let x_432 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
        let x_435 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_435.x, x_435.x, x_435.y, x_435.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_440 : vec4<f32> = u_xlat6;
        let x_442 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_440.x, x_440.x, x_440.z, x_440.z) * vec4<f32>(x_442.x, x_442.x, x_442.z, x_442.z));
        let x_447 : vec4<f32> = u_xlat7;
        u_xlat43 = (vec2<f32>(x_447.y, x_447.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_452 : vec4<f32> = u_xlat7;
        let x_455 : vec4<f32> = u_xlat5;
        let x_458 : vec2<f32> = ((vec2<f32>(x_452.x, x_452.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_455.x, x_455.y)));
        let x_459 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_458.x, x_459.y, x_458.y, x_459.w);
        let x_461 : vec4<f32> = u_xlat5;
        let x_464 : vec2<f32> = (-(vec2<f32>(x_461.x, x_461.y)) + vec2<f32>(1.0f, 1.0f));
        let x_465 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
        let x_468 : vec4<f32> = u_xlat5;
        u_xlat45 = min(vec2<f32>(x_468.x, x_468.y), vec2<f32>(0.0f, 0.0f));
        let x_472 : vec2<f32> = u_xlat45;
        let x_474 : vec2<f32> = u_xlat45;
        let x_476 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_472) * x_474) + vec2<f32>(x_476.x, x_476.y));
        let x_479 : vec4<f32> = u_xlat5;
        let x_481 : vec2<f32> = max(vec2<f32>(x_479.x, x_479.y), vec2<f32>(0.0f, 0.0f));
        let x_482 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
        let x_484 : vec4<f32> = u_xlat5;
        let x_487 : vec4<f32> = u_xlat5;
        let x_490 : vec4<f32> = u_xlat6;
        let x_492 : vec2<f32> = ((-(vec2<f32>(x_484.x, x_484.y)) * vec2<f32>(x_487.x, x_487.y)) + vec2<f32>(x_490.y, x_490.w));
        let x_493 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
        let x_495 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_495 + vec2<f32>(1.0f, 1.0f));
        let x_497 : vec4<f32> = u_xlat5;
        let x_499 : vec2<f32> = (vec2<f32>(x_497.x, x_497.y) + vec2<f32>(1.0f, 1.0f));
        let x_500 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_499.x, x_499.y, x_500.z, x_500.w);
        let x_503 : vec4<f32> = u_xlat6;
        let x_507 : vec2<f32> = (vec2<f32>(x_503.x, x_503.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_508 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
        let x_511 : vec4<f32> = u_xlat7;
        let x_513 : vec2<f32> = (vec2<f32>(x_511.x, x_511.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_514 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
        let x_516 : vec2<f32> = u_xlat45;
        let x_517 : vec2<f32> = (x_516 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_518 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
        let x_521 : vec4<f32> = u_xlat5;
        let x_523 : vec2<f32> = (vec2<f32>(x_521.x, x_521.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_524 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
        let x_526 : vec4<f32> = u_xlat6;
        let x_528 : vec2<f32> = (vec2<f32>(x_526.y, x_526.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_529 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
        let x_532 : f32 = u_xlat7.x;
        u_xlat8.z = x_532;
        let x_535 : f32 = u_xlat5.x;
        u_xlat8.w = x_535;
        let x_538 : f32 = u_xlat10.x;
        u_xlat9.z = x_538;
        let x_541 : f32 = u_xlat43.x;
        u_xlat9.w = x_541;
        let x_543 : vec4<f32> = u_xlat8;
        let x_545 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_543.z, x_543.w, x_543.x, x_543.z) + vec4<f32>(x_545.z, x_545.w, x_545.x, x_545.z));
        let x_549 : f32 = u_xlat8.y;
        u_xlat7.z = x_549;
        let x_552 : f32 = u_xlat5.y;
        u_xlat7.w = x_552;
        let x_555 : f32 = u_xlat9.y;
        u_xlat10.z = x_555;
        let x_558 : f32 = u_xlat43.y;
        u_xlat10.w = x_558;
        let x_560 : vec4<f32> = u_xlat7;
        let x_562 : vec4<f32> = u_xlat10;
        let x_564 : vec3<f32> = (vec3<f32>(x_560.z, x_560.y, x_560.w) + vec3<f32>(x_562.z, x_562.y, x_562.w));
        let x_565 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat9;
        let x_569 : vec4<f32> = u_xlat6;
        let x_571 : vec3<f32> = (vec3<f32>(x_567.x, x_567.z, x_567.w) / vec3<f32>(x_569.z, x_569.w, x_569.y));
        let x_572 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
        let x_574 : vec4<f32> = u_xlat7;
        let x_580 : vec3<f32> = (vec3<f32>(x_574.x, x_574.y, x_574.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_581 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
        let x_583 : vec4<f32> = u_xlat10;
        let x_585 : vec4<f32> = u_xlat5;
        let x_587 : vec3<f32> = (vec3<f32>(x_583.z, x_583.y, x_583.w) / vec3<f32>(x_585.x, x_585.y, x_585.z));
        let x_588 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
        let x_590 : vec4<f32> = u_xlat8;
        let x_592 : vec3<f32> = (vec3<f32>(x_590.x, x_590.y, x_590.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
        let x_595 : vec4<f32> = u_xlat7;
        let x_598 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_600 : vec3<f32> = (vec3<f32>(x_595.y, x_595.x, x_595.z) * vec3<f32>(x_598.x, x_598.x, x_598.x));
        let x_601 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
        let x_603 : vec4<f32> = u_xlat8;
        let x_606 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_608 : vec3<f32> = (vec3<f32>(x_603.x, x_603.y, x_603.z) * vec3<f32>(x_606.y, x_606.y, x_606.y));
        let x_609 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
        let x_612 : f32 = u_xlat8.x;
        u_xlat7.w = x_612;
        let x_614 : vec3<f32> = u_xlat23;
        let x_617 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_620 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y) * vec4<f32>(x_617.x, x_617.y, x_617.x, x_617.y)) + vec4<f32>(x_620.y, x_620.w, x_620.x, x_620.w));
        let x_623 : vec3<f32> = u_xlat23;
        let x_626 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_629 : vec4<f32> = u_xlat7;
        let x_631 : vec2<f32> = ((vec2<f32>(x_623.x, x_623.y) * vec2<f32>(x_626.x, x_626.y)) + vec2<f32>(x_629.z, x_629.w));
        let x_632 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_631.x, x_631.y, x_632.z, x_632.w);
        let x_635 : f32 = u_xlat7.y;
        u_xlat8.w = x_635;
        let x_637 : vec4<f32> = u_xlat8;
        let x_638 : vec2<f32> = vec2<f32>(x_637.y, x_637.z);
        let x_639 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_639.x, x_638.x, x_639.z, x_638.y);
        let x_642 : vec3<f32> = u_xlat23;
        let x_645 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_648 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_642.x, x_642.y, x_642.x, x_642.y) * vec4<f32>(x_645.x, x_645.y, x_645.x, x_645.y)) + vec4<f32>(x_648.x, x_648.y, x_648.z, x_648.y));
        let x_651 : vec3<f32> = u_xlat23;
        let x_654 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_657 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_651.x, x_651.y, x_651.x, x_651.y) * vec4<f32>(x_654.x, x_654.y, x_654.x, x_654.y)) + vec4<f32>(x_657.w, x_657.y, x_657.w, x_657.z));
        let x_660 : vec3<f32> = u_xlat23;
        let x_663 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_666 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_660.x, x_660.y, x_660.x, x_660.y) * vec4<f32>(x_663.x, x_663.y, x_663.x, x_663.y)) + vec4<f32>(x_666.x, x_666.w, x_666.z, x_666.w));
        let x_670 : vec4<f32> = u_xlat5;
        let x_672 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_670.x, x_670.x, x_670.x, x_670.y) * vec4<f32>(x_672.z, x_672.w, x_672.y, x_672.z));
        let x_676 : vec4<f32> = u_xlat5;
        let x_678 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_676.y, x_676.y, x_676.z, x_676.z) * x_678);
        let x_681 : f32 = u_xlat5.z;
        let x_683 : f32 = u_xlat6.y;
        u_xlat23.x = (x_681 * x_683);
        let x_687 : vec4<f32> = u_xlat9;
        let x_688 : vec2<f32> = vec2<f32>(x_687.x, x_687.y);
        let x_690 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_688.x, x_688.y, x_690);
        let x_698 : vec3<f32> = txVec4;
        let x_700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_698.xy, x_698.z);
        u_xlat42 = x_700;
        let x_702 : vec4<f32> = u_xlat9;
        let x_703 : vec2<f32> = vec2<f32>(x_702.z, x_702.w);
        let x_705 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_703.x, x_703.y, x_705);
        let x_713 : vec3<f32> = txVec5;
        let x_715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_713.xy, x_713.z);
        u_xlat61 = x_715;
        let x_716 : f32 = u_xlat61;
        let x_718 : f32 = u_xlat12.y;
        u_xlat61 = (x_716 * x_718);
        let x_721 : f32 = u_xlat12.x;
        let x_722 : f32 = u_xlat42;
        let x_724 : f32 = u_xlat61;
        u_xlat42 = ((x_721 * x_722) + x_724);
        let x_727 : vec4<f32> = u_xlat10;
        let x_728 : vec2<f32> = vec2<f32>(x_727.x, x_727.y);
        let x_730 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_728.x, x_728.y, x_730);
        let x_737 : vec3<f32> = txVec6;
        let x_739 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_737.xy, x_737.z);
        u_xlat61 = x_739;
        let x_741 : f32 = u_xlat12.z;
        let x_742 : f32 = u_xlat61;
        let x_744 : f32 = u_xlat42;
        u_xlat42 = ((x_741 * x_742) + x_744);
        let x_747 : vec4<f32> = u_xlat8;
        let x_748 : vec2<f32> = vec2<f32>(x_747.x, x_747.y);
        let x_750 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_748.x, x_748.y, x_750);
        let x_757 : vec3<f32> = txVec7;
        let x_759 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_757.xy, x_757.z);
        u_xlat61 = x_759;
        let x_761 : f32 = u_xlat12.w;
        let x_762 : f32 = u_xlat61;
        let x_764 : f32 = u_xlat42;
        u_xlat42 = ((x_761 * x_762) + x_764);
        let x_767 : vec4<f32> = u_xlat11;
        let x_768 : vec2<f32> = vec2<f32>(x_767.x, x_767.y);
        let x_770 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_768.x, x_768.y, x_770);
        let x_777 : vec3<f32> = txVec8;
        let x_779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_777.xy, x_777.z);
        u_xlat61 = x_779;
        let x_781 : f32 = u_xlat13.x;
        let x_782 : f32 = u_xlat61;
        let x_784 : f32 = u_xlat42;
        u_xlat42 = ((x_781 * x_782) + x_784);
        let x_787 : vec4<f32> = u_xlat11;
        let x_788 : vec2<f32> = vec2<f32>(x_787.z, x_787.w);
        let x_790 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_788.x, x_788.y, x_790);
        let x_797 : vec3<f32> = txVec9;
        let x_799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_797.xy, x_797.z);
        u_xlat61 = x_799;
        let x_801 : f32 = u_xlat13.y;
        let x_802 : f32 = u_xlat61;
        let x_804 : f32 = u_xlat42;
        u_xlat42 = ((x_801 * x_802) + x_804);
        let x_807 : vec4<f32> = u_xlat8;
        let x_808 : vec2<f32> = vec2<f32>(x_807.z, x_807.w);
        let x_810 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_808.x, x_808.y, x_810);
        let x_817 : vec3<f32> = txVec10;
        let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_817.xy, x_817.z);
        u_xlat61 = x_819;
        let x_821 : f32 = u_xlat13.z;
        let x_822 : f32 = u_xlat61;
        let x_824 : f32 = u_xlat42;
        u_xlat42 = ((x_821 * x_822) + x_824);
        let x_827 : vec4<f32> = u_xlat7;
        let x_828 : vec2<f32> = vec2<f32>(x_827.x, x_827.y);
        let x_830 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_828.x, x_828.y, x_830);
        let x_837 : vec3<f32> = txVec11;
        let x_839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_837.xy, x_837.z);
        u_xlat61 = x_839;
        let x_841 : f32 = u_xlat13.w;
        let x_842 : f32 = u_xlat61;
        let x_844 : f32 = u_xlat42;
        u_xlat42 = ((x_841 * x_842) + x_844);
        let x_847 : vec4<f32> = u_xlat7;
        let x_848 : vec2<f32> = vec2<f32>(x_847.z, x_847.w);
        let x_850 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_848.x, x_848.y, x_850);
        let x_857 : vec3<f32> = txVec12;
        let x_859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_857.xy, x_857.z);
        u_xlat61 = x_859;
        let x_861 : f32 = u_xlat23.x;
        let x_862 : f32 = u_xlat61;
        let x_864 : f32 = u_xlat42;
        u_xlat4.x = ((x_861 * x_862) + x_864);
      } else {
        let x_868 : vec4<f32> = vs_TEXCOORD6;
        let x_871 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_874 : vec2<f32> = ((vec2<f32>(x_868.x, x_868.y) * vec2<f32>(x_871.z, x_871.w)) + vec2<f32>(0.5f, 0.5f));
        let x_875 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_874.x, x_874.y, x_875.z);
        let x_877 : vec3<f32> = u_xlat23;
        let x_879 : vec2<f32> = floor(vec2<f32>(x_877.x, x_877.y));
        let x_880 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_879.x, x_879.y, x_880.z);
        let x_882 : vec4<f32> = vs_TEXCOORD6;
        let x_885 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_888 : vec3<f32> = u_xlat23;
        let x_891 : vec2<f32> = ((vec2<f32>(x_882.x, x_882.y) * vec2<f32>(x_885.z, x_885.w)) + -(vec2<f32>(x_888.x, x_888.y)));
        let x_892 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_891.x, x_891.y, x_892.z, x_892.w);
        let x_894 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_894.x, x_894.x, x_894.y, x_894.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_897 : vec4<f32> = u_xlat6;
        let x_899 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_897.x, x_897.x, x_897.z, x_897.z) * vec4<f32>(x_899.x, x_899.x, x_899.z, x_899.z));
        let x_902 : vec4<f32> = u_xlat7;
        let x_906 : vec2<f32> = (vec2<f32>(x_902.y, x_902.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_907 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_907.x, x_906.x, x_907.z, x_906.y);
        let x_909 : vec4<f32> = u_xlat7;
        let x_912 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_909.x, x_909.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_912.x, x_912.y)));
        let x_916 : vec4<f32> = u_xlat5;
        let x_919 : vec2<f32> = (-(vec2<f32>(x_916.x, x_916.y)) + vec2<f32>(1.0f, 1.0f));
        let x_920 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_919.x, x_920.y, x_919.y, x_920.w);
        let x_922 : vec4<f32> = u_xlat5;
        let x_924 : vec2<f32> = min(vec2<f32>(x_922.x, x_922.y), vec2<f32>(0.0f, 0.0f));
        let x_925 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_924.x, x_924.y, x_925.z, x_925.w);
        let x_927 : vec4<f32> = u_xlat7;
        let x_930 : vec4<f32> = u_xlat7;
        let x_933 : vec4<f32> = u_xlat6;
        let x_935 : vec2<f32> = ((-(vec2<f32>(x_927.x, x_927.y)) * vec2<f32>(x_930.x, x_930.y)) + vec2<f32>(x_933.x, x_933.z));
        let x_936 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_935.x, x_936.y, x_935.y, x_936.w);
        let x_938 : vec4<f32> = u_xlat5;
        let x_940 : vec2<f32> = max(vec2<f32>(x_938.x, x_938.y), vec2<f32>(0.0f, 0.0f));
        let x_941 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_943 : vec4<f32> = u_xlat7;
        let x_946 : vec4<f32> = u_xlat7;
        let x_949 : vec4<f32> = u_xlat6;
        let x_951 : vec2<f32> = ((-(vec2<f32>(x_943.x, x_943.y)) * vec2<f32>(x_946.x, x_946.y)) + vec2<f32>(x_949.y, x_949.w));
        let x_952 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_952.x, x_951.x, x_952.z, x_951.y);
        let x_954 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_954 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_958 : f32 = u_xlat6.y;
        u_xlat7.z = (x_958 * 0.081632003f);
        let x_962 : vec2<f32> = u_xlat43;
        let x_965 : vec2<f32> = (vec2<f32>(x_962.y, x_962.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_966 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_965.x, x_965.y, x_966.z, x_966.w);
        let x_968 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_968.x, x_968.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_972 : f32 = u_xlat6.w;
        u_xlat9.z = (x_972 * 0.081632003f);
        let x_976 : f32 = u_xlat9.y;
        u_xlat7.x = x_976;
        let x_978 : vec4<f32> = u_xlat5;
        let x_985 : vec2<f32> = ((vec2<f32>(x_978.x, x_978.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_986 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_986.x, x_985.x, x_986.z, x_985.y);
        let x_988 : vec4<f32> = u_xlat5;
        let x_992 : vec2<f32> = ((vec2<f32>(x_988.x, x_988.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_993 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_992.x, x_993.y, x_992.y, x_993.w);
        let x_996 : f32 = u_xlat43.x;
        u_xlat6.y = x_996;
        let x_999 : f32 = u_xlat8.y;
        u_xlat6.w = x_999;
        let x_1001 : vec4<f32> = u_xlat6;
        let x_1002 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1001 + x_1002);
        let x_1004 : vec4<f32> = u_xlat5;
        let x_1007 : vec2<f32> = ((vec2<f32>(x_1004.y, x_1004.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1008 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1008.x, x_1007.x, x_1008.z, x_1007.y);
        let x_1010 : vec4<f32> = u_xlat5;
        let x_1013 : vec2<f32> = ((vec2<f32>(x_1010.y, x_1010.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1014 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1013.x, x_1014.y, x_1013.y, x_1014.w);
        let x_1017 : f32 = u_xlat43.y;
        u_xlat8.y = x_1017;
        let x_1019 : vec4<f32> = u_xlat8;
        let x_1020 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1019 + x_1020);
        let x_1022 : vec4<f32> = u_xlat6;
        let x_1023 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1022 / x_1023);
        let x_1025 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1025 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1031 : vec4<f32> = u_xlat8;
        let x_1032 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1031 / x_1032);
        let x_1034 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1034 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1036 : vec4<f32> = u_xlat6;
        let x_1039 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1036.w, x_1036.x, x_1036.y, x_1036.z) * vec4<f32>(x_1039.x, x_1039.x, x_1039.x, x_1039.x));
        let x_1042 : vec4<f32> = u_xlat8;
        let x_1045 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1042.x, x_1042.w, x_1042.y, x_1042.z) * vec4<f32>(x_1045.y, x_1045.y, x_1045.y, x_1045.y));
        let x_1048 : vec4<f32> = u_xlat6;
        let x_1049 : vec3<f32> = vec3<f32>(x_1048.y, x_1048.z, x_1048.w);
        let x_1050 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1049.x, x_1050.y, x_1049.y, x_1049.z);
        let x_1053 : f32 = u_xlat8.x;
        u_xlat9.y = x_1053;
        let x_1055 : vec3<f32> = u_xlat23;
        let x_1058 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1061 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1055.x, x_1055.y, x_1055.x, x_1055.y) * vec4<f32>(x_1058.x, x_1058.y, x_1058.x, x_1058.y)) + vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1061.y));
        let x_1064 : vec3<f32> = u_xlat23;
        let x_1067 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat9;
        let x_1072 : vec2<f32> = ((vec2<f32>(x_1064.x, x_1064.y) * vec2<f32>(x_1067.x, x_1067.y)) + vec2<f32>(x_1070.w, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
        let x_1076 : f32 = u_xlat9.y;
        u_xlat6.y = x_1076;
        let x_1079 : f32 = u_xlat8.z;
        u_xlat9.y = x_1079;
        let x_1081 : vec3<f32> = u_xlat23;
        let x_1084 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1081.x, x_1081.y, x_1081.x, x_1081.y) * vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y)) + vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1087.y));
        let x_1091 : vec3<f32> = u_xlat23;
        let x_1094 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1097 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1091.x, x_1091.y) * vec2<f32>(x_1094.x, x_1094.y)) + vec2<f32>(x_1097.w, x_1097.y));
        let x_1101 : f32 = u_xlat9.y;
        u_xlat6.z = x_1101;
        let x_1103 : vec3<f32> = u_xlat23;
        let x_1106 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1109 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1103.x, x_1103.y, x_1103.x, x_1103.y) * vec4<f32>(x_1106.x, x_1106.y, x_1106.x, x_1106.y)) + vec4<f32>(x_1109.x, x_1109.y, x_1109.x, x_1109.z));
        let x_1113 : f32 = u_xlat8.w;
        u_xlat9.y = x_1113;
        let x_1116 : vec3<f32> = u_xlat23;
        let x_1119 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1116.x, x_1116.y, x_1116.x, x_1116.y) * vec4<f32>(x_1119.x, x_1119.y, x_1119.x, x_1119.y)) + vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1122.y));
        let x_1126 : vec3<f32> = u_xlat23;
        let x_1129 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1132 : vec4<f32> = u_xlat9;
        u_xlat25 = ((vec2<f32>(x_1126.x, x_1126.y) * vec2<f32>(x_1129.x, x_1129.y)) + vec2<f32>(x_1132.w, x_1132.y));
        let x_1136 : f32 = u_xlat9.y;
        u_xlat6.w = x_1136;
        let x_1139 : vec3<f32> = u_xlat23;
        let x_1142 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1145 : vec4<f32> = u_xlat6;
        u_xlat15 = ((vec2<f32>(x_1139.x, x_1139.y) * vec2<f32>(x_1142.x, x_1142.y)) + vec2<f32>(x_1145.x, x_1145.w));
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1149 : vec3<f32> = vec3<f32>(x_1148.x, x_1148.z, x_1148.w);
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1149.x, x_1150.y, x_1149.y, x_1149.z);
        let x_1152 : vec3<f32> = u_xlat23;
        let x_1155 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1158 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1152.x, x_1152.y, x_1152.x, x_1152.y) * vec4<f32>(x_1155.x, x_1155.y, x_1155.x, x_1155.y)) + vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1158.y));
        let x_1162 : vec3<f32> = u_xlat23;
        let x_1165 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1168 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1162.x, x_1162.y) * vec2<f32>(x_1165.x, x_1165.y)) + vec2<f32>(x_1168.w, x_1168.y));
        let x_1172 : f32 = u_xlat6.x;
        u_xlat8.x = x_1172;
        let x_1174 : vec3<f32> = u_xlat23;
        let x_1177 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1180 : vec4<f32> = u_xlat8;
        let x_1182 : vec2<f32> = ((vec2<f32>(x_1174.x, x_1174.y) * vec2<f32>(x_1177.x, x_1177.y)) + vec2<f32>(x_1180.x, x_1180.y));
        let x_1183 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1182.x, x_1182.y, x_1183.z);
        let x_1186 : vec4<f32> = u_xlat5;
        let x_1188 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1186.x, x_1186.x, x_1186.x, x_1186.x) * x_1188);
        let x_1191 : vec4<f32> = u_xlat5;
        let x_1193 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1191.y, x_1191.y, x_1191.y, x_1191.y) * x_1193);
        let x_1196 : vec4<f32> = u_xlat5;
        let x_1198 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1196.z, x_1196.z, x_1196.z, x_1196.z) * x_1198);
        let x_1200 : vec4<f32> = u_xlat5;
        let x_1202 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1200.w, x_1200.w, x_1200.w, x_1200.w) * x_1202);
        let x_1205 : vec4<f32> = u_xlat10;
        let x_1206 : vec2<f32> = vec2<f32>(x_1205.x, x_1205.y);
        let x_1208 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1206.x, x_1206.y, x_1208);
        let x_1215 : vec3<f32> = txVec13;
        let x_1217 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1215.xy, x_1215.z);
        u_xlat61 = x_1217;
        let x_1219 : vec4<f32> = u_xlat10;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.z, x_1219.w);
        let x_1222 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec14;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1229.xy, x_1229.z);
        u_xlat6.x = x_1231;
        let x_1234 : f32 = u_xlat6.x;
        let x_1236 : f32 = u_xlat16.y;
        u_xlat6.x = (x_1234 * x_1236);
        let x_1240 : f32 = u_xlat16.x;
        let x_1241 : f32 = u_xlat61;
        let x_1244 : f32 = u_xlat6.x;
        u_xlat61 = ((x_1240 * x_1241) + x_1244);
        let x_1247 : vec4<f32> = u_xlat11;
        let x_1248 : vec2<f32> = vec2<f32>(x_1247.x, x_1247.y);
        let x_1250 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1248.x, x_1248.y, x_1250);
        let x_1257 : vec3<f32> = txVec15;
        let x_1259 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1257.xy, x_1257.z);
        u_xlat6.x = x_1259;
        let x_1262 : f32 = u_xlat16.z;
        let x_1264 : f32 = u_xlat6.x;
        let x_1266 : f32 = u_xlat61;
        u_xlat61 = ((x_1262 * x_1264) + x_1266);
        let x_1269 : vec4<f32> = u_xlat13;
        let x_1270 : vec2<f32> = vec2<f32>(x_1269.x, x_1269.y);
        let x_1272 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1270.x, x_1270.y, x_1272);
        let x_1279 : vec3<f32> = txVec16;
        let x_1281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1279.xy, x_1279.z);
        u_xlat6.x = x_1281;
        let x_1284 : f32 = u_xlat16.w;
        let x_1286 : f32 = u_xlat6.x;
        let x_1288 : f32 = u_xlat61;
        u_xlat61 = ((x_1284 * x_1286) + x_1288);
        let x_1291 : vec4<f32> = u_xlat12;
        let x_1292 : vec2<f32> = vec2<f32>(x_1291.x, x_1291.y);
        let x_1294 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1292.x, x_1292.y, x_1294);
        let x_1301 : vec3<f32> = txVec17;
        let x_1303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1301.xy, x_1301.z);
        u_xlat6.x = x_1303;
        let x_1306 : f32 = u_xlat17.x;
        let x_1308 : f32 = u_xlat6.x;
        let x_1310 : f32 = u_xlat61;
        u_xlat61 = ((x_1306 * x_1308) + x_1310);
        let x_1313 : vec4<f32> = u_xlat12;
        let x_1314 : vec2<f32> = vec2<f32>(x_1313.z, x_1313.w);
        let x_1316 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1314.x, x_1314.y, x_1316);
        let x_1323 : vec3<f32> = txVec18;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1323.xy, x_1323.z);
        u_xlat6.x = x_1325;
        let x_1328 : f32 = u_xlat17.y;
        let x_1330 : f32 = u_xlat6.x;
        let x_1332 : f32 = u_xlat61;
        u_xlat61 = ((x_1328 * x_1330) + x_1332);
        let x_1335 : vec2<f32> = u_xlat49;
        let x_1337 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec19;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1344.xy, x_1344.z);
        u_xlat6.x = x_1346;
        let x_1349 : f32 = u_xlat17.z;
        let x_1351 : f32 = u_xlat6.x;
        let x_1353 : f32 = u_xlat61;
        u_xlat61 = ((x_1349 * x_1351) + x_1353);
        let x_1356 : vec4<f32> = u_xlat13;
        let x_1357 : vec2<f32> = vec2<f32>(x_1356.z, x_1356.w);
        let x_1359 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1366 : vec3<f32> = txVec20;
        let x_1368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1366.xy, x_1366.z);
        u_xlat6.x = x_1368;
        let x_1371 : f32 = u_xlat17.w;
        let x_1373 : f32 = u_xlat6.x;
        let x_1375 : f32 = u_xlat61;
        u_xlat61 = ((x_1371 * x_1373) + x_1375);
        let x_1378 : vec4<f32> = u_xlat14;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.x, x_1378.y);
        let x_1381 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec21;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1388.xy, x_1388.z);
        u_xlat6.x = x_1390;
        let x_1393 : f32 = u_xlat18.x;
        let x_1395 : f32 = u_xlat6.x;
        let x_1397 : f32 = u_xlat61;
        u_xlat61 = ((x_1393 * x_1395) + x_1397);
        let x_1400 : vec4<f32> = u_xlat14;
        let x_1401 : vec2<f32> = vec2<f32>(x_1400.z, x_1400.w);
        let x_1403 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1401.x, x_1401.y, x_1403);
        let x_1410 : vec3<f32> = txVec22;
        let x_1412 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1410.xy, x_1410.z);
        u_xlat6.x = x_1412;
        let x_1415 : f32 = u_xlat18.y;
        let x_1417 : f32 = u_xlat6.x;
        let x_1419 : f32 = u_xlat61;
        u_xlat61 = ((x_1415 * x_1417) + x_1419);
        let x_1422 : vec2<f32> = u_xlat25;
        let x_1424 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1422.x, x_1422.y, x_1424);
        let x_1431 : vec3<f32> = txVec23;
        let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1431.xy, x_1431.z);
        u_xlat6.x = x_1433;
        let x_1436 : f32 = u_xlat18.z;
        let x_1438 : f32 = u_xlat6.x;
        let x_1440 : f32 = u_xlat61;
        u_xlat61 = ((x_1436 * x_1438) + x_1440);
        let x_1443 : vec2<f32> = u_xlat15;
        let x_1445 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec24;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1452.xy, x_1452.z);
        u_xlat6.x = x_1454;
        let x_1457 : f32 = u_xlat18.w;
        let x_1459 : f32 = u_xlat6.x;
        let x_1461 : f32 = u_xlat61;
        u_xlat61 = ((x_1457 * x_1459) + x_1461);
        let x_1464 : vec4<f32> = u_xlat9;
        let x_1465 : vec2<f32> = vec2<f32>(x_1464.x, x_1464.y);
        let x_1467 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1465.x, x_1465.y, x_1467);
        let x_1474 : vec3<f32> = txVec25;
        let x_1476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1474.xy, x_1474.z);
        u_xlat6.x = x_1476;
        let x_1479 : f32 = u_xlat5.x;
        let x_1481 : f32 = u_xlat6.x;
        let x_1483 : f32 = u_xlat61;
        u_xlat61 = ((x_1479 * x_1481) + x_1483);
        let x_1486 : vec4<f32> = u_xlat9;
        let x_1487 : vec2<f32> = vec2<f32>(x_1486.z, x_1486.w);
        let x_1489 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1496 : vec3<f32> = txVec26;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1496.xy, x_1496.z);
        u_xlat5.x = x_1498;
        let x_1501 : f32 = u_xlat5.y;
        let x_1503 : f32 = u_xlat5.x;
        let x_1505 : f32 = u_xlat61;
        u_xlat61 = ((x_1501 * x_1503) + x_1505);
        let x_1508 : vec2<f32> = u_xlat46;
        let x_1510 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1508.x, x_1508.y, x_1510);
        let x_1517 : vec3<f32> = txVec27;
        let x_1519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1517.xy, x_1517.z);
        u_xlat5.x = x_1519;
        let x_1522 : f32 = u_xlat5.z;
        let x_1524 : f32 = u_xlat5.x;
        let x_1526 : f32 = u_xlat61;
        u_xlat61 = ((x_1522 * x_1524) + x_1526);
        let x_1529 : vec3<f32> = u_xlat23;
        let x_1530 : vec2<f32> = vec2<f32>(x_1529.x, x_1529.y);
        let x_1532 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
        let x_1539 : vec3<f32> = txVec28;
        let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1539.xy, x_1539.z);
        u_xlat23.x = x_1541;
        let x_1544 : f32 = u_xlat5.w;
        let x_1546 : f32 = u_xlat23.x;
        let x_1548 : f32 = u_xlat61;
        u_xlat4.x = ((x_1544 * x_1546) + x_1548);
      }
    }
  } else {
    let x_1553 : vec4<f32> = vs_TEXCOORD6;
    let x_1554 : vec2<f32> = vec2<f32>(x_1553.x, x_1553.y);
    let x_1556 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
    let x_1563 : vec3<f32> = txVec29;
    let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1563.xy, x_1563.z);
    u_xlat4.x = x_1565;
  }
  let x_1568 : f32 = x_298.x_MainLightShadowParams.x;
  u_xlat23.x = (-(x_1568) + 1.0f);
  let x_1573 : f32 = u_xlat4.x;
  let x_1575 : f32 = x_298.x_MainLightShadowParams.x;
  let x_1578 : f32 = u_xlat23.x;
  u_xlat4.x = ((x_1573 * x_1575) + x_1578);
  let x_1582 : f32 = vs_TEXCOORD6.z;
  u_xlatb23.x = (0.0f >= x_1582);
  let x_1587 : f32 = vs_TEXCOORD6.z;
  u_xlatb42 = (x_1587 >= 1.0f);
  let x_1589 : bool = u_xlatb42;
  let x_1591 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_1589 | x_1591);
  let x_1595 : bool = u_xlatb23.x;
  if (x_1595) {
    x_1596 = 1.0f;
  } else {
    let x_1601 : f32 = u_xlat4.x;
    x_1596 = x_1601;
  }
  let x_1602 : f32 = x_1596;
  u_xlat4.x = x_1602;
  let x_1604 : vec3<f32> = vs_TEXCOORD1;
  let x_1606 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat23 = (x_1604 + -(x_1606));
  let x_1609 : vec3<f32> = u_xlat23;
  let x_1610 : vec3<f32> = u_xlat23;
  u_xlat23.x = dot(x_1609, x_1610);
  let x_1614 : f32 = u_xlat23.x;
  let x_1616 : f32 = x_298.x_MainLightShadowParams.z;
  let x_1619 : f32 = x_298.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_1614 * x_1616) + x_1619);
  let x_1623 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1623, 0.0f, 1.0f);
  let x_1627 : f32 = u_xlat4.x;
  u_xlat42 = (-(x_1627) + 1.0f);
  let x_1631 : f32 = u_xlat23.x;
  let x_1632 : f32 = u_xlat42;
  let x_1635 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1631 * x_1632) + x_1635);
  let x_1644 : f32 = x_1642.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_1644 == -1.0f));
  let x_1648 : bool = u_xlatb23.x;
  if (x_1648) {
    let x_1651 : vec3<f32> = vs_TEXCOORD1;
    let x_1654 : vec4<f32> = x_1642.x_MainLightWorldToLight[1i];
    let x_1656 : vec2<f32> = (vec2<f32>(x_1651.y, x_1651.y) * vec2<f32>(x_1654.x, x_1654.y));
    let x_1657 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_1656.x, x_1656.y, x_1657.z);
    let x_1660 : vec4<f32> = x_1642.x_MainLightWorldToLight[0i];
    let x_1662 : vec3<f32> = vs_TEXCOORD1;
    let x_1665 : vec3<f32> = u_xlat23;
    let x_1667 : vec2<f32> = ((vec2<f32>(x_1660.x, x_1660.y) * vec2<f32>(x_1662.x, x_1662.x)) + vec2<f32>(x_1665.x, x_1665.y));
    let x_1668 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_1667.x, x_1667.y, x_1668.z);
    let x_1671 : vec4<f32> = x_1642.x_MainLightWorldToLight[2i];
    let x_1673 : vec3<f32> = vs_TEXCOORD1;
    let x_1676 : vec3<f32> = u_xlat23;
    let x_1678 : vec2<f32> = ((vec2<f32>(x_1671.x, x_1671.y) * vec2<f32>(x_1673.z, x_1673.z)) + vec2<f32>(x_1676.x, x_1676.y));
    let x_1679 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_1678.x, x_1678.y, x_1679.z);
    let x_1681 : vec3<f32> = u_xlat23;
    let x_1685 : vec4<f32> = x_1642.x_MainLightWorldToLight[3i];
    let x_1687 : vec2<f32> = (vec2<f32>(x_1681.x, x_1681.y) + vec2<f32>(x_1685.x, x_1685.y));
    let x_1688 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_1687.x, x_1687.y, x_1688.z);
    let x_1690 : vec3<f32> = u_xlat23;
    let x_1693 : vec2<f32> = ((vec2<f32>(x_1690.x, x_1690.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1694 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_1693.x, x_1693.y, x_1694.z);
    let x_1701 : vec3<f32> = u_xlat23;
    let x_1704 : f32 = x_44.x_GlobalMipBias.x;
    let x_1705 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1701.x, x_1701.y), x_1704);
    u_xlat5 = x_1705;
    let x_1707 : f32 = x_1642.x_MainLightCookieTextureFormat;
    let x_1709 : f32 = x_1642.x_MainLightCookieTextureFormat;
    let x_1711 : f32 = x_1642.x_MainLightCookieTextureFormat;
    let x_1713 : f32 = x_1642.x_MainLightCookieTextureFormat;
    let x_1714 : vec4<f32> = vec4<f32>(x_1707, x_1709, x_1711, x_1713);
    let x_1722 : vec4<bool> = (vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1714.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb23 = vec2<bool>(x_1722.x, x_1722.y);
    let x_1725 : bool = u_xlatb23.y;
    if (x_1725) {
      let x_1730 : f32 = u_xlat5.w;
      x_1726 = x_1730;
    } else {
      let x_1733 : f32 = u_xlat5.x;
      x_1726 = x_1733;
    }
    let x_1734 : f32 = x_1726;
    u_xlat42 = x_1734;
    let x_1736 : bool = u_xlatb23.x;
    if (x_1736) {
      let x_1740 : vec4<f32> = u_xlat5;
      x_1737 = vec3<f32>(x_1740.x, x_1740.y, x_1740.z);
    } else {
      let x_1743 : f32 = u_xlat42;
      x_1737 = vec3<f32>(x_1743, x_1743, x_1743);
    }
    let x_1745 : vec3<f32> = x_1737;
    u_xlat23 = x_1745;
  } else {
    u_xlat23.x = 1.0f;
    u_xlat23.y = 1.0f;
    u_xlat23.z = 1.0f;
  }
  let x_1750 : vec3<f32> = u_xlat23;
  let x_1752 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat23 = (x_1750 * vec3<f32>(x_1752.x, x_1752.y, x_1752.z));
  let x_1755 : f32 = u_xlat60;
  let x_1757 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1755, x_1755, x_1755) * x_1757);
  let x_1759 : f32 = u_xlat58;
  let x_1761 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_1759, x_1759, x_1759) * x_1761);
  let x_1764 : f32 = u_xlat4.x;
  let x_1767 : f32 = x_163.unity_LightData.z;
  u_xlat58 = (x_1764 * x_1767);
  let x_1769 : f32 = u_xlat58;
  let x_1771 : vec3<f32> = u_xlat23;
  let x_1772 : vec3<f32> = (vec3<f32>(x_1769, x_1769, x_1769) * x_1771);
  let x_1773 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1773.w);
  let x_1775 : vec4<f32> = u_xlat1;
  let x_1778 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat58 = dot(vec3<f32>(x_1775.x, x_1775.y, x_1775.z), vec3<f32>(x_1778.x, x_1778.y, x_1778.z));
  let x_1781 : f32 = u_xlat58;
  u_xlat58 = clamp(x_1781, 0.0f, 1.0f);
  let x_1783 : f32 = u_xlat58;
  let x_1785 : vec4<f32> = u_xlat4;
  let x_1787 : vec3<f32> = (vec3<f32>(x_1783, x_1783, x_1783) * vec3<f32>(x_1785.x, x_1785.y, x_1785.z));
  let x_1788 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1788.w);
  let x_1791 : f32 = u_xlat0.x;
  u_xlat58 = ((x_1791 * 10.0f) + 1.0f);
  let x_1795 : f32 = u_xlat58;
  u_xlat58 = exp2(x_1795);
  let x_1797 : vec3<f32> = u_xlat2;
  let x_1798 : f32 = u_xlat59;
  let x_1802 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1804 : vec3<f32> = ((x_1797 * vec3<f32>(x_1798, x_1798, x_1798)) + vec3<f32>(x_1802.x, x_1802.y, x_1802.z));
  let x_1805 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1805.w);
  let x_1807 : vec4<f32> = u_xlat6;
  let x_1809 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec3<f32>(x_1807.x, x_1807.y, x_1807.z), vec3<f32>(x_1809.x, x_1809.y, x_1809.z));
  let x_1812 : f32 = u_xlat61;
  u_xlat61 = max(x_1812, 1.17549435e-37f);
  let x_1814 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_1814);
  let x_1816 : f32 = u_xlat61;
  let x_1818 : vec4<f32> = u_xlat6;
  let x_1820 : vec3<f32> = (vec3<f32>(x_1816, x_1816, x_1816) * vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
  let x_1821 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1821.w);
  let x_1823 : vec4<f32> = u_xlat1;
  let x_1825 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec3<f32>(x_1823.x, x_1823.y, x_1823.z), vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
  let x_1828 : f32 = u_xlat61;
  u_xlat61 = clamp(x_1828, 0.0f, 1.0f);
  let x_1830 : f32 = u_xlat61;
  u_xlat61 = log2(x_1830);
  let x_1832 : f32 = u_xlat58;
  let x_1833 : f32 = u_xlat61;
  u_xlat61 = (x_1832 * x_1833);
  let x_1835 : f32 = u_xlat61;
  u_xlat61 = exp2(x_1835);
  let x_1837 : f32 = u_xlat61;
  let x_1840 : vec4<f32> = x_56.x_SpecColor;
  let x_1842 : vec3<f32> = (vec3<f32>(x_1837, x_1837, x_1837) * vec3<f32>(x_1840.x, x_1840.y, x_1840.z));
  let x_1843 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1842.x, x_1842.y, x_1842.z, x_1843.w);
  let x_1845 : vec4<f32> = u_xlat4;
  let x_1847 : vec4<f32> = u_xlat6;
  let x_1849 : vec3<f32> = (vec3<f32>(x_1845.x, x_1845.y, x_1845.z) * vec3<f32>(x_1847.x, x_1847.y, x_1847.z));
  let x_1850 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
  let x_1852 : vec4<f32> = u_xlat5;
  let x_1854 : vec4<f32> = u_xlat0;
  let x_1857 : vec4<f32> = u_xlat4;
  let x_1859 : vec3<f32> = ((vec3<f32>(x_1852.x, x_1852.y, x_1852.z) * vec3<f32>(x_1854.y, x_1854.z, x_1854.w)) + vec3<f32>(x_1857.x, x_1857.y, x_1857.z));
  let x_1860 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1859.x, x_1859.y, x_1859.z, x_1860.w);
  let x_1863 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1865 : f32 = x_163.unity_LightData.y;
  u_xlat61 = min(x_1863, x_1865);
  let x_1869 : f32 = u_xlat61;
  u_xlatu61 = bitcast<u32>(i32(x_1869));
  let x_1874 : f32 = x_1642.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1876 : f32 = x_1642.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1878 : f32 = x_1642.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1880 : f32 = x_1642.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1881 : vec4<f32> = vec4<f32>(x_1874, x_1876, x_1878, x_1880);
  let x_1887 : vec4<bool> = (vec4<f32>(x_1881.x, x_1881.y, x_1881.z, x_1881.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1887.x, x_1887.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1898 : u32 = u_xlatu_loop_1;
    let x_1899 : u32 = u_xlatu61;
    if ((x_1898 < x_1899)) {
    } else {
      break;
    }
    let x_1902 : u32 = u_xlatu_loop_1;
    u_xlatu62 = (x_1902 >> 2u);
    let x_1906 : u32 = u_xlatu_loop_1;
    u_xlati63 = bitcast<i32>((x_1906 & 3u));
    let x_1910 : u32 = u_xlatu62;
    let x_1913 : vec4<f32> = x_163.unity_LightIndices[bitcast<i32>(x_1910)];
    let x_1923 : i32 = u_xlati63;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1928 : vec4<u32> = indexable[x_1923];
    u_xlat62 = dot(x_1913, bitcast<vec4<f32>>(x_1928));
    let x_1931 : f32 = u_xlat62;
    u_xlatu62 = bitcast<u32>(i32(x_1931));
    let x_1934 : vec3<f32> = vs_TEXCOORD1;
    let x_1946 : u32 = u_xlatu62;
    let x_1949 : vec4<f32> = x_1945.x_AdditionalLightsPosition[bitcast<i32>(x_1946)];
    let x_1952 : u32 = u_xlatu62;
    let x_1955 : vec4<f32> = x_1945.x_AdditionalLightsPosition[bitcast<i32>(x_1952)];
    let x_1957 : vec3<f32> = ((-(x_1934) * vec3<f32>(x_1949.w, x_1949.w, x_1949.w)) + vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
    let x_1958 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1957.x, x_1957.y, x_1957.z, x_1958.w);
    let x_1961 : vec4<f32> = u_xlat7;
    let x_1963 : vec4<f32> = u_xlat7;
    u_xlat63 = dot(vec3<f32>(x_1961.x, x_1961.y, x_1961.z), vec3<f32>(x_1963.x, x_1963.y, x_1963.z));
    let x_1966 : f32 = u_xlat63;
    u_xlat63 = max(x_1966, 6.10351562e-05f);
    let x_1970 : f32 = u_xlat63;
    u_xlat64 = inverseSqrt(x_1970);
    let x_1972 : f32 = u_xlat64;
    let x_1974 : vec4<f32> = u_xlat7;
    let x_1976 : vec3<f32> = (vec3<f32>(x_1972, x_1972, x_1972) * vec3<f32>(x_1974.x, x_1974.y, x_1974.z));
    let x_1977 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1976.x, x_1976.y, x_1976.z, x_1977.w);
    let x_1979 : f32 = u_xlat63;
    u_xlat64 = (1.0f / x_1979);
    let x_1981 : f32 = u_xlat63;
    let x_1982 : u32 = u_xlatu62;
    let x_1985 : f32 = x_1945.x_AdditionalLightsAttenuation[bitcast<i32>(x_1982)].x;
    u_xlat63 = (x_1981 * x_1985);
    let x_1987 : f32 = u_xlat63;
    let x_1989 : f32 = u_xlat63;
    u_xlat63 = ((-(x_1987) * x_1989) + 1.0f);
    let x_1992 : f32 = u_xlat63;
    u_xlat63 = max(x_1992, 0.0f);
    let x_1994 : f32 = u_xlat63;
    let x_1995 : f32 = u_xlat63;
    u_xlat63 = (x_1994 * x_1995);
    let x_1997 : f32 = u_xlat63;
    let x_1998 : f32 = u_xlat64;
    u_xlat63 = (x_1997 * x_1998);
    let x_2000 : u32 = u_xlatu62;
    let x_2003 : vec4<f32> = x_1945.x_AdditionalLightsSpotDir[bitcast<i32>(x_2000)];
    let x_2005 : vec4<f32> = u_xlat7;
    u_xlat64 = dot(vec3<f32>(x_2003.x, x_2003.y, x_2003.z), vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
    let x_2008 : f32 = u_xlat64;
    let x_2009 : u32 = u_xlatu62;
    let x_2012 : f32 = x_1945.x_AdditionalLightsAttenuation[bitcast<i32>(x_2009)].z;
    let x_2014 : u32 = u_xlatu62;
    let x_2017 : f32 = x_1945.x_AdditionalLightsAttenuation[bitcast<i32>(x_2014)].w;
    u_xlat64 = ((x_2008 * x_2012) + x_2017);
    let x_2019 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2019, 0.0f, 1.0f);
    let x_2021 : f32 = u_xlat64;
    let x_2022 : f32 = u_xlat64;
    u_xlat64 = (x_2021 * x_2022);
    let x_2024 : f32 = u_xlat63;
    let x_2025 : f32 = u_xlat64;
    u_xlat63 = (x_2024 * x_2025);
    let x_2028 : u32 = u_xlatu62;
    u_xlatu64 = (x_2028 >> 5u);
    let x_2031 : u32 = u_xlatu62;
    u_xlati8 = (1i << bitcast<u32>((bitcast<i32>(x_2031) & 31i)));
    let x_2037 : i32 = u_xlati8;
    let x_2039 : u32 = u_xlatu64;
    let x_2042 : f32 = x_1642.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2039)].el;
    u_xlati64 = bitcast<i32>((bitcast<u32>(x_2037) & bitcast<u32>(x_2042)));
    let x_2046 : i32 = u_xlati64;
    if ((x_2046 != 0i)) {
      let x_2056 : u32 = u_xlatu62;
      let x_2059 : f32 = x_2055.x_AdditionalLightsLightTypes[bitcast<i32>(x_2056)].el;
      u_xlati64 = i32(x_2059);
      let x_2061 : i32 = u_xlati64;
      u_xlati8 = select(1i, 0i, (x_2061 != 0i));
      let x_2065 : u32 = u_xlatu62;
      u_xlati27 = (bitcast<i32>(x_2065) << bitcast<u32>(2i));
      let x_2068 : i32 = u_xlati8;
      if ((x_2068 != 0i)) {
        let x_2072 : vec3<f32> = vs_TEXCOORD1;
        let x_2074 : i32 = u_xlati27;
        let x_2077 : i32 = u_xlati27;
        let x_2081 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_2074 + 1i) / 4i)][((x_2077 + 1i) % 4i)];
        let x_2083 : vec3<f32> = (vec3<f32>(x_2072.y, x_2072.y, x_2072.y) * vec3<f32>(x_2081.x, x_2081.y, x_2081.w));
        let x_2084 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2083.x, x_2084.y, x_2083.y, x_2083.z);
        let x_2086 : i32 = u_xlati27;
        let x_2088 : i32 = u_xlati27;
        let x_2091 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[(x_2086 / 4i)][(x_2088 % 4i)];
        let x_2093 : vec3<f32> = vs_TEXCOORD1;
        let x_2096 : vec4<f32> = u_xlat8;
        let x_2098 : vec3<f32> = ((vec3<f32>(x_2091.x, x_2091.y, x_2091.w) * vec3<f32>(x_2093.x, x_2093.x, x_2093.x)) + vec3<f32>(x_2096.x, x_2096.z, x_2096.w));
        let x_2099 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2098.x, x_2099.y, x_2098.y, x_2098.z);
        let x_2101 : i32 = u_xlati27;
        let x_2104 : i32 = u_xlati27;
        let x_2108 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_2101 + 2i) / 4i)][((x_2104 + 2i) % 4i)];
        let x_2110 : vec3<f32> = vs_TEXCOORD1;
        let x_2113 : vec4<f32> = u_xlat8;
        let x_2115 : vec3<f32> = ((vec3<f32>(x_2108.x, x_2108.y, x_2108.w) * vec3<f32>(x_2110.z, x_2110.z, x_2110.z)) + vec3<f32>(x_2113.x, x_2113.z, x_2113.w));
        let x_2116 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2115.x, x_2116.y, x_2115.y, x_2115.z);
        let x_2118 : vec4<f32> = u_xlat8;
        let x_2120 : i32 = u_xlati27;
        let x_2123 : i32 = u_xlati27;
        let x_2127 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_2120 + 3i) / 4i)][((x_2123 + 3i) % 4i)];
        let x_2129 : vec3<f32> = (vec3<f32>(x_2118.x, x_2118.z, x_2118.w) + vec3<f32>(x_2127.x, x_2127.y, x_2127.w));
        let x_2130 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2129.x, x_2130.y, x_2129.y, x_2129.z);
        let x_2132 : vec4<f32> = u_xlat8;
        let x_2134 : vec4<f32> = u_xlat8;
        let x_2136 : vec2<f32> = (vec2<f32>(x_2132.x, x_2132.z) / vec2<f32>(x_2134.w, x_2134.w));
        let x_2137 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2136.x, x_2137.y, x_2136.y, x_2137.w);
        let x_2139 : vec4<f32> = u_xlat8;
        let x_2142 : vec2<f32> = ((vec2<f32>(x_2139.x, x_2139.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2143 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2142.x, x_2143.y, x_2142.y, x_2143.w);
        let x_2145 : vec4<f32> = u_xlat8;
        let x_2149 : vec2<f32> = clamp(vec2<f32>(x_2145.x, x_2145.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2150 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2149.x, x_2150.y, x_2149.y, x_2150.w);
        let x_2152 : u32 = u_xlatu62;
        let x_2155 : vec4<f32> = x_2055.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2152)];
        let x_2157 : vec4<f32> = u_xlat8;
        let x_2160 : u32 = u_xlatu62;
        let x_2163 : vec4<f32> = x_2055.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2160)];
        let x_2165 : vec2<f32> = ((vec2<f32>(x_2155.x, x_2155.y) * vec2<f32>(x_2157.x, x_2157.z)) + vec2<f32>(x_2163.z, x_2163.w));
        let x_2166 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2165.x, x_2166.y, x_2165.y, x_2166.w);
      } else {
        let x_2170 : i32 = u_xlati64;
        u_xlatb64 = (x_2170 == 1i);
        let x_2172 : bool = u_xlatb64;
        u_xlati64 = select(0i, 1i, x_2172);
        let x_2174 : i32 = u_xlati64;
        if ((x_2174 != 0i)) {
          let x_2178 : vec3<f32> = vs_TEXCOORD1;
          let x_2180 : i32 = u_xlati27;
          let x_2183 : i32 = u_xlati27;
          let x_2187 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_2180 + 1i) / 4i)][((x_2183 + 1i) % 4i)];
          let x_2189 : vec2<f32> = (vec2<f32>(x_2178.y, x_2178.y) * vec2<f32>(x_2187.x, x_2187.y));
          let x_2190 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2189.x, x_2189.y, x_2190.z, x_2190.w);
          let x_2192 : i32 = u_xlati27;
          let x_2194 : i32 = u_xlati27;
          let x_2197 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[(x_2192 / 4i)][(x_2194 % 4i)];
          let x_2199 : vec3<f32> = vs_TEXCOORD1;
          let x_2202 : vec4<f32> = u_xlat9;
          let x_2204 : vec2<f32> = ((vec2<f32>(x_2197.x, x_2197.y) * vec2<f32>(x_2199.x, x_2199.x)) + vec2<f32>(x_2202.x, x_2202.y));
          let x_2205 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2204.x, x_2204.y, x_2205.z, x_2205.w);
          let x_2207 : i32 = u_xlati27;
          let x_2210 : i32 = u_xlati27;
          let x_2214 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_2207 + 2i) / 4i)][((x_2210 + 2i) % 4i)];
          let x_2216 : vec3<f32> = vs_TEXCOORD1;
          let x_2219 : vec4<f32> = u_xlat9;
          let x_2221 : vec2<f32> = ((vec2<f32>(x_2214.x, x_2214.y) * vec2<f32>(x_2216.z, x_2216.z)) + vec2<f32>(x_2219.x, x_2219.y));
          let x_2222 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2221.x, x_2221.y, x_2222.z, x_2222.w);
          let x_2224 : vec4<f32> = u_xlat9;
          let x_2226 : i32 = u_xlati27;
          let x_2229 : i32 = u_xlati27;
          let x_2233 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_2226 + 3i) / 4i)][((x_2229 + 3i) % 4i)];
          let x_2235 : vec2<f32> = (vec2<f32>(x_2224.x, x_2224.y) + vec2<f32>(x_2233.x, x_2233.y));
          let x_2236 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2235.x, x_2235.y, x_2236.z, x_2236.w);
          let x_2238 : vec4<f32> = u_xlat9;
          let x_2241 : vec2<f32> = ((vec2<f32>(x_2238.x, x_2238.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2242 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2241.x, x_2241.y, x_2242.z, x_2242.w);
          let x_2244 : vec4<f32> = u_xlat9;
          let x_2246 : vec2<f32> = fract(vec2<f32>(x_2244.x, x_2244.y));
          let x_2247 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2246.x, x_2246.y, x_2247.z, x_2247.w);
          let x_2249 : u32 = u_xlatu62;
          let x_2252 : vec4<f32> = x_2055.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2249)];
          let x_2254 : vec4<f32> = u_xlat9;
          let x_2257 : u32 = u_xlatu62;
          let x_2260 : vec4<f32> = x_2055.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2257)];
          let x_2262 : vec2<f32> = ((vec2<f32>(x_2252.x, x_2252.y) * vec2<f32>(x_2254.x, x_2254.y)) + vec2<f32>(x_2260.z, x_2260.w));
          let x_2263 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2262.x, x_2263.y, x_2262.y, x_2263.w);
        } else {
          let x_2266 : vec3<f32> = vs_TEXCOORD1;
          let x_2268 : i32 = u_xlati27;
          let x_2271 : i32 = u_xlati27;
          let x_2275 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_2268 + 1i) / 4i)][((x_2271 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2266.y, x_2266.y, x_2266.y, x_2266.y) * x_2275);
          let x_2277 : i32 = u_xlati27;
          let x_2279 : i32 = u_xlati27;
          let x_2282 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[(x_2277 / 4i)][(x_2279 % 4i)];
          let x_2283 : vec3<f32> = vs_TEXCOORD1;
          let x_2286 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2282 * vec4<f32>(x_2283.x, x_2283.x, x_2283.x, x_2283.x)) + x_2286);
          let x_2288 : i32 = u_xlati27;
          let x_2291 : i32 = u_xlati27;
          let x_2295 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_2288 + 2i) / 4i)][((x_2291 + 2i) % 4i)];
          let x_2296 : vec3<f32> = vs_TEXCOORD1;
          let x_2299 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2295 * vec4<f32>(x_2296.z, x_2296.z, x_2296.z, x_2296.z)) + x_2299);
          let x_2301 : vec4<f32> = u_xlat9;
          let x_2302 : i32 = u_xlati27;
          let x_2305 : i32 = u_xlati27;
          let x_2309 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_2302 + 3i) / 4i)][((x_2305 + 3i) % 4i)];
          u_xlat9 = (x_2301 + x_2309);
          let x_2311 : vec4<f32> = u_xlat9;
          let x_2313 : vec4<f32> = u_xlat9;
          let x_2315 : vec3<f32> = (vec3<f32>(x_2311.x, x_2311.y, x_2311.z) / vec3<f32>(x_2313.w, x_2313.w, x_2313.w));
          let x_2316 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
          let x_2318 : vec4<f32> = u_xlat9;
          let x_2320 : vec4<f32> = u_xlat9;
          u_xlat64 = dot(vec3<f32>(x_2318.x, x_2318.y, x_2318.z), vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
          let x_2323 : f32 = u_xlat64;
          u_xlat64 = inverseSqrt(x_2323);
          let x_2325 : f32 = u_xlat64;
          let x_2327 : vec4<f32> = u_xlat9;
          let x_2329 : vec3<f32> = (vec3<f32>(x_2325, x_2325, x_2325) * vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
          let x_2330 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
          let x_2332 : vec4<f32> = u_xlat9;
          u_xlat64 = dot(abs(vec3<f32>(x_2332.x, x_2332.y, x_2332.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2337 : f32 = u_xlat64;
          u_xlat64 = max(x_2337, 0.000001f);
          let x_2340 : f32 = u_xlat64;
          u_xlat64 = (1.0f / x_2340);
          let x_2342 : f32 = u_xlat64;
          let x_2344 : vec4<f32> = u_xlat9;
          let x_2346 : vec3<f32> = (vec3<f32>(x_2342, x_2342, x_2342) * vec3<f32>(x_2344.z, x_2344.x, x_2344.y));
          let x_2347 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2346.x, x_2346.y, x_2346.z, x_2347.w);
          let x_2350 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2350);
          let x_2354 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2354, 0.0f, 1.0f);
          let x_2360 : vec4<f32> = u_xlat10;
          let x_2363 : vec4<bool> = (vec4<f32>(x_2360.y, x_2360.y, x_2360.z, x_2360.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2364 : vec2<bool> = vec2<bool>(x_2363.x, x_2363.z);
          let x_2365 : vec3<bool> = u_xlatb27;
          u_xlatb27 = vec3<bool>(x_2364.x, x_2365.y, x_2364.y);
          let x_2369 : bool = u_xlatb27.x;
          if (x_2369) {
            let x_2374 : f32 = u_xlat10.x;
            x_2370 = x_2374;
          } else {
            let x_2377 : f32 = u_xlat10.x;
            x_2370 = -(x_2377);
          }
          let x_2379 : f32 = x_2370;
          u_xlat27.x = x_2379;
          let x_2382 : bool = u_xlatb27.z;
          if (x_2382) {
            let x_2387 : f32 = u_xlat10.x;
            x_2383 = x_2387;
          } else {
            let x_2390 : f32 = u_xlat10.x;
            x_2383 = -(x_2390);
          }
          let x_2392 : f32 = x_2383;
          u_xlat27.z = x_2392;
          let x_2394 : vec4<f32> = u_xlat9;
          let x_2396 : f32 = u_xlat64;
          let x_2399 : vec3<f32> = u_xlat27;
          let x_2401 : vec2<f32> = ((vec2<f32>(x_2394.x, x_2394.y) * vec2<f32>(x_2396, x_2396)) + vec2<f32>(x_2399.x, x_2399.z));
          let x_2402 : vec3<f32> = u_xlat27;
          u_xlat27 = vec3<f32>(x_2401.x, x_2402.y, x_2401.y);
          let x_2404 : vec3<f32> = u_xlat27;
          let x_2407 : vec2<f32> = ((vec2<f32>(x_2404.x, x_2404.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2408 : vec3<f32> = u_xlat27;
          u_xlat27 = vec3<f32>(x_2407.x, x_2408.y, x_2407.y);
          let x_2410 : vec3<f32> = u_xlat27;
          let x_2414 : vec2<f32> = clamp(vec2<f32>(x_2410.x, x_2410.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2415 : vec3<f32> = u_xlat27;
          u_xlat27 = vec3<f32>(x_2414.x, x_2415.y, x_2414.y);
          let x_2417 : u32 = u_xlatu62;
          let x_2420 : vec4<f32> = x_2055.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2417)];
          let x_2422 : vec3<f32> = u_xlat27;
          let x_2425 : u32 = u_xlatu62;
          let x_2428 : vec4<f32> = x_2055.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2425)];
          let x_2430 : vec2<f32> = ((vec2<f32>(x_2420.x, x_2420.y) * vec2<f32>(x_2422.x, x_2422.z)) + vec2<f32>(x_2428.z, x_2428.w));
          let x_2431 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2430.x, x_2431.y, x_2430.y, x_2431.w);
        }
      }
      let x_2438 : vec4<f32> = u_xlat8;
      let x_2441 : f32 = x_44.x_GlobalMipBias.x;
      let x_2442 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2438.x, x_2438.z), x_2441);
      u_xlat8 = x_2442;
      let x_2444 : bool = u_xlatb5.y;
      if (x_2444) {
        let x_2449 : f32 = u_xlat8.w;
        x_2445 = x_2449;
      } else {
        let x_2452 : f32 = u_xlat8.x;
        x_2445 = x_2452;
      }
      let x_2453 : f32 = x_2445;
      u_xlat64 = x_2453;
      let x_2455 : bool = u_xlatb5.x;
      if (x_2455) {
        let x_2459 : vec4<f32> = u_xlat8;
        x_2456 = vec3<f32>(x_2459.x, x_2459.y, x_2459.z);
      } else {
        let x_2462 : f32 = u_xlat64;
        x_2456 = vec3<f32>(x_2462, x_2462, x_2462);
      }
      let x_2464 : vec3<f32> = x_2456;
      let x_2465 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2464.x, x_2464.y, x_2464.z, x_2465.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2471 : vec4<f32> = u_xlat8;
    let x_2473 : u32 = u_xlatu62;
    let x_2476 : vec4<f32> = x_1945.x_AdditionalLightsColor[bitcast<i32>(x_2473)];
    let x_2478 : vec3<f32> = (vec3<f32>(x_2471.x, x_2471.y, x_2471.z) * vec3<f32>(x_2476.x, x_2476.y, x_2476.z));
    let x_2479 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2478.x, x_2478.y, x_2478.z, x_2479.w);
    let x_2481 : f32 = u_xlat60;
    let x_2483 : vec4<f32> = u_xlat8;
    let x_2485 : vec3<f32> = (vec3<f32>(x_2481, x_2481, x_2481) * vec3<f32>(x_2483.x, x_2483.y, x_2483.z));
    let x_2486 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2485.x, x_2485.y, x_2485.z, x_2486.w);
    let x_2488 : f32 = u_xlat63;
    let x_2490 : vec4<f32> = u_xlat8;
    let x_2492 : vec3<f32> = (vec3<f32>(x_2488, x_2488, x_2488) * vec3<f32>(x_2490.x, x_2490.y, x_2490.z));
    let x_2493 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2492.x, x_2492.y, x_2492.z, x_2493.w);
    let x_2495 : vec4<f32> = u_xlat1;
    let x_2497 : vec4<f32> = u_xlat7;
    u_xlat62 = dot(vec3<f32>(x_2495.x, x_2495.y, x_2495.z), vec3<f32>(x_2497.x, x_2497.y, x_2497.z));
    let x_2500 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2500, 0.0f, 1.0f);
    let x_2502 : f32 = u_xlat62;
    let x_2504 : vec4<f32> = u_xlat8;
    let x_2506 : vec3<f32> = (vec3<f32>(x_2502, x_2502, x_2502) * vec3<f32>(x_2504.x, x_2504.y, x_2504.z));
    let x_2507 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2506.x, x_2506.y, x_2506.z, x_2507.w);
    let x_2509 : vec3<f32> = u_xlat2;
    let x_2510 : f32 = u_xlat59;
    let x_2513 : vec4<f32> = u_xlat7;
    let x_2515 : vec3<f32> = ((x_2509 * vec3<f32>(x_2510, x_2510, x_2510)) + vec3<f32>(x_2513.x, x_2513.y, x_2513.z));
    let x_2516 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2515.x, x_2515.y, x_2515.z, x_2516.w);
    let x_2518 : vec4<f32> = u_xlat7;
    let x_2520 : vec4<f32> = u_xlat7;
    u_xlat62 = dot(vec3<f32>(x_2518.x, x_2518.y, x_2518.z), vec3<f32>(x_2520.x, x_2520.y, x_2520.z));
    let x_2523 : f32 = u_xlat62;
    u_xlat62 = max(x_2523, 1.17549435e-37f);
    let x_2525 : f32 = u_xlat62;
    u_xlat62 = inverseSqrt(x_2525);
    let x_2527 : f32 = u_xlat62;
    let x_2529 : vec4<f32> = u_xlat7;
    let x_2531 : vec3<f32> = (vec3<f32>(x_2527, x_2527, x_2527) * vec3<f32>(x_2529.x, x_2529.y, x_2529.z));
    let x_2532 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2531.x, x_2531.y, x_2531.z, x_2532.w);
    let x_2534 : vec4<f32> = u_xlat1;
    let x_2536 : vec4<f32> = u_xlat7;
    u_xlat62 = dot(vec3<f32>(x_2534.x, x_2534.y, x_2534.z), vec3<f32>(x_2536.x, x_2536.y, x_2536.z));
    let x_2539 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2539, 0.0f, 1.0f);
    let x_2541 : f32 = u_xlat62;
    u_xlat62 = log2(x_2541);
    let x_2543 : f32 = u_xlat58;
    let x_2544 : f32 = u_xlat62;
    u_xlat62 = (x_2543 * x_2544);
    let x_2546 : f32 = u_xlat62;
    u_xlat62 = exp2(x_2546);
    let x_2548 : f32 = u_xlat62;
    let x_2551 : vec4<f32> = x_56.x_SpecColor;
    let x_2553 : vec3<f32> = (vec3<f32>(x_2548, x_2548, x_2548) * vec3<f32>(x_2551.x, x_2551.y, x_2551.z));
    let x_2554 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2553.x, x_2553.y, x_2553.z, x_2554.w);
    let x_2556 : vec4<f32> = u_xlat7;
    let x_2558 : vec4<f32> = u_xlat8;
    let x_2560 : vec3<f32> = (vec3<f32>(x_2556.x, x_2556.y, x_2556.z) * vec3<f32>(x_2558.x, x_2558.y, x_2558.z));
    let x_2561 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2560.x, x_2560.y, x_2560.z, x_2561.w);
    let x_2563 : vec4<f32> = u_xlat9;
    let x_2565 : vec4<f32> = u_xlat0;
    let x_2568 : vec4<f32> = u_xlat7;
    let x_2570 : vec3<f32> = ((vec3<f32>(x_2563.x, x_2563.y, x_2563.z) * vec3<f32>(x_2565.y, x_2565.z, x_2565.w)) + vec3<f32>(x_2568.x, x_2568.y, x_2568.z));
    let x_2571 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2570.x, x_2570.y, x_2570.z, x_2571.w);
    let x_2573 : vec4<f32> = u_xlat6;
    let x_2575 : vec4<f32> = u_xlat7;
    let x_2577 : vec3<f32> = (vec3<f32>(x_2573.x, x_2573.y, x_2573.z) + vec3<f32>(x_2575.x, x_2575.y, x_2575.z));
    let x_2578 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2577.x, x_2577.y, x_2577.z, x_2578.w);

    continuing {
      let x_2580 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2580 + bitcast<u32>(1i));
    }
  }
  let x_2583 : vec3<f32> = u_xlat3;
  let x_2584 : vec4<f32> = u_xlat0;
  let x_2587 : vec4<f32> = u_xlat4;
  u_xlat19 = ((x_2583 * vec3<f32>(x_2584.y, x_2584.z, x_2584.w)) + vec3<f32>(x_2587.x, x_2587.y, x_2587.z));
  let x_2592 : vec4<f32> = u_xlat6;
  let x_2594 : vec3<f32> = u_xlat19;
  let x_2595 : vec3<f32> = (vec3<f32>(x_2592.x, x_2592.y, x_2592.z) + x_2594);
  let x_2596 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2595.x, x_2595.y, x_2595.z, x_2596.w);
  let x_2600 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2600 == 1.0f);
  let x_2602 : bool = u_xlatb19;
  if (x_2602) {
    let x_2607 : f32 = u_xlat0.x;
    x_2603 = x_2607;
  } else {
    x_2603 = 1.0f;
  }
  let x_2609 : f32 = x_2603;
  SV_Target0.w = x_2609;
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

