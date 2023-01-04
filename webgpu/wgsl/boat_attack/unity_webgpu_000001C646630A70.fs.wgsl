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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_162 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_385 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_762 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb12 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec3<f32>;
  var x_104 : f32;
  var x_118 : f32;
  var x_130 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat15 : f32;
  var u_xlat33 : f32;
  var u_xlat26 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlatb38 : bool;
  var u_xlatb6 : bool;
  var u_xlat7 : vec4<f32>;
  var u_xlat39 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati35 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
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
  u_xlat1.x = x_63.x;
  let x_72 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb12 = (x_72 == 0.0f);
  let x_78 : vec3<f32> = vs_TEXCOORD7;
  let x_83 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_84 : vec3<f32> = (-(x_78) + x_83);
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_88 : vec4<f32> = u_xlat2;
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat23 = dot(vec3<f32>(x_88.x, x_88.y, x_88.z), vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_93 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_93);
  let x_95 : f32 = u_xlat23;
  let x_97 : vec4<f32> = u_xlat2;
  let x_99 : vec3<f32> = (vec3<f32>(x_95, x_95, x_95) * vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_100 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_99.x, x_99.y, x_99.z, x_100.w);
  let x_103 : bool = u_xlatb12;
  if (x_103) {
    let x_108 : f32 = u_xlat2.x;
    x_104 = x_108;
  } else {
    let x_114 : f32 = x_44.unity_MatrixV[0i].z;
    x_104 = x_114;
  }
  let x_115 : f32 = x_104;
  u_xlat3.x = x_115;
  let x_117 : bool = u_xlatb12;
  if (x_117) {
    let x_123 : f32 = u_xlat2.y;
    x_118 = x_123;
  } else {
    let x_126 : f32 = x_44.unity_MatrixV[1i].z;
    x_118 = x_126;
  }
  let x_127 : f32 = x_118;
  u_xlat3.y = x_127;
  let x_129 : bool = u_xlatb12;
  if (x_129) {
    let x_134 : f32 = u_xlat2.z;
    x_130 = x_134;
  } else {
    let x_138 : f32 = x_44.unity_MatrixV[2i].z;
    x_130 = x_138;
  }
  let x_139 : f32 = x_130;
  u_xlat3.z = x_139;
  let x_143 : vec3<f32> = vs_TEXCOORD3;
  let x_144 : vec3<f32> = vs_TEXCOORD3;
  u_xlat12.x = dot(x_143, x_144);
  let x_148 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_148);
  let x_151 : vec3<f32> = u_xlat12;
  let x_153 : vec3<f32> = vs_TEXCOORD3;
  let x_154 : vec3<f32> = (vec3<f32>(x_151.x, x_151.x, x_151.x) * x_153);
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  u_xlat2.w = 1.0f;
  let x_166 : vec4<f32> = x_162.unity_SHAr;
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_166, x_167);
  let x_172 : vec4<f32> = x_162.unity_SHAg;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_172, x_173);
  let x_178 : vec4<f32> = x_162.unity_SHAb;
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_178, x_179);
  let x_183 : vec4<f32> = u_xlat2;
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_183.y, x_183.z, x_183.z, x_183.x) * vec4<f32>(x_185.x, x_185.y, x_185.z, x_185.z));
  let x_191 : vec4<f32> = x_162.unity_SHBr;
  let x_192 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_191, x_192);
  let x_197 : vec4<f32> = x_162.unity_SHBg;
  let x_198 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_197, x_198);
  let x_203 : vec4<f32> = x_162.unity_SHBb;
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_203, x_204);
  let x_208 : f32 = u_xlat2.y;
  let x_210 : f32 = u_xlat2.y;
  u_xlat12.x = (x_208 * x_210);
  let x_214 : f32 = u_xlat2.x;
  let x_216 : f32 = u_xlat2.x;
  let x_219 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_214 * x_216) + -(x_219));
  let x_225 : vec4<f32> = x_162.unity_SHC;
  let x_227 : vec3<f32> = u_xlat12;
  let x_230 : vec3<f32> = u_xlat6;
  u_xlat12 = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.x, x_227.x, x_227.x)) + x_230);
  let x_232 : vec3<f32> = u_xlat12;
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat12 = (x_232 + x_233);
  let x_235 : vec3<f32> = u_xlat12;
  u_xlat12 = max(x_235, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_240 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_241 : vec2<f32> = vec2<f32>(x_240.x, x_240.y);
  let x_245 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_241.x, x_241.y));
  let x_246 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_245.x, x_245.y, x_246.z);
  let x_248 : vec3<f32> = u_xlat4;
  let x_250 : vec4<f32> = hlslcc_FragCoord;
  let x_252 : vec2<f32> = (vec2<f32>(x_248.x, x_248.y) * vec2<f32>(x_250.x, x_250.y));
  let x_253 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_252.x, x_252.y, x_253.z);
  let x_257 : f32 = u_xlat4.y;
  let x_260 : f32 = x_44.x_ScaleBiasRt.x;
  let x_263 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_257 * x_260) + x_263);
  let x_265 : f32 = u_xlat35;
  u_xlat4.z = (-(x_265) + 1.0f);
  let x_270 : f32 = u_xlat1.x;
  u_xlat35 = ((-(x_270) * 0.959999979f) + 0.959999979f);
  let x_276 : f32 = u_xlat35;
  u_xlat36 = (-(x_276) + 1.0f);
  let x_279 : vec4<f32> = u_xlat0;
  let x_281 : f32 = u_xlat35;
  let x_283 : vec3<f32> = (vec3<f32>(x_279.x, x_279.y, x_279.z) * vec3<f32>(x_281, x_281, x_281));
  let x_284 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat0;
  let x_290 : vec3<f32> = (vec3<f32>(x_286.x, x_286.y, x_286.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_291 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec3<f32> = u_xlat1;
  let x_295 : vec4<f32> = u_xlat0;
  let x_300 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.x, x_293.x) * vec3<f32>(x_295.x, x_295.y, x_295.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_301 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_304 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_304) + 1.0f);
  let x_309 : f32 = u_xlat1.x;
  let x_311 : f32 = u_xlat1.x;
  u_xlat35 = (x_309 * x_311);
  let x_313 : f32 = u_xlat35;
  u_xlat35 = max(x_313, 0.0078125f);
  let x_317 : f32 = u_xlat35;
  let x_318 : f32 = u_xlat35;
  u_xlat15 = (x_317 * x_318);
  let x_322 : f32 = u_xlat0.w;
  let x_323 : f32 = u_xlat36;
  u_xlat33 = (x_322 + x_323);
  let x_325 : f32 = u_xlat33;
  u_xlat33 = clamp(x_325, 0.0f, 1.0f);
  let x_327 : f32 = u_xlat35;
  u_xlat36 = ((x_327 * 4.0f) + 2.0f);
  let x_337 : vec3<f32> = u_xlat4;
  let x_340 : f32 = x_44.x_GlobalMipBias.x;
  let x_341 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_337.x, x_337.z), x_340);
  u_xlat4.x = x_341.x;
  let x_346 : f32 = u_xlat4.x;
  u_xlat26 = (x_346 + -1.0f);
  let x_351 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_352 : f32 = u_xlat26;
  u_xlat26 = ((x_351 * x_352) + 1.0f);
  let x_356 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_356, 1.0f);
  let x_361 : vec4<f32> = vs_TEXCOORD8;
  let x_362 : vec2<f32> = vec2<f32>(x_361.x, x_361.y);
  let x_364 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_362.x, x_362.y, x_364);
  let x_377 : vec3<f32> = txVec0;
  let x_379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_377.xy, x_377.z);
  u_xlat37 = x_379;
  let x_387 : f32 = x_385.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_387) + 1.0f);
  let x_390 : f32 = u_xlat37;
  let x_392 : f32 = x_385.x_MainLightShadowParams.x;
  let x_394 : f32 = u_xlat38;
  u_xlat37 = ((x_390 * x_392) + x_394);
  let x_398 : f32 = vs_TEXCOORD8.z;
  u_xlatb38 = (0.0f >= x_398);
  let x_402 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_402 >= 1.0f);
  let x_404 : bool = u_xlatb38;
  let x_405 : bool = u_xlatb6;
  u_xlatb38 = (x_404 | x_405);
  let x_407 : bool = u_xlatb38;
  let x_408 : f32 = u_xlat37;
  u_xlat37 = select(x_408, 1.0f, x_407);
  let x_410 : vec3<f32> = vs_TEXCOORD7;
  let x_412 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat6 = (x_410 + -(x_412));
  let x_415 : vec3<f32> = u_xlat6;
  let x_416 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_415, x_416);
  let x_418 : f32 = u_xlat38;
  let x_420 : f32 = x_385.x_MainLightShadowParams.z;
  let x_423 : f32 = x_385.x_MainLightShadowParams.w;
  u_xlat38 = ((x_418 * x_420) + x_423);
  let x_425 : f32 = u_xlat38;
  u_xlat38 = clamp(x_425, 0.0f, 1.0f);
  let x_427 : f32 = u_xlat37;
  u_xlat6.x = (-(x_427) + 1.0f);
  let x_431 : f32 = u_xlat38;
  let x_433 : f32 = u_xlat6.x;
  let x_435 : f32 = u_xlat37;
  u_xlat37 = ((x_431 * x_433) + x_435);
  let x_437 : f32 = u_xlat26;
  let x_441 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : vec3<f32> = u_xlat3;
  let x_446 : vec4<f32> = u_xlat2;
  u_xlat38 = dot(-(x_444), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_449 : f32 = u_xlat38;
  let x_450 : f32 = u_xlat38;
  u_xlat38 = (x_449 + x_450);
  let x_453 : vec4<f32> = u_xlat2;
  let x_455 : f32 = u_xlat38;
  let x_459 : vec3<f32> = u_xlat3;
  let x_461 : vec3<f32> = ((vec3<f32>(x_453.x, x_453.y, x_453.z) * -(vec3<f32>(x_455, x_455, x_455))) + -(x_459));
  let x_462 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat2;
  let x_466 : vec3<f32> = u_xlat3;
  u_xlat38 = dot(vec3<f32>(x_464.x, x_464.y, x_464.z), x_466);
  let x_468 : f32 = u_xlat38;
  u_xlat38 = clamp(x_468, 0.0f, 1.0f);
  let x_470 : f32 = u_xlat38;
  u_xlat38 = (-(x_470) + 1.0f);
  let x_473 : f32 = u_xlat38;
  let x_474 : f32 = u_xlat38;
  u_xlat38 = (x_473 * x_474);
  let x_476 : f32 = u_xlat38;
  let x_477 : f32 = u_xlat38;
  u_xlat38 = (x_476 * x_477);
  let x_481 : f32 = u_xlat1.x;
  u_xlat39 = ((-(x_481) * 0.699999988f) + 1.700000048f);
  let x_488 : f32 = u_xlat1.x;
  let x_489 : f32 = u_xlat39;
  u_xlat1.x = (x_488 * x_489);
  let x_493 : f32 = u_xlat1.x;
  u_xlat1.x = (x_493 * 6.0f);
  let x_505 : vec4<f32> = u_xlat7;
  let x_508 : f32 = u_xlat1.x;
  let x_509 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_505.x, x_505.y, x_505.z), x_508);
  u_xlat7 = x_509;
  let x_511 : f32 = u_xlat7.w;
  u_xlat1.x = (x_511 + -1.0f);
  let x_515 : f32 = x_162.unity_SpecCube0_HDR.w;
  let x_517 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_515 * x_517) + 1.0f);
  let x_522 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_522, 0.0f);
  let x_526 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_526);
  let x_530 : f32 = u_xlat1.x;
  let x_532 : f32 = x_162.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_530 * x_532);
  let x_536 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_536);
  let x_540 : f32 = u_xlat1.x;
  let x_542 : f32 = x_162.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_540 * x_542);
  let x_545 : vec4<f32> = u_xlat7;
  let x_547 : vec3<f32> = u_xlat1;
  let x_549 : vec3<f32> = (vec3<f32>(x_545.x, x_545.y, x_545.z) * vec3<f32>(x_547.x, x_547.x, x_547.x));
  let x_550 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_554 : f32 = u_xlat35;
  let x_556 : f32 = u_xlat35;
  u_xlat8 = ((vec2<f32>(x_554, x_554) * vec2<f32>(x_556, x_556)) + vec2<f32>(-1.0f, 1.0f));
  let x_562 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_562);
  let x_566 : vec4<f32> = u_xlat0;
  let x_569 : f32 = u_xlat33;
  u_xlat19 = (-(vec3<f32>(x_566.x, x_566.y, x_566.z)) + vec3<f32>(x_569, x_569, x_569));
  let x_572 : f32 = u_xlat38;
  let x_574 : vec3<f32> = u_xlat19;
  let x_576 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_572, x_572, x_572) * x_574) + vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : vec3<f32> = u_xlat1;
  let x_581 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_579.x, x_579.x, x_579.x) * x_581);
  let x_583 : vec4<f32> = u_xlat7;
  let x_585 : vec3<f32> = u_xlat19;
  let x_586 : vec3<f32> = (vec3<f32>(x_583.x, x_583.y, x_583.z) * x_585);
  let x_587 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  let x_589 : vec3<f32> = u_xlat12;
  let x_590 : vec4<f32> = u_xlat5;
  let x_593 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_589 * vec3<f32>(x_590.x, x_590.y, x_590.z)) + vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_596 : f32 = u_xlat37;
  let x_599 : f32 = x_162.unity_LightData.z;
  u_xlat33 = (x_596 * x_599);
  let x_602 : vec4<f32> = u_xlat2;
  let x_605 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_602.x, x_602.y, x_602.z), vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : f32 = u_xlat34;
  u_xlat34 = clamp(x_608, 0.0f, 1.0f);
  let x_610 : f32 = u_xlat33;
  let x_611 : f32 = u_xlat34;
  u_xlat33 = (x_610 * x_611);
  let x_613 : f32 = u_xlat33;
  let x_615 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_613, x_613, x_613) * x_615);
  let x_617 : vec3<f32> = u_xlat3;
  let x_619 : vec4<f32> = x_44.x_MainLightPosition;
  let x_621 : vec3<f32> = (x_617 + vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_624 : vec4<f32> = u_xlat7;
  let x_626 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_624.x, x_624.y, x_624.z), vec3<f32>(x_626.x, x_626.y, x_626.z));
  let x_629 : f32 = u_xlat33;
  u_xlat33 = max(x_629, 1.17549435e-37f);
  let x_632 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_632);
  let x_634 : f32 = u_xlat33;
  let x_636 : vec4<f32> = u_xlat7;
  let x_638 : vec3<f32> = (vec3<f32>(x_634, x_634, x_634) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : vec4<f32> = u_xlat2;
  let x_643 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_641.x, x_641.y, x_641.z), vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : f32 = u_xlat33;
  u_xlat33 = clamp(x_646, 0.0f, 1.0f);
  let x_649 : vec4<f32> = x_44.x_MainLightPosition;
  let x_651 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_649.x, x_649.y, x_649.z), vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_654 : f32 = u_xlat34;
  u_xlat34 = clamp(x_654, 0.0f, 1.0f);
  let x_656 : f32 = u_xlat33;
  let x_657 : f32 = u_xlat33;
  u_xlat33 = (x_656 * x_657);
  let x_659 : f32 = u_xlat33;
  let x_661 : f32 = u_xlat8.x;
  u_xlat33 = ((x_659 * x_661) + 1.000010014f);
  let x_665 : f32 = u_xlat34;
  let x_666 : f32 = u_xlat34;
  u_xlat34 = (x_665 * x_666);
  let x_668 : f32 = u_xlat33;
  let x_669 : f32 = u_xlat33;
  u_xlat33 = (x_668 * x_669);
  let x_671 : f32 = u_xlat34;
  u_xlat34 = max(x_671, 0.100000001f);
  let x_674 : f32 = u_xlat33;
  let x_675 : f32 = u_xlat34;
  u_xlat33 = (x_674 * x_675);
  let x_677 : f32 = u_xlat36;
  let x_678 : f32 = u_xlat33;
  u_xlat33 = (x_677 * x_678);
  let x_680 : f32 = u_xlat15;
  let x_681 : f32 = u_xlat33;
  u_xlat33 = (x_680 / x_681);
  let x_683 : vec4<f32> = u_xlat0;
  let x_685 : f32 = u_xlat33;
  let x_688 : vec4<f32> = u_xlat5;
  let x_690 : vec3<f32> = ((vec3<f32>(x_683.x, x_683.y, x_683.z) * vec3<f32>(x_685, x_685, x_685)) + vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec3<f32> = u_xlat6;
  let x_694 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_693 * vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_698 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_700 : f32 = x_162.unity_LightData.y;
  u_xlat33 = min(x_698, x_700);
  let x_704 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_704));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_716 : u32 = u_xlatu_loop_1;
    let x_717 : u32 = u_xlatu33;
    if ((x_716 < x_717)) {
    } else {
      break;
    }
    let x_720 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_720 >> 2u);
    let x_724 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_724 & 3u));
    let x_727 : u32 = u_xlatu35;
    let x_730 : vec4<f32> = x_162.unity_LightIndices[bitcast<i32>(x_727)];
    let x_740 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_745 : vec4<u32> = indexable[x_740];
    u_xlat35 = dot(x_730, bitcast<vec4<f32>>(x_745));
    let x_749 : f32 = u_xlat35;
    u_xlati35 = i32(x_749);
    let x_751 : vec3<f32> = vs_TEXCOORD7;
    let x_763 : i32 = u_xlati35;
    let x_765 : vec4<f32> = x_762.x_AdditionalLightsPosition[x_763];
    let x_768 : i32 = u_xlati35;
    let x_770 : vec4<f32> = x_762.x_AdditionalLightsPosition[x_768];
    u_xlat19 = ((-(x_751) * vec3<f32>(x_765.w, x_765.w, x_765.w)) + vec3<f32>(x_770.x, x_770.y, x_770.z));
    let x_773 : vec3<f32> = u_xlat19;
    let x_774 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_773, x_774);
    let x_776 : f32 = u_xlat37;
    u_xlat37 = max(x_776, 6.10351562e-05f);
    let x_779 : f32 = u_xlat37;
    u_xlat38 = inverseSqrt(x_779);
    let x_782 : f32 = u_xlat38;
    let x_784 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_782, x_782, x_782) * x_784);
    let x_786 : f32 = u_xlat37;
    u_xlat39 = (1.0f / x_786);
    let x_788 : f32 = u_xlat37;
    let x_789 : i32 = u_xlati35;
    let x_791 : f32 = x_762.x_AdditionalLightsAttenuation[x_789].x;
    u_xlat37 = (x_788 * x_791);
    let x_793 : f32 = u_xlat37;
    let x_795 : f32 = u_xlat37;
    u_xlat37 = ((-(x_793) * x_795) + 1.0f);
    let x_798 : f32 = u_xlat37;
    u_xlat37 = max(x_798, 0.0f);
    let x_800 : f32 = u_xlat37;
    let x_801 : f32 = u_xlat37;
    u_xlat37 = (x_800 * x_801);
    let x_803 : f32 = u_xlat37;
    let x_804 : f32 = u_xlat39;
    u_xlat37 = (x_803 * x_804);
    let x_806 : i32 = u_xlati35;
    let x_808 : vec4<f32> = x_762.x_AdditionalLightsSpotDir[x_806];
    let x_810 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_808.x, x_808.y, x_808.z), x_810);
    let x_812 : f32 = u_xlat39;
    let x_813 : i32 = u_xlati35;
    let x_815 : f32 = x_762.x_AdditionalLightsAttenuation[x_813].z;
    let x_817 : i32 = u_xlati35;
    let x_819 : f32 = x_762.x_AdditionalLightsAttenuation[x_817].w;
    u_xlat39 = ((x_812 * x_815) + x_819);
    let x_821 : f32 = u_xlat39;
    u_xlat39 = clamp(x_821, 0.0f, 1.0f);
    let x_823 : f32 = u_xlat39;
    let x_824 : f32 = u_xlat39;
    u_xlat39 = (x_823 * x_824);
    let x_826 : f32 = u_xlat37;
    let x_827 : f32 = u_xlat39;
    u_xlat37 = (x_826 * x_827);
    let x_830 : f32 = u_xlat26;
    let x_832 : i32 = u_xlati35;
    let x_834 : vec4<f32> = x_762.x_AdditionalLightsColor[x_832];
    u_xlat10 = (vec3<f32>(x_830, x_830, x_830) * vec3<f32>(x_834.x, x_834.y, x_834.z));
    let x_837 : vec4<f32> = u_xlat2;
    let x_839 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_837.x, x_837.y, x_837.z), x_839);
    let x_841 : f32 = u_xlat35;
    u_xlat35 = clamp(x_841, 0.0f, 1.0f);
    let x_843 : f32 = u_xlat35;
    let x_844 : f32 = u_xlat37;
    u_xlat35 = (x_843 * x_844);
    let x_846 : f32 = u_xlat35;
    let x_848 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_846, x_846, x_846) * x_848);
    let x_850 : vec3<f32> = u_xlat19;
    let x_851 : f32 = u_xlat38;
    let x_854 : vec3<f32> = u_xlat3;
    u_xlat19 = ((x_850 * vec3<f32>(x_851, x_851, x_851)) + x_854);
    let x_856 : vec3<f32> = u_xlat19;
    let x_857 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(x_856, x_857);
    let x_859 : f32 = u_xlat35;
    u_xlat35 = max(x_859, 1.17549435e-37f);
    let x_861 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_861);
    let x_863 : f32 = u_xlat35;
    let x_865 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_863, x_863, x_863) * x_865);
    let x_867 : vec4<f32> = u_xlat2;
    let x_869 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(vec3<f32>(x_867.x, x_867.y, x_867.z), x_869);
    let x_871 : f32 = u_xlat35;
    u_xlat35 = clamp(x_871, 0.0f, 1.0f);
    let x_873 : vec3<f32> = u_xlat9;
    let x_874 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_873, x_874);
    let x_876 : f32 = u_xlat37;
    u_xlat37 = clamp(x_876, 0.0f, 1.0f);
    let x_878 : f32 = u_xlat35;
    let x_879 : f32 = u_xlat35;
    u_xlat35 = (x_878 * x_879);
    let x_881 : f32 = u_xlat35;
    let x_883 : f32 = u_xlat8.x;
    u_xlat35 = ((x_881 * x_883) + 1.000010014f);
    let x_886 : f32 = u_xlat37;
    let x_887 : f32 = u_xlat37;
    u_xlat37 = (x_886 * x_887);
    let x_889 : f32 = u_xlat35;
    let x_890 : f32 = u_xlat35;
    u_xlat35 = (x_889 * x_890);
    let x_892 : f32 = u_xlat37;
    u_xlat37 = max(x_892, 0.100000001f);
    let x_894 : f32 = u_xlat35;
    let x_895 : f32 = u_xlat37;
    u_xlat35 = (x_894 * x_895);
    let x_897 : f32 = u_xlat36;
    let x_898 : f32 = u_xlat35;
    u_xlat35 = (x_897 * x_898);
    let x_900 : f32 = u_xlat15;
    let x_901 : f32 = u_xlat35;
    u_xlat35 = (x_900 / x_901);
    let x_903 : vec4<f32> = u_xlat0;
    let x_905 : f32 = u_xlat35;
    let x_908 : vec4<f32> = u_xlat5;
    u_xlat19 = ((vec3<f32>(x_903.x, x_903.y, x_903.z) * vec3<f32>(x_905, x_905, x_905)) + vec3<f32>(x_908.x, x_908.y, x_908.z));
    let x_911 : vec3<f32> = u_xlat19;
    let x_912 : vec3<f32> = u_xlat10;
    let x_914 : vec4<f32> = u_xlat7;
    let x_916 : vec3<f32> = ((x_911 * x_912) + vec3<f32>(x_914.x, x_914.y, x_914.z));
    let x_917 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);

    continuing {
      let x_919 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_919 + bitcast<u32>(1i));
    }
  }
  let x_921 : vec3<f32> = u_xlat1;
  let x_922 : vec3<f32> = u_xlat4;
  let x_925 : vec3<f32> = u_xlat6;
  let x_926 : vec3<f32> = ((x_921 * vec3<f32>(x_922.x, x_922.x, x_922.x)) + x_925);
  let x_927 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_931 : vec4<f32> = u_xlat7;
  let x_933 : vec4<f32> = u_xlat0;
  let x_935 : vec3<f32> = (vec3<f32>(x_931.x, x_931.y, x_931.z) + vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
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

