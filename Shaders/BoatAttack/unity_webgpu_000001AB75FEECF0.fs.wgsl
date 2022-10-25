struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_155 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_348 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_506 : LightCookies;

@group(0) @binding(2) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_746 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_848 : AdditionalLightsCookies;

@group(0) @binding(3) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_59 : f32;
  var u_xlat11 : f32;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_109 : f32;
  var u_xlatb11 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu11 : u32;
  var u_xlati11 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb33 : bool;
  var u_xlatb1 : bool;
  var u_xlatb5 : vec2<bool>;
  var x_590 : f32;
  var x_601 : vec3<f32>;
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
  var x_1144 : f32;
  var x_1157 : f32;
  var x_1209 : f32;
  var x_1220 : vec3<f32>;
  var x_1303 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_63 : f32 = u_xlat1.x;
    x_59 = x_63;
  } else {
    x_59 = 0.0f;
  }
  let x_66 : f32 = x_59;
  u_xlat0.x = x_66;
  let x_71 : f32 = u_xlat0.w;
  let x_73 : f32 = x_41.x_BaseColor.w;
  let x_76 : f32 = x_41.x_Cutoff;
  u_xlat11 = ((x_71 * x_73) + -(x_76));
  let x_81 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_81);
  let x_85 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_85);
  let x_87 : f32 = u_xlat33;
  let x_89 : f32 = u_xlat22;
  u_xlat22 = (abs(x_87) + abs(x_89));
  let x_92 : f32 = u_xlat22;
  u_xlat22 = max(x_92, 0.0001f);
  let x_95 : f32 = u_xlat11;
  let x_96 : f32 = u_xlat22;
  u_xlat11 = (x_95 / x_96);
  let x_98 : f32 = u_xlat11;
  u_xlat11 = (x_98 + 0.5f);
  let x_101 : f32 = u_xlat11;
  u_xlat11 = clamp(x_101, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb22;
  if (x_108) {
    let x_112 : f32 = u_xlat11;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat11 = (x_119 + -0.0001f);
  let x_123 : f32 = u_xlat11;
  u_xlatb11 = (x_123 < 0.0f);
  let x_125 : bool = u_xlatb11;
  if (((select(0i, 1i, x_125) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11 = dot(x_135, x_136);
  let x_138 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_138);
  let x_141 : f32 = u_xlat11;
  let x_143 : vec3<f32> = vs_TEXCOORD2;
  let x_144 : vec3<f32> = (vec3<f32>(x_141, x_141, x_141) * x_143);
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_149 : vec3<f32> = vs_TEXCOORD1;
  let x_157 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres0;
  let x_160 : vec3<f32> = (x_149 + -(vec3<f32>(x_157.x, x_157.y, x_157.z)));
  let x_161 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec3<f32> = vs_TEXCOORD1;
  let x_167 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres1;
  let x_170 : vec3<f32> = (x_164 + -(vec3<f32>(x_167.x, x_167.y, x_167.z)));
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : vec3<f32> = vs_TEXCOORD1;
  let x_177 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres2;
  let x_180 : vec3<f32> = (x_174 + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_185 : vec3<f32> = vs_TEXCOORD1;
  let x_187 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_185 + -(vec3<f32>(x_187.x, x_187.y, x_187.z)));
  let x_191 : vec4<f32> = u_xlat3;
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_197 : vec4<f32> = u_xlat4;
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_197.x, x_197.y, x_197.z), vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_204 : vec4<f32> = u_xlat5;
  let x_206 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_204.x, x_204.y, x_204.z), vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_211 : vec3<f32> = u_xlat6;
  let x_212 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_211, x_212);
  let x_218 : vec4<f32> = u_xlat3;
  let x_221 : vec4<f32> = x_155.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_218 < x_221);
  let x_224 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_224);
  let x_228 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_228);
  let x_232 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_232);
  let x_236 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_236);
  let x_240 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_240);
  let x_246 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_246);
  let x_250 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_250);
  let x_253 : vec4<f32> = u_xlat3;
  let x_255 : vec4<f32> = u_xlat4;
  let x_257 : vec3<f32> = (vec3<f32>(x_253.x, x_253.y, x_253.z) + vec3<f32>(x_255.y, x_255.z, x_255.w));
  let x_258 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat3;
  let x_263 : vec3<f32> = max(vec3<f32>(x_260.x, x_260.y, x_260.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_264.x, x_263.x, x_263.y, x_263.z);
  let x_266 : vec4<f32> = u_xlat4;
  u_xlat11 = dot(x_266, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_272 : f32 = u_xlat11;
  u_xlat11 = (-(x_272) + 4.0f);
  let x_277 : f32 = u_xlat11;
  u_xlatu11 = u32(x_277);
  let x_281 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_281) << bitcast<u32>(2i));
  let x_284 : vec3<f32> = vs_TEXCOORD1;
  let x_286 : i32 = u_xlati11;
  let x_289 : i32 = u_xlati11;
  let x_293 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_286 + 1i) / 4i)][((x_289 + 1i) % 4i)];
  let x_295 : vec3<f32> = (vec3<f32>(x_284.y, x_284.y, x_284.y) * vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_298 : i32 = u_xlati11;
  let x_300 : i32 = u_xlati11;
  let x_303 : vec4<f32> = x_155.x_MainLightWorldToShadow[(x_298 / 4i)][(x_300 % 4i)];
  let x_305 : vec3<f32> = vs_TEXCOORD1;
  let x_308 : vec4<f32> = u_xlat3;
  let x_310 : vec3<f32> = ((vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_305.x, x_305.x, x_305.x)) + vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : i32 = u_xlati11;
  let x_316 : i32 = u_xlati11;
  let x_320 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_313 + 2i) / 4i)][((x_316 + 2i) % 4i)];
  let x_322 : vec3<f32> = vs_TEXCOORD1;
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.z, x_322.z, x_322.z)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat3;
  let x_332 : i32 = u_xlati11;
  let x_335 : i32 = u_xlati11;
  let x_339 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_332 + 3i) / 4i)][((x_335 + 3i) % 4i)];
  let x_341 : vec3<f32> = (vec3<f32>(x_330.x, x_330.y, x_330.z) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  u_xlat2.w = 1.0f;
  let x_351 : vec4<f32> = x_348.unity_SHAr;
  let x_352 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_351, x_352);
  let x_357 : vec4<f32> = x_348.unity_SHAg;
  let x_358 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_357, x_358);
  let x_363 : vec4<f32> = x_348.unity_SHAb;
  let x_364 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_363, x_364);
  let x_367 : vec4<f32> = u_xlat2;
  let x_369 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_367.y, x_367.z, x_367.z, x_367.x) * vec4<f32>(x_369.x, x_369.y, x_369.z, x_369.z));
  let x_374 : vec4<f32> = x_348.unity_SHBr;
  let x_375 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_374, x_375);
  let x_380 : vec4<f32> = x_348.unity_SHBg;
  let x_381 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_380, x_381);
  let x_386 : vec4<f32> = x_348.unity_SHBb;
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_386, x_387);
  let x_391 : f32 = u_xlat2.y;
  let x_393 : f32 = u_xlat2.y;
  u_xlat11 = (x_391 * x_393);
  let x_396 : f32 = u_xlat2.x;
  let x_398 : f32 = u_xlat2.x;
  let x_400 : f32 = u_xlat11;
  u_xlat11 = ((x_396 * x_398) + -(x_400));
  let x_405 : vec4<f32> = x_348.unity_SHC;
  let x_407 : f32 = u_xlat11;
  let x_410 : vec3<f32> = u_xlat6;
  let x_411 : vec3<f32> = ((vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(x_407, x_407, x_407)) + x_410);
  let x_412 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat4;
  let x_416 : vec4<f32> = u_xlat5;
  let x_418 : vec3<f32> = (vec3<f32>(x_414.x, x_414.y, x_414.z) + vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat4;
  let x_423 : vec3<f32> = max(vec3<f32>(x_421.x, x_421.y, x_421.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_424 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_427 : vec4<f32> = u_xlat3;
  let x_428 : vec2<f32> = vec2<f32>(x_427.x, x_427.y);
  let x_430 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_428.x, x_428.y, x_430);
  let x_442 : vec3<f32> = txVec0;
  let x_444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_442.xy, x_442.z);
  u_xlat11 = x_444;
  let x_447 : f32 = x_155.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_447) + 1.0f);
  let x_450 : f32 = u_xlat11;
  let x_452 : f32 = x_155.x_MainLightShadowParams.x;
  let x_454 : f32 = u_xlat33;
  u_xlat11 = ((x_450 * x_452) + x_454);
  let x_458 : f32 = u_xlat3.z;
  u_xlatb33 = (0.0f >= x_458);
  let x_462 : f32 = u_xlat3.z;
  u_xlatb1 = (x_462 >= 1.0f);
  let x_464 : bool = u_xlatb33;
  let x_465 : bool = u_xlatb1;
  u_xlatb33 = (x_464 | x_465);
  let x_467 : bool = u_xlatb33;
  let x_468 : f32 = u_xlat11;
  u_xlat11 = select(x_468, 1.0f, x_467);
  let x_470 : vec3<f32> = vs_TEXCOORD1;
  let x_473 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_475 : vec3<f32> = (x_470 + -(x_473));
  let x_476 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat3;
  let x_480 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(vec3<f32>(x_478.x, x_478.y, x_478.z), vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : f32 = u_xlat33;
  let x_485 : f32 = x_155.x_MainLightShadowParams.z;
  let x_488 : f32 = x_155.x_MainLightShadowParams.w;
  u_xlat33 = ((x_483 * x_485) + x_488);
  let x_490 : f32 = u_xlat33;
  u_xlat33 = clamp(x_490, 0.0f, 1.0f);
  let x_492 : f32 = u_xlat11;
  u_xlat1.x = (-(x_492) + 1.0f);
  let x_496 : f32 = u_xlat33;
  let x_498 : f32 = u_xlat1.x;
  let x_500 : f32 = u_xlat11;
  u_xlat11 = ((x_496 * x_498) + x_500);
  let x_508 : f32 = x_506.x_MainLightCookieTextureFormat;
  u_xlatb33 = !((x_508 == -1.0f));
  let x_510 : bool = u_xlatb33;
  if (x_510) {
    let x_513 : vec3<f32> = vs_TEXCOORD1;
    let x_516 : vec4<f32> = x_506.x_MainLightWorldToLight[1i];
    let x_518 : vec2<f32> = (vec2<f32>(x_513.y, x_513.y) * vec2<f32>(x_516.x, x_516.y));
    let x_519 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
    let x_522 : vec4<f32> = x_506.x_MainLightWorldToLight[0i];
    let x_524 : vec3<f32> = vs_TEXCOORD1;
    let x_527 : vec4<f32> = u_xlat3;
    let x_529 : vec2<f32> = ((vec2<f32>(x_522.x, x_522.y) * vec2<f32>(x_524.x, x_524.x)) + vec2<f32>(x_527.x, x_527.y));
    let x_530 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
    let x_533 : vec4<f32> = x_506.x_MainLightWorldToLight[2i];
    let x_535 : vec3<f32> = vs_TEXCOORD1;
    let x_538 : vec4<f32> = u_xlat3;
    let x_540 : vec2<f32> = ((vec2<f32>(x_533.x, x_533.y) * vec2<f32>(x_535.z, x_535.z)) + vec2<f32>(x_538.x, x_538.y));
    let x_541 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_540.x, x_540.y, x_541.z, x_541.w);
    let x_543 : vec4<f32> = u_xlat3;
    let x_546 : vec4<f32> = x_506.x_MainLightWorldToLight[3i];
    let x_548 : vec2<f32> = (vec2<f32>(x_543.x, x_543.y) + vec2<f32>(x_546.x, x_546.y));
    let x_549 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
    let x_551 : vec4<f32> = u_xlat3;
    let x_555 : vec2<f32> = ((vec2<f32>(x_551.x, x_551.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_556 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
    let x_563 : vec4<f32> = u_xlat3;
    let x_566 : f32 = x_27.x_GlobalMipBias.x;
    let x_567 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_563.x, x_563.y), x_566);
    u_xlat3 = x_567;
    let x_572 : f32 = x_506.x_MainLightCookieTextureFormat;
    let x_574 : f32 = x_506.x_MainLightCookieTextureFormat;
    let x_576 : f32 = x_506.x_MainLightCookieTextureFormat;
    let x_578 : f32 = x_506.x_MainLightCookieTextureFormat;
    let x_579 : vec4<f32> = vec4<f32>(x_572, x_574, x_576, x_578);
    let x_586 : vec4<bool> = (vec4<f32>(x_579.x, x_579.y, x_579.z, x_579.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_586.x, x_586.y);
    let x_589 : bool = u_xlatb5.y;
    if (x_589) {
      let x_594 : f32 = u_xlat3.w;
      x_590 = x_594;
    } else {
      let x_597 : f32 = u_xlat3.x;
      x_590 = x_597;
    }
    let x_598 : f32 = x_590;
    u_xlat33 = x_598;
    let x_600 : bool = u_xlatb5.x;
    if (x_600) {
      let x_604 : vec4<f32> = u_xlat3;
      x_601 = vec3<f32>(x_604.x, x_604.y, x_604.z);
    } else {
      let x_607 : f32 = u_xlat33;
      x_601 = vec3<f32>(x_607, x_607, x_607);
    }
    let x_609 : vec3<f32> = x_601;
    let x_610 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_616 : vec4<f32> = u_xlat3;
  let x_619 : vec4<f32> = x_27.x_MainLightColor;
  let x_621 : vec3<f32> = (vec3<f32>(x_616.x, x_616.y, x_616.z) * vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_624 : f32 = u_xlat11;
  let x_626 : f32 = x_348.unity_LightData.z;
  u_xlat11 = (x_624 * x_626);
  let x_628 : f32 = u_xlat11;
  let x_630 : vec4<f32> = u_xlat3;
  let x_632 : vec3<f32> = (vec3<f32>(x_628, x_628, x_628) * vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat2;
  let x_638 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat11 = dot(vec3<f32>(x_635.x, x_635.y, x_635.z), vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_641 : f32 = u_xlat11;
  u_xlat11 = clamp(x_641, 0.0f, 1.0f);
  let x_643 : f32 = u_xlat11;
  let x_645 : vec4<f32> = u_xlat3;
  let x_647 : vec3<f32> = (vec3<f32>(x_643, x_643, x_643) * vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_648 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_650 : vec4<f32> = u_xlat1;
  let x_652 : vec4<f32> = u_xlat3;
  let x_654 : vec3<f32> = (vec3<f32>(x_650.y, x_650.z, x_650.w) * vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec4<f32> = u_xlat0;
  let x_659 : vec4<f32> = u_xlat3;
  let x_661 : vec3<f32> = (vec3<f32>(x_657.x, x_657.x, x_657.x) * vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_662 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_665 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_667 : f32 = x_348.unity_LightData.y;
  u_xlat11 = min(x_665, x_667);
  let x_669 : f32 = u_xlat11;
  u_xlatu11 = bitcast<u32>(i32(x_669));
  let x_673 : f32 = x_506.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_675 : f32 = x_506.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_677 : f32 = x_506.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_679 : f32 = x_506.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_680 : vec4<f32> = vec4<f32>(x_673, x_675, x_677, x_679);
  let x_686 : vec4<bool> = (vec4<f32>(x_680.x, x_680.y, x_680.z, x_680.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_686.x, x_686.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_697 : u32 = u_xlatu_loop_1;
    let x_698 : u32 = u_xlatu11;
    if ((x_697 < x_698)) {
    } else {
      break;
    }
    let x_701 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_701 >> 2u);
    let x_704 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_704 & 3u));
    let x_708 : u32 = u_xlatu1;
    let x_711 : vec4<f32> = x_348.unity_LightIndices[bitcast<i32>(x_708)];
    let x_721 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_726 : vec4<u32> = indexable[x_721];
    u_xlat1.x = dot(x_711, bitcast<vec4<f32>>(x_726));
    let x_731 : f32 = u_xlat1.x;
    u_xlatu1 = bitcast<u32>(i32(x_731));
    let x_735 : vec3<f32> = vs_TEXCOORD1;
    let x_747 : u32 = u_xlatu1;
    let x_750 : vec4<f32> = x_746.x_AdditionalLightsPosition[bitcast<i32>(x_747)];
    let x_753 : u32 = u_xlatu1;
    let x_756 : vec4<f32> = x_746.x_AdditionalLightsPosition[bitcast<i32>(x_753)];
    u_xlat7 = ((-(x_735) * vec3<f32>(x_750.w, x_750.w, x_750.w)) + vec3<f32>(x_756.x, x_756.y, x_756.z));
    let x_760 : vec3<f32> = u_xlat7;
    let x_761 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_760, x_761);
    let x_763 : f32 = u_xlat35;
    u_xlat35 = max(x_763, 6.10351562e-05f);
    let x_767 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_767);
    let x_769 : f32 = u_xlat36;
    let x_771 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_769, x_769, x_769) * x_771);
    let x_773 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_773);
    let x_775 : f32 = u_xlat35;
    let x_776 : u32 = u_xlatu1;
    let x_779 : f32 = x_746.x_AdditionalLightsAttenuation[bitcast<i32>(x_776)].x;
    u_xlat35 = (x_775 * x_779);
    let x_781 : f32 = u_xlat35;
    let x_783 : f32 = u_xlat35;
    u_xlat35 = ((-(x_781) * x_783) + 1.0f);
    let x_786 : f32 = u_xlat35;
    u_xlat35 = max(x_786, 0.0f);
    let x_788 : f32 = u_xlat35;
    let x_789 : f32 = u_xlat35;
    u_xlat35 = (x_788 * x_789);
    let x_791 : f32 = u_xlat35;
    let x_792 : f32 = u_xlat36;
    u_xlat35 = (x_791 * x_792);
    let x_794 : u32 = u_xlatu1;
    let x_797 : vec4<f32> = x_746.x_AdditionalLightsSpotDir[bitcast<i32>(x_794)];
    let x_799 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_797.x, x_797.y, x_797.z), x_799);
    let x_801 : f32 = u_xlat36;
    let x_802 : u32 = u_xlatu1;
    let x_805 : f32 = x_746.x_AdditionalLightsAttenuation[bitcast<i32>(x_802)].z;
    let x_807 : u32 = u_xlatu1;
    let x_810 : f32 = x_746.x_AdditionalLightsAttenuation[bitcast<i32>(x_807)].w;
    u_xlat36 = ((x_801 * x_805) + x_810);
    let x_812 : f32 = u_xlat36;
    u_xlat36 = clamp(x_812, 0.0f, 1.0f);
    let x_814 : f32 = u_xlat36;
    let x_815 : f32 = u_xlat36;
    u_xlat36 = (x_814 * x_815);
    let x_817 : f32 = u_xlat35;
    let x_818 : f32 = u_xlat36;
    u_xlat35 = (x_817 * x_818);
    let x_821 : u32 = u_xlatu1;
    u_xlatu36 = (x_821 >> 5u);
    let x_824 : u32 = u_xlatu1;
    u_xlati37 = (1i << bitcast<u32>((bitcast<i32>(x_824) & 31i)));
    let x_830 : i32 = u_xlati37;
    let x_832 : u32 = u_xlatu36;
    let x_835 : f32 = x_506.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_832)].el;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_830) & bitcast<u32>(x_835)));
    let x_839 : i32 = u_xlati36;
    if ((x_839 != 0i)) {
      let x_849 : u32 = u_xlatu1;
      let x_852 : f32 = x_848.x_AdditionalLightsLightTypes[bitcast<i32>(x_849)].el;
      u_xlati36 = i32(x_852);
      let x_854 : i32 = u_xlati36;
      u_xlati37 = select(1i, 0i, (x_854 != 0i));
      let x_858 : u32 = u_xlatu1;
      u_xlati27 = (bitcast<i32>(x_858) << bitcast<u32>(2i));
      let x_861 : i32 = u_xlati37;
      if ((x_861 != 0i)) {
        let x_866 : vec3<f32> = vs_TEXCOORD1;
        let x_868 : i32 = u_xlati27;
        let x_871 : i32 = u_xlati27;
        let x_875 : vec4<f32> = x_848.x_AdditionalLightsWorldToLights[((x_868 + 1i) / 4i)][((x_871 + 1i) % 4i)];
        let x_877 : vec3<f32> = (vec3<f32>(x_866.y, x_866.y, x_866.y) * vec3<f32>(x_875.x, x_875.y, x_875.w));
        let x_878 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
        let x_880 : i32 = u_xlati27;
        let x_882 : i32 = u_xlati27;
        let x_885 : vec4<f32> = x_848.x_AdditionalLightsWorldToLights[(x_880 / 4i)][(x_882 % 4i)];
        let x_887 : vec3<f32> = vs_TEXCOORD1;
        let x_890 : vec4<f32> = u_xlat8;
        let x_892 : vec3<f32> = ((vec3<f32>(x_885.x, x_885.y, x_885.w) * vec3<f32>(x_887.x, x_887.x, x_887.x)) + vec3<f32>(x_890.x, x_890.y, x_890.z));
        let x_893 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
        let x_895 : i32 = u_xlati27;
        let x_898 : i32 = u_xlati27;
        let x_902 : vec4<f32> = x_848.x_AdditionalLightsWorldToLights[((x_895 + 2i) / 4i)][((x_898 + 2i) % 4i)];
        let x_904 : vec3<f32> = vs_TEXCOORD1;
        let x_907 : vec4<f32> = u_xlat8;
        let x_909 : vec3<f32> = ((vec3<f32>(x_902.x, x_902.y, x_902.w) * vec3<f32>(x_904.z, x_904.z, x_904.z)) + vec3<f32>(x_907.x, x_907.y, x_907.z));
        let x_910 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
        let x_912 : vec4<f32> = u_xlat8;
        let x_914 : i32 = u_xlati27;
        let x_917 : i32 = u_xlati27;
        let x_921 : vec4<f32> = x_848.x_AdditionalLightsWorldToLights[((x_914 + 3i) / 4i)][((x_917 + 3i) % 4i)];
        let x_923 : vec3<f32> = (vec3<f32>(x_912.x, x_912.y, x_912.z) + vec3<f32>(x_921.x, x_921.y, x_921.w));
        let x_924 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
        let x_926 : vec4<f32> = u_xlat8;
        let x_928 : vec4<f32> = u_xlat8;
        let x_930 : vec2<f32> = (vec2<f32>(x_926.x, x_926.y) / vec2<f32>(x_928.z, x_928.z));
        let x_931 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_933 : vec4<f32> = u_xlat8;
        let x_936 : vec2<f32> = ((vec2<f32>(x_933.x, x_933.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_937 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
        let x_939 : vec4<f32> = u_xlat8;
        let x_943 : vec2<f32> = clamp(vec2<f32>(x_939.x, x_939.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_944 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_946 : u32 = u_xlatu1;
        let x_949 : vec4<f32> = x_848.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_946)];
        let x_951 : vec4<f32> = u_xlat8;
        let x_954 : u32 = u_xlatu1;
        let x_957 : vec4<f32> = x_848.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_954)];
        let x_959 : vec2<f32> = ((vec2<f32>(x_949.x, x_949.y) * vec2<f32>(x_951.x, x_951.y)) + vec2<f32>(x_957.z, x_957.w));
        let x_960 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
      } else {
        let x_964 : i32 = u_xlati36;
        u_xlatb36 = (x_964 == 1i);
        let x_966 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_966);
        let x_968 : i32 = u_xlati36;
        if ((x_968 != 0i)) {
          let x_974 : vec3<f32> = vs_TEXCOORD1;
          let x_976 : i32 = u_xlati27;
          let x_979 : i32 = u_xlati27;
          let x_983 : vec4<f32> = x_848.x_AdditionalLightsWorldToLights[((x_976 + 1i) / 4i)][((x_979 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_974.y, x_974.y) * vec2<f32>(x_983.x, x_983.y));
          let x_986 : i32 = u_xlati27;
          let x_988 : i32 = u_xlati27;
          let x_991 : vec4<f32> = x_848.x_AdditionalLightsWorldToLights[(x_986 / 4i)][(x_988 % 4i)];
          let x_993 : vec3<f32> = vs_TEXCOORD1;
          let x_996 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_991.x, x_991.y) * vec2<f32>(x_993.x, x_993.x)) + x_996);
          let x_998 : i32 = u_xlati27;
          let x_1001 : i32 = u_xlati27;
          let x_1005 : vec4<f32> = x_848.x_AdditionalLightsWorldToLights[((x_998 + 2i) / 4i)][((x_1001 + 2i) % 4i)];
          let x_1007 : vec3<f32> = vs_TEXCOORD1;
          let x_1010 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1005.x, x_1005.y) * vec2<f32>(x_1007.z, x_1007.z)) + x_1010);
          let x_1012 : vec2<f32> = u_xlat30;
          let x_1013 : i32 = u_xlati27;
          let x_1016 : i32 = u_xlati27;
          let x_1020 : vec4<f32> = x_848.x_AdditionalLightsWorldToLights[((x_1013 + 3i) / 4i)][((x_1016 + 3i) % 4i)];
          u_xlat30 = (x_1012 + vec2<f32>(x_1020.x, x_1020.y));
          let x_1023 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1023 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1026 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1026);
          let x_1028 : u32 = u_xlatu1;
          let x_1031 : vec4<f32> = x_848.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1028)];
          let x_1033 : vec2<f32> = u_xlat30;
          let x_1035 : u32 = u_xlatu1;
          let x_1038 : vec4<f32> = x_848.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1035)];
          let x_1040 : vec2<f32> = ((vec2<f32>(x_1031.x, x_1031.y) * x_1033) + vec2<f32>(x_1038.z, x_1038.w));
          let x_1041 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1040.x, x_1040.y, x_1041.z, x_1041.w);
        } else {
          let x_1045 : vec3<f32> = vs_TEXCOORD1;
          let x_1047 : i32 = u_xlati27;
          let x_1050 : i32 = u_xlati27;
          let x_1054 : vec4<f32> = x_848.x_AdditionalLightsWorldToLights[((x_1047 + 1i) / 4i)][((x_1050 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1045.y, x_1045.y, x_1045.y, x_1045.y) * x_1054);
          let x_1056 : i32 = u_xlati27;
          let x_1058 : i32 = u_xlati27;
          let x_1061 : vec4<f32> = x_848.x_AdditionalLightsWorldToLights[(x_1056 / 4i)][(x_1058 % 4i)];
          let x_1062 : vec3<f32> = vs_TEXCOORD1;
          let x_1065 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1061 * vec4<f32>(x_1062.x, x_1062.x, x_1062.x, x_1062.x)) + x_1065);
          let x_1067 : i32 = u_xlati27;
          let x_1070 : i32 = u_xlati27;
          let x_1074 : vec4<f32> = x_848.x_AdditionalLightsWorldToLights[((x_1067 + 2i) / 4i)][((x_1070 + 2i) % 4i)];
          let x_1075 : vec3<f32> = vs_TEXCOORD1;
          let x_1078 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1074 * vec4<f32>(x_1075.z, x_1075.z, x_1075.z, x_1075.z)) + x_1078);
          let x_1080 : vec4<f32> = u_xlat9;
          let x_1081 : i32 = u_xlati27;
          let x_1084 : i32 = u_xlati27;
          let x_1088 : vec4<f32> = x_848.x_AdditionalLightsWorldToLights[((x_1081 + 3i) / 4i)][((x_1084 + 3i) % 4i)];
          u_xlat9 = (x_1080 + x_1088);
          let x_1090 : vec4<f32> = u_xlat9;
          let x_1092 : vec4<f32> = u_xlat9;
          let x_1094 : vec3<f32> = (vec3<f32>(x_1090.x, x_1090.y, x_1090.z) / vec3<f32>(x_1092.w, x_1092.w, x_1092.w));
          let x_1095 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
          let x_1097 : vec4<f32> = u_xlat9;
          let x_1099 : vec4<f32> = u_xlat9;
          u_xlat36 = dot(vec3<f32>(x_1097.x, x_1097.y, x_1097.z), vec3<f32>(x_1099.x, x_1099.y, x_1099.z));
          let x_1102 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_1102);
          let x_1104 : f32 = u_xlat36;
          let x_1106 : vec4<f32> = u_xlat9;
          let x_1108 : vec3<f32> = (vec3<f32>(x_1104, x_1104, x_1104) * vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
          let x_1109 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
          let x_1111 : vec4<f32> = u_xlat9;
          u_xlat36 = dot(abs(vec3<f32>(x_1111.x, x_1111.y, x_1111.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1116 : f32 = u_xlat36;
          u_xlat36 = max(x_1116, 0.000001f);
          let x_1119 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_1119);
          let x_1122 : f32 = u_xlat36;
          let x_1124 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1122, x_1122, x_1122) * vec3<f32>(x_1124.z, x_1124.x, x_1124.y));
          let x_1128 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1128);
          let x_1132 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1132, 0.0f, 1.0f);
          let x_1136 : vec3<f32> = u_xlat10;
          let x_1139 : vec4<bool> = (vec4<f32>(x_1136.y, x_1136.z, x_1136.y, x_1136.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1139.x, x_1139.y);
          let x_1143 : bool = u_xlatb27.x;
          if (x_1143) {
            let x_1148 : f32 = u_xlat10.x;
            x_1144 = x_1148;
          } else {
            let x_1151 : f32 = u_xlat10.x;
            x_1144 = -(x_1151);
          }
          let x_1153 : f32 = x_1144;
          u_xlat27.x = x_1153;
          let x_1156 : bool = u_xlatb27.y;
          if (x_1156) {
            let x_1161 : f32 = u_xlat10.x;
            x_1157 = x_1161;
          } else {
            let x_1164 : f32 = u_xlat10.x;
            x_1157 = -(x_1164);
          }
          let x_1166 : f32 = x_1157;
          u_xlat27.y = x_1166;
          let x_1168 : vec4<f32> = u_xlat9;
          let x_1170 : f32 = u_xlat36;
          let x_1173 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1168.x, x_1168.y) * vec2<f32>(x_1170, x_1170)) + x_1173);
          let x_1175 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1175 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1178 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1178, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1182 : u32 = u_xlatu1;
          let x_1185 : vec4<f32> = x_848.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1182)];
          let x_1187 : vec2<f32> = u_xlat27;
          let x_1189 : u32 = u_xlatu1;
          let x_1192 : vec4<f32> = x_848.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1189)];
          let x_1194 : vec2<f32> = ((vec2<f32>(x_1185.x, x_1185.y) * x_1187) + vec2<f32>(x_1192.z, x_1192.w));
          let x_1195 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1194.x, x_1194.y, x_1195.z, x_1195.w);
        }
      }
      let x_1202 : vec4<f32> = u_xlat8;
      let x_1205 : f32 = x_27.x_GlobalMipBias.x;
      let x_1206 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1202.x, x_1202.y), x_1205);
      u_xlat8 = x_1206;
      let x_1208 : bool = u_xlatb5.y;
      if (x_1208) {
        let x_1213 : f32 = u_xlat8.w;
        x_1209 = x_1213;
      } else {
        let x_1216 : f32 = u_xlat8.x;
        x_1209 = x_1216;
      }
      let x_1217 : f32 = x_1209;
      u_xlat36 = x_1217;
      let x_1219 : bool = u_xlatb5.x;
      if (x_1219) {
        let x_1223 : vec4<f32> = u_xlat8;
        x_1220 = vec3<f32>(x_1223.x, x_1223.y, x_1223.z);
      } else {
        let x_1226 : f32 = u_xlat36;
        x_1220 = vec3<f32>(x_1226, x_1226, x_1226);
      }
      let x_1228 : vec3<f32> = x_1220;
      let x_1229 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1235 : vec4<f32> = u_xlat8;
    let x_1237 : u32 = u_xlatu1;
    let x_1240 : vec4<f32> = x_746.x_AdditionalLightsColor[bitcast<i32>(x_1237)];
    let x_1242 : vec3<f32> = (vec3<f32>(x_1235.x, x_1235.y, x_1235.z) * vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
    let x_1243 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
    let x_1245 : f32 = u_xlat35;
    let x_1247 : vec4<f32> = u_xlat8;
    let x_1249 : vec3<f32> = (vec3<f32>(x_1245, x_1245, x_1245) * vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
    let x_1250 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
    let x_1252 : vec4<f32> = u_xlat2;
    let x_1254 : vec3<f32> = u_xlat7;
    u_xlat1.x = dot(vec3<f32>(x_1252.x, x_1252.y, x_1252.z), x_1254);
    let x_1258 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_1258, 0.0f, 1.0f);
    let x_1261 : vec4<f32> = u_xlat1;
    let x_1263 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1261.x, x_1261.x, x_1261.x) * vec3<f32>(x_1263.x, x_1263.y, x_1263.z));
    let x_1266 : vec4<f32> = u_xlat1;
    let x_1268 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1266.y, x_1266.z, x_1266.w) * x_1268);
    let x_1270 : vec3<f32> = u_xlat7;
    let x_1271 : vec4<f32> = u_xlat0;
    let x_1274 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1270 * vec3<f32>(x_1271.x, x_1271.x, x_1271.x)) + x_1274);

    continuing {
      let x_1276 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1276 + bitcast<u32>(1i));
    }
  }
  let x_1278 : vec4<f32> = u_xlat4;
  let x_1280 : vec4<f32> = u_xlat1;
  let x_1283 : vec4<f32> = u_xlat3;
  let x_1285 : vec3<f32> = ((vec3<f32>(x_1278.x, x_1278.y, x_1278.z) * vec3<f32>(x_1280.y, x_1280.z, x_1280.w)) + vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
  let x_1286 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);
  let x_1290 : vec3<f32> = u_xlat6;
  let x_1291 : vec4<f32> = u_xlat1;
  let x_1293 : vec3<f32> = (x_1290 + vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
  let x_1294 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
  let x_1297 : f32 = x_41.x_Surface;
  u_xlatb11 = (x_1297 == 1.0f);
  let x_1299 : bool = u_xlatb11;
  let x_1300 : bool = u_xlatb22;
  u_xlatb11 = (x_1299 | x_1300);
  let x_1302 : bool = u_xlatb11;
  if (x_1302) {
    let x_1307 : f32 = u_xlat0.x;
    x_1303 = x_1307;
  } else {
    x_1303 = 1.0f;
  }
  let x_1309 : f32 = x_1303;
  SV_Target0.w = x_1309;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

