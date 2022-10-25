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

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

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

@group(1) @binding(4) var<uniform> x_280 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_460 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb8 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlatb17 : bool;
  var x_307 : f32;
  var u_xlat17 : f32;
  var u_xlatu22 : u32;
  var u_xlat4 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu25 : u32;
  var u_xlati5 : i32;
  var u_xlat25 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati25 : i32;
  var u_xlat5 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb7 : bool;
  var x_588 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_51 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_55.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_51.w, x_51.x, x_51.y, x_51.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_63 : vec4<f32> = hlslcc_FragCoord;
  let x_67 : f32 = x_43.x_DitheringTextureInvSize;
  let x_69 : vec2<f32> = (vec2<f32>(x_63.x, x_63.y) * vec2<f32>(x_67, x_67));
  let x_70 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_69.x, x_69.y, x_70.z);
  let x_77 : vec3<f32> = u_xlat1;
  let x_80 : f32 = x_43.x_GlobalMipBias.x;
  let x_81 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_77.x, x_77.y), x_80);
  u_xlat1.x = x_81.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb8 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb8;
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
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_140);
  let x_143 : vec3<f32> = u_xlat1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_154 : vec2<f32> = vs_TEXCOORD7;
  let x_156 : f32 = x_43.x_GlobalMipBias.x;
  let x_157 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_154, x_156);
  u_xlat2 = x_157;
  let x_163 : vec2<f32> = vs_TEXCOORD7;
  let x_165 : f32 = x_43.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_163, x_165);
  u_xlat3 = vec3<f32>(x_166.x, x_166.y, x_166.z);
  let x_168 : vec4<f32> = u_xlat2;
  let x_172 : vec3<f32> = (vec3<f32>(x_168.x, x_168.y, x_168.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec3<f32> = u_xlat1;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(x_176, vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : f32 = u_xlat22;
  u_xlat22 = (x_180 + 0.5f);
  let x_183 : f32 = u_xlat22;
  let x_185 : vec3<f32> = u_xlat3;
  let x_186 : vec3<f32> = (vec3<f32>(x_183, x_183, x_183) * x_185);
  let x_187 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : f32 = u_xlat2.w;
  u_xlat22 = max(x_190, 0.0001f);
  let x_193 : vec4<f32> = u_xlat2;
  let x_195 : f32 = u_xlat22;
  let x_197 : vec3<f32> = (vec3<f32>(x_193.x, x_193.y, x_193.z) / vec3<f32>(x_195, x_195, x_195));
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_202 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_203 : vec2<f32> = vec2<f32>(x_202.x, x_202.y);
  let x_207 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_203.x, x_203.y));
  let x_208 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_207.x, x_207.y, x_208.z);
  let x_210 : vec3<f32> = u_xlat3;
  let x_212 : vec4<f32> = hlslcc_FragCoord;
  let x_214 : vec2<f32> = (vec2<f32>(x_210.x, x_210.y) * vec2<f32>(x_212.x, x_212.y));
  let x_215 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_214.x, x_214.y, x_215.z);
  let x_219 : f32 = u_xlat3.y;
  let x_222 : f32 = x_43.x_ScaleBiasRt.x;
  let x_225 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat22 = ((x_219 * x_222) + x_225);
  let x_227 : f32 = u_xlat22;
  u_xlat3.z = (-(x_227) + 1.0f);
  let x_236 : vec3<f32> = u_xlat3;
  let x_239 : f32 = x_43.x_GlobalMipBias.x;
  let x_240 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_236.x, x_236.z), x_239);
  u_xlat22 = x_240.x;
  let x_243 : f32 = u_xlat22;
  u_xlat23 = (x_243 + -1.0f);
  let x_248 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_249 : f32 = u_xlat23;
  u_xlat23 = ((x_248 * x_249) + 1.0f);
  let x_252 : f32 = u_xlat22;
  u_xlat22 = min(x_252, 1.0f);
  let x_256 : vec4<f32> = vs_TEXCOORD6;
  let x_257 : vec2<f32> = vec2<f32>(x_256.x, x_256.y);
  let x_259 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_257.x, x_257.y, x_259);
  let x_271 : vec3<f32> = txVec0;
  let x_273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_271.xy, x_271.z);
  u_xlat3.x = x_273;
  let x_282 : f32 = x_280.x_MainLightShadowParams.x;
  u_xlat10.x = (-(x_282) + 1.0f);
  let x_287 : f32 = u_xlat3.x;
  let x_289 : f32 = x_280.x_MainLightShadowParams.x;
  let x_292 : f32 = u_xlat10.x;
  u_xlat3.x = ((x_287 * x_289) + x_292);
  let x_297 : f32 = vs_TEXCOORD6.z;
  u_xlatb10 = (0.0f >= x_297);
  let x_301 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (x_301 >= 1.0f);
  let x_303 : bool = u_xlatb17;
  let x_304 : bool = u_xlatb10;
  u_xlatb10 = (x_303 | x_304);
  let x_306 : bool = u_xlatb10;
  if (x_306) {
    x_307 = 1.0f;
  } else {
    let x_312 : f32 = u_xlat3.x;
    x_307 = x_312;
  }
  let x_313 : f32 = x_307;
  u_xlat3.x = x_313;
  let x_316 : vec3<f32> = vs_TEXCOORD1;
  let x_320 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat10 = (x_316 + -(x_320));
  let x_323 : vec3<f32> = u_xlat10;
  let x_324 : vec3<f32> = u_xlat10;
  u_xlat10.x = dot(x_323, x_324);
  let x_328 : f32 = u_xlat10.x;
  let x_330 : f32 = x_280.x_MainLightShadowParams.z;
  let x_333 : f32 = x_280.x_MainLightShadowParams.w;
  u_xlat10.x = ((x_328 * x_330) + x_333);
  let x_337 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_337, 0.0f, 1.0f);
  let x_342 : f32 = u_xlat3.x;
  u_xlat17 = (-(x_342) + 1.0f);
  let x_346 : f32 = u_xlat10.x;
  let x_347 : f32 = u_xlat17;
  let x_350 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_346 * x_347) + x_350);
  let x_353 : f32 = u_xlat23;
  let x_357 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat10 = (vec3<f32>(x_353, x_353, x_353) * vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : f32 = u_xlat22;
  let x_362 : vec4<f32> = u_xlat2;
  let x_364 : vec3<f32> = (vec3<f32>(x_360, x_360, x_360) * vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_368 : f32 = u_xlat3.x;
  let x_371 : f32 = x_93.unity_LightData.z;
  u_xlat22 = (x_368 * x_371);
  let x_373 : f32 = u_xlat22;
  let x_375 : vec3<f32> = u_xlat10;
  u_xlat3 = (vec3<f32>(x_373, x_373, x_373) * x_375);
  let x_377 : vec3<f32> = u_xlat1;
  let x_379 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat22 = dot(x_377, vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : f32 = u_xlat22;
  u_xlat22 = clamp(x_382, 0.0f, 1.0f);
  let x_384 : f32 = u_xlat22;
  let x_386 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_384, x_384, x_384) * x_386);
  let x_388 : vec4<f32> = u_xlat0;
  let x_390 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_388.y, x_388.z, x_388.w) * x_390);
  let x_393 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_395 : f32 = x_93.unity_LightData.y;
  u_xlat22 = min(x_393, x_395);
  let x_399 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_399));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_412 : u32 = u_xlatu_loop_1;
    let x_413 : u32 = u_xlatu22;
    if ((x_412 < x_413)) {
    } else {
      break;
    }
    let x_416 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_416 >> 2u);
    let x_420 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_420 & 3u));
    let x_424 : u32 = u_xlatu25;
    let x_427 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_424)];
    let x_437 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_442 : vec4<u32> = indexable[x_437];
    u_xlat25 = dot(x_427, bitcast<vec4<f32>>(x_442));
    let x_446 : f32 = u_xlat25;
    u_xlati25 = i32(x_446);
    let x_449 : vec3<f32> = vs_TEXCOORD1;
    let x_461 : i32 = u_xlati25;
    let x_463 : vec4<f32> = x_460.x_AdditionalLightsPosition[x_461];
    let x_466 : i32 = u_xlati25;
    let x_468 : vec4<f32> = x_460.x_AdditionalLightsPosition[x_466];
    u_xlat5 = ((-(x_449) * vec3<f32>(x_463.w, x_463.w, x_463.w)) + vec3<f32>(x_468.x, x_468.y, x_468.z));
    let x_472 : vec3<f32> = u_xlat5;
    let x_473 : vec3<f32> = u_xlat5;
    u_xlat26 = dot(x_472, x_473);
    let x_475 : f32 = u_xlat26;
    u_xlat26 = max(x_475, 6.10351562e-05f);
    let x_479 : f32 = u_xlat26;
    u_xlat6.x = inverseSqrt(x_479);
    let x_482 : vec3<f32> = u_xlat5;
    let x_483 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_482 * vec3<f32>(x_483.x, x_483.x, x_483.x));
    let x_486 : f32 = u_xlat26;
    u_xlat6.x = (1.0f / x_486);
    let x_489 : f32 = u_xlat26;
    let x_490 : i32 = u_xlati25;
    let x_492 : f32 = x_460.x_AdditionalLightsAttenuation[x_490].x;
    u_xlat26 = (x_489 * x_492);
    let x_494 : f32 = u_xlat26;
    let x_496 : f32 = u_xlat26;
    u_xlat26 = ((-(x_494) * x_496) + 1.0f);
    let x_499 : f32 = u_xlat26;
    u_xlat26 = max(x_499, 0.0f);
    let x_501 : f32 = u_xlat26;
    let x_502 : f32 = u_xlat26;
    u_xlat26 = (x_501 * x_502);
    let x_504 : f32 = u_xlat26;
    let x_506 : f32 = u_xlat6.x;
    u_xlat26 = (x_504 * x_506);
    let x_508 : i32 = u_xlati25;
    let x_510 : vec4<f32> = x_460.x_AdditionalLightsSpotDir[x_508];
    let x_512 : vec3<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_510.x, x_510.y, x_510.z), x_512);
    let x_516 : f32 = u_xlat6.x;
    let x_517 : i32 = u_xlati25;
    let x_519 : f32 = x_460.x_AdditionalLightsAttenuation[x_517].z;
    let x_521 : i32 = u_xlati25;
    let x_523 : f32 = x_460.x_AdditionalLightsAttenuation[x_521].w;
    u_xlat6.x = ((x_516 * x_519) + x_523);
    let x_527 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_527, 0.0f, 1.0f);
    let x_531 : f32 = u_xlat6.x;
    let x_533 : f32 = u_xlat6.x;
    u_xlat6.x = (x_531 * x_533);
    let x_536 : f32 = u_xlat26;
    let x_538 : f32 = u_xlat6.x;
    u_xlat26 = (x_536 * x_538);
    let x_540 : f32 = u_xlat23;
    let x_542 : i32 = u_xlati25;
    let x_544 : vec4<f32> = x_460.x_AdditionalLightsColor[x_542];
    u_xlat6 = (vec3<f32>(x_540, x_540, x_540) * vec3<f32>(x_544.x, x_544.y, x_544.z));
    let x_547 : f32 = u_xlat26;
    let x_549 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_547, x_547, x_547) * x_549);
    let x_551 : vec3<f32> = u_xlat1;
    let x_552 : vec3<f32> = u_xlat5;
    u_xlat25 = dot(x_551, x_552);
    let x_554 : f32 = u_xlat25;
    u_xlat25 = clamp(x_554, 0.0f, 1.0f);
    let x_556 : f32 = u_xlat25;
    let x_558 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_556, x_556, x_556) * x_558);
    let x_560 : vec3<f32> = u_xlat5;
    let x_561 : vec4<f32> = u_xlat0;
    let x_564 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_560 * vec3<f32>(x_561.y, x_561.z, x_561.w)) + x_564);

    continuing {
      let x_566 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_566 + bitcast<u32>(1i));
    }
  }
  let x_569 : vec4<f32> = u_xlat2;
  let x_571 : vec4<f32> = u_xlat0;
  let x_574 : vec3<f32> = u_xlat3;
  u_xlat7 = ((vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_571.y, x_571.z, x_571.w)) + x_574);
  let x_578 : vec3<f32> = u_xlat4;
  let x_579 : vec3<f32> = u_xlat7;
  let x_580 : vec3<f32> = (x_578 + x_579);
  let x_581 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_585 : f32 = x_55.x_Surface;
  u_xlatb7 = (x_585 == 1.0f);
  let x_587 : bool = u_xlatb7;
  if (x_587) {
    let x_592 : f32 = u_xlat0.x;
    x_588 = x_592;
  } else {
    x_588 = 1.0f;
  }
  let x_594 : f32 = x_588;
  SV_Target0.w = x_594;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

