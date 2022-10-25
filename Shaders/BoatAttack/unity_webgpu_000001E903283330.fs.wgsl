struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_244 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_707 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_956 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1071 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_131 : f32;
  var u_xlatb11 : bool;
  var u_xlatb33 : bool;
  var x_190 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu11 : u32;
  var u_xlati11 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlatb14 : bool;
  var u_xlat14 : f32;
  var u_xlatb5 : vec2<bool>;
  var u_xlat36 : f32;
  var x_794 : f32;
  var x_805 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat27 : vec2<f32>;
  var u_xlatu27 : u32;
  var u_xlati38 : i32;
  var u_xlati27 : i32;
  var u_xlati39 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb27 : bool;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb30 : vec2<bool>;
  var u_xlat30 : vec2<f32>;
  var x_1373 : f32;
  var x_1386 : f32;
  var x_1438 : f32;
  var x_1450 : vec3<f32>;
  var x_1565 : f32;
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
  let x_60 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_57.x_Cutoff;
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
  let x_88 : f32 = x_57.x_BaseColor.w;
  let x_91 : f32 = x_57.x_Cutoff;
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
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_44.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_165.x, x_166.y, x_165.y);
  let x_173 : vec3<f32> = u_xlat11;
  let x_176 : f32 = x_44.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_173.x, x_173.z), x_176);
  u_xlat11.x = x_177.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
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
  let x_207 : f32 = x_185.unity_LODFade.x;
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
  let x_234 : vec3<f32> = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_239 : vec3<f32> = vs_TEXCOORD1;
  let x_246 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres0;
  let x_249 : vec3<f32> = (x_239 + -(vec3<f32>(x_246.x, x_246.y, x_246.z)));
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_253 : vec3<f32> = vs_TEXCOORD1;
  let x_255 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres1;
  let x_258 : vec3<f32> = (x_253 + -(vec3<f32>(x_255.x, x_255.y, x_255.z)));
  let x_259 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_262 : vec3<f32> = vs_TEXCOORD1;
  let x_265 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres2;
  let x_268 : vec3<f32> = (x_262 + -(vec3<f32>(x_265.x, x_265.y, x_265.z)));
  let x_269 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : vec3<f32> = vs_TEXCOORD1;
  let x_274 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_272 + -(vec3<f32>(x_274.x, x_274.y, x_274.z)));
  let x_278 : vec4<f32> = u_xlat3;
  let x_280 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_278.x, x_278.y, x_278.z), vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_284 : vec4<f32> = u_xlat4;
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_291 : vec4<f32> = u_xlat5;
  let x_293 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_297 : vec3<f32> = u_xlat6;
  let x_298 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_297, x_298);
  let x_304 : vec4<f32> = u_xlat3;
  let x_307 : vec4<f32> = x_244.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_304 < x_307);
  let x_310 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_310);
  let x_314 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_314);
  let x_318 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_318);
  let x_322 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_322);
  let x_326 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_326);
  let x_332 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_332);
  let x_336 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_336);
  let x_339 : vec4<f32> = u_xlat3;
  let x_341 : vec4<f32> = u_xlat4;
  let x_343 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) + vec3<f32>(x_341.y, x_341.z, x_341.w));
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat3;
  let x_349 : vec3<f32> = max(vec3<f32>(x_346.x, x_346.y, x_346.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_350 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_350.x, x_349.x, x_349.y, x_349.z);
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat11.x = dot(x_352, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_360 : f32 = u_xlat11.x;
  u_xlat11.x = (-(x_360) + 4.0f);
  let x_367 : f32 = u_xlat11.x;
  u_xlatu11 = u32(x_367);
  let x_371 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_371) << bitcast<u32>(2i));
  let x_374 : vec3<f32> = vs_TEXCOORD1;
  let x_376 : i32 = u_xlati11;
  let x_379 : i32 = u_xlati11;
  let x_383 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_376 + 1i) / 4i)][((x_379 + 1i) % 4i)];
  let x_385 : vec3<f32> = (vec3<f32>(x_374.y, x_374.y, x_374.y) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_388 : i32 = u_xlati11;
  let x_390 : i32 = u_xlati11;
  let x_393 : vec4<f32> = x_244.x_MainLightWorldToShadow[(x_388 / 4i)][(x_390 % 4i)];
  let x_395 : vec3<f32> = vs_TEXCOORD1;
  let x_398 : vec4<f32> = u_xlat3;
  let x_400 : vec3<f32> = ((vec3<f32>(x_393.x, x_393.y, x_393.z) * vec3<f32>(x_395.x, x_395.x, x_395.x)) + vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : i32 = u_xlati11;
  let x_406 : i32 = u_xlati11;
  let x_410 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_403 + 2i) / 4i)][((x_406 + 2i) % 4i)];
  let x_412 : vec3<f32> = vs_TEXCOORD1;
  let x_415 : vec4<f32> = u_xlat3;
  let x_417 : vec3<f32> = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412.z, x_412.z, x_412.z)) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat3;
  let x_422 : i32 = u_xlati11;
  let x_425 : i32 = u_xlati11;
  let x_429 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_422 + 3i) / 4i)][((x_425 + 3i) % 4i)];
  let x_431 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.z) + vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_435 : f32 = vs_TEXCOORD1.y;
  let x_438 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat11.x = (x_435 * x_438);
  let x_442 : f32 = x_44.unity_MatrixV[0i].z;
  let x_444 : f32 = vs_TEXCOORD1.x;
  let x_447 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_442 * x_444) + x_447);
  let x_451 : f32 = x_44.unity_MatrixV[2i].z;
  let x_453 : f32 = vs_TEXCOORD1.z;
  let x_456 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_451 * x_453) + x_456);
  let x_460 : f32 = u_xlat11.x;
  let x_462 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat11.x = (x_460 + x_462);
  let x_466 : f32 = u_xlat11.x;
  let x_470 : f32 = x_44.x_ProjectionParams.y;
  u_xlat11.x = (-(x_466) + -(x_470));
  let x_475 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_475, 0.0f);
  let x_479 : f32 = u_xlat11.x;
  let x_482 : f32 = x_44.unity_FogParams.x;
  u_xlat11.x = (x_479 * x_482);
  u_xlat2.w = 1.0f;
  let x_488 : vec4<f32> = x_185.unity_SHAr;
  let x_489 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_488, x_489);
  let x_494 : vec4<f32> = x_185.unity_SHAg;
  let x_495 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_494, x_495);
  let x_500 : vec4<f32> = x_185.unity_SHAb;
  let x_501 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_500, x_501);
  let x_504 : vec4<f32> = u_xlat2;
  let x_506 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_504.y, x_504.z, x_504.z, x_504.x) * vec4<f32>(x_506.x, x_506.y, x_506.z, x_506.z));
  let x_511 : vec4<f32> = x_185.unity_SHBr;
  let x_512 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_511, x_512);
  let x_517 : vec4<f32> = x_185.unity_SHBg;
  let x_518 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_517, x_518);
  let x_523 : vec4<f32> = x_185.unity_SHBb;
  let x_524 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_523, x_524);
  let x_528 : f32 = u_xlat2.y;
  let x_530 : f32 = u_xlat2.y;
  u_xlat33 = (x_528 * x_530);
  let x_533 : f32 = u_xlat2.x;
  let x_535 : f32 = u_xlat2.x;
  let x_537 : f32 = u_xlat33;
  u_xlat33 = ((x_533 * x_535) + -(x_537));
  let x_542 : vec4<f32> = x_185.unity_SHC;
  let x_544 : f32 = u_xlat33;
  let x_547 : vec3<f32> = u_xlat6;
  let x_548 : vec3<f32> = ((vec3<f32>(x_542.x, x_542.y, x_542.z) * vec3<f32>(x_544, x_544, x_544)) + x_547);
  let x_549 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat4;
  let x_553 : vec4<f32> = u_xlat5;
  let x_555 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) + vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_558 : vec4<f32> = u_xlat4;
  let x_560 : vec3<f32> = max(vec3<f32>(x_558.x, x_558.y, x_558.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_565 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_566 : vec2<f32> = vec2<f32>(x_565.x, x_565.y);
  let x_570 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_566.x, x_566.y));
  let x_571 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat5;
  let x_575 : vec4<f32> = hlslcc_FragCoord;
  let x_577 : vec2<f32> = (vec2<f32>(x_573.x, x_573.y) * vec2<f32>(x_575.x, x_575.y));
  let x_578 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
  let x_581 : f32 = u_xlat5.y;
  let x_584 : f32 = x_44.x_ScaleBiasRt.x;
  let x_587 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_581 * x_584) + x_587);
  let x_589 : f32 = u_xlat33;
  u_xlat5.z = (-(x_589) + 1.0f);
  let x_598 : vec4<f32> = u_xlat5;
  let x_601 : f32 = x_44.x_GlobalMipBias.x;
  let x_602 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_598.x, x_598.z), x_601);
  u_xlat33 = x_602.x;
  let x_604 : f32 = u_xlat33;
  u_xlat1.x = (x_604 + -1.0f);
  let x_608 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_610 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_608 * x_610) + 1.0f);
  let x_614 : f32 = u_xlat33;
  u_xlat33 = min(x_614, 1.0f);
  let x_617 : vec4<f32> = u_xlat3;
  let x_618 : vec2<f32> = vec2<f32>(x_617.x, x_617.y);
  let x_620 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_618.x, x_618.y, x_620);
  let x_633 : vec3<f32> = txVec0;
  let x_635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_633.xy, x_633.z);
  u_xlat35 = x_635;
  let x_637 : f32 = x_244.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_637) + 1.0f);
  let x_641 : f32 = u_xlat35;
  let x_643 : f32 = x_244.x_MainLightShadowParams.x;
  let x_646 : f32 = u_xlat3.x;
  u_xlat35 = ((x_641 * x_643) + x_646);
  let x_649 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_649);
  let x_654 : f32 = u_xlat3.z;
  u_xlatb14 = (x_654 >= 1.0f);
  let x_656 : bool = u_xlatb14;
  let x_658 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_656 | x_658);
  let x_662 : bool = u_xlatb3.x;
  let x_663 : f32 = u_xlat35;
  u_xlat35 = select(x_663, 1.0f, x_662);
  let x_665 : vec3<f32> = vs_TEXCOORD1;
  let x_669 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_671 : vec3<f32> = (x_665 + -(x_669));
  let x_672 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : vec4<f32> = u_xlat3;
  let x_676 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_674.x, x_674.y, x_674.z), vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_681 : f32 = u_xlat3.x;
  let x_683 : f32 = x_244.x_MainLightShadowParams.z;
  let x_686 : f32 = x_244.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_681 * x_683) + x_686);
  let x_690 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_690, 0.0f, 1.0f);
  let x_694 : f32 = u_xlat35;
  u_xlat14 = (-(x_694) + 1.0f);
  let x_698 : f32 = u_xlat3.x;
  let x_699 : f32 = u_xlat14;
  let x_701 : f32 = u_xlat35;
  u_xlat35 = ((x_698 * x_699) + x_701);
  let x_709 : f32 = x_707.x_MainLightCookieTextureFormat;
  u_xlatb3.x = !((x_709 == -1.0f));
  let x_713 : bool = u_xlatb3.x;
  if (x_713) {
    let x_716 : vec3<f32> = vs_TEXCOORD1;
    let x_719 : vec4<f32> = x_707.x_MainLightWorldToLight[1i];
    let x_721 : vec2<f32> = (vec2<f32>(x_716.y, x_716.y) * vec2<f32>(x_719.x, x_719.y));
    let x_722 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_721.x, x_721.y, x_722.z, x_722.w);
    let x_725 : vec4<f32> = x_707.x_MainLightWorldToLight[0i];
    let x_727 : vec3<f32> = vs_TEXCOORD1;
    let x_730 : vec4<f32> = u_xlat3;
    let x_732 : vec2<f32> = ((vec2<f32>(x_725.x, x_725.y) * vec2<f32>(x_727.x, x_727.x)) + vec2<f32>(x_730.x, x_730.y));
    let x_733 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_732.x, x_732.y, x_733.z, x_733.w);
    let x_736 : vec4<f32> = x_707.x_MainLightWorldToLight[2i];
    let x_738 : vec3<f32> = vs_TEXCOORD1;
    let x_741 : vec4<f32> = u_xlat3;
    let x_743 : vec2<f32> = ((vec2<f32>(x_736.x, x_736.y) * vec2<f32>(x_738.z, x_738.z)) + vec2<f32>(x_741.x, x_741.y));
    let x_744 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_743.x, x_743.y, x_744.z, x_744.w);
    let x_746 : vec4<f32> = u_xlat3;
    let x_749 : vec4<f32> = x_707.x_MainLightWorldToLight[3i];
    let x_751 : vec2<f32> = (vec2<f32>(x_746.x, x_746.y) + vec2<f32>(x_749.x, x_749.y));
    let x_752 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_751.x, x_751.y, x_752.z, x_752.w);
    let x_754 : vec4<f32> = u_xlat3;
    let x_758 : vec2<f32> = ((vec2<f32>(x_754.x, x_754.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_759 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_758.x, x_758.y, x_759.z, x_759.w);
    let x_766 : vec4<f32> = u_xlat3;
    let x_769 : f32 = x_44.x_GlobalMipBias.x;
    let x_770 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_766.x, x_766.y), x_769);
    u_xlat3 = x_770;
    let x_775 : f32 = x_707.x_MainLightCookieTextureFormat;
    let x_777 : f32 = x_707.x_MainLightCookieTextureFormat;
    let x_779 : f32 = x_707.x_MainLightCookieTextureFormat;
    let x_781 : f32 = x_707.x_MainLightCookieTextureFormat;
    let x_782 : vec4<f32> = vec4<f32>(x_775, x_777, x_779, x_781);
    let x_789 : vec4<bool> = (vec4<f32>(x_782.x, x_782.y, x_782.z, x_782.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_789.x, x_789.y);
    let x_793 : bool = u_xlatb5.y;
    if (x_793) {
      let x_798 : f32 = u_xlat3.w;
      x_794 = x_798;
    } else {
      let x_801 : f32 = u_xlat3.x;
      x_794 = x_801;
    }
    let x_802 : f32 = x_794;
    u_xlat36 = x_802;
    let x_804 : bool = u_xlatb5.x;
    if (x_804) {
      let x_808 : vec4<f32> = u_xlat3;
      x_805 = vec3<f32>(x_808.x, x_808.y, x_808.z);
    } else {
      let x_811 : f32 = u_xlat36;
      x_805 = vec3<f32>(x_811, x_811, x_811);
    }
    let x_813 : vec3<f32> = x_805;
    let x_814 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_820 : vec4<f32> = u_xlat3;
  let x_823 : vec4<f32> = x_44.x_MainLightColor;
  let x_825 : vec3<f32> = (vec3<f32>(x_820.x, x_820.y, x_820.z) * vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec4<f32> = u_xlat3;
  let x_832 : vec3<f32> = (vec3<f32>(x_828.x, x_828.x, x_828.x) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : f32 = u_xlat33;
  let x_837 : vec4<f32> = u_xlat4;
  let x_839 : vec3<f32> = (vec3<f32>(x_835, x_835, x_835) * vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : f32 = u_xlat35;
  let x_844 : f32 = x_185.unity_LightData.z;
  u_xlat33 = (x_842 * x_844);
  let x_846 : f32 = u_xlat33;
  let x_848 : vec4<f32> = u_xlat3;
  let x_850 : vec3<f32> = (vec3<f32>(x_846, x_846, x_846) * vec3<f32>(x_848.x, x_848.y, x_848.z));
  let x_851 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec4<f32> = u_xlat2;
  let x_856 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat33 = dot(vec3<f32>(x_853.x, x_853.y, x_853.z), vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : f32 = u_xlat33;
  u_xlat33 = clamp(x_859, 0.0f, 1.0f);
  let x_861 : f32 = u_xlat33;
  let x_863 : vec4<f32> = u_xlat3;
  let x_865 : vec3<f32> = (vec3<f32>(x_861, x_861, x_861) * vec3<f32>(x_863.x, x_863.y, x_863.z));
  let x_866 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec4<f32> = u_xlat1;
  let x_870 : vec4<f32> = u_xlat3;
  let x_872 : vec3<f32> = (vec3<f32>(x_868.y, x_868.z, x_868.w) * vec3<f32>(x_870.x, x_870.y, x_870.z));
  let x_873 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_877 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_879 : f32 = x_185.unity_LightData.y;
  u_xlat33 = min(x_877, x_879);
  let x_882 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_882));
  let x_886 : f32 = x_707.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_888 : f32 = x_707.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_890 : f32 = x_707.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_892 : f32 = x_707.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_893 : vec4<f32> = vec4<f32>(x_886, x_888, x_890, x_892);
  let x_899 : vec4<bool> = (vec4<f32>(x_893.x, x_893.y, x_893.z, x_893.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_899.x, x_899.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_910 : u32 = u_xlatu_loop_1;
    let x_911 : u32 = u_xlatu33;
    if ((x_910 < x_911)) {
    } else {
      break;
    }
    let x_914 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_914 >> 2u);
    let x_917 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_917 & 3u));
    let x_920 : u32 = u_xlatu36;
    let x_923 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_920)];
    let x_933 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_938 : vec4<u32> = indexable[x_933];
    u_xlat36 = dot(x_923, bitcast<vec4<f32>>(x_938));
    let x_941 : f32 = u_xlat36;
    u_xlatu36 = bitcast<u32>(i32(x_941));
    let x_945 : vec3<f32> = vs_TEXCOORD1;
    let x_957 : u32 = u_xlatu36;
    let x_960 : vec4<f32> = x_956.x_AdditionalLightsPosition[bitcast<i32>(x_957)];
    let x_963 : u32 = u_xlatu36;
    let x_966 : vec4<f32> = x_956.x_AdditionalLightsPosition[bitcast<i32>(x_963)];
    u_xlat7 = ((-(x_945) * vec3<f32>(x_960.w, x_960.w, x_960.w)) + vec3<f32>(x_966.x, x_966.y, x_966.z));
    let x_970 : vec3<f32> = u_xlat7;
    let x_971 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_970, x_971);
    let x_973 : f32 = u_xlat37;
    u_xlat37 = max(x_973, 6.10351562e-05f);
    let x_978 : f32 = u_xlat37;
    u_xlat27.x = inverseSqrt(x_978);
    let x_981 : vec2<f32> = u_xlat27;
    let x_983 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_981.x, x_981.x, x_981.x) * x_983);
    let x_985 : f32 = u_xlat37;
    u_xlat27.x = (1.0f / x_985);
    let x_988 : f32 = u_xlat37;
    let x_989 : u32 = u_xlatu36;
    let x_992 : f32 = x_956.x_AdditionalLightsAttenuation[bitcast<i32>(x_989)].x;
    u_xlat37 = (x_988 * x_992);
    let x_994 : f32 = u_xlat37;
    let x_996 : f32 = u_xlat37;
    u_xlat37 = ((-(x_994) * x_996) + 1.0f);
    let x_999 : f32 = u_xlat37;
    u_xlat37 = max(x_999, 0.0f);
    let x_1001 : f32 = u_xlat37;
    let x_1002 : f32 = u_xlat37;
    u_xlat37 = (x_1001 * x_1002);
    let x_1004 : f32 = u_xlat37;
    let x_1006 : f32 = u_xlat27.x;
    u_xlat37 = (x_1004 * x_1006);
    let x_1008 : u32 = u_xlatu36;
    let x_1011 : vec4<f32> = x_956.x_AdditionalLightsSpotDir[bitcast<i32>(x_1008)];
    let x_1013 : vec3<f32> = u_xlat7;
    u_xlat27.x = dot(vec3<f32>(x_1011.x, x_1011.y, x_1011.z), x_1013);
    let x_1017 : f32 = u_xlat27.x;
    let x_1018 : u32 = u_xlatu36;
    let x_1021 : f32 = x_956.x_AdditionalLightsAttenuation[bitcast<i32>(x_1018)].z;
    let x_1023 : u32 = u_xlatu36;
    let x_1026 : f32 = x_956.x_AdditionalLightsAttenuation[bitcast<i32>(x_1023)].w;
    u_xlat27.x = ((x_1017 * x_1021) + x_1026);
    let x_1030 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_1030, 0.0f, 1.0f);
    let x_1034 : f32 = u_xlat27.x;
    let x_1036 : f32 = u_xlat27.x;
    u_xlat27.x = (x_1034 * x_1036);
    let x_1039 : f32 = u_xlat37;
    let x_1041 : f32 = u_xlat27.x;
    u_xlat37 = (x_1039 * x_1041);
    let x_1044 : u32 = u_xlatu36;
    u_xlatu27 = (x_1044 >> 5u);
    let x_1047 : u32 = u_xlatu36;
    u_xlati38 = (1i << bitcast<u32>((bitcast<i32>(x_1047) & 31i)));
    let x_1053 : i32 = u_xlati38;
    let x_1055 : u32 = u_xlatu27;
    let x_1058 : f32 = x_707.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1055)].el;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_1053) & bitcast<u32>(x_1058)));
    let x_1062 : i32 = u_xlati27;
    if ((x_1062 != 0i)) {
      let x_1072 : u32 = u_xlatu36;
      let x_1075 : f32 = x_1071.x_AdditionalLightsLightTypes[bitcast<i32>(x_1072)].el;
      u_xlati27 = i32(x_1075);
      let x_1077 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_1077 != 0i));
      let x_1081 : u32 = u_xlatu36;
      u_xlati39 = (bitcast<i32>(x_1081) << bitcast<u32>(2i));
      let x_1084 : i32 = u_xlati38;
      if ((x_1084 != 0i)) {
        let x_1089 : vec3<f32> = vs_TEXCOORD1;
        let x_1091 : i32 = u_xlati39;
        let x_1094 : i32 = u_xlati39;
        let x_1098 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1091 + 1i) / 4i)][((x_1094 + 1i) % 4i)];
        let x_1100 : vec3<f32> = (vec3<f32>(x_1089.y, x_1089.y, x_1089.y) * vec3<f32>(x_1098.x, x_1098.y, x_1098.w));
        let x_1101 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
        let x_1103 : i32 = u_xlati39;
        let x_1105 : i32 = u_xlati39;
        let x_1108 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[(x_1103 / 4i)][(x_1105 % 4i)];
        let x_1110 : vec3<f32> = vs_TEXCOORD1;
        let x_1113 : vec4<f32> = u_xlat8;
        let x_1115 : vec3<f32> = ((vec3<f32>(x_1108.x, x_1108.y, x_1108.w) * vec3<f32>(x_1110.x, x_1110.x, x_1110.x)) + vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
        let x_1116 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
        let x_1118 : i32 = u_xlati39;
        let x_1121 : i32 = u_xlati39;
        let x_1125 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1118 + 2i) / 4i)][((x_1121 + 2i) % 4i)];
        let x_1127 : vec3<f32> = vs_TEXCOORD1;
        let x_1130 : vec4<f32> = u_xlat8;
        let x_1132 : vec3<f32> = ((vec3<f32>(x_1125.x, x_1125.y, x_1125.w) * vec3<f32>(x_1127.z, x_1127.z, x_1127.z)) + vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
        let x_1133 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
        let x_1135 : vec4<f32> = u_xlat8;
        let x_1137 : i32 = u_xlati39;
        let x_1140 : i32 = u_xlati39;
        let x_1144 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1137 + 3i) / 4i)][((x_1140 + 3i) % 4i)];
        let x_1146 : vec3<f32> = (vec3<f32>(x_1135.x, x_1135.y, x_1135.z) + vec3<f32>(x_1144.x, x_1144.y, x_1144.w));
        let x_1147 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
        let x_1149 : vec4<f32> = u_xlat8;
        let x_1151 : vec4<f32> = u_xlat8;
        let x_1153 : vec2<f32> = (vec2<f32>(x_1149.x, x_1149.y) / vec2<f32>(x_1151.z, x_1151.z));
        let x_1154 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1156 : vec4<f32> = u_xlat8;
        let x_1159 : vec2<f32> = ((vec2<f32>(x_1156.x, x_1156.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1160 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1159.x, x_1159.y, x_1160.z, x_1160.w);
        let x_1162 : vec4<f32> = u_xlat8;
        let x_1166 : vec2<f32> = clamp(vec2<f32>(x_1162.x, x_1162.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1167 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1166.x, x_1166.y, x_1167.z, x_1167.w);
        let x_1169 : u32 = u_xlatu36;
        let x_1172 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1169)];
        let x_1174 : vec4<f32> = u_xlat8;
        let x_1177 : u32 = u_xlatu36;
        let x_1180 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1177)];
        let x_1182 : vec2<f32> = ((vec2<f32>(x_1172.x, x_1172.y) * vec2<f32>(x_1174.x, x_1174.y)) + vec2<f32>(x_1180.z, x_1180.w));
        let x_1183 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1182.x, x_1182.y, x_1183.z, x_1183.w);
      } else {
        let x_1187 : i32 = u_xlati27;
        u_xlatb27 = (x_1187 == 1i);
        let x_1189 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_1189);
        let x_1191 : i32 = u_xlati27;
        if ((x_1191 != 0i)) {
          let x_1195 : vec3<f32> = vs_TEXCOORD1;
          let x_1197 : i32 = u_xlati39;
          let x_1200 : i32 = u_xlati39;
          let x_1204 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1197 + 1i) / 4i)][((x_1200 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_1195.y, x_1195.y) * vec2<f32>(x_1204.x, x_1204.y));
          let x_1207 : i32 = u_xlati39;
          let x_1209 : i32 = u_xlati39;
          let x_1212 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[(x_1207 / 4i)][(x_1209 % 4i)];
          let x_1214 : vec3<f32> = vs_TEXCOORD1;
          let x_1217 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1212.x, x_1212.y) * vec2<f32>(x_1214.x, x_1214.x)) + x_1217);
          let x_1219 : i32 = u_xlati39;
          let x_1222 : i32 = u_xlati39;
          let x_1226 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1219 + 2i) / 4i)][((x_1222 + 2i) % 4i)];
          let x_1228 : vec3<f32> = vs_TEXCOORD1;
          let x_1231 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1226.x, x_1226.y) * vec2<f32>(x_1228.z, x_1228.z)) + x_1231);
          let x_1233 : vec2<f32> = u_xlat27;
          let x_1234 : i32 = u_xlati39;
          let x_1237 : i32 = u_xlati39;
          let x_1241 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1234 + 3i) / 4i)][((x_1237 + 3i) % 4i)];
          u_xlat27 = (x_1233 + vec2<f32>(x_1241.x, x_1241.y));
          let x_1244 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1244 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1247 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_1247);
          let x_1249 : u32 = u_xlatu36;
          let x_1252 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1249)];
          let x_1254 : vec2<f32> = u_xlat27;
          let x_1256 : u32 = u_xlatu36;
          let x_1259 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1256)];
          let x_1261 : vec2<f32> = ((vec2<f32>(x_1252.x, x_1252.y) * x_1254) + vec2<f32>(x_1259.z, x_1259.w));
          let x_1262 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1261.x, x_1261.y, x_1262.z, x_1262.w);
        } else {
          let x_1266 : vec3<f32> = vs_TEXCOORD1;
          let x_1268 : i32 = u_xlati39;
          let x_1271 : i32 = u_xlati39;
          let x_1275 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1268 + 1i) / 4i)][((x_1271 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1266.y, x_1266.y, x_1266.y, x_1266.y) * x_1275);
          let x_1277 : i32 = u_xlati39;
          let x_1279 : i32 = u_xlati39;
          let x_1282 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[(x_1277 / 4i)][(x_1279 % 4i)];
          let x_1283 : vec3<f32> = vs_TEXCOORD1;
          let x_1286 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1282 * vec4<f32>(x_1283.x, x_1283.x, x_1283.x, x_1283.x)) + x_1286);
          let x_1288 : i32 = u_xlati39;
          let x_1291 : i32 = u_xlati39;
          let x_1295 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1288 + 2i) / 4i)][((x_1291 + 2i) % 4i)];
          let x_1296 : vec3<f32> = vs_TEXCOORD1;
          let x_1299 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1295 * vec4<f32>(x_1296.z, x_1296.z, x_1296.z, x_1296.z)) + x_1299);
          let x_1301 : vec4<f32> = u_xlat9;
          let x_1302 : i32 = u_xlati39;
          let x_1305 : i32 = u_xlati39;
          let x_1309 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1302 + 3i) / 4i)][((x_1305 + 3i) % 4i)];
          u_xlat9 = (x_1301 + x_1309);
          let x_1311 : vec4<f32> = u_xlat9;
          let x_1313 : vec4<f32> = u_xlat9;
          let x_1315 : vec3<f32> = (vec3<f32>(x_1311.x, x_1311.y, x_1311.z) / vec3<f32>(x_1313.w, x_1313.w, x_1313.w));
          let x_1316 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
          let x_1318 : vec4<f32> = u_xlat9;
          let x_1320 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1318.x, x_1318.y, x_1318.z), vec3<f32>(x_1320.x, x_1320.y, x_1320.z));
          let x_1325 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1325);
          let x_1328 : vec2<f32> = u_xlat27;
          let x_1330 : vec4<f32> = u_xlat9;
          let x_1332 : vec3<f32> = (vec3<f32>(x_1328.x, x_1328.x, x_1328.x) * vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
          let x_1333 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
          let x_1335 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1335.x, x_1335.y, x_1335.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1342 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1342, 0.000001f);
          let x_1347 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1347);
          let x_1351 : vec2<f32> = u_xlat27;
          let x_1353 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1351.x, x_1351.x, x_1351.x) * vec3<f32>(x_1353.z, x_1353.x, x_1353.y));
          let x_1357 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1357);
          let x_1361 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1361, 0.0f, 1.0f);
          let x_1365 : vec3<f32> = u_xlat10;
          let x_1368 : vec4<bool> = (vec4<f32>(x_1365.y, x_1365.z, x_1365.y, x_1365.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1368.x, x_1368.y);
          let x_1372 : bool = u_xlatb30.x;
          if (x_1372) {
            let x_1377 : f32 = u_xlat10.x;
            x_1373 = x_1377;
          } else {
            let x_1380 : f32 = u_xlat10.x;
            x_1373 = -(x_1380);
          }
          let x_1382 : f32 = x_1373;
          u_xlat30.x = x_1382;
          let x_1385 : bool = u_xlatb30.y;
          if (x_1385) {
            let x_1390 : f32 = u_xlat10.x;
            x_1386 = x_1390;
          } else {
            let x_1393 : f32 = u_xlat10.x;
            x_1386 = -(x_1393);
          }
          let x_1395 : f32 = x_1386;
          u_xlat30.y = x_1395;
          let x_1397 : vec4<f32> = u_xlat9;
          let x_1399 : vec2<f32> = u_xlat27;
          let x_1402 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1397.x, x_1397.y) * vec2<f32>(x_1399.x, x_1399.x)) + x_1402);
          let x_1404 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1404 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1407 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1407, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1411 : u32 = u_xlatu36;
          let x_1414 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1411)];
          let x_1416 : vec2<f32> = u_xlat27;
          let x_1418 : u32 = u_xlatu36;
          let x_1421 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1418)];
          let x_1423 : vec2<f32> = ((vec2<f32>(x_1414.x, x_1414.y) * x_1416) + vec2<f32>(x_1421.z, x_1421.w));
          let x_1424 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1423.x, x_1423.y, x_1424.z, x_1424.w);
        }
      }
      let x_1431 : vec4<f32> = u_xlat8;
      let x_1434 : f32 = x_44.x_GlobalMipBias.x;
      let x_1435 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1431.x, x_1431.y), x_1434);
      u_xlat8 = x_1435;
      let x_1437 : bool = u_xlatb5.y;
      if (x_1437) {
        let x_1442 : f32 = u_xlat8.w;
        x_1438 = x_1442;
      } else {
        let x_1445 : f32 = u_xlat8.x;
        x_1438 = x_1445;
      }
      let x_1446 : f32 = x_1438;
      u_xlat27.x = x_1446;
      let x_1449 : bool = u_xlatb5.x;
      if (x_1449) {
        let x_1453 : vec4<f32> = u_xlat8;
        x_1450 = vec3<f32>(x_1453.x, x_1453.y, x_1453.z);
      } else {
        let x_1456 : vec2<f32> = u_xlat27;
        x_1450 = vec3<f32>(x_1456.x, x_1456.x, x_1456.x);
      }
      let x_1458 : vec3<f32> = x_1450;
      let x_1459 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1458.x, x_1458.y, x_1458.z, x_1459.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1465 : vec4<f32> = u_xlat8;
    let x_1467 : u32 = u_xlatu36;
    let x_1470 : vec4<f32> = x_956.x_AdditionalLightsColor[bitcast<i32>(x_1467)];
    let x_1472 : vec3<f32> = (vec3<f32>(x_1465.x, x_1465.y, x_1465.z) * vec3<f32>(x_1470.x, x_1470.y, x_1470.z));
    let x_1473 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1473.w);
    let x_1475 : vec4<f32> = u_xlat1;
    let x_1477 : vec4<f32> = u_xlat8;
    let x_1479 : vec3<f32> = (vec3<f32>(x_1475.x, x_1475.x, x_1475.x) * vec3<f32>(x_1477.x, x_1477.y, x_1477.z));
    let x_1480 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1480.w);
    let x_1482 : f32 = u_xlat37;
    let x_1484 : vec4<f32> = u_xlat8;
    let x_1486 : vec3<f32> = (vec3<f32>(x_1482, x_1482, x_1482) * vec3<f32>(x_1484.x, x_1484.y, x_1484.z));
    let x_1487 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1486.x, x_1486.y, x_1486.z, x_1487.w);
    let x_1489 : vec4<f32> = u_xlat2;
    let x_1491 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_1489.x, x_1489.y, x_1489.z), x_1491);
    let x_1493 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1493, 0.0f, 1.0f);
    let x_1495 : f32 = u_xlat36;
    let x_1497 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1495, x_1495, x_1495) * vec3<f32>(x_1497.x, x_1497.y, x_1497.z));
    let x_1500 : vec3<f32> = u_xlat7;
    let x_1501 : vec4<f32> = u_xlat1;
    let x_1504 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1500 * vec3<f32>(x_1501.y, x_1501.z, x_1501.w)) + x_1504);

    continuing {
      let x_1506 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1506 + bitcast<u32>(1i));
    }
  }
  let x_1508 : vec4<f32> = u_xlat4;
  let x_1510 : vec4<f32> = u_xlat1;
  let x_1513 : vec4<f32> = u_xlat3;
  let x_1515 : vec3<f32> = ((vec3<f32>(x_1508.x, x_1508.y, x_1508.z) * vec3<f32>(x_1510.y, x_1510.z, x_1510.w)) + vec3<f32>(x_1513.x, x_1513.y, x_1513.z));
  let x_1516 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1516.w);
  let x_1518 : vec3<f32> = u_xlat6;
  let x_1519 : vec4<f32> = u_xlat1;
  let x_1521 : vec3<f32> = (x_1518 + vec3<f32>(x_1519.x, x_1519.y, x_1519.z));
  let x_1522 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1521.x, x_1521.y, x_1521.z, x_1522.w);
  let x_1525 : f32 = u_xlat11.x;
  let x_1527 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1525 * -(x_1527));
  let x_1532 : f32 = u_xlat11.x;
  u_xlat11.x = exp2(x_1532);
  let x_1535 : vec4<f32> = u_xlat1;
  let x_1539 : vec4<f32> = x_44.unity_FogColor;
  let x_1542 : vec3<f32> = (vec3<f32>(x_1535.x, x_1535.y, x_1535.z) + -(vec3<f32>(x_1539.x, x_1539.y, x_1539.z)));
  let x_1543 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1543.w);
  let x_1547 : vec3<f32> = u_xlat11;
  let x_1549 : vec4<f32> = u_xlat1;
  let x_1553 : vec4<f32> = x_44.unity_FogColor;
  let x_1555 : vec3<f32> = ((vec3<f32>(x_1547.x, x_1547.x, x_1547.x) * vec3<f32>(x_1549.x, x_1549.y, x_1549.z)) + vec3<f32>(x_1553.x, x_1553.y, x_1553.z));
  let x_1556 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1555.x, x_1555.y, x_1555.z, x_1556.w);
  let x_1559 : f32 = x_57.x_Surface;
  u_xlatb11 = (x_1559 == 1.0f);
  let x_1561 : bool = u_xlatb11;
  let x_1562 : bool = u_xlatb22;
  u_xlatb11 = (x_1561 | x_1562);
  let x_1564 : bool = u_xlatb11;
  if (x_1564) {
    let x_1569 : f32 = u_xlat0.x;
    x_1565 = x_1569;
  } else {
    x_1565 = 1.0f;
  }
  let x_1571 : f32 = x_1565;
  SV_Target0.w = x_1571;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

