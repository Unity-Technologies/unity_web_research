struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_242 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_571 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_816 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_918 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_130 : f32;
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
  var x_524 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_655 : f32;
  var x_666 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu1 : u32;
  var u_xlati35 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlatu36 : u32;
  var u_xlati37 : i32;
  var u_xlati36 : i32;
  var u_xlati27 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb36 : bool;
  var u_xlat30 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var x_1214 : f32;
  var x_1227 : f32;
  var x_1279 : f32;
  var x_1290 : vec3<f32>;
  var x_1372 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_68 >= x_71);
  let x_73 : bool = u_xlatb0;
  if (x_73) {
    let x_78 : f32 = u_xlat1.x;
    x_74 = x_78;
  } else {
    x_74 = 0.0f;
  }
  let x_81 : f32 = x_74;
  u_xlat0.x = x_81;
  let x_86 : f32 = u_xlat0.w;
  let x_88 : f32 = x_56.x_BaseColor.w;
  let x_91 : f32 = x_56.x_Cutoff;
  u_xlat11.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat33;
  let x_105 : f32 = u_xlat22;
  u_xlat22 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat22;
  u_xlat22 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat11.x;
  let x_113 : f32 = u_xlat22;
  u_xlat11.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat11.x;
  u_xlat11.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_122, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb22;
  if (x_129) {
    let x_134 : f32 = u_xlat11.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat11.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat11.x;
  u_xlatb11 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb11;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_157 : vec4<f32> = hlslcc_FragCoord;
  let x_161 : f32 = x_43.x_DitheringTextureInvSize;
  let x_163 : vec2<f32> = (vec2<f32>(x_157.x, x_157.y) * vec2<f32>(x_161, x_161));
  let x_164 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_163.x, x_164.y, x_163.y);
  let x_171 : vec3<f32> = u_xlat11;
  let x_174 : f32 = x_43.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_171.x, x_171.z), x_174);
  u_xlat11.x = x_175.w;
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
  let x_434 : vec2<f32> = vs_TEXCOORD7;
  let x_436 : f32 = x_43.x_GlobalMipBias.x;
  let x_437 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_434, x_436);
  u_xlat4 = x_437;
  let x_442 : vec2<f32> = vs_TEXCOORD7;
  let x_444 : f32 = x_43.x_GlobalMipBias.x;
  let x_445 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_442, x_444);
  u_xlat5 = vec3<f32>(x_445.x, x_445.y, x_445.z);
  let x_447 : vec4<f32> = u_xlat4;
  let x_451 : vec3<f32> = (vec3<f32>(x_447.x, x_447.y, x_447.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_452 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec3<f32> = u_xlat2;
  let x_455 : vec4<f32> = u_xlat4;
  u_xlat11.x = dot(x_454, vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_460 : f32 = u_xlat11.x;
  u_xlat11.x = (x_460 + 0.5f);
  let x_463 : vec3<f32> = u_xlat11;
  let x_465 : vec3<f32> = u_xlat5;
  let x_466 : vec3<f32> = (vec3<f32>(x_463.x, x_463.x, x_463.x) * x_465);
  let x_467 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_470 : f32 = u_xlat4.w;
  u_xlat11.x = max(x_470, 0.0001f);
  let x_473 : vec4<f32> = u_xlat4;
  let x_475 : vec3<f32> = u_xlat11;
  let x_477 : vec3<f32> = (vec3<f32>(x_473.x, x_473.y, x_473.z) / vec3<f32>(x_475.x, x_475.x, x_475.x));
  let x_478 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_481 : vec4<f32> = u_xlat3;
  let x_482 : vec2<f32> = vec2<f32>(x_481.x, x_481.y);
  let x_484 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_482.x, x_482.y, x_484);
  let x_496 : vec3<f32> = txVec0;
  let x_498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_496.xy, x_496.z);
  u_xlat11.x = x_498;
  let x_502 : f32 = x_242.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_502) + 1.0f);
  let x_506 : f32 = u_xlat11.x;
  let x_508 : f32 = x_242.x_MainLightShadowParams.x;
  let x_510 : f32 = u_xlat33;
  u_xlat11.x = ((x_506 * x_508) + x_510);
  let x_514 : f32 = u_xlat3.z;
  u_xlatb33 = (0.0f >= x_514);
  let x_518 : f32 = u_xlat3.z;
  u_xlatb1 = (x_518 >= 1.0f);
  let x_520 : bool = u_xlatb33;
  let x_521 : bool = u_xlatb1;
  u_xlatb33 = (x_520 | x_521);
  let x_523 : bool = u_xlatb33;
  if (x_523) {
    x_524 = 1.0f;
  } else {
    let x_529 : f32 = u_xlat11.x;
    x_524 = x_529;
  }
  let x_530 : f32 = x_524;
  u_xlat11.x = x_530;
  let x_532 : vec3<f32> = vs_TEXCOORD1;
  let x_535 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_537 : vec3<f32> = (x_532 + -(x_535));
  let x_538 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat3;
  let x_542 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(vec3<f32>(x_540.x, x_540.y, x_540.z), vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : f32 = u_xlat33;
  let x_547 : f32 = x_242.x_MainLightShadowParams.z;
  let x_550 : f32 = x_242.x_MainLightShadowParams.w;
  u_xlat33 = ((x_545 * x_547) + x_550);
  let x_552 : f32 = u_xlat33;
  u_xlat33 = clamp(x_552, 0.0f, 1.0f);
  let x_555 : f32 = u_xlat11.x;
  u_xlat1.x = (-(x_555) + 1.0f);
  let x_559 : f32 = u_xlat33;
  let x_561 : f32 = u_xlat1.x;
  let x_564 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_559 * x_561) + x_564);
  let x_573 : f32 = x_571.x_MainLightCookieTextureFormat;
  u_xlatb33 = !((x_573 == -1.0f));
  let x_575 : bool = u_xlatb33;
  if (x_575) {
    let x_578 : vec3<f32> = vs_TEXCOORD1;
    let x_581 : vec4<f32> = x_571.x_MainLightWorldToLight[1i];
    let x_583 : vec2<f32> = (vec2<f32>(x_578.y, x_578.y) * vec2<f32>(x_581.x, x_581.y));
    let x_584 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
    let x_587 : vec4<f32> = x_571.x_MainLightWorldToLight[0i];
    let x_589 : vec3<f32> = vs_TEXCOORD1;
    let x_592 : vec4<f32> = u_xlat3;
    let x_594 : vec2<f32> = ((vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_589.x, x_589.x)) + vec2<f32>(x_592.x, x_592.y));
    let x_595 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
    let x_598 : vec4<f32> = x_571.x_MainLightWorldToLight[2i];
    let x_600 : vec3<f32> = vs_TEXCOORD1;
    let x_603 : vec4<f32> = u_xlat3;
    let x_605 : vec2<f32> = ((vec2<f32>(x_598.x, x_598.y) * vec2<f32>(x_600.z, x_600.z)) + vec2<f32>(x_603.x, x_603.y));
    let x_606 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
    let x_608 : vec4<f32> = u_xlat3;
    let x_611 : vec4<f32> = x_571.x_MainLightWorldToLight[3i];
    let x_613 : vec2<f32> = (vec2<f32>(x_608.x, x_608.y) + vec2<f32>(x_611.x, x_611.y));
    let x_614 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
    let x_616 : vec4<f32> = u_xlat3;
    let x_620 : vec2<f32> = ((vec2<f32>(x_616.x, x_616.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_621 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
    let x_628 : vec4<f32> = u_xlat3;
    let x_631 : f32 = x_43.x_GlobalMipBias.x;
    let x_632 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_628.x, x_628.y), x_631);
    u_xlat3 = x_632;
    let x_637 : f32 = x_571.x_MainLightCookieTextureFormat;
    let x_639 : f32 = x_571.x_MainLightCookieTextureFormat;
    let x_641 : f32 = x_571.x_MainLightCookieTextureFormat;
    let x_643 : f32 = x_571.x_MainLightCookieTextureFormat;
    let x_644 : vec4<f32> = vec4<f32>(x_637, x_639, x_641, x_643);
    let x_651 : vec4<bool> = (vec4<f32>(x_644.x, x_644.y, x_644.z, x_644.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_651.x, x_651.y);
    let x_654 : bool = u_xlatb5.y;
    if (x_654) {
      let x_659 : f32 = u_xlat3.w;
      x_655 = x_659;
    } else {
      let x_662 : f32 = u_xlat3.x;
      x_655 = x_662;
    }
    let x_663 : f32 = x_655;
    u_xlat33 = x_663;
    let x_665 : bool = u_xlatb5.x;
    if (x_665) {
      let x_669 : vec4<f32> = u_xlat3;
      x_666 = vec3<f32>(x_669.x, x_669.y, x_669.z);
    } else {
      let x_672 : f32 = u_xlat33;
      x_666 = vec3<f32>(x_672, x_672, x_672);
    }
    let x_674 : vec3<f32> = x_666;
    let x_675 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_681 : vec4<f32> = u_xlat3;
  let x_684 : vec4<f32> = x_43.x_MainLightColor;
  let x_686 : vec3<f32> = (vec3<f32>(x_681.x, x_681.y, x_681.z) * vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_687 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_690 : f32 = u_xlat11.x;
  let x_692 : f32 = x_184.unity_LightData.z;
  u_xlat11.x = (x_690 * x_692);
  let x_695 : vec3<f32> = u_xlat11;
  let x_697 : vec4<f32> = u_xlat3;
  let x_699 : vec3<f32> = (vec3<f32>(x_695.x, x_695.x, x_695.x) * vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec3<f32> = u_xlat2;
  let x_704 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat11.x = dot(x_702, vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_709 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_709, 0.0f, 1.0f);
  let x_712 : vec3<f32> = u_xlat11;
  let x_714 : vec4<f32> = u_xlat3;
  let x_716 : vec3<f32> = (vec3<f32>(x_712.x, x_712.x, x_712.x) * vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : vec4<f32> = u_xlat1;
  let x_721 : vec4<f32> = u_xlat3;
  let x_723 : vec3<f32> = (vec3<f32>(x_719.y, x_719.z, x_719.w) * vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_726 : vec4<f32> = u_xlat0;
  let x_728 : vec4<f32> = u_xlat3;
  let x_730 : vec3<f32> = (vec3<f32>(x_726.x, x_726.x, x_726.x) * vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_734 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_736 : f32 = x_184.unity_LightData.y;
  u_xlat11.x = min(x_734, x_736);
  let x_740 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_740));
  let x_744 : f32 = x_571.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_746 : f32 = x_571.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_748 : f32 = x_571.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_750 : f32 = x_571.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_751 : vec4<f32> = vec4<f32>(x_744, x_746, x_748, x_750);
  let x_757 : vec4<bool> = (vec4<f32>(x_751.x, x_751.y, x_751.z, x_751.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_757.x, x_757.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_768 : u32 = u_xlatu_loop_1;
    let x_769 : u32 = u_xlatu11;
    if ((x_768 < x_769)) {
    } else {
      break;
    }
    let x_772 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_772 >> 2u);
    let x_775 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_775 & 3u));
    let x_778 : u32 = u_xlatu1;
    let x_781 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_778)];
    let x_791 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_796 : vec4<u32> = indexable[x_791];
    u_xlat1.x = dot(x_781, bitcast<vec4<f32>>(x_796));
    let x_801 : f32 = u_xlat1.x;
    u_xlatu1 = bitcast<u32>(i32(x_801));
    let x_805 : vec3<f32> = vs_TEXCOORD1;
    let x_817 : u32 = u_xlatu1;
    let x_820 : vec4<f32> = x_816.x_AdditionalLightsPosition[bitcast<i32>(x_817)];
    let x_823 : u32 = u_xlatu1;
    let x_826 : vec4<f32> = x_816.x_AdditionalLightsPosition[bitcast<i32>(x_823)];
    u_xlat7 = ((-(x_805) * vec3<f32>(x_820.w, x_820.w, x_820.w)) + vec3<f32>(x_826.x, x_826.y, x_826.z));
    let x_830 : vec3<f32> = u_xlat7;
    let x_831 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_830, x_831);
    let x_833 : f32 = u_xlat35;
    u_xlat35 = max(x_833, 6.10351562e-05f);
    let x_837 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_837);
    let x_839 : f32 = u_xlat36;
    let x_841 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_839, x_839, x_839) * x_841);
    let x_843 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_843);
    let x_845 : f32 = u_xlat35;
    let x_846 : u32 = u_xlatu1;
    let x_849 : f32 = x_816.x_AdditionalLightsAttenuation[bitcast<i32>(x_846)].x;
    u_xlat35 = (x_845 * x_849);
    let x_851 : f32 = u_xlat35;
    let x_853 : f32 = u_xlat35;
    u_xlat35 = ((-(x_851) * x_853) + 1.0f);
    let x_856 : f32 = u_xlat35;
    u_xlat35 = max(x_856, 0.0f);
    let x_858 : f32 = u_xlat35;
    let x_859 : f32 = u_xlat35;
    u_xlat35 = (x_858 * x_859);
    let x_861 : f32 = u_xlat35;
    let x_862 : f32 = u_xlat36;
    u_xlat35 = (x_861 * x_862);
    let x_864 : u32 = u_xlatu1;
    let x_867 : vec4<f32> = x_816.x_AdditionalLightsSpotDir[bitcast<i32>(x_864)];
    let x_869 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_867.x, x_867.y, x_867.z), x_869);
    let x_871 : f32 = u_xlat36;
    let x_872 : u32 = u_xlatu1;
    let x_875 : f32 = x_816.x_AdditionalLightsAttenuation[bitcast<i32>(x_872)].z;
    let x_877 : u32 = u_xlatu1;
    let x_880 : f32 = x_816.x_AdditionalLightsAttenuation[bitcast<i32>(x_877)].w;
    u_xlat36 = ((x_871 * x_875) + x_880);
    let x_882 : f32 = u_xlat36;
    u_xlat36 = clamp(x_882, 0.0f, 1.0f);
    let x_884 : f32 = u_xlat36;
    let x_885 : f32 = u_xlat36;
    u_xlat36 = (x_884 * x_885);
    let x_887 : f32 = u_xlat35;
    let x_888 : f32 = u_xlat36;
    u_xlat35 = (x_887 * x_888);
    let x_891 : u32 = u_xlatu1;
    u_xlatu36 = (x_891 >> 5u);
    let x_894 : u32 = u_xlatu1;
    u_xlati37 = (1i << bitcast<u32>((bitcast<i32>(x_894) & 31i)));
    let x_900 : i32 = u_xlati37;
    let x_902 : u32 = u_xlatu36;
    let x_905 : f32 = x_571.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_902)].el;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_900) & bitcast<u32>(x_905)));
    let x_909 : i32 = u_xlati36;
    if ((x_909 != 0i)) {
      let x_919 : u32 = u_xlatu1;
      let x_922 : f32 = x_918.x_AdditionalLightsLightTypes[bitcast<i32>(x_919)].el;
      u_xlati36 = i32(x_922);
      let x_924 : i32 = u_xlati36;
      u_xlati37 = select(1i, 0i, (x_924 != 0i));
      let x_928 : u32 = u_xlatu1;
      u_xlati27 = (bitcast<i32>(x_928) << bitcast<u32>(2i));
      let x_931 : i32 = u_xlati37;
      if ((x_931 != 0i)) {
        let x_936 : vec3<f32> = vs_TEXCOORD1;
        let x_938 : i32 = u_xlati27;
        let x_941 : i32 = u_xlati27;
        let x_945 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_938 + 1i) / 4i)][((x_941 + 1i) % 4i)];
        let x_947 : vec3<f32> = (vec3<f32>(x_936.y, x_936.y, x_936.y) * vec3<f32>(x_945.x, x_945.y, x_945.w));
        let x_948 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
        let x_950 : i32 = u_xlati27;
        let x_952 : i32 = u_xlati27;
        let x_955 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[(x_950 / 4i)][(x_952 % 4i)];
        let x_957 : vec3<f32> = vs_TEXCOORD1;
        let x_960 : vec4<f32> = u_xlat8;
        let x_962 : vec3<f32> = ((vec3<f32>(x_955.x, x_955.y, x_955.w) * vec3<f32>(x_957.x, x_957.x, x_957.x)) + vec3<f32>(x_960.x, x_960.y, x_960.z));
        let x_963 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
        let x_965 : i32 = u_xlati27;
        let x_968 : i32 = u_xlati27;
        let x_972 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_965 + 2i) / 4i)][((x_968 + 2i) % 4i)];
        let x_974 : vec3<f32> = vs_TEXCOORD1;
        let x_977 : vec4<f32> = u_xlat8;
        let x_979 : vec3<f32> = ((vec3<f32>(x_972.x, x_972.y, x_972.w) * vec3<f32>(x_974.z, x_974.z, x_974.z)) + vec3<f32>(x_977.x, x_977.y, x_977.z));
        let x_980 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
        let x_982 : vec4<f32> = u_xlat8;
        let x_984 : i32 = u_xlati27;
        let x_987 : i32 = u_xlati27;
        let x_991 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_984 + 3i) / 4i)][((x_987 + 3i) % 4i)];
        let x_993 : vec3<f32> = (vec3<f32>(x_982.x, x_982.y, x_982.z) + vec3<f32>(x_991.x, x_991.y, x_991.w));
        let x_994 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
        let x_996 : vec4<f32> = u_xlat8;
        let x_998 : vec4<f32> = u_xlat8;
        let x_1000 : vec2<f32> = (vec2<f32>(x_996.x, x_996.y) / vec2<f32>(x_998.z, x_998.z));
        let x_1001 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1000.x, x_1000.y, x_1001.z, x_1001.w);
        let x_1003 : vec4<f32> = u_xlat8;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1003.x, x_1003.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1007 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat8;
        let x_1013 : vec2<f32> = clamp(vec2<f32>(x_1009.x, x_1009.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1014 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1013.x, x_1013.y, x_1014.z, x_1014.w);
        let x_1016 : u32 = u_xlatu1;
        let x_1019 : vec4<f32> = x_918.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1016)];
        let x_1021 : vec4<f32> = u_xlat8;
        let x_1024 : u32 = u_xlatu1;
        let x_1027 : vec4<f32> = x_918.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1024)];
        let x_1029 : vec2<f32> = ((vec2<f32>(x_1019.x, x_1019.y) * vec2<f32>(x_1021.x, x_1021.y)) + vec2<f32>(x_1027.z, x_1027.w));
        let x_1030 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1029.x, x_1029.y, x_1030.z, x_1030.w);
      } else {
        let x_1034 : i32 = u_xlati36;
        u_xlatb36 = (x_1034 == 1i);
        let x_1036 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_1036);
        let x_1038 : i32 = u_xlati36;
        if ((x_1038 != 0i)) {
          let x_1044 : vec3<f32> = vs_TEXCOORD1;
          let x_1046 : i32 = u_xlati27;
          let x_1049 : i32 = u_xlati27;
          let x_1053 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_1046 + 1i) / 4i)][((x_1049 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1044.y, x_1044.y) * vec2<f32>(x_1053.x, x_1053.y));
          let x_1056 : i32 = u_xlati27;
          let x_1058 : i32 = u_xlati27;
          let x_1061 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[(x_1056 / 4i)][(x_1058 % 4i)];
          let x_1063 : vec3<f32> = vs_TEXCOORD1;
          let x_1066 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(x_1063.x, x_1063.x)) + x_1066);
          let x_1068 : i32 = u_xlati27;
          let x_1071 : i32 = u_xlati27;
          let x_1075 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_1068 + 2i) / 4i)][((x_1071 + 2i) % 4i)];
          let x_1077 : vec3<f32> = vs_TEXCOORD1;
          let x_1080 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1075.x, x_1075.y) * vec2<f32>(x_1077.z, x_1077.z)) + x_1080);
          let x_1082 : vec2<f32> = u_xlat30;
          let x_1083 : i32 = u_xlati27;
          let x_1086 : i32 = u_xlati27;
          let x_1090 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_1083 + 3i) / 4i)][((x_1086 + 3i) % 4i)];
          u_xlat30 = (x_1082 + vec2<f32>(x_1090.x, x_1090.y));
          let x_1093 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1093 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1096 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1096);
          let x_1098 : u32 = u_xlatu1;
          let x_1101 : vec4<f32> = x_918.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1098)];
          let x_1103 : vec2<f32> = u_xlat30;
          let x_1105 : u32 = u_xlatu1;
          let x_1108 : vec4<f32> = x_918.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1105)];
          let x_1110 : vec2<f32> = ((vec2<f32>(x_1101.x, x_1101.y) * x_1103) + vec2<f32>(x_1108.z, x_1108.w));
          let x_1111 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
        } else {
          let x_1115 : vec3<f32> = vs_TEXCOORD1;
          let x_1117 : i32 = u_xlati27;
          let x_1120 : i32 = u_xlati27;
          let x_1124 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_1117 + 1i) / 4i)][((x_1120 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1115.y, x_1115.y, x_1115.y, x_1115.y) * x_1124);
          let x_1126 : i32 = u_xlati27;
          let x_1128 : i32 = u_xlati27;
          let x_1131 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[(x_1126 / 4i)][(x_1128 % 4i)];
          let x_1132 : vec3<f32> = vs_TEXCOORD1;
          let x_1135 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1131 * vec4<f32>(x_1132.x, x_1132.x, x_1132.x, x_1132.x)) + x_1135);
          let x_1137 : i32 = u_xlati27;
          let x_1140 : i32 = u_xlati27;
          let x_1144 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_1137 + 2i) / 4i)][((x_1140 + 2i) % 4i)];
          let x_1145 : vec3<f32> = vs_TEXCOORD1;
          let x_1148 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1144 * vec4<f32>(x_1145.z, x_1145.z, x_1145.z, x_1145.z)) + x_1148);
          let x_1150 : vec4<f32> = u_xlat9;
          let x_1151 : i32 = u_xlati27;
          let x_1154 : i32 = u_xlati27;
          let x_1158 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_1151 + 3i) / 4i)][((x_1154 + 3i) % 4i)];
          u_xlat9 = (x_1150 + x_1158);
          let x_1160 : vec4<f32> = u_xlat9;
          let x_1162 : vec4<f32> = u_xlat9;
          let x_1164 : vec3<f32> = (vec3<f32>(x_1160.x, x_1160.y, x_1160.z) / vec3<f32>(x_1162.w, x_1162.w, x_1162.w));
          let x_1165 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
          let x_1167 : vec4<f32> = u_xlat9;
          let x_1169 : vec4<f32> = u_xlat9;
          u_xlat36 = dot(vec3<f32>(x_1167.x, x_1167.y, x_1167.z), vec3<f32>(x_1169.x, x_1169.y, x_1169.z));
          let x_1172 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_1172);
          let x_1174 : f32 = u_xlat36;
          let x_1176 : vec4<f32> = u_xlat9;
          let x_1178 : vec3<f32> = (vec3<f32>(x_1174, x_1174, x_1174) * vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
          let x_1179 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
          let x_1181 : vec4<f32> = u_xlat9;
          u_xlat36 = dot(abs(vec3<f32>(x_1181.x, x_1181.y, x_1181.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1186 : f32 = u_xlat36;
          u_xlat36 = max(x_1186, 0.000001f);
          let x_1189 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_1189);
          let x_1192 : f32 = u_xlat36;
          let x_1194 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1192, x_1192, x_1192) * vec3<f32>(x_1194.z, x_1194.x, x_1194.y));
          let x_1198 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1198);
          let x_1202 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1202, 0.0f, 1.0f);
          let x_1206 : vec3<f32> = u_xlat10;
          let x_1209 : vec4<bool> = (vec4<f32>(x_1206.y, x_1206.z, x_1206.y, x_1206.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1209.x, x_1209.y);
          let x_1213 : bool = u_xlatb27.x;
          if (x_1213) {
            let x_1218 : f32 = u_xlat10.x;
            x_1214 = x_1218;
          } else {
            let x_1221 : f32 = u_xlat10.x;
            x_1214 = -(x_1221);
          }
          let x_1223 : f32 = x_1214;
          u_xlat27.x = x_1223;
          let x_1226 : bool = u_xlatb27.y;
          if (x_1226) {
            let x_1231 : f32 = u_xlat10.x;
            x_1227 = x_1231;
          } else {
            let x_1234 : f32 = u_xlat10.x;
            x_1227 = -(x_1234);
          }
          let x_1236 : f32 = x_1227;
          u_xlat27.y = x_1236;
          let x_1238 : vec4<f32> = u_xlat9;
          let x_1240 : f32 = u_xlat36;
          let x_1243 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1240, x_1240)) + x_1243);
          let x_1245 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1245 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1248 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1248, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1252 : u32 = u_xlatu1;
          let x_1255 : vec4<f32> = x_918.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1252)];
          let x_1257 : vec2<f32> = u_xlat27;
          let x_1259 : u32 = u_xlatu1;
          let x_1262 : vec4<f32> = x_918.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1259)];
          let x_1264 : vec2<f32> = ((vec2<f32>(x_1255.x, x_1255.y) * x_1257) + vec2<f32>(x_1262.z, x_1262.w));
          let x_1265 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1264.x, x_1264.y, x_1265.z, x_1265.w);
        }
      }
      let x_1272 : vec4<f32> = u_xlat8;
      let x_1275 : f32 = x_43.x_GlobalMipBias.x;
      let x_1276 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1272.x, x_1272.y), x_1275);
      u_xlat8 = x_1276;
      let x_1278 : bool = u_xlatb5.y;
      if (x_1278) {
        let x_1283 : f32 = u_xlat8.w;
        x_1279 = x_1283;
      } else {
        let x_1286 : f32 = u_xlat8.x;
        x_1279 = x_1286;
      }
      let x_1287 : f32 = x_1279;
      u_xlat36 = x_1287;
      let x_1289 : bool = u_xlatb5.x;
      if (x_1289) {
        let x_1293 : vec4<f32> = u_xlat8;
        x_1290 = vec3<f32>(x_1293.x, x_1293.y, x_1293.z);
      } else {
        let x_1296 : f32 = u_xlat36;
        x_1290 = vec3<f32>(x_1296, x_1296, x_1296);
      }
      let x_1298 : vec3<f32> = x_1290;
      let x_1299 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1305 : vec4<f32> = u_xlat8;
    let x_1307 : u32 = u_xlatu1;
    let x_1310 : vec4<f32> = x_816.x_AdditionalLightsColor[bitcast<i32>(x_1307)];
    let x_1312 : vec3<f32> = (vec3<f32>(x_1305.x, x_1305.y, x_1305.z) * vec3<f32>(x_1310.x, x_1310.y, x_1310.z));
    let x_1313 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
    let x_1315 : f32 = u_xlat35;
    let x_1317 : vec4<f32> = u_xlat8;
    let x_1319 : vec3<f32> = (vec3<f32>(x_1315, x_1315, x_1315) * vec3<f32>(x_1317.x, x_1317.y, x_1317.z));
    let x_1320 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1320.w);
    let x_1322 : vec3<f32> = u_xlat2;
    let x_1323 : vec3<f32> = u_xlat7;
    u_xlat1.x = dot(x_1322, x_1323);
    let x_1327 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_1327, 0.0f, 1.0f);
    let x_1330 : vec4<f32> = u_xlat1;
    let x_1332 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1330.x, x_1330.x, x_1330.x) * vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
    let x_1335 : vec4<f32> = u_xlat1;
    let x_1337 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1335.y, x_1335.z, x_1335.w) * x_1337);
    let x_1339 : vec3<f32> = u_xlat7;
    let x_1340 : vec4<f32> = u_xlat0;
    let x_1343 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1339 * vec3<f32>(x_1340.x, x_1340.x, x_1340.x)) + x_1343);

    continuing {
      let x_1345 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1345 + bitcast<u32>(1i));
    }
  }
  let x_1347 : vec4<f32> = u_xlat4;
  let x_1349 : vec4<f32> = u_xlat1;
  let x_1352 : vec4<f32> = u_xlat3;
  let x_1354 : vec3<f32> = ((vec3<f32>(x_1347.x, x_1347.y, x_1347.z) * vec3<f32>(x_1349.y, x_1349.z, x_1349.w)) + vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
  let x_1355 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
  let x_1359 : vec3<f32> = u_xlat6;
  let x_1360 : vec4<f32> = u_xlat1;
  let x_1362 : vec3<f32> = (x_1359 + vec3<f32>(x_1360.x, x_1360.y, x_1360.z));
  let x_1363 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1362.x, x_1362.y, x_1362.z, x_1363.w);
  let x_1366 : f32 = x_56.x_Surface;
  u_xlatb11 = (x_1366 == 1.0f);
  let x_1368 : bool = u_xlatb11;
  let x_1369 : bool = u_xlatb22;
  u_xlatb11 = (x_1368 | x_1369);
  let x_1371 : bool = u_xlatb11;
  if (x_1371) {
    let x_1376 : f32 = u_xlat0.x;
    x_1372 = x_1376;
  } else {
    x_1372 = 1.0f;
  }
  let x_1378 : f32 = x_1372;
  SV_Target0.w = x_1378;
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

