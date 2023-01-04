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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_397 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_628 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var x_172 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat3 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat12 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var u_xlatb31 : bool;
  var x_422 : f32;
  var u_xlat31 : f32;
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
  var x_821 : f32;
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
  let x_157 : vec4<f32> = u_xlat2;
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
    let x_177 : vec4<f32> = u_xlat2;
    x_172 = vec3<f32>(x_177.x, x_177.y, x_177.z);
  }
  let x_179 : vec3<f32> = x_172;
  u_xlat1 = x_179;
  let x_182 : vec3<f32> = vs_TEXCOORD2;
  let x_183 : vec3<f32> = vs_TEXCOORD2;
  u_xlat28 = dot(x_182, x_183);
  let x_185 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_185);
  let x_187 : f32 = u_xlat28;
  let x_189 : vec3<f32> = vs_TEXCOORD2;
  let x_190 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * x_189);
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_193 : vec3<f32> = u_xlat1;
  let x_194 : vec3<f32> = u_xlat1;
  u_xlat28 = dot(x_193, x_194);
  let x_196 : f32 = u_xlat28;
  u_xlat28 = max(x_196, 1.17549435e-37f);
  let x_199 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_199);
  let x_203 : f32 = vs_TEXCOORD1.y;
  let x_205 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3 = (x_203 * x_205);
  let x_208 : f32 = x_44.unity_MatrixV[0i].z;
  let x_210 : f32 = vs_TEXCOORD1.x;
  let x_212 : f32 = u_xlat3;
  u_xlat3 = ((x_208 * x_210) + x_212);
  let x_215 : f32 = x_44.unity_MatrixV[2i].z;
  let x_217 : f32 = vs_TEXCOORD1.z;
  let x_219 : f32 = u_xlat3;
  u_xlat3 = ((x_215 * x_217) + x_219);
  let x_221 : f32 = u_xlat3;
  let x_224 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat3 = (x_221 + x_224);
  let x_226 : f32 = u_xlat3;
  let x_230 : f32 = x_44.x_ProjectionParams.y;
  u_xlat3 = (-(x_226) + -(x_230));
  let x_233 : f32 = u_xlat3;
  u_xlat3 = max(x_233, 0.0f);
  let x_235 : f32 = u_xlat3;
  let x_238 : f32 = x_44.unity_FogParams.x;
  u_xlat3 = (x_235 * x_238);
  u_xlat2.w = 1.0f;
  let x_244 : vec4<f32> = x_93.unity_SHAr;
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_244, x_245);
  let x_250 : vec4<f32> = x_93.unity_SHAg;
  let x_251 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_250, x_251);
  let x_256 : vec4<f32> = x_93.unity_SHAb;
  let x_257 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_256, x_257);
  let x_261 : vec4<f32> = u_xlat2;
  let x_263 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_261.y, x_261.z, x_261.z, x_261.x) * vec4<f32>(x_263.x, x_263.y, x_263.z, x_263.z));
  let x_269 : vec4<f32> = x_93.unity_SHBr;
  let x_270 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_269, x_270);
  let x_275 : vec4<f32> = x_93.unity_SHBg;
  let x_276 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_275, x_276);
  let x_281 : vec4<f32> = x_93.unity_SHBb;
  let x_282 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_281, x_282);
  let x_287 : f32 = u_xlat2.y;
  let x_289 : f32 = u_xlat2.y;
  u_xlat29 = (x_287 * x_289);
  let x_292 : f32 = u_xlat2.x;
  let x_294 : f32 = u_xlat2.x;
  let x_296 : f32 = u_xlat29;
  u_xlat29 = ((x_292 * x_294) + -(x_296));
  let x_302 : vec4<f32> = x_93.unity_SHC;
  let x_304 : f32 = u_xlat29;
  let x_307 : vec3<f32> = u_xlat6;
  u_xlat12 = ((vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_304, x_304, x_304)) + x_307);
  let x_309 : vec3<f32> = u_xlat12;
  let x_310 : vec3<f32> = u_xlat4;
  u_xlat12 = (x_309 + x_310);
  let x_312 : vec3<f32> = u_xlat12;
  u_xlat12 = max(x_312, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_317 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_318 : vec2<f32> = vec2<f32>(x_317.x, x_317.y);
  let x_322 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_318.x, x_318.y));
  let x_323 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_322.x, x_322.y, x_323.z);
  let x_325 : vec3<f32> = u_xlat4;
  let x_327 : vec4<f32> = hlslcc_FragCoord;
  let x_329 : vec2<f32> = (vec2<f32>(x_325.x, x_325.y) * vec2<f32>(x_327.x, x_327.y));
  let x_330 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_329.x, x_329.y, x_330.z);
  let x_333 : f32 = u_xlat4.y;
  let x_336 : f32 = x_44.x_ScaleBiasRt.x;
  let x_339 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat29 = ((x_333 * x_336) + x_339);
  let x_341 : f32 = u_xlat29;
  u_xlat4.z = (-(x_341) + 1.0f);
  let x_350 : vec3<f32> = u_xlat4;
  let x_353 : f32 = x_44.x_GlobalMipBias.x;
  let x_354 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_350.x, x_350.z), x_353);
  u_xlat29 = x_354.x;
  let x_356 : f32 = u_xlat29;
  u_xlat4.x = (x_356 + -1.0f);
  let x_362 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_364 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_362 * x_364) + 1.0f);
  let x_368 : f32 = u_xlat29;
  u_xlat29 = min(x_368, 1.0f);
  let x_372 : vec4<f32> = vs_TEXCOORD6;
  let x_373 : vec2<f32> = vec2<f32>(x_372.x, x_372.y);
  let x_375 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_373.x, x_373.y, x_375);
  let x_388 : vec3<f32> = txVec0;
  let x_390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_388.xy, x_388.z);
  u_xlat13.x = x_390;
  let x_399 : f32 = x_397.x_MainLightShadowParams.x;
  u_xlat22 = (-(x_399) + 1.0f);
  let x_403 : f32 = u_xlat13.x;
  let x_405 : f32 = x_397.x_MainLightShadowParams.x;
  let x_407 : f32 = u_xlat22;
  u_xlat13.x = ((x_403 * x_405) + x_407);
  let x_412 : f32 = vs_TEXCOORD6.z;
  u_xlatb22 = (0.0f >= x_412);
  let x_416 : f32 = vs_TEXCOORD6.z;
  u_xlatb31 = (x_416 >= 1.0f);
  let x_418 : bool = u_xlatb31;
  let x_419 : bool = u_xlatb22;
  u_xlatb22 = (x_418 | x_419);
  let x_421 : bool = u_xlatb22;
  if (x_421) {
    x_422 = 1.0f;
  } else {
    let x_427 : f32 = u_xlat13.x;
    x_422 = x_427;
  }
  let x_428 : f32 = x_422;
  u_xlat13.x = x_428;
  let x_430 : vec3<f32> = vs_TEXCOORD1;
  let x_432 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_434 : vec3<f32> = (x_430 + -(x_432));
  let x_435 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat5;
  let x_439 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_437.x, x_437.y, x_437.z), vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : f32 = u_xlat22;
  let x_444 : f32 = x_397.x_MainLightShadowParams.z;
  let x_447 : f32 = x_397.x_MainLightShadowParams.w;
  u_xlat22 = ((x_442 * x_444) + x_447);
  let x_449 : f32 = u_xlat22;
  u_xlat22 = clamp(x_449, 0.0f, 1.0f);
  let x_453 : f32 = u_xlat13.x;
  u_xlat31 = (-(x_453) + 1.0f);
  let x_456 : f32 = u_xlat22;
  let x_457 : f32 = u_xlat31;
  let x_460 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_456 * x_457) + x_460);
  let x_463 : vec3<f32> = u_xlat4;
  let x_466 : vec4<f32> = x_44.x_MainLightColor;
  let x_468 : vec3<f32> = (vec3<f32>(x_463.x, x_463.x, x_463.x) * vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : f32 = u_xlat29;
  let x_473 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_471, x_471, x_471) * x_473);
  let x_476 : f32 = u_xlat13.x;
  let x_479 : f32 = x_93.unity_LightData.z;
  u_xlat29 = (x_476 * x_479);
  let x_481 : f32 = u_xlat29;
  let x_483 : vec4<f32> = u_xlat5;
  u_xlat13 = (vec3<f32>(x_481, x_481, x_481) * vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat2;
  let x_489 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat29 = dot(vec3<f32>(x_486.x, x_486.y, x_486.z), vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : f32 = u_xlat29;
  u_xlat29 = clamp(x_492, 0.0f, 1.0f);
  let x_494 : f32 = u_xlat29;
  let x_496 : vec3<f32> = u_xlat13;
  let x_497 : vec3<f32> = (vec3<f32>(x_494, x_494, x_494) * x_496);
  let x_498 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : f32 = u_xlat0.x;
  u_xlat29 = ((x_501 * 10.0f) + 1.0f);
  let x_505 : f32 = u_xlat29;
  u_xlat29 = exp2(x_505);
  let x_507 : vec3<f32> = u_xlat1;
  let x_508 : f32 = u_xlat28;
  let x_512 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_507 * vec3<f32>(x_508, x_508, x_508)) + vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_516 : vec3<f32> = u_xlat6;
  let x_517 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_516, x_517);
  let x_519 : f32 = u_xlat32;
  u_xlat32 = max(x_519, 1.17549435e-37f);
  let x_521 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_521);
  let x_523 : f32 = u_xlat32;
  let x_525 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_523, x_523, x_523) * x_525);
  let x_527 : vec4<f32> = u_xlat2;
  let x_529 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(vec3<f32>(x_527.x, x_527.y, x_527.z), x_529);
  let x_531 : f32 = u_xlat32;
  u_xlat32 = clamp(x_531, 0.0f, 1.0f);
  let x_533 : f32 = u_xlat32;
  u_xlat32 = log2(x_533);
  let x_535 : f32 = u_xlat29;
  let x_536 : f32 = u_xlat32;
  u_xlat32 = (x_535 * x_536);
  let x_538 : f32 = u_xlat32;
  u_xlat32 = exp2(x_538);
  let x_540 : f32 = u_xlat32;
  let x_543 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_540, x_540, x_540) * vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec3<f32> = u_xlat13;
  let x_547 : vec3<f32> = u_xlat6;
  u_xlat13 = (x_546 * x_547);
  let x_549 : vec4<f32> = u_xlat5;
  let x_551 : vec4<f32> = u_xlat0;
  let x_554 : vec3<f32> = u_xlat13;
  u_xlat13 = ((vec3<f32>(x_549.x, x_549.y, x_549.z) * vec3<f32>(x_551.y, x_551.z, x_551.w)) + x_554);
  let x_557 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_559 : f32 = x_93.unity_LightData.y;
  u_xlat5.x = min(x_557, x_559);
  let x_565 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_565));
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_578 : u32 = u_xlatu_loop_1;
    let x_579 : u32 = u_xlatu5;
    if ((x_578 < x_579)) {
    } else {
      break;
    }
    let x_582 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_582 >> 2u);
    let x_586 : u32 = u_xlatu_loop_1;
    u_xlati24 = bitcast<i32>((x_586 & 3u));
    let x_590 : u32 = u_xlatu15;
    let x_593 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_590)];
    let x_603 : i32 = u_xlati24;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_608 : vec4<u32> = indexable[x_603];
    u_xlat15.x = dot(x_593, bitcast<vec4<f32>>(x_608));
    let x_614 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_614);
    let x_617 : vec3<f32> = vs_TEXCOORD1;
    let x_629 : i32 = u_xlati15;
    let x_631 : vec4<f32> = x_628.x_AdditionalLightsPosition[x_629];
    let x_634 : i32 = u_xlati15;
    let x_636 : vec4<f32> = x_628.x_AdditionalLightsPosition[x_634];
    u_xlat7 = ((-(x_617) * vec3<f32>(x_631.w, x_631.w, x_631.w)) + vec3<f32>(x_636.x, x_636.y, x_636.z));
    let x_640 : vec3<f32> = u_xlat7;
    let x_641 : vec3<f32> = u_xlat7;
    u_xlat24 = dot(x_640, x_641);
    let x_643 : f32 = u_xlat24;
    u_xlat24 = max(x_643, 6.10351562e-05f);
    let x_647 : f32 = u_xlat24;
    u_xlat33 = inverseSqrt(x_647);
    let x_649 : f32 = u_xlat33;
    let x_651 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_649, x_649, x_649) * x_651);
    let x_653 : f32 = u_xlat24;
    u_xlat33 = (1.0f / x_653);
    let x_655 : f32 = u_xlat24;
    let x_656 : i32 = u_xlati15;
    let x_658 : f32 = x_628.x_AdditionalLightsAttenuation[x_656].x;
    u_xlat24 = (x_655 * x_658);
    let x_660 : f32 = u_xlat24;
    let x_662 : f32 = u_xlat24;
    u_xlat24 = ((-(x_660) * x_662) + 1.0f);
    let x_665 : f32 = u_xlat24;
    u_xlat24 = max(x_665, 0.0f);
    let x_667 : f32 = u_xlat24;
    let x_668 : f32 = u_xlat24;
    u_xlat24 = (x_667 * x_668);
    let x_670 : f32 = u_xlat24;
    let x_671 : f32 = u_xlat33;
    u_xlat24 = (x_670 * x_671);
    let x_673 : i32 = u_xlati15;
    let x_675 : vec4<f32> = x_628.x_AdditionalLightsSpotDir[x_673];
    let x_677 : vec3<f32> = u_xlat7;
    u_xlat33 = dot(vec3<f32>(x_675.x, x_675.y, x_675.z), x_677);
    let x_679 : f32 = u_xlat33;
    let x_680 : i32 = u_xlati15;
    let x_682 : f32 = x_628.x_AdditionalLightsAttenuation[x_680].z;
    let x_684 : i32 = u_xlati15;
    let x_686 : f32 = x_628.x_AdditionalLightsAttenuation[x_684].w;
    u_xlat33 = ((x_679 * x_682) + x_686);
    let x_688 : f32 = u_xlat33;
    u_xlat33 = clamp(x_688, 0.0f, 1.0f);
    let x_690 : f32 = u_xlat33;
    let x_691 : f32 = u_xlat33;
    u_xlat33 = (x_690 * x_691);
    let x_693 : f32 = u_xlat33;
    let x_694 : f32 = u_xlat24;
    u_xlat24 = (x_693 * x_694);
    let x_697 : vec3<f32> = u_xlat4;
    let x_699 : i32 = u_xlati15;
    let x_701 : vec4<f32> = x_628.x_AdditionalLightsColor[x_699];
    u_xlat8 = (vec3<f32>(x_697.x, x_697.x, x_697.x) * vec3<f32>(x_701.x, x_701.y, x_701.z));
    let x_704 : f32 = u_xlat24;
    let x_706 : vec3<f32> = u_xlat8;
    u_xlat15 = (vec3<f32>(x_704, x_704, x_704) * x_706);
    let x_709 : vec4<f32> = u_xlat2;
    let x_711 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(vec3<f32>(x_709.x, x_709.y, x_709.z), x_711);
    let x_713 : f32 = u_xlat34;
    u_xlat34 = clamp(x_713, 0.0f, 1.0f);
    let x_715 : vec3<f32> = u_xlat15;
    let x_716 : f32 = u_xlat34;
    u_xlat8 = (x_715 * vec3<f32>(x_716, x_716, x_716));
    let x_719 : vec3<f32> = u_xlat1;
    let x_720 : f32 = u_xlat28;
    let x_723 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_719 * vec3<f32>(x_720, x_720, x_720)) + x_723);
    let x_725 : vec3<f32> = u_xlat7;
    let x_726 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_725, x_726);
    let x_728 : f32 = u_xlat34;
    u_xlat34 = max(x_728, 1.17549435e-37f);
    let x_730 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_730);
    let x_732 : f32 = u_xlat34;
    let x_734 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_732, x_732, x_732) * x_734);
    let x_736 : vec4<f32> = u_xlat2;
    let x_738 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_736.x, x_736.y, x_736.z), x_738);
    let x_742 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_742, 0.0f, 1.0f);
    let x_746 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_746);
    let x_749 : f32 = u_xlat29;
    let x_751 : f32 = u_xlat7.x;
    u_xlat7.x = (x_749 * x_751);
    let x_755 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_755);
    let x_758 : vec3<f32> = u_xlat7;
    let x_761 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_758.x, x_758.x, x_758.x) * vec3<f32>(x_761.x, x_761.y, x_761.z));
    let x_764 : vec3<f32> = u_xlat15;
    let x_765 : vec3<f32> = u_xlat7;
    u_xlat15 = (x_764 * x_765);
    let x_767 : vec3<f32> = u_xlat8;
    let x_768 : vec4<f32> = u_xlat0;
    let x_771 : vec3<f32> = u_xlat15;
    u_xlat15 = ((x_767 * vec3<f32>(x_768.y, x_768.z, x_768.w)) + x_771);
    let x_773 : vec3<f32> = u_xlat14;
    let x_774 : vec3<f32> = u_xlat15;
    u_xlat14 = (x_773 + x_774);

    continuing {
      let x_776 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_776 + bitcast<u32>(1i));
    }
  }
  let x_779 : vec3<f32> = u_xlat12;
  let x_780 : vec4<f32> = u_xlat0;
  let x_783 : vec3<f32> = u_xlat13;
  u_xlat9 = ((x_779 * vec3<f32>(x_780.y, x_780.z, x_780.w)) + x_783);
  let x_785 : vec3<f32> = u_xlat14;
  let x_786 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_785 + x_786);
  let x_788 : f32 = u_xlat3;
  let x_789 : f32 = u_xlat3;
  u_xlat1.x = (x_788 * -(x_789));
  let x_794 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_794);
  let x_797 : vec3<f32> = u_xlat9;
  let x_800 : vec4<f32> = x_44.unity_FogColor;
  u_xlat9 = (x_797 + -(vec3<f32>(x_800.x, x_800.y, x_800.z)));
  let x_806 : vec3<f32> = u_xlat1;
  let x_808 : vec3<f32> = u_xlat9;
  let x_811 : vec4<f32> = x_44.unity_FogColor;
  let x_813 : vec3<f32> = ((vec3<f32>(x_806.x, x_806.x, x_806.x) * x_808) + vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  let x_818 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_818 == 1.0f);
  let x_820 : bool = u_xlatb9;
  if (x_820) {
    let x_825 : f32 = u_xlat0.x;
    x_821 = x_825;
  } else {
    x_821 = 1.0f;
  }
  let x_827 : f32 = x_821;
  SV_Target0.w = x_827;
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

