struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
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

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_242 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_579 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_817 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_919 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_75 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_131 : f32;
  var u_xlatb11 : bool;
  var u_xlatb33 : bool;
  var x_190 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu11 : u32;
  var u_xlati11 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlatb35 : bool;
  var u_xlat35 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_663 : f32;
  var x_675 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlatu37 : u32;
  var u_xlati27 : i32;
  var u_xlati37 : i32;
  var u_xlati38 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb37 : bool;
  var u_xlat30 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var x_1215 : f32;
  var x_1228 : f32;
  var x_1280 : f32;
  var x_1291 : vec3<f32>;
  var x_1401 : f32;
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
  let x_69 : f32 = u_xlat1.x;
  let x_72 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_69 >= x_72);
  let x_74 : bool = u_xlatb0;
  if (x_74) {
    let x_79 : f32 = u_xlat1.x;
    x_75 = x_79;
  } else {
    x_75 = 0.0f;
  }
  let x_82 : f32 = x_75;
  u_xlat0.x = x_82;
  let x_87 : f32 = u_xlat0.w;
  let x_89 : f32 = x_57.x_BaseColor.w;
  let x_92 : f32 = x_57.x_Cutoff;
  u_xlat11.x = ((x_87 * x_89) + -(x_92));
  let x_98 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_98);
  let x_102 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_102);
  let x_104 : f32 = u_xlat33;
  let x_106 : f32 = u_xlat22;
  u_xlat22 = (abs(x_104) + abs(x_106));
  let x_109 : f32 = u_xlat22;
  u_xlat22 = max(x_109, 0.0001f);
  let x_113 : f32 = u_xlat11.x;
  let x_114 : f32 = u_xlat22;
  u_xlat11.x = (x_113 / x_114);
  let x_118 : f32 = u_xlat11.x;
  u_xlat11.x = (x_118 + 0.5f);
  let x_123 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_123, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb22;
  if (x_130) {
    let x_135 : f32 = u_xlat11.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat11.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat11.x;
  u_xlatb11 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb11;
  if (((select(0i, 1i, x_150) * -1i) != 0i)) {
    discard;
  }
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_44.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_164.x, x_165.y, x_164.y);
  let x_172 : vec3<f32> = u_xlat11;
  let x_175 : f32 = x_44.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat11.x = x_176.w;
  let x_187 : f32 = x_184.unity_LODFade.x;
  u_xlatb33 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb33;
  if (x_189) {
    let x_194 : f32 = u_xlat11.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat11.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat11.x = x_201;
  let x_204 : f32 = u_xlat11.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat11.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat11.x;
  u_xlatb11 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb11;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat11;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_237 : vec3<f32> = vs_TEXCOORD1;
  let x_244 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres0;
  let x_247 : vec3<f32> = (x_237 + -(vec3<f32>(x_244.x, x_244.y, x_244.z)));
  let x_248 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_251 : vec3<f32> = vs_TEXCOORD1;
  let x_253 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres1;
  let x_256 : vec3<f32> = (x_251 + -(vec3<f32>(x_253.x, x_253.y, x_253.z)));
  let x_257 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_260 : vec3<f32> = vs_TEXCOORD1;
  let x_263 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_260 + -(vec3<f32>(x_263.x, x_263.y, x_263.z)));
  let x_268 : vec3<f32> = vs_TEXCOORD1;
  let x_270 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_268 + -(vec3<f32>(x_270.x, x_270.y, x_270.z)));
  let x_274 : vec4<f32> = u_xlat3;
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_274.x, x_274.y, x_274.z), vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_280 : vec4<f32> = u_xlat4;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_287 : vec3<f32> = u_xlat5;
  let x_288 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_287, x_288);
  let x_291 : vec3<f32> = u_xlat6;
  let x_292 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_291, x_292);
  let x_298 : vec4<f32> = u_xlat3;
  let x_301 : vec4<f32> = x_242.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_298 < x_301);
  let x_304 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_304);
  let x_308 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_308);
  let x_312 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_312);
  let x_316 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_316);
  let x_320 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_320);
  let x_326 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_326);
  let x_330 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_330);
  let x_333 : vec4<f32> = u_xlat3;
  let x_335 : vec4<f32> = u_xlat4;
  let x_337 : vec3<f32> = (vec3<f32>(x_333.x, x_333.y, x_333.z) + vec3<f32>(x_335.y, x_335.z, x_335.w));
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat3;
  let x_343 : vec3<f32> = max(vec3<f32>(x_340.x, x_340.y, x_340.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_344.x, x_343.x, x_343.y, x_343.z);
  let x_346 : vec4<f32> = u_xlat4;
  u_xlat11.x = dot(x_346, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_354 : f32 = u_xlat11.x;
  u_xlat11.x = (-(x_354) + 4.0f);
  let x_361 : f32 = u_xlat11.x;
  u_xlatu11 = u32(x_361);
  let x_365 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_365) << bitcast<u32>(2i));
  let x_368 : vec3<f32> = vs_TEXCOORD1;
  let x_370 : i32 = u_xlati11;
  let x_373 : i32 = u_xlati11;
  let x_377 : vec4<f32> = x_242.x_MainLightWorldToShadow[((x_370 + 1i) / 4i)][((x_373 + 1i) % 4i)];
  let x_379 : vec3<f32> = (vec3<f32>(x_368.y, x_368.y, x_368.y) * vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : i32 = u_xlati11;
  let x_384 : i32 = u_xlati11;
  let x_387 : vec4<f32> = x_242.x_MainLightWorldToShadow[(x_382 / 4i)][(x_384 % 4i)];
  let x_389 : vec3<f32> = vs_TEXCOORD1;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = ((vec3<f32>(x_387.x, x_387.y, x_387.z) * vec3<f32>(x_389.x, x_389.x, x_389.x)) + vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : i32 = u_xlati11;
  let x_400 : i32 = u_xlati11;
  let x_404 : vec4<f32> = x_242.x_MainLightWorldToShadow[((x_397 + 2i) / 4i)][((x_400 + 2i) % 4i)];
  let x_406 : vec3<f32> = vs_TEXCOORD1;
  let x_409 : vec4<f32> = u_xlat3;
  let x_411 : vec3<f32> = ((vec3<f32>(x_404.x, x_404.y, x_404.z) * vec3<f32>(x_406.z, x_406.z, x_406.z)) + vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat3;
  let x_416 : i32 = u_xlati11;
  let x_419 : i32 = u_xlati11;
  let x_423 : vec4<f32> = x_242.x_MainLightWorldToShadow[((x_416 + 3i) / 4i)][((x_419 + 3i) % 4i)];
  let x_425 : vec3<f32> = (vec3<f32>(x_414.x, x_414.y, x_414.z) + vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_429 : f32 = vs_TEXCOORD1.y;
  let x_432 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat11.x = (x_429 * x_432);
  let x_436 : f32 = x_44.unity_MatrixV[0i].z;
  let x_438 : f32 = vs_TEXCOORD1.x;
  let x_441 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_436 * x_438) + x_441);
  let x_445 : f32 = x_44.unity_MatrixV[2i].z;
  let x_447 : f32 = vs_TEXCOORD1.z;
  let x_450 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_445 * x_447) + x_450);
  let x_454 : f32 = u_xlat11.x;
  let x_456 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat11.x = (x_454 + x_456);
  let x_460 : f32 = u_xlat11.x;
  let x_464 : f32 = x_44.x_ProjectionParams.y;
  u_xlat11.x = (-(x_460) + -(x_464));
  let x_469 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_469, 0.0f);
  let x_473 : f32 = u_xlat11.x;
  let x_476 : f32 = x_44.unity_FogParams.x;
  u_xlat11.x = (x_473 * x_476);
  let x_485 : vec2<f32> = vs_TEXCOORD7;
  let x_487 : f32 = x_44.x_GlobalMipBias.x;
  let x_488 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_485, x_487);
  let x_489 : vec3<f32> = vec3<f32>(x_488.x, x_488.y, x_488.z);
  let x_490 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_493 : vec4<f32> = u_xlat3;
  let x_494 : vec2<f32> = vec2<f32>(x_493.x, x_493.y);
  let x_496 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_494.x, x_494.y, x_496);
  let x_508 : vec3<f32> = txVec0;
  let x_510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_508.xy, x_508.z);
  u_xlat33 = x_510;
  let x_513 : f32 = x_242.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_513) + 1.0f);
  let x_517 : f32 = u_xlat33;
  let x_519 : f32 = x_242.x_MainLightShadowParams.x;
  let x_522 : f32 = u_xlat1.x;
  u_xlat33 = ((x_517 * x_519) + x_522);
  let x_526 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_526);
  let x_530 : f32 = u_xlat3.z;
  u_xlatb35 = (x_530 >= 1.0f);
  let x_532 : bool = u_xlatb1;
  let x_533 : bool = u_xlatb35;
  u_xlatb1 = (x_532 | x_533);
  let x_535 : bool = u_xlatb1;
  let x_536 : f32 = u_xlat33;
  u_xlat33 = select(x_536, 1.0f, x_535);
  let x_538 : vec3<f32> = vs_TEXCOORD1;
  let x_541 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_543 : vec3<f32> = (x_538 + -(x_541));
  let x_544 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec4<f32> = u_xlat3;
  let x_548 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_546.x, x_546.y, x_546.z), vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_553 : f32 = u_xlat1.x;
  let x_555 : f32 = x_242.x_MainLightShadowParams.z;
  let x_558 : f32 = x_242.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_553 * x_555) + x_558);
  let x_562 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_562, 0.0f, 1.0f);
  let x_566 : f32 = u_xlat33;
  u_xlat35 = (-(x_566) + 1.0f);
  let x_570 : f32 = u_xlat1.x;
  let x_571 : f32 = u_xlat35;
  let x_573 : f32 = u_xlat33;
  u_xlat33 = ((x_570 * x_571) + x_573);
  let x_581 : f32 = x_579.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_581 == -1.0f));
  let x_583 : bool = u_xlatb1;
  if (x_583) {
    let x_586 : vec3<f32> = vs_TEXCOORD1;
    let x_589 : vec4<f32> = x_579.x_MainLightWorldToLight[1i];
    let x_591 : vec2<f32> = (vec2<f32>(x_586.y, x_586.y) * vec2<f32>(x_589.x, x_589.y));
    let x_592 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
    let x_595 : vec4<f32> = x_579.x_MainLightWorldToLight[0i];
    let x_597 : vec3<f32> = vs_TEXCOORD1;
    let x_600 : vec4<f32> = u_xlat3;
    let x_602 : vec2<f32> = ((vec2<f32>(x_595.x, x_595.y) * vec2<f32>(x_597.x, x_597.x)) + vec2<f32>(x_600.x, x_600.y));
    let x_603 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_602.x, x_602.y, x_603.z, x_603.w);
    let x_606 : vec4<f32> = x_579.x_MainLightWorldToLight[2i];
    let x_608 : vec3<f32> = vs_TEXCOORD1;
    let x_611 : vec4<f32> = u_xlat3;
    let x_613 : vec2<f32> = ((vec2<f32>(x_606.x, x_606.y) * vec2<f32>(x_608.z, x_608.z)) + vec2<f32>(x_611.x, x_611.y));
    let x_614 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
    let x_616 : vec4<f32> = u_xlat3;
    let x_619 : vec4<f32> = x_579.x_MainLightWorldToLight[3i];
    let x_621 : vec2<f32> = (vec2<f32>(x_616.x, x_616.y) + vec2<f32>(x_619.x, x_619.y));
    let x_622 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
    let x_624 : vec4<f32> = u_xlat3;
    let x_628 : vec2<f32> = ((vec2<f32>(x_624.x, x_624.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_629 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_628.x, x_628.y, x_629.z, x_629.w);
    let x_636 : vec4<f32> = u_xlat3;
    let x_639 : f32 = x_44.x_GlobalMipBias.x;
    let x_640 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_636.x, x_636.y), x_639);
    u_xlat3 = x_640;
    let x_645 : f32 = x_579.x_MainLightCookieTextureFormat;
    let x_647 : f32 = x_579.x_MainLightCookieTextureFormat;
    let x_649 : f32 = x_579.x_MainLightCookieTextureFormat;
    let x_651 : f32 = x_579.x_MainLightCookieTextureFormat;
    let x_652 : vec4<f32> = vec4<f32>(x_645, x_647, x_649, x_651);
    let x_659 : vec4<bool> = (vec4<f32>(x_652.x, x_652.y, x_652.z, x_652.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_659.x, x_659.y);
    let x_662 : bool = u_xlatb5.y;
    if (x_662) {
      let x_667 : f32 = u_xlat3.w;
      x_663 = x_667;
    } else {
      let x_670 : f32 = u_xlat3.x;
      x_663 = x_670;
    }
    let x_671 : f32 = x_663;
    u_xlat1.x = x_671;
    let x_674 : bool = u_xlatb5.x;
    if (x_674) {
      let x_678 : vec4<f32> = u_xlat3;
      x_675 = vec3<f32>(x_678.x, x_678.y, x_678.z);
    } else {
      let x_681 : vec4<f32> = u_xlat1;
      x_675 = vec3<f32>(x_681.x, x_681.x, x_681.x);
    }
    let x_683 : vec3<f32> = x_675;
    let x_684 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_690 : vec4<f32> = u_xlat3;
  let x_693 : vec4<f32> = x_44.x_MainLightColor;
  let x_695 : vec3<f32> = (vec3<f32>(x_690.x, x_690.y, x_690.z) * vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : f32 = u_xlat33;
  let x_700 : f32 = x_184.unity_LightData.z;
  u_xlat33 = (x_698 * x_700);
  let x_702 : f32 = u_xlat33;
  let x_704 : vec4<f32> = u_xlat3;
  let x_706 : vec3<f32> = (vec3<f32>(x_702, x_702, x_702) * vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec3<f32> = u_xlat2;
  let x_711 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat33 = dot(x_709, vec3<f32>(x_711.x, x_711.y, x_711.z));
  let x_714 : f32 = u_xlat33;
  u_xlat33 = clamp(x_714, 0.0f, 1.0f);
  let x_716 : f32 = u_xlat33;
  let x_718 : vec4<f32> = u_xlat3;
  let x_720 : vec3<f32> = (vec3<f32>(x_716, x_716, x_716) * vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec4<f32> = u_xlat1;
  let x_725 : vec4<f32> = u_xlat3;
  let x_727 : vec3<f32> = (vec3<f32>(x_723.y, x_723.z, x_723.w) * vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : vec4<f32> = u_xlat0;
  let x_732 : vec4<f32> = u_xlat3;
  let x_734 : vec3<f32> = (vec3<f32>(x_730.x, x_730.x, x_730.x) * vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_735 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_738 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_740 : f32 = x_184.unity_LightData.y;
  u_xlat33 = min(x_738, x_740);
  let x_743 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_743));
  let x_747 : f32 = x_579.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_749 : f32 = x_579.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_751 : f32 = x_579.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_753 : f32 = x_579.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_754 : vec4<f32> = vec4<f32>(x_747, x_749, x_751, x_753);
  let x_760 : vec4<bool> = (vec4<f32>(x_754.x, x_754.y, x_754.z, x_754.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_760.x, x_760.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_771 : u32 = u_xlatu_loop_1;
    let x_772 : u32 = u_xlatu33;
    if ((x_771 < x_772)) {
    } else {
      break;
    }
    let x_775 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_775 >> 2u);
    let x_778 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_778 & 3u));
    let x_781 : u32 = u_xlatu35;
    let x_784 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_781)];
    let x_794 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_799 : vec4<u32> = indexable[x_794];
    u_xlat35 = dot(x_784, bitcast<vec4<f32>>(x_799));
    let x_802 : f32 = u_xlat35;
    u_xlatu35 = bitcast<u32>(i32(x_802));
    let x_806 : vec3<f32> = vs_TEXCOORD1;
    let x_818 : u32 = u_xlatu35;
    let x_821 : vec4<f32> = x_817.x_AdditionalLightsPosition[bitcast<i32>(x_818)];
    let x_824 : u32 = u_xlatu35;
    let x_827 : vec4<f32> = x_817.x_AdditionalLightsPosition[bitcast<i32>(x_824)];
    u_xlat7 = ((-(x_806) * vec3<f32>(x_821.w, x_821.w, x_821.w)) + vec3<f32>(x_827.x, x_827.y, x_827.z));
    let x_831 : vec3<f32> = u_xlat7;
    let x_832 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_831, x_832);
    let x_834 : f32 = u_xlat36;
    u_xlat36 = max(x_834, 6.10351562e-05f);
    let x_838 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_838);
    let x_840 : f32 = u_xlat37;
    let x_842 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_840, x_840, x_840) * x_842);
    let x_844 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_844);
    let x_846 : f32 = u_xlat36;
    let x_847 : u32 = u_xlatu35;
    let x_850 : f32 = x_817.x_AdditionalLightsAttenuation[bitcast<i32>(x_847)].x;
    u_xlat36 = (x_846 * x_850);
    let x_852 : f32 = u_xlat36;
    let x_854 : f32 = u_xlat36;
    u_xlat36 = ((-(x_852) * x_854) + 1.0f);
    let x_857 : f32 = u_xlat36;
    u_xlat36 = max(x_857, 0.0f);
    let x_859 : f32 = u_xlat36;
    let x_860 : f32 = u_xlat36;
    u_xlat36 = (x_859 * x_860);
    let x_862 : f32 = u_xlat36;
    let x_863 : f32 = u_xlat37;
    u_xlat36 = (x_862 * x_863);
    let x_865 : u32 = u_xlatu35;
    let x_868 : vec4<f32> = x_817.x_AdditionalLightsSpotDir[bitcast<i32>(x_865)];
    let x_870 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_868.x, x_868.y, x_868.z), x_870);
    let x_872 : f32 = u_xlat37;
    let x_873 : u32 = u_xlatu35;
    let x_876 : f32 = x_817.x_AdditionalLightsAttenuation[bitcast<i32>(x_873)].z;
    let x_878 : u32 = u_xlatu35;
    let x_881 : f32 = x_817.x_AdditionalLightsAttenuation[bitcast<i32>(x_878)].w;
    u_xlat37 = ((x_872 * x_876) + x_881);
    let x_883 : f32 = u_xlat37;
    u_xlat37 = clamp(x_883, 0.0f, 1.0f);
    let x_885 : f32 = u_xlat37;
    let x_886 : f32 = u_xlat37;
    u_xlat37 = (x_885 * x_886);
    let x_888 : f32 = u_xlat36;
    let x_889 : f32 = u_xlat37;
    u_xlat36 = (x_888 * x_889);
    let x_892 : u32 = u_xlatu35;
    u_xlatu37 = (x_892 >> 5u);
    let x_895 : u32 = u_xlatu35;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_895) & 31i)));
    let x_901 : i32 = u_xlati27;
    let x_903 : u32 = u_xlatu37;
    let x_906 : f32 = x_579.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_903)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_901) & bitcast<u32>(x_906)));
    let x_910 : i32 = u_xlati37;
    if ((x_910 != 0i)) {
      let x_920 : u32 = u_xlatu35;
      let x_923 : f32 = x_919.x_AdditionalLightsLightTypes[bitcast<i32>(x_920)].el;
      u_xlati37 = i32(x_923);
      let x_925 : i32 = u_xlati37;
      u_xlati27 = select(1i, 0i, (x_925 != 0i));
      let x_929 : u32 = u_xlatu35;
      u_xlati38 = (bitcast<i32>(x_929) << bitcast<u32>(2i));
      let x_932 : i32 = u_xlati27;
      if ((x_932 != 0i)) {
        let x_937 : vec3<f32> = vs_TEXCOORD1;
        let x_939 : i32 = u_xlati38;
        let x_942 : i32 = u_xlati38;
        let x_946 : vec4<f32> = x_919.x_AdditionalLightsWorldToLights[((x_939 + 1i) / 4i)][((x_942 + 1i) % 4i)];
        let x_948 : vec3<f32> = (vec3<f32>(x_937.y, x_937.y, x_937.y) * vec3<f32>(x_946.x, x_946.y, x_946.w));
        let x_949 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
        let x_951 : i32 = u_xlati38;
        let x_953 : i32 = u_xlati38;
        let x_956 : vec4<f32> = x_919.x_AdditionalLightsWorldToLights[(x_951 / 4i)][(x_953 % 4i)];
        let x_958 : vec3<f32> = vs_TEXCOORD1;
        let x_961 : vec4<f32> = u_xlat8;
        let x_963 : vec3<f32> = ((vec3<f32>(x_956.x, x_956.y, x_956.w) * vec3<f32>(x_958.x, x_958.x, x_958.x)) + vec3<f32>(x_961.x, x_961.y, x_961.z));
        let x_964 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
        let x_966 : i32 = u_xlati38;
        let x_969 : i32 = u_xlati38;
        let x_973 : vec4<f32> = x_919.x_AdditionalLightsWorldToLights[((x_966 + 2i) / 4i)][((x_969 + 2i) % 4i)];
        let x_975 : vec3<f32> = vs_TEXCOORD1;
        let x_978 : vec4<f32> = u_xlat8;
        let x_980 : vec3<f32> = ((vec3<f32>(x_973.x, x_973.y, x_973.w) * vec3<f32>(x_975.z, x_975.z, x_975.z)) + vec3<f32>(x_978.x, x_978.y, x_978.z));
        let x_981 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
        let x_983 : vec4<f32> = u_xlat8;
        let x_985 : i32 = u_xlati38;
        let x_988 : i32 = u_xlati38;
        let x_992 : vec4<f32> = x_919.x_AdditionalLightsWorldToLights[((x_985 + 3i) / 4i)][((x_988 + 3i) % 4i)];
        let x_994 : vec3<f32> = (vec3<f32>(x_983.x, x_983.y, x_983.z) + vec3<f32>(x_992.x, x_992.y, x_992.w));
        let x_995 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
        let x_997 : vec4<f32> = u_xlat8;
        let x_999 : vec4<f32> = u_xlat8;
        let x_1001 : vec2<f32> = (vec2<f32>(x_997.x, x_997.y) / vec2<f32>(x_999.z, x_999.z));
        let x_1002 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1001.x, x_1001.y, x_1002.z, x_1002.w);
        let x_1004 : vec4<f32> = u_xlat8;
        let x_1007 : vec2<f32> = ((vec2<f32>(x_1004.x, x_1004.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1008 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
        let x_1010 : vec4<f32> = u_xlat8;
        let x_1014 : vec2<f32> = clamp(vec2<f32>(x_1010.x, x_1010.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1015 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1014.x, x_1014.y, x_1015.z, x_1015.w);
        let x_1017 : u32 = u_xlatu35;
        let x_1020 : vec4<f32> = x_919.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1017)];
        let x_1022 : vec4<f32> = u_xlat8;
        let x_1025 : u32 = u_xlatu35;
        let x_1028 : vec4<f32> = x_919.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1025)];
        let x_1030 : vec2<f32> = ((vec2<f32>(x_1020.x, x_1020.y) * vec2<f32>(x_1022.x, x_1022.y)) + vec2<f32>(x_1028.z, x_1028.w));
        let x_1031 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1030.x, x_1030.y, x_1031.z, x_1031.w);
      } else {
        let x_1035 : i32 = u_xlati37;
        u_xlatb37 = (x_1035 == 1i);
        let x_1037 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_1037);
        let x_1039 : i32 = u_xlati37;
        if ((x_1039 != 0i)) {
          let x_1045 : vec3<f32> = vs_TEXCOORD1;
          let x_1047 : i32 = u_xlati38;
          let x_1050 : i32 = u_xlati38;
          let x_1054 : vec4<f32> = x_919.x_AdditionalLightsWorldToLights[((x_1047 + 1i) / 4i)][((x_1050 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1045.y, x_1045.y) * vec2<f32>(x_1054.x, x_1054.y));
          let x_1057 : i32 = u_xlati38;
          let x_1059 : i32 = u_xlati38;
          let x_1062 : vec4<f32> = x_919.x_AdditionalLightsWorldToLights[(x_1057 / 4i)][(x_1059 % 4i)];
          let x_1064 : vec3<f32> = vs_TEXCOORD1;
          let x_1067 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1062.x, x_1062.y) * vec2<f32>(x_1064.x, x_1064.x)) + x_1067);
          let x_1069 : i32 = u_xlati38;
          let x_1072 : i32 = u_xlati38;
          let x_1076 : vec4<f32> = x_919.x_AdditionalLightsWorldToLights[((x_1069 + 2i) / 4i)][((x_1072 + 2i) % 4i)];
          let x_1078 : vec3<f32> = vs_TEXCOORD1;
          let x_1081 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1076.x, x_1076.y) * vec2<f32>(x_1078.z, x_1078.z)) + x_1081);
          let x_1083 : vec2<f32> = u_xlat30;
          let x_1084 : i32 = u_xlati38;
          let x_1087 : i32 = u_xlati38;
          let x_1091 : vec4<f32> = x_919.x_AdditionalLightsWorldToLights[((x_1084 + 3i) / 4i)][((x_1087 + 3i) % 4i)];
          u_xlat30 = (x_1083 + vec2<f32>(x_1091.x, x_1091.y));
          let x_1094 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1094 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1097 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1097);
          let x_1099 : u32 = u_xlatu35;
          let x_1102 : vec4<f32> = x_919.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1099)];
          let x_1104 : vec2<f32> = u_xlat30;
          let x_1106 : u32 = u_xlatu35;
          let x_1109 : vec4<f32> = x_919.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1106)];
          let x_1111 : vec2<f32> = ((vec2<f32>(x_1102.x, x_1102.y) * x_1104) + vec2<f32>(x_1109.z, x_1109.w));
          let x_1112 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1111.x, x_1111.y, x_1112.z, x_1112.w);
        } else {
          let x_1116 : vec3<f32> = vs_TEXCOORD1;
          let x_1118 : i32 = u_xlati38;
          let x_1121 : i32 = u_xlati38;
          let x_1125 : vec4<f32> = x_919.x_AdditionalLightsWorldToLights[((x_1118 + 1i) / 4i)][((x_1121 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1116.y, x_1116.y, x_1116.y, x_1116.y) * x_1125);
          let x_1127 : i32 = u_xlati38;
          let x_1129 : i32 = u_xlati38;
          let x_1132 : vec4<f32> = x_919.x_AdditionalLightsWorldToLights[(x_1127 / 4i)][(x_1129 % 4i)];
          let x_1133 : vec3<f32> = vs_TEXCOORD1;
          let x_1136 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1132 * vec4<f32>(x_1133.x, x_1133.x, x_1133.x, x_1133.x)) + x_1136);
          let x_1138 : i32 = u_xlati38;
          let x_1141 : i32 = u_xlati38;
          let x_1145 : vec4<f32> = x_919.x_AdditionalLightsWorldToLights[((x_1138 + 2i) / 4i)][((x_1141 + 2i) % 4i)];
          let x_1146 : vec3<f32> = vs_TEXCOORD1;
          let x_1149 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1145 * vec4<f32>(x_1146.z, x_1146.z, x_1146.z, x_1146.z)) + x_1149);
          let x_1151 : vec4<f32> = u_xlat9;
          let x_1152 : i32 = u_xlati38;
          let x_1155 : i32 = u_xlati38;
          let x_1159 : vec4<f32> = x_919.x_AdditionalLightsWorldToLights[((x_1152 + 3i) / 4i)][((x_1155 + 3i) % 4i)];
          u_xlat9 = (x_1151 + x_1159);
          let x_1161 : vec4<f32> = u_xlat9;
          let x_1163 : vec4<f32> = u_xlat9;
          let x_1165 : vec3<f32> = (vec3<f32>(x_1161.x, x_1161.y, x_1161.z) / vec3<f32>(x_1163.w, x_1163.w, x_1163.w));
          let x_1166 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
          let x_1168 : vec4<f32> = u_xlat9;
          let x_1170 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(vec3<f32>(x_1168.x, x_1168.y, x_1168.z), vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
          let x_1173 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_1173);
          let x_1175 : f32 = u_xlat37;
          let x_1177 : vec4<f32> = u_xlat9;
          let x_1179 : vec3<f32> = (vec3<f32>(x_1175, x_1175, x_1175) * vec3<f32>(x_1177.x, x_1177.y, x_1177.z));
          let x_1180 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
          let x_1182 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(abs(vec3<f32>(x_1182.x, x_1182.y, x_1182.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1187 : f32 = u_xlat37;
          u_xlat37 = max(x_1187, 0.000001f);
          let x_1190 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_1190);
          let x_1193 : f32 = u_xlat37;
          let x_1195 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1193, x_1193, x_1193) * vec3<f32>(x_1195.z, x_1195.x, x_1195.y));
          let x_1199 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1199);
          let x_1203 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1203, 0.0f, 1.0f);
          let x_1207 : vec3<f32> = u_xlat10;
          let x_1210 : vec4<bool> = (vec4<f32>(x_1207.y, x_1207.z, x_1207.y, x_1207.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1210.x, x_1210.y);
          let x_1214 : bool = u_xlatb27.x;
          if (x_1214) {
            let x_1219 : f32 = u_xlat10.x;
            x_1215 = x_1219;
          } else {
            let x_1222 : f32 = u_xlat10.x;
            x_1215 = -(x_1222);
          }
          let x_1224 : f32 = x_1215;
          u_xlat27.x = x_1224;
          let x_1227 : bool = u_xlatb27.y;
          if (x_1227) {
            let x_1232 : f32 = u_xlat10.x;
            x_1228 = x_1232;
          } else {
            let x_1235 : f32 = u_xlat10.x;
            x_1228 = -(x_1235);
          }
          let x_1237 : f32 = x_1228;
          u_xlat27.y = x_1237;
          let x_1239 : vec4<f32> = u_xlat9;
          let x_1241 : f32 = u_xlat37;
          let x_1244 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1239.x, x_1239.y) * vec2<f32>(x_1241, x_1241)) + x_1244);
          let x_1246 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1246 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1249 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1249, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1253 : u32 = u_xlatu35;
          let x_1256 : vec4<f32> = x_919.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1253)];
          let x_1258 : vec2<f32> = u_xlat27;
          let x_1260 : u32 = u_xlatu35;
          let x_1263 : vec4<f32> = x_919.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1260)];
          let x_1265 : vec2<f32> = ((vec2<f32>(x_1256.x, x_1256.y) * x_1258) + vec2<f32>(x_1263.z, x_1263.w));
          let x_1266 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1265.x, x_1265.y, x_1266.z, x_1266.w);
        }
      }
      let x_1273 : vec4<f32> = u_xlat8;
      let x_1276 : f32 = x_44.x_GlobalMipBias.x;
      let x_1277 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1273.x, x_1273.y), x_1276);
      u_xlat8 = x_1277;
      let x_1279 : bool = u_xlatb5.y;
      if (x_1279) {
        let x_1284 : f32 = u_xlat8.w;
        x_1280 = x_1284;
      } else {
        let x_1287 : f32 = u_xlat8.x;
        x_1280 = x_1287;
      }
      let x_1288 : f32 = x_1280;
      u_xlat37 = x_1288;
      let x_1290 : bool = u_xlatb5.x;
      if (x_1290) {
        let x_1294 : vec4<f32> = u_xlat8;
        x_1291 = vec3<f32>(x_1294.x, x_1294.y, x_1294.z);
      } else {
        let x_1297 : f32 = u_xlat37;
        x_1291 = vec3<f32>(x_1297, x_1297, x_1297);
      }
      let x_1299 : vec3<f32> = x_1291;
      let x_1300 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1300.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1306 : vec4<f32> = u_xlat8;
    let x_1308 : u32 = u_xlatu35;
    let x_1311 : vec4<f32> = x_817.x_AdditionalLightsColor[bitcast<i32>(x_1308)];
    let x_1313 : vec3<f32> = (vec3<f32>(x_1306.x, x_1306.y, x_1306.z) * vec3<f32>(x_1311.x, x_1311.y, x_1311.z));
    let x_1314 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1314.w);
    let x_1316 : f32 = u_xlat36;
    let x_1318 : vec4<f32> = u_xlat8;
    let x_1320 : vec3<f32> = (vec3<f32>(x_1316, x_1316, x_1316) * vec3<f32>(x_1318.x, x_1318.y, x_1318.z));
    let x_1321 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);
    let x_1323 : vec3<f32> = u_xlat2;
    let x_1324 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1323, x_1324);
    let x_1326 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1326, 0.0f, 1.0f);
    let x_1328 : f32 = u_xlat35;
    let x_1330 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1328, x_1328, x_1328) * vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
    let x_1333 : vec4<f32> = u_xlat1;
    let x_1335 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1333.y, x_1333.z, x_1333.w) * x_1335);
    let x_1337 : vec3<f32> = u_xlat7;
    let x_1338 : vec4<f32> = u_xlat0;
    let x_1341 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1337 * vec3<f32>(x_1338.x, x_1338.x, x_1338.x)) + x_1341);

    continuing {
      let x_1343 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1343 + bitcast<u32>(1i));
    }
  }
  let x_1345 : vec4<f32> = u_xlat4;
  let x_1347 : vec4<f32> = u_xlat1;
  let x_1350 : vec4<f32> = u_xlat3;
  let x_1352 : vec3<f32> = ((vec3<f32>(x_1345.x, x_1345.y, x_1345.z) * vec3<f32>(x_1347.y, x_1347.z, x_1347.w)) + vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
  let x_1353 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
  let x_1355 : vec3<f32> = u_xlat6;
  let x_1356 : vec4<f32> = u_xlat1;
  let x_1358 : vec3<f32> = (x_1355 + vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
  let x_1359 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
  let x_1362 : f32 = u_xlat11.x;
  let x_1364 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1362 * -(x_1364));
  let x_1369 : f32 = u_xlat11.x;
  u_xlat11.x = exp2(x_1369);
  let x_1372 : vec4<f32> = u_xlat1;
  let x_1375 : vec4<f32> = x_44.unity_FogColor;
  let x_1378 : vec3<f32> = (vec3<f32>(x_1372.x, x_1372.y, x_1372.z) + -(vec3<f32>(x_1375.x, x_1375.y, x_1375.z)));
  let x_1379 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1379.w);
  let x_1383 : vec3<f32> = u_xlat11;
  let x_1385 : vec4<f32> = u_xlat1;
  let x_1389 : vec4<f32> = x_44.unity_FogColor;
  let x_1391 : vec3<f32> = ((vec3<f32>(x_1383.x, x_1383.x, x_1383.x) * vec3<f32>(x_1385.x, x_1385.y, x_1385.z)) + vec3<f32>(x_1389.x, x_1389.y, x_1389.z));
  let x_1392 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1391.x, x_1391.y, x_1391.z, x_1392.w);
  let x_1395 : f32 = x_57.x_Surface;
  u_xlatb11 = (x_1395 == 1.0f);
  let x_1397 : bool = u_xlatb11;
  let x_1398 : bool = u_xlatb22;
  u_xlatb11 = (x_1397 | x_1398);
  let x_1400 : bool = u_xlatb11;
  if (x_1400) {
    let x_1405 : f32 = u_xlat0.x;
    x_1401 = x_1405;
  } else {
    x_1401 = 1.0f;
  }
  let x_1407 : f32 = x_1401;
  SV_Target0.w = x_1407;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

