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
  x_DitheringTextureInvSize : f32,
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

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_375 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_599 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_172 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat29 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var u_xlatb31 : bool;
  var x_400 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat32 : f32;
  var u_xlatu5 : u32;
  var u_xlat14 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu15 : u32;
  var u_xlati24 : i32;
  var u_xlat15 : vec3<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati15 : i32;
  var u_xlat7 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat33 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlatb9 : bool;
  var x_791 : f32;
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
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_78 : vec3<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb10 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb10;
  if (x_99) {
    let x_104 : f32 = u_xlat1.x;
    x_100 = abs(x_104);
  } else {
    let x_108 : f32 = u_xlat1.x;
    x_100 = -(abs(x_108));
  }
  let x_111 : f32 = x_100;
  u_xlat1.x = x_111;
  let x_114 : f32 = u_xlat1.x;
  let x_117 : f32 = x_93.unity_LODFade.x;
  u_xlat1.x = (-(x_114) + x_117);
  let x_122 : f32 = u_xlat1.x;
  u_xlatb1 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb1;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_135 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_135 == 0.0f);
  let x_140 : vec3<f32> = vs_TEXCOORD1;
  let x_145 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_140) + x_145);
  let x_148 : vec3<f32> = u_xlat10;
  let x_149 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_153);
  let x_156 : vec3<f32> = u_xlat10;
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_156 * vec3<f32>(x_157.x, x_157.x, x_157.x));
  let x_162 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat2.x = x_162;
  let x_165 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2.y = x_165;
  let x_169 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat2.z = x_169;
  let x_171 : bool = u_xlatb1;
  if (x_171) {
    let x_175 : vec3<f32> = u_xlat10;
    x_172 = x_175;
  } else {
    let x_177 : vec3<f32> = u_xlat2;
    x_172 = x_177;
  }
  let x_178 : vec3<f32> = x_172;
  u_xlat1 = x_178;
  let x_181 : vec3<f32> = vs_TEXCOORD2;
  let x_182 : vec3<f32> = vs_TEXCOORD2;
  u_xlat28 = dot(x_181, x_182);
  let x_184 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_184);
  let x_186 : f32 = u_xlat28;
  let x_188 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_186, x_186, x_186) * x_188);
  let x_190 : vec3<f32> = u_xlat1;
  let x_191 : vec3<f32> = u_xlat1;
  u_xlat28 = dot(x_190, x_191);
  let x_193 : f32 = u_xlat28;
  u_xlat28 = max(x_193, 1.17549435e-37f);
  let x_196 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_196);
  let x_200 : f32 = vs_TEXCOORD1.y;
  let x_202 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat29 = (x_200 * x_202);
  let x_205 : f32 = x_44.unity_MatrixV[0i].z;
  let x_207 : f32 = vs_TEXCOORD1.x;
  let x_209 : f32 = u_xlat29;
  u_xlat29 = ((x_205 * x_207) + x_209);
  let x_212 : f32 = x_44.unity_MatrixV[2i].z;
  let x_214 : f32 = vs_TEXCOORD1.z;
  let x_216 : f32 = u_xlat29;
  u_xlat29 = ((x_212 * x_214) + x_216);
  let x_218 : f32 = u_xlat29;
  let x_221 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat29 = (x_218 + x_221);
  let x_223 : f32 = u_xlat29;
  let x_227 : f32 = x_44.x_ProjectionParams.y;
  u_xlat29 = (-(x_223) + -(x_227));
  let x_230 : f32 = u_xlat29;
  u_xlat29 = max(x_230, 0.0f);
  let x_232 : f32 = u_xlat29;
  let x_235 : f32 = x_44.unity_FogParams.x;
  u_xlat29 = (x_232 * x_235);
  let x_244 : vec2<f32> = vs_TEXCOORD7;
  let x_246 : f32 = x_44.x_GlobalMipBias.x;
  let x_247 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_244, x_246);
  u_xlat3 = x_247;
  let x_253 : vec2<f32> = vs_TEXCOORD7;
  let x_255 : f32 = x_44.x_GlobalMipBias.x;
  let x_256 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_253, x_255);
  u_xlat4 = vec3<f32>(x_256.x, x_256.y, x_256.z);
  let x_258 : vec4<f32> = u_xlat3;
  let x_262 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_263 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_265 : vec3<f32> = u_xlat2;
  let x_266 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_265, vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_271 : f32 = u_xlat3.x;
  u_xlat3.x = (x_271 + 0.5f);
  let x_275 : vec4<f32> = u_xlat3;
  let x_277 : vec3<f32> = u_xlat4;
  let x_278 : vec3<f32> = (vec3<f32>(x_275.x, x_275.x, x_275.x) * x_277);
  let x_279 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_283 : f32 = u_xlat3.w;
  u_xlat30 = max(x_283, 0.0001f);
  let x_286 : vec4<f32> = u_xlat3;
  let x_288 : f32 = u_xlat30;
  let x_290 : vec3<f32> = (vec3<f32>(x_286.x, x_286.y, x_286.z) / vec3<f32>(x_288, x_288, x_288));
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_295 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_296 : vec2<f32> = vec2<f32>(x_295.x, x_295.y);
  let x_300 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_296.x, x_296.y));
  let x_301 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_300.x, x_300.y, x_301.z);
  let x_303 : vec3<f32> = u_xlat4;
  let x_305 : vec4<f32> = hlslcc_FragCoord;
  let x_307 : vec2<f32> = (vec2<f32>(x_303.x, x_303.y) * vec2<f32>(x_305.x, x_305.y));
  let x_308 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_307.x, x_307.y, x_308.z);
  let x_311 : f32 = u_xlat4.y;
  let x_314 : f32 = x_44.x_ScaleBiasRt.x;
  let x_317 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat30 = ((x_311 * x_314) + x_317);
  let x_319 : f32 = u_xlat30;
  u_xlat4.z = (-(x_319) + 1.0f);
  let x_328 : vec3<f32> = u_xlat4;
  let x_331 : f32 = x_44.x_GlobalMipBias.x;
  let x_332 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_328.x, x_328.z), x_331);
  u_xlat30 = x_332.x;
  let x_334 : f32 = u_xlat30;
  u_xlat4.x = (x_334 + -1.0f);
  let x_340 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_342 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_340 * x_342) + 1.0f);
  let x_346 : f32 = u_xlat30;
  u_xlat30 = min(x_346, 1.0f);
  let x_350 : vec4<f32> = vs_TEXCOORD6;
  let x_351 : vec2<f32> = vec2<f32>(x_350.x, x_350.y);
  let x_353 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_351.x, x_351.y, x_353);
  let x_366 : vec3<f32> = txVec0;
  let x_368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_366.xy, x_366.z);
  u_xlat13.x = x_368;
  let x_377 : f32 = x_375.x_MainLightShadowParams.x;
  u_xlat22 = (-(x_377) + 1.0f);
  let x_381 : f32 = u_xlat13.x;
  let x_383 : f32 = x_375.x_MainLightShadowParams.x;
  let x_385 : f32 = u_xlat22;
  u_xlat13.x = ((x_381 * x_383) + x_385);
  let x_390 : f32 = vs_TEXCOORD6.z;
  u_xlatb22 = (0.0f >= x_390);
  let x_394 : f32 = vs_TEXCOORD6.z;
  u_xlatb31 = (x_394 >= 1.0f);
  let x_396 : bool = u_xlatb31;
  let x_397 : bool = u_xlatb22;
  u_xlatb22 = (x_396 | x_397);
  let x_399 : bool = u_xlatb22;
  if (x_399) {
    x_400 = 1.0f;
  } else {
    let x_405 : f32 = u_xlat13.x;
    x_400 = x_405;
  }
  let x_406 : f32 = x_400;
  u_xlat13.x = x_406;
  let x_409 : vec3<f32> = vs_TEXCOORD1;
  let x_411 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_409 + -(x_411));
  let x_414 : vec3<f32> = u_xlat5;
  let x_415 : vec3<f32> = u_xlat5;
  u_xlat22 = dot(x_414, x_415);
  let x_417 : f32 = u_xlat22;
  let x_419 : f32 = x_375.x_MainLightShadowParams.z;
  let x_422 : f32 = x_375.x_MainLightShadowParams.w;
  u_xlat22 = ((x_417 * x_419) + x_422);
  let x_424 : f32 = u_xlat22;
  u_xlat22 = clamp(x_424, 0.0f, 1.0f);
  let x_428 : f32 = u_xlat13.x;
  u_xlat31 = (-(x_428) + 1.0f);
  let x_431 : f32 = u_xlat22;
  let x_432 : f32 = u_xlat31;
  let x_435 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_431 * x_432) + x_435);
  let x_438 : vec3<f32> = u_xlat4;
  let x_441 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_438.x, x_438.x, x_438.x) * vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : f32 = u_xlat30;
  let x_446 : vec4<f32> = u_xlat3;
  let x_448 : vec3<f32> = (vec3<f32>(x_444, x_444, x_444) * vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_449 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_452 : f32 = u_xlat13.x;
  let x_455 : f32 = x_93.unity_LightData.z;
  u_xlat30 = (x_452 * x_455);
  let x_457 : f32 = u_xlat30;
  let x_459 : vec3<f32> = u_xlat5;
  u_xlat13 = (vec3<f32>(x_457, x_457, x_457) * x_459);
  let x_461 : vec3<f32> = u_xlat2;
  let x_463 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat30 = dot(x_461, vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : f32 = u_xlat30;
  u_xlat30 = clamp(x_466, 0.0f, 1.0f);
  let x_468 : f32 = u_xlat30;
  let x_470 : vec3<f32> = u_xlat13;
  u_xlat5 = (vec3<f32>(x_468, x_468, x_468) * x_470);
  let x_473 : f32 = u_xlat0.x;
  u_xlat30 = ((x_473 * 10.0f) + 1.0f);
  let x_477 : f32 = u_xlat30;
  u_xlat30 = exp2(x_477);
  let x_480 : vec3<f32> = u_xlat1;
  let x_481 : f32 = u_xlat28;
  let x_485 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_480 * vec3<f32>(x_481, x_481, x_481)) + vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_489 : vec3<f32> = u_xlat6;
  let x_490 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_489, x_490);
  let x_492 : f32 = u_xlat32;
  u_xlat32 = max(x_492, 1.17549435e-37f);
  let x_494 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_494);
  let x_496 : f32 = u_xlat32;
  let x_498 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_496, x_496, x_496) * x_498);
  let x_500 : vec3<f32> = u_xlat2;
  let x_501 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_500, x_501);
  let x_503 : f32 = u_xlat32;
  u_xlat32 = clamp(x_503, 0.0f, 1.0f);
  let x_505 : f32 = u_xlat32;
  u_xlat32 = log2(x_505);
  let x_507 : f32 = u_xlat30;
  let x_508 : f32 = u_xlat32;
  u_xlat32 = (x_507 * x_508);
  let x_510 : f32 = u_xlat32;
  u_xlat32 = exp2(x_510);
  let x_512 : f32 = u_xlat32;
  let x_515 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_512, x_512, x_512) * vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec3<f32> = u_xlat13;
  let x_519 : vec3<f32> = u_xlat6;
  u_xlat13 = (x_518 * x_519);
  let x_521 : vec3<f32> = u_xlat5;
  let x_522 : vec4<f32> = u_xlat0;
  let x_525 : vec3<f32> = u_xlat13;
  u_xlat13 = ((x_521 * vec3<f32>(x_522.y, x_522.z, x_522.w)) + x_525);
  let x_528 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_530 : f32 = x_93.unity_LightData.y;
  u_xlat5.x = min(x_528, x_530);
  let x_536 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_536));
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_549 : u32 = u_xlatu_loop_1;
    let x_550 : u32 = u_xlatu5;
    if ((x_549 < x_550)) {
    } else {
      break;
    }
    let x_553 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_553 >> 2u);
    let x_557 : u32 = u_xlatu_loop_1;
    u_xlati24 = bitcast<i32>((x_557 & 3u));
    let x_561 : u32 = u_xlatu15;
    let x_564 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_561)];
    let x_574 : i32 = u_xlati24;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_579 : vec4<u32> = indexable[x_574];
    u_xlat15.x = dot(x_564, bitcast<vec4<f32>>(x_579));
    let x_585 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_585);
    let x_588 : vec3<f32> = vs_TEXCOORD1;
    let x_600 : i32 = u_xlati15;
    let x_602 : vec4<f32> = x_599.x_AdditionalLightsPosition[x_600];
    let x_605 : i32 = u_xlati15;
    let x_607 : vec4<f32> = x_599.x_AdditionalLightsPosition[x_605];
    u_xlat7 = ((-(x_588) * vec3<f32>(x_602.w, x_602.w, x_602.w)) + vec3<f32>(x_607.x, x_607.y, x_607.z));
    let x_611 : vec3<f32> = u_xlat7;
    let x_612 : vec3<f32> = u_xlat7;
    u_xlat24 = dot(x_611, x_612);
    let x_614 : f32 = u_xlat24;
    u_xlat24 = max(x_614, 6.10351562e-05f);
    let x_618 : f32 = u_xlat24;
    u_xlat33 = inverseSqrt(x_618);
    let x_620 : f32 = u_xlat33;
    let x_622 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_620, x_620, x_620) * x_622);
    let x_624 : f32 = u_xlat24;
    u_xlat33 = (1.0f / x_624);
    let x_626 : f32 = u_xlat24;
    let x_627 : i32 = u_xlati15;
    let x_629 : f32 = x_599.x_AdditionalLightsAttenuation[x_627].x;
    u_xlat24 = (x_626 * x_629);
    let x_631 : f32 = u_xlat24;
    let x_633 : f32 = u_xlat24;
    u_xlat24 = ((-(x_631) * x_633) + 1.0f);
    let x_636 : f32 = u_xlat24;
    u_xlat24 = max(x_636, 0.0f);
    let x_638 : f32 = u_xlat24;
    let x_639 : f32 = u_xlat24;
    u_xlat24 = (x_638 * x_639);
    let x_641 : f32 = u_xlat24;
    let x_642 : f32 = u_xlat33;
    u_xlat24 = (x_641 * x_642);
    let x_644 : i32 = u_xlati15;
    let x_646 : vec4<f32> = x_599.x_AdditionalLightsSpotDir[x_644];
    let x_648 : vec3<f32> = u_xlat7;
    u_xlat33 = dot(vec3<f32>(x_646.x, x_646.y, x_646.z), x_648);
    let x_650 : f32 = u_xlat33;
    let x_651 : i32 = u_xlati15;
    let x_653 : f32 = x_599.x_AdditionalLightsAttenuation[x_651].z;
    let x_655 : i32 = u_xlati15;
    let x_657 : f32 = x_599.x_AdditionalLightsAttenuation[x_655].w;
    u_xlat33 = ((x_650 * x_653) + x_657);
    let x_659 : f32 = u_xlat33;
    u_xlat33 = clamp(x_659, 0.0f, 1.0f);
    let x_661 : f32 = u_xlat33;
    let x_662 : f32 = u_xlat33;
    u_xlat33 = (x_661 * x_662);
    let x_664 : f32 = u_xlat33;
    let x_665 : f32 = u_xlat24;
    u_xlat24 = (x_664 * x_665);
    let x_668 : vec3<f32> = u_xlat4;
    let x_670 : i32 = u_xlati15;
    let x_672 : vec4<f32> = x_599.x_AdditionalLightsColor[x_670];
    u_xlat8 = (vec3<f32>(x_668.x, x_668.x, x_668.x) * vec3<f32>(x_672.x, x_672.y, x_672.z));
    let x_675 : f32 = u_xlat24;
    let x_677 : vec3<f32> = u_xlat8;
    u_xlat15 = (vec3<f32>(x_675, x_675, x_675) * x_677);
    let x_680 : vec3<f32> = u_xlat2;
    let x_681 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_680, x_681);
    let x_683 : f32 = u_xlat34;
    u_xlat34 = clamp(x_683, 0.0f, 1.0f);
    let x_685 : vec3<f32> = u_xlat15;
    let x_686 : f32 = u_xlat34;
    u_xlat8 = (x_685 * vec3<f32>(x_686, x_686, x_686));
    let x_689 : vec3<f32> = u_xlat1;
    let x_690 : f32 = u_xlat28;
    let x_693 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_689 * vec3<f32>(x_690, x_690, x_690)) + x_693);
    let x_695 : vec3<f32> = u_xlat7;
    let x_696 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_695, x_696);
    let x_698 : f32 = u_xlat34;
    u_xlat34 = max(x_698, 1.17549435e-37f);
    let x_700 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_700);
    let x_702 : f32 = u_xlat34;
    let x_704 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_702, x_702, x_702) * x_704);
    let x_706 : vec3<f32> = u_xlat2;
    let x_707 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(x_706, x_707);
    let x_711 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_711, 0.0f, 1.0f);
    let x_715 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_715);
    let x_718 : f32 = u_xlat30;
    let x_720 : f32 = u_xlat7.x;
    u_xlat7.x = (x_718 * x_720);
    let x_724 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_724);
    let x_727 : vec3<f32> = u_xlat7;
    let x_730 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_727.x, x_727.x, x_727.x) * vec3<f32>(x_730.x, x_730.y, x_730.z));
    let x_733 : vec3<f32> = u_xlat15;
    let x_734 : vec3<f32> = u_xlat7;
    u_xlat15 = (x_733 * x_734);
    let x_736 : vec3<f32> = u_xlat8;
    let x_737 : vec4<f32> = u_xlat0;
    let x_740 : vec3<f32> = u_xlat15;
    u_xlat15 = ((x_736 * vec3<f32>(x_737.y, x_737.z, x_737.w)) + x_740);
    let x_742 : vec3<f32> = u_xlat14;
    let x_743 : vec3<f32> = u_xlat15;
    u_xlat14 = (x_742 + x_743);

    continuing {
      let x_745 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_745 + bitcast<u32>(1i));
    }
  }
  let x_748 : vec4<f32> = u_xlat3;
  let x_750 : vec4<f32> = u_xlat0;
  let x_753 : vec3<f32> = u_xlat13;
  u_xlat9 = ((vec3<f32>(x_748.x, x_748.y, x_748.z) * vec3<f32>(x_750.y, x_750.z, x_750.w)) + x_753);
  let x_755 : vec3<f32> = u_xlat14;
  let x_756 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_755 + x_756);
  let x_758 : f32 = u_xlat29;
  let x_759 : f32 = u_xlat29;
  u_xlat1.x = (x_758 * -(x_759));
  let x_764 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_764);
  let x_767 : vec3<f32> = u_xlat9;
  let x_770 : vec4<f32> = x_44.unity_FogColor;
  u_xlat9 = (x_767 + -(vec3<f32>(x_770.x, x_770.y, x_770.z)));
  let x_776 : vec3<f32> = u_xlat1;
  let x_778 : vec3<f32> = u_xlat9;
  let x_781 : vec4<f32> = x_44.unity_FogColor;
  let x_783 : vec3<f32> = ((vec3<f32>(x_776.x, x_776.x, x_776.x) * x_778) + vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_784 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_788 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_788 == 1.0f);
  let x_790 : bool = u_xlatb9;
  if (x_790) {
    let x_795 : f32 = u_xlat0.x;
    x_791 = x_795;
  } else {
    x_791 = 1.0f;
  }
  let x_797 : f32 = x_791;
  SV_Target0.w = x_797;
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

