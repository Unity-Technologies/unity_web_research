diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_5,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_40 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_76 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat12 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_271 : UnityPerDraw;

var<private> u_xlat31 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb12 : vec2<bool>;

var<private> u_xlat22 : f32;

@group(1) @binding(5) var<uniform> x_446 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatu31 : u32;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlatu24 : u32;

var<private> u_xlati34 : i32;

var<private> u_xlat24 : f32;

var<private> u_xlati24 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_681 : AdditionalLights;

var<private> u_xlat34 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

var<private> u_xlatb36 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati36 : i32;

var<private> u_xlati7 : i32;

var<private> u_xlati17 : i32;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb17 : vec3<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> u_xlat10 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb10 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb24 : bool;

var<private> u_xlatu33 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_531 : f32;
  var x_542 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_812 : f32;
  var x_823 : f32;
  var txVec1 : vec3<f32>;
  var x_1270 : f32;
  var x_1283 : f32;
  var x_1341 : f32;
  var x_1352 : vec3<f32>;
  var x_1425 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_36 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_40.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_36.w, x_36.x, x_36.y, x_36.z) * vec4<f32>(x_44.w, x_44.x, x_44.y, x_44.z));
  let x_50 : vec3<f32> = vs_TEXCOORD2;
  let x_51 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_50, x_51);
  let x_56 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_56);
  let x_59 : vec4<f32> = u_xlat1;
  let x_61 : vec3<f32> = vs_TEXCOORD2;
  let x_62 : vec3<f32> = (vec3<f32>(x_59.x, x_59.x, x_59.x) * x_61);
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  let x_67 : vec3<f32> = vs_TEXCOORD1;
  let x_78 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres0;
  let x_81 : vec3<f32> = (x_67 + -(vec3<f32>(x_78.x, x_78.y, x_78.z)));
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_85 : vec3<f32> = vs_TEXCOORD1;
  let x_88 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres1;
  let x_91 : vec3<f32> = (x_85 + -(vec3<f32>(x_88.x, x_88.y, x_88.z)));
  let x_92 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_95 : vec3<f32> = vs_TEXCOORD1;
  let x_98 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres2;
  let x_101 : vec3<f32> = (x_95 + -(vec3<f32>(x_98.x, x_98.y, x_98.z)));
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_106 : vec3<f32> = vs_TEXCOORD1;
  let x_109 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_106 + -(vec3<f32>(x_109.x, x_109.y, x_109.z)));
  let x_113 : vec4<f32> = u_xlat2;
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_113.x, x_113.y, x_113.z), vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_119 : vec4<f32> = u_xlat3;
  let x_121 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_119.x, x_119.y, x_119.z), vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_126 : vec4<f32> = u_xlat4;
  let x_128 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_126.x, x_126.y, x_126.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_133 : vec3<f32> = u_xlat5;
  let x_134 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_133, x_134);
  let x_142 : vec4<f32> = u_xlat2;
  let x_145 : vec4<f32> = x_76.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_142 < x_145);
  let x_149 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_149);
  let x_155 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_155);
  let x_159 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_159);
  let x_163 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_163);
  let x_167 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_167);
  let x_173 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_173);
  let x_177 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_177);
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec4<f32> = u_xlat3;
  let x_184 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) + vec3<f32>(x_182.y, x_182.z, x_182.w));
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : vec4<f32> = u_xlat2;
  let x_190 : vec3<f32> = max(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_191 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_191.x, x_190.x, x_190.y, x_190.z);
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_193, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_201 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_201) + 4.0f);
  let x_208 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_208);
  let x_212 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_212) << bitcast<u32>(2i));
  let x_216 : vec3<f32> = vs_TEXCOORD1;
  let x_218 : i32 = u_xlati2;
  let x_221 : i32 = u_xlati2;
  let x_225 : vec4<f32> = x_76.x_MainLightWorldToShadow[((x_218 + 1i) / 4i)][((x_221 + 1i) % 4i)];
  u_xlat12 = (vec3<f32>(x_216.y, x_216.y, x_216.y) * vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : i32 = u_xlati2;
  let x_230 : i32 = u_xlati2;
  let x_233 : vec4<f32> = x_76.x_MainLightWorldToShadow[(x_228 / 4i)][(x_230 % 4i)];
  let x_235 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.x, x_235.x, x_235.x)) + x_238);
  let x_240 : i32 = u_xlati2;
  let x_243 : i32 = u_xlati2;
  let x_247 : vec4<f32> = x_76.x_MainLightWorldToShadow[((x_240 + 2i) / 4i)][((x_243 + 2i) % 4i)];
  let x_249 : vec3<f32> = vs_TEXCOORD1;
  let x_252 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.z, x_249.z, x_249.z)) + x_252);
  let x_254 : vec3<f32> = u_xlat12;
  let x_255 : i32 = u_xlati2;
  let x_258 : i32 = u_xlati2;
  let x_262 : vec4<f32> = x_76.x_MainLightWorldToShadow[((x_255 + 3i) / 4i)][((x_258 + 3i) % 4i)];
  let x_264 : vec3<f32> = (x_254 + vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_265 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  u_xlat1.w = 1.0f;
  let x_274 : vec4<f32> = x_271.unity_SHAr;
  let x_275 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_274, x_275);
  let x_280 : vec4<f32> = x_271.unity_SHAg;
  let x_281 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_280, x_281);
  let x_286 : vec4<f32> = x_271.unity_SHAb;
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_286, x_287);
  let x_290 : vec4<f32> = u_xlat1;
  let x_292 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_290.y, x_290.z, x_290.z, x_290.x) * vec4<f32>(x_292.x, x_292.y, x_292.z, x_292.z));
  let x_297 : vec4<f32> = x_271.unity_SHBr;
  let x_298 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_297, x_298);
  let x_303 : vec4<f32> = x_271.unity_SHBg;
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_303, x_304);
  let x_309 : vec4<f32> = x_271.unity_SHBb;
  let x_310 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_309, x_310);
  let x_315 : f32 = u_xlat1.y;
  let x_317 : f32 = u_xlat1.y;
  u_xlat31 = (x_315 * x_317);
  let x_320 : f32 = u_xlat1.x;
  let x_322 : f32 = u_xlat1.x;
  let x_324 : f32 = u_xlat31;
  u_xlat31 = ((x_320 * x_322) + -(x_324));
  let x_329 : vec4<f32> = x_271.unity_SHC;
  let x_331 : f32 = u_xlat31;
  let x_334 : vec3<f32> = u_xlat5;
  let x_335 : vec3<f32> = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331, x_331, x_331)) + x_334);
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat3;
  let x_340 : vec4<f32> = u_xlat4;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) + vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat3;
  let x_347 : vec3<f32> = max(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_352 : vec4<f32> = u_xlat2;
  let x_353 : vec2<f32> = vec2<f32>(x_352.x, x_352.y);
  let x_355 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_353.x, x_353.y, x_355);
  let x_367 : vec3<f32> = txVec0;
  let x_369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_367.xy, x_367.z);
  u_xlat31 = x_369;
  let x_372 : f32 = x_76.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_372) + 1.0f);
  let x_376 : f32 = u_xlat31;
  let x_378 : f32 = x_76.x_MainLightShadowParams.x;
  let x_381 : f32 = u_xlat2.x;
  u_xlat31 = ((x_376 * x_378) + x_381);
  let x_384 : f32 = u_xlat2.z;
  u_xlatb2.x = (0.0f >= x_384);
  let x_391 : f32 = u_xlat2.z;
  u_xlatb12.x = (x_391 >= 1.0f);
  let x_395 : bool = u_xlatb12.x;
  let x_397 : bool = u_xlatb2.x;
  u_xlatb2.x = (x_395 | x_397);
  let x_401 : bool = u_xlatb2.x;
  let x_402 : f32 = u_xlat31;
  u_xlat31 = select(x_402, 1.0f, x_401);
  let x_404 : vec3<f32> = vs_TEXCOORD1;
  let x_407 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_409 : vec3<f32> = (x_404 + -(x_407));
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_412 : vec4<f32> = u_xlat2;
  let x_414 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_412.x, x_412.y, x_412.z), vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_419 : f32 = u_xlat2.x;
  let x_421 : f32 = x_76.x_MainLightShadowParams.z;
  let x_424 : f32 = x_76.x_MainLightShadowParams.w;
  u_xlat12.x = ((x_419 * x_421) + x_424);
  let x_428 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_428, 0.0f, 1.0f);
  let x_432 : f32 = u_xlat31;
  u_xlat22 = (-(x_432) + 1.0f);
  let x_436 : f32 = u_xlat12.x;
  let x_437 : f32 = u_xlat22;
  let x_439 : f32 = u_xlat31;
  u_xlat31 = ((x_436 * x_437) + x_439);
  let x_448 : f32 = x_446.x_MainLightCookieTextureFormat;
  u_xlatb12.x = !((x_448 == -1.0f));
  let x_452 : bool = u_xlatb12.x;
  if (x_452) {
    let x_455 : vec3<f32> = vs_TEXCOORD1;
    let x_458 : vec4<f32> = x_446.x_MainLightWorldToLight[1i];
    let x_460 : vec2<f32> = (vec2<f32>(x_455.y, x_455.y) * vec2<f32>(x_458.x, x_458.y));
    let x_461 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_460.x, x_460.y, x_461.z);
    let x_464 : vec4<f32> = x_446.x_MainLightWorldToLight[0i];
    let x_466 : vec3<f32> = vs_TEXCOORD1;
    let x_469 : vec3<f32> = u_xlat12;
    let x_471 : vec2<f32> = ((vec2<f32>(x_464.x, x_464.y) * vec2<f32>(x_466.x, x_466.x)) + vec2<f32>(x_469.x, x_469.y));
    let x_472 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_471.x, x_471.y, x_472.z);
    let x_475 : vec4<f32> = x_446.x_MainLightWorldToLight[2i];
    let x_477 : vec3<f32> = vs_TEXCOORD1;
    let x_480 : vec3<f32> = u_xlat12;
    let x_482 : vec2<f32> = ((vec2<f32>(x_475.x, x_475.y) * vec2<f32>(x_477.z, x_477.z)) + vec2<f32>(x_480.x, x_480.y));
    let x_483 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_482.x, x_482.y, x_483.z);
    let x_485 : vec3<f32> = u_xlat12;
    let x_488 : vec4<f32> = x_446.x_MainLightWorldToLight[3i];
    let x_490 : vec2<f32> = (vec2<f32>(x_485.x, x_485.y) + vec2<f32>(x_488.x, x_488.y));
    let x_491 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_490.x, x_490.y, x_491.z);
    let x_493 : vec3<f32> = u_xlat12;
    let x_498 : vec2<f32> = ((vec2<f32>(x_493.x, x_493.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_499 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_498.x, x_498.y, x_499.z);
    let x_506 : vec3<f32> = u_xlat12;
    let x_509 : f32 = x_27.x_GlobalMipBias.x;
    let x_510 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_506.x, x_506.y), x_509);
    u_xlat4 = x_510;
    let x_512 : f32 = x_446.x_MainLightCookieTextureFormat;
    let x_514 : f32 = x_446.x_MainLightCookieTextureFormat;
    let x_516 : f32 = x_446.x_MainLightCookieTextureFormat;
    let x_518 : f32 = x_446.x_MainLightCookieTextureFormat;
    let x_519 : vec4<f32> = vec4<f32>(x_512, x_514, x_516, x_518);
    let x_526 : vec4<bool> = (vec4<f32>(x_519.x, x_519.y, x_519.z, x_519.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb12 = vec2<bool>(x_526.x, x_526.y);
    let x_529 : bool = u_xlatb12.y;
    if (x_529) {
      let x_535 : f32 = u_xlat4.w;
      x_531 = x_535;
    } else {
      let x_538 : f32 = u_xlat4.x;
      x_531 = x_538;
    }
    let x_539 : f32 = x_531;
    u_xlat22 = x_539;
    let x_541 : bool = u_xlatb12.x;
    if (x_541) {
      let x_545 : vec4<f32> = u_xlat4;
      x_542 = vec3<f32>(x_545.x, x_545.y, x_545.z);
    } else {
      let x_548 : f32 = u_xlat22;
      x_542 = vec3<f32>(x_548, x_548, x_548);
    }
    let x_550 : vec3<f32> = x_542;
    u_xlat12 = x_550;
  } else {
    u_xlat12.x = 1.0f;
    u_xlat12.y = 1.0f;
    u_xlat12.z = 1.0f;
  }
  let x_555 : vec3<f32> = u_xlat12;
  let x_557 : vec4<f32> = x_27.x_MainLightColor;
  u_xlat12 = (x_555 * vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_560 : f32 = u_xlat31;
  let x_562 : f32 = x_271.unity_LightData.z;
  u_xlat31 = (x_560 * x_562);
  let x_564 : f32 = u_xlat31;
  let x_566 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_564, x_564, x_564) * x_566);
  let x_568 : vec4<f32> = u_xlat1;
  let x_571 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat31 = dot(vec3<f32>(x_568.x, x_568.y, x_568.z), vec3<f32>(x_571.x, x_571.y, x_571.z));
  let x_574 : f32 = u_xlat31;
  u_xlat31 = clamp(x_574, 0.0f, 1.0f);
  let x_576 : f32 = u_xlat31;
  let x_578 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_576, x_576, x_576) * x_578);
  let x_580 : vec4<f32> = u_xlat0;
  let x_582 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_580.y, x_580.z, x_580.w) * x_582);
  let x_585 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_587 : f32 = x_271.unity_LightData.y;
  u_xlat31 = min(x_585, x_587);
  let x_590 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_590));
  let x_594 : f32 = u_xlat2.x;
  let x_597 : f32 = x_76.x_AdditionalShadowFadeParams.x;
  let x_600 : f32 = x_76.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_594 * x_597) + x_600);
  let x_604 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_604, 0.0f, 1.0f);
  let x_609 : f32 = x_446.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_611 : f32 = x_446.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_613 : f32 = x_446.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_615 : f32 = x_446.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_616 : vec4<f32> = vec4<f32>(x_609, x_611, x_613, x_615);
  let x_622 : vec4<bool> = (vec4<f32>(x_616.x, x_616.y, x_616.z, x_616.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_622.x, x_622.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_634 : u32 = u_xlatu_loop_1;
    let x_635 : u32 = u_xlatu31;
    if ((x_634 < x_635)) {
    } else {
      break;
    }
    let x_638 : u32 = u_xlatu_loop_1;
    u_xlatu24 = (x_638 >> 2u);
    let x_641 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_641 & 3u));
    let x_646 : u32 = u_xlatu24;
    let x_649 : vec4<f32> = x_271.unity_LightIndices[bitcast<i32>(x_646)];
    let x_659 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_664 : vec4<u32> = indexable[x_659];
    u_xlat24 = dot(x_649, bitcast<vec4<f32>>(x_664));
    let x_668 : f32 = u_xlat24;
    u_xlati24 = i32(x_668);
    let x_671 : vec3<f32> = vs_TEXCOORD1;
    let x_682 : i32 = u_xlati24;
    let x_684 : vec4<f32> = x_681.x_AdditionalLightsPosition[x_682];
    let x_687 : i32 = u_xlati24;
    let x_689 : vec4<f32> = x_681.x_AdditionalLightsPosition[x_687];
    u_xlat6 = ((-(x_671) * vec3<f32>(x_684.w, x_684.w, x_684.w)) + vec3<f32>(x_689.x, x_689.y, x_689.z));
    let x_693 : vec3<f32> = u_xlat6;
    let x_694 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_693, x_694);
    let x_696 : f32 = u_xlat34;
    u_xlat34 = max(x_696, 0.00006103515625f);
    let x_700 : f32 = u_xlat34;
    u_xlat35 = inverseSqrt(x_700);
    let x_702 : f32 = u_xlat35;
    let x_704 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_702, x_702, x_702) * x_704);
    let x_706 : f32 = u_xlat34;
    u_xlat35 = (1.0f / x_706);
    let x_708 : f32 = u_xlat34;
    let x_709 : i32 = u_xlati24;
    let x_711 : f32 = x_681.x_AdditionalLightsAttenuation[x_709].x;
    u_xlat34 = (x_708 * x_711);
    let x_713 : f32 = u_xlat34;
    let x_715 : f32 = u_xlat34;
    u_xlat34 = ((-(x_713) * x_715) + 1.0f);
    let x_718 : f32 = u_xlat34;
    u_xlat34 = max(x_718, 0.0f);
    let x_720 : f32 = u_xlat34;
    let x_721 : f32 = u_xlat34;
    u_xlat34 = (x_720 * x_721);
    let x_723 : f32 = u_xlat34;
    let x_724 : f32 = u_xlat35;
    u_xlat34 = (x_723 * x_724);
    let x_726 : i32 = u_xlati24;
    let x_728 : vec4<f32> = x_681.x_AdditionalLightsSpotDir[x_726];
    let x_730 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(vec3<f32>(x_728.x, x_728.y, x_728.z), x_730);
    let x_732 : f32 = u_xlat35;
    let x_733 : i32 = u_xlati24;
    let x_735 : f32 = x_681.x_AdditionalLightsAttenuation[x_733].z;
    let x_737 : i32 = u_xlati24;
    let x_739 : f32 = x_681.x_AdditionalLightsAttenuation[x_737].w;
    u_xlat35 = ((x_732 * x_735) + x_739);
    let x_741 : f32 = u_xlat35;
    u_xlat35 = clamp(x_741, 0.0f, 1.0f);
    let x_743 : f32 = u_xlat35;
    let x_744 : f32 = u_xlat35;
    u_xlat35 = (x_743 * x_744);
    let x_746 : f32 = u_xlat34;
    let x_747 : f32 = u_xlat35;
    u_xlat34 = (x_746 * x_747);
    let x_751 : i32 = u_xlati24;
    let x_753 : f32 = x_76.x_AdditionalShadowParams[x_751].w;
    u_xlati35 = i32(x_753);
    let x_756 : i32 = u_xlati35;
    u_xlatb36 = (x_756 >= 0i);
    let x_758 : bool = u_xlatb36;
    if (x_758) {
      let x_762 : i32 = u_xlati24;
      let x_764 : f32 = x_76.x_AdditionalShadowParams[x_762].z;
      u_xlatb36 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_764, x_764, x_764, x_764))));
      let x_768 : bool = u_xlatb36;
      if (x_768) {
        let x_772 : vec3<f32> = u_xlat6;
        let x_775 : vec3<f32> = u_xlat6;
        let x_778 : vec4<bool> = (abs(vec4<f32>(x_772.z, x_772.z, x_772.y, x_772.z)) >= abs(vec4<f32>(x_775.x, x_775.y, x_775.x, x_775.x)));
        let x_780 : vec3<bool> = vec3<bool>(x_778.x, x_778.y, x_778.z);
        let x_781 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_780.x, x_780.y, x_780.z, x_781.w);
        let x_784 : bool = u_xlatb7.y;
        let x_786 : bool = u_xlatb7.x;
        u_xlatb36 = (x_784 & x_786);
        let x_788 : vec3<f32> = u_xlat6;
        let x_791 : vec4<bool> = (-(vec4<f32>(x_788.z, x_788.y, x_788.z, x_788.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_792 : vec3<bool> = vec3<bool>(x_791.x, x_791.y, x_791.w);
        let x_793 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_792.x, x_792.y, x_793.z, x_792.z);
        let x_797 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_797);
        let x_802 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_802);
        let x_807 : bool = u_xlatb7.w;
        u_xlat37 = select(0.0f, 1.0f, x_807);
        let x_811 : bool = u_xlatb7.z;
        if (x_811) {
          let x_816 : f32 = u_xlat7.y;
          x_812 = x_816;
        } else {
          let x_818 : f32 = u_xlat37;
          x_812 = x_818;
        }
        let x_819 : f32 = x_812;
        u_xlat17.x = x_819;
        let x_822 : bool = u_xlatb36;
        if (x_822) {
          let x_827 : f32 = u_xlat7.x;
          x_823 = x_827;
        } else {
          let x_830 : f32 = u_xlat17.x;
          x_823 = x_830;
        }
        let x_831 : f32 = x_823;
        u_xlat36 = x_831;
        let x_832 : i32 = u_xlati24;
        let x_834 : f32 = x_76.x_AdditionalShadowParams[x_832].w;
        u_xlat7.x = trunc(x_834);
        let x_837 : f32 = u_xlat36;
        let x_839 : f32 = u_xlat7.x;
        u_xlat36 = (x_837 + x_839);
        let x_841 : f32 = u_xlat36;
        u_xlati35 = i32(x_841);
      }
      let x_843 : i32 = u_xlati35;
      u_xlati35 = (x_843 << bitcast<u32>(2i));
      let x_845 : vec3<f32> = vs_TEXCOORD1;
      let x_848 : i32 = u_xlati35;
      let x_851 : i32 = u_xlati35;
      let x_855 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_848 + 1i) / 4i)][((x_851 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_845.y, x_845.y, x_845.y, x_845.y) * x_855);
      let x_857 : i32 = u_xlati35;
      let x_859 : i32 = u_xlati35;
      let x_862 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[(x_857 / 4i)][(x_859 % 4i)];
      let x_863 : vec3<f32> = vs_TEXCOORD1;
      let x_866 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_862 * vec4<f32>(x_863.x, x_863.x, x_863.x, x_863.x)) + x_866);
      let x_868 : i32 = u_xlati35;
      let x_871 : i32 = u_xlati35;
      let x_875 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_868 + 2i) / 4i)][((x_871 + 2i) % 4i)];
      let x_876 : vec3<f32> = vs_TEXCOORD1;
      let x_879 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_875 * vec4<f32>(x_876.z, x_876.z, x_876.z, x_876.z)) + x_879);
      let x_881 : vec4<f32> = u_xlat7;
      let x_882 : i32 = u_xlati35;
      let x_885 : i32 = u_xlati35;
      let x_889 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_882 + 3i) / 4i)][((x_885 + 3i) % 4i)];
      u_xlat7 = (x_881 + x_889);
      let x_891 : vec4<f32> = u_xlat7;
      let x_893 : vec4<f32> = u_xlat7;
      let x_895 : vec3<f32> = (vec3<f32>(x_891.x, x_891.y, x_891.z) / vec3<f32>(x_893.w, x_893.w, x_893.w));
      let x_896 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
      let x_899 : vec4<f32> = u_xlat7;
      let x_900 : vec2<f32> = vec2<f32>(x_899.x, x_899.y);
      let x_902 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_900.x, x_900.y, x_902);
      let x_910 : vec3<f32> = txVec1;
      let x_912 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_910.xy, x_910.z);
      u_xlat35 = x_912;
      let x_913 : i32 = u_xlati24;
      let x_915 : f32 = x_76.x_AdditionalShadowParams[x_913].x;
      u_xlat36 = (1.0f + -(x_915));
      let x_918 : f32 = u_xlat35;
      let x_919 : i32 = u_xlati24;
      let x_921 : f32 = x_76.x_AdditionalShadowParams[x_919].x;
      let x_923 : f32 = u_xlat36;
      u_xlat35 = ((x_918 * x_921) + x_923);
      let x_926 : f32 = u_xlat7.z;
      u_xlatb36 = (0.0f >= x_926);
      let x_929 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_929 >= 1.0f);
      let x_932 : bool = u_xlatb36;
      let x_934 : bool = u_xlatb7.x;
      u_xlatb36 = (x_932 | x_934);
      let x_936 : bool = u_xlatb36;
      let x_937 : f32 = u_xlat35;
      u_xlat35 = select(x_937, 1.0f, x_936);
    } else {
      u_xlat35 = 1.0f;
    }
    let x_940 : f32 = u_xlat35;
    u_xlat36 = (-(x_940) + 1.0f);
    let x_944 : f32 = u_xlat2.x;
    let x_945 : f32 = u_xlat36;
    let x_947 : f32 = u_xlat35;
    u_xlat35 = ((x_944 * x_945) + x_947);
    let x_950 : i32 = u_xlati24;
    u_xlati36 = (1i << bitcast<u32>((x_950 & 31i)));
    let x_954 : i32 = u_xlati36;
    let x_957 : f32 = x_446.x_AdditionalLightsCookieEnableBits;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_954) & bitcast<u32>(x_957)));
    let x_961 : i32 = u_xlati36;
    if ((x_961 != 0i)) {
      let x_965 : i32 = u_xlati24;
      let x_967 : f32 = x_446.x_AdditionalLightsLightTypes[x_965].el;
      u_xlati36 = i32(x_967);
      let x_970 : i32 = u_xlati36;
      u_xlati7 = select(1i, 0i, (x_970 != 0i));
      let x_974 : i32 = u_xlati24;
      u_xlati17 = (x_974 << bitcast<u32>(2i));
      let x_976 : i32 = u_xlati7;
      if ((x_976 != 0i)) {
        let x_980 : vec3<f32> = vs_TEXCOORD1;
        let x_982 : i32 = u_xlati17;
        let x_985 : i32 = u_xlati17;
        let x_989 : vec4<f32> = x_446.x_AdditionalLightsWorldToLights[((x_982 + 1i) / 4i)][((x_985 + 1i) % 4i)];
        let x_991 : vec3<f32> = (vec3<f32>(x_980.y, x_980.y, x_980.y) * vec3<f32>(x_989.x, x_989.y, x_989.w));
        let x_992 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_991.x, x_992.y, x_991.y, x_991.z);
        let x_994 : i32 = u_xlati17;
        let x_996 : i32 = u_xlati17;
        let x_999 : vec4<f32> = x_446.x_AdditionalLightsWorldToLights[(x_994 / 4i)][(x_996 % 4i)];
        let x_1001 : vec3<f32> = vs_TEXCOORD1;
        let x_1004 : vec4<f32> = u_xlat7;
        let x_1006 : vec3<f32> = ((vec3<f32>(x_999.x, x_999.y, x_999.w) * vec3<f32>(x_1001.x, x_1001.x, x_1001.x)) + vec3<f32>(x_1004.x, x_1004.z, x_1004.w));
        let x_1007 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1006.x, x_1007.y, x_1006.y, x_1006.z);
        let x_1009 : i32 = u_xlati17;
        let x_1012 : i32 = u_xlati17;
        let x_1016 : vec4<f32> = x_446.x_AdditionalLightsWorldToLights[((x_1009 + 2i) / 4i)][((x_1012 + 2i) % 4i)];
        let x_1018 : vec3<f32> = vs_TEXCOORD1;
        let x_1021 : vec4<f32> = u_xlat7;
        let x_1023 : vec3<f32> = ((vec3<f32>(x_1016.x, x_1016.y, x_1016.w) * vec3<f32>(x_1018.z, x_1018.z, x_1018.z)) + vec3<f32>(x_1021.x, x_1021.z, x_1021.w));
        let x_1024 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1023.x, x_1024.y, x_1023.y, x_1023.z);
        let x_1026 : vec4<f32> = u_xlat7;
        let x_1028 : i32 = u_xlati17;
        let x_1031 : i32 = u_xlati17;
        let x_1035 : vec4<f32> = x_446.x_AdditionalLightsWorldToLights[((x_1028 + 3i) / 4i)][((x_1031 + 3i) % 4i)];
        let x_1037 : vec3<f32> = (vec3<f32>(x_1026.x, x_1026.z, x_1026.w) + vec3<f32>(x_1035.x, x_1035.y, x_1035.w));
        let x_1038 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1037.x, x_1038.y, x_1037.y, x_1037.z);
        let x_1040 : vec4<f32> = u_xlat7;
        let x_1042 : vec4<f32> = u_xlat7;
        let x_1044 : vec2<f32> = (vec2<f32>(x_1040.x, x_1040.z) / vec2<f32>(x_1042.w, x_1042.w));
        let x_1045 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1044.x, x_1045.y, x_1044.y, x_1045.w);
        let x_1047 : vec4<f32> = u_xlat7;
        let x_1050 : vec2<f32> = ((vec2<f32>(x_1047.x, x_1047.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1051 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1050.x, x_1051.y, x_1050.y, x_1051.w);
        let x_1053 : vec4<f32> = u_xlat7;
        let x_1057 : vec2<f32> = clamp(vec2<f32>(x_1053.x, x_1053.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1058 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1057.x, x_1058.y, x_1057.y, x_1058.w);
        let x_1060 : i32 = u_xlati24;
        let x_1062 : vec4<f32> = x_446.x_AdditionalLightsCookieAtlasUVRects[x_1060];
        let x_1064 : vec4<f32> = u_xlat7;
        let x_1067 : i32 = u_xlati24;
        let x_1069 : vec4<f32> = x_446.x_AdditionalLightsCookieAtlasUVRects[x_1067];
        let x_1071 : vec2<f32> = ((vec2<f32>(x_1062.x, x_1062.y) * vec2<f32>(x_1064.x, x_1064.z)) + vec2<f32>(x_1069.z, x_1069.w));
        let x_1072 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1071.x, x_1072.y, x_1071.y, x_1072.w);
      } else {
        let x_1075 : i32 = u_xlati36;
        u_xlatb36 = (x_1075 == 1i);
        let x_1077 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_1077);
        let x_1079 : i32 = u_xlati36;
        if ((x_1079 != 0i)) {
          let x_1084 : vec3<f32> = vs_TEXCOORD1;
          let x_1086 : i32 = u_xlati17;
          let x_1089 : i32 = u_xlati17;
          let x_1093 : vec4<f32> = x_446.x_AdditionalLightsWorldToLights[((x_1086 + 1i) / 4i)][((x_1089 + 1i) % 4i)];
          let x_1095 : vec2<f32> = (vec2<f32>(x_1084.y, x_1084.y) * vec2<f32>(x_1093.x, x_1093.y));
          let x_1096 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
          let x_1098 : i32 = u_xlati17;
          let x_1100 : i32 = u_xlati17;
          let x_1103 : vec4<f32> = x_446.x_AdditionalLightsWorldToLights[(x_1098 / 4i)][(x_1100 % 4i)];
          let x_1105 : vec3<f32> = vs_TEXCOORD1;
          let x_1108 : vec4<f32> = u_xlat8;
          let x_1110 : vec2<f32> = ((vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(x_1105.x, x_1105.x)) + vec2<f32>(x_1108.x, x_1108.y));
          let x_1111 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
          let x_1113 : i32 = u_xlati17;
          let x_1116 : i32 = u_xlati17;
          let x_1120 : vec4<f32> = x_446.x_AdditionalLightsWorldToLights[((x_1113 + 2i) / 4i)][((x_1116 + 2i) % 4i)];
          let x_1122 : vec3<f32> = vs_TEXCOORD1;
          let x_1125 : vec4<f32> = u_xlat8;
          let x_1127 : vec2<f32> = ((vec2<f32>(x_1120.x, x_1120.y) * vec2<f32>(x_1122.z, x_1122.z)) + vec2<f32>(x_1125.x, x_1125.y));
          let x_1128 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1127.x, x_1127.y, x_1128.z, x_1128.w);
          let x_1130 : vec4<f32> = u_xlat8;
          let x_1132 : i32 = u_xlati17;
          let x_1135 : i32 = u_xlati17;
          let x_1139 : vec4<f32> = x_446.x_AdditionalLightsWorldToLights[((x_1132 + 3i) / 4i)][((x_1135 + 3i) % 4i)];
          let x_1141 : vec2<f32> = (vec2<f32>(x_1130.x, x_1130.y) + vec2<f32>(x_1139.x, x_1139.y));
          let x_1142 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
          let x_1144 : vec4<f32> = u_xlat8;
          let x_1147 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1148 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1147.x, x_1147.y, x_1148.z, x_1148.w);
          let x_1150 : vec4<f32> = u_xlat8;
          let x_1152 : vec2<f32> = fract(vec2<f32>(x_1150.x, x_1150.y));
          let x_1153 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
          let x_1155 : i32 = u_xlati24;
          let x_1157 : vec4<f32> = x_446.x_AdditionalLightsCookieAtlasUVRects[x_1155];
          let x_1159 : vec4<f32> = u_xlat8;
          let x_1162 : i32 = u_xlati24;
          let x_1164 : vec4<f32> = x_446.x_AdditionalLightsCookieAtlasUVRects[x_1162];
          let x_1166 : vec2<f32> = ((vec2<f32>(x_1157.x, x_1157.y) * vec2<f32>(x_1159.x, x_1159.y)) + vec2<f32>(x_1164.z, x_1164.w));
          let x_1167 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1166.x, x_1167.y, x_1166.y, x_1167.w);
        } else {
          let x_1170 : vec3<f32> = vs_TEXCOORD1;
          let x_1172 : i32 = u_xlati17;
          let x_1175 : i32 = u_xlati17;
          let x_1179 : vec4<f32> = x_446.x_AdditionalLightsWorldToLights[((x_1172 + 1i) / 4i)][((x_1175 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_1170.y, x_1170.y, x_1170.y, x_1170.y) * x_1179);
          let x_1181 : i32 = u_xlati17;
          let x_1183 : i32 = u_xlati17;
          let x_1186 : vec4<f32> = x_446.x_AdditionalLightsWorldToLights[(x_1181 / 4i)][(x_1183 % 4i)];
          let x_1187 : vec3<f32> = vs_TEXCOORD1;
          let x_1190 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1186 * vec4<f32>(x_1187.x, x_1187.x, x_1187.x, x_1187.x)) + x_1190);
          let x_1192 : i32 = u_xlati17;
          let x_1195 : i32 = u_xlati17;
          let x_1199 : vec4<f32> = x_446.x_AdditionalLightsWorldToLights[((x_1192 + 2i) / 4i)][((x_1195 + 2i) % 4i)];
          let x_1200 : vec3<f32> = vs_TEXCOORD1;
          let x_1203 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1199 * vec4<f32>(x_1200.z, x_1200.z, x_1200.z, x_1200.z)) + x_1203);
          let x_1205 : vec4<f32> = u_xlat8;
          let x_1206 : i32 = u_xlati17;
          let x_1209 : i32 = u_xlati17;
          let x_1213 : vec4<f32> = x_446.x_AdditionalLightsWorldToLights[((x_1206 + 3i) / 4i)][((x_1209 + 3i) % 4i)];
          u_xlat8 = (x_1205 + x_1213);
          let x_1215 : vec4<f32> = u_xlat8;
          let x_1217 : vec4<f32> = u_xlat8;
          let x_1219 : vec3<f32> = (vec3<f32>(x_1215.x, x_1215.y, x_1215.z) / vec3<f32>(x_1217.w, x_1217.w, x_1217.w));
          let x_1220 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
          let x_1222 : vec4<f32> = u_xlat8;
          let x_1224 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(vec3<f32>(x_1222.x, x_1222.y, x_1222.z), vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
          let x_1227 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_1227);
          let x_1229 : f32 = u_xlat36;
          let x_1231 : vec4<f32> = u_xlat8;
          let x_1233 : vec3<f32> = (vec3<f32>(x_1229, x_1229, x_1229) * vec3<f32>(x_1231.x, x_1231.y, x_1231.z));
          let x_1234 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
          let x_1236 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(abs(vec3<f32>(x_1236.x, x_1236.y, x_1236.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1241 : f32 = u_xlat36;
          u_xlat36 = max(x_1241, 0.00000099999999747524f);
          let x_1244 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_1244);
          let x_1247 : f32 = u_xlat36;
          let x_1249 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1247, x_1247, x_1247) * vec3<f32>(x_1249.z, x_1249.x, x_1249.y));
          let x_1253 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1253);
          let x_1257 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1257, 0.0f, 1.0f);
          let x_1262 : vec3<f32> = u_xlat9;
          let x_1264 : vec4<bool> = (vec4<f32>(x_1262.y, x_1262.y, x_1262.z, x_1262.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1265 : vec2<bool> = vec2<bool>(x_1264.x, x_1264.z);
          let x_1266 : vec3<bool> = u_xlatb17;
          u_xlatb17 = vec3<bool>(x_1265.x, x_1266.y, x_1265.y);
          let x_1269 : bool = u_xlatb17.x;
          if (x_1269) {
            let x_1274 : f32 = u_xlat9.x;
            x_1270 = x_1274;
          } else {
            let x_1277 : f32 = u_xlat9.x;
            x_1270 = -(x_1277);
          }
          let x_1279 : f32 = x_1270;
          u_xlat17.x = x_1279;
          let x_1282 : bool = u_xlatb17.z;
          if (x_1282) {
            let x_1287 : f32 = u_xlat9.x;
            x_1283 = x_1287;
          } else {
            let x_1290 : f32 = u_xlat9.x;
            x_1283 = -(x_1290);
          }
          let x_1292 : f32 = x_1283;
          u_xlat17.z = x_1292;
          let x_1294 : vec4<f32> = u_xlat8;
          let x_1296 : f32 = u_xlat36;
          let x_1299 : vec3<f32> = u_xlat17;
          let x_1301 : vec2<f32> = ((vec2<f32>(x_1294.x, x_1294.y) * vec2<f32>(x_1296, x_1296)) + vec2<f32>(x_1299.x, x_1299.z));
          let x_1302 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1301.x, x_1302.y, x_1301.y);
          let x_1304 : vec3<f32> = u_xlat17;
          let x_1307 : vec2<f32> = ((vec2<f32>(x_1304.x, x_1304.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1308 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1307.x, x_1308.y, x_1307.y);
          let x_1310 : vec3<f32> = u_xlat17;
          let x_1314 : vec2<f32> = clamp(vec2<f32>(x_1310.x, x_1310.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1315 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1314.x, x_1315.y, x_1314.y);
          let x_1317 : i32 = u_xlati24;
          let x_1319 : vec4<f32> = x_446.x_AdditionalLightsCookieAtlasUVRects[x_1317];
          let x_1321 : vec3<f32> = u_xlat17;
          let x_1324 : i32 = u_xlati24;
          let x_1326 : vec4<f32> = x_446.x_AdditionalLightsCookieAtlasUVRects[x_1324];
          let x_1328 : vec2<f32> = ((vec2<f32>(x_1319.x, x_1319.y) * vec2<f32>(x_1321.x, x_1321.z)) + vec2<f32>(x_1326.z, x_1326.w));
          let x_1329 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1328.x, x_1329.y, x_1328.y, x_1329.w);
        }
      }
      let x_1336 : vec4<f32> = u_xlat7;
      let x_1338 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1336.x, x_1336.z), 0.0f);
      u_xlat7 = x_1338;
      let x_1340 : bool = u_xlatb4.y;
      if (x_1340) {
        let x_1345 : f32 = u_xlat7.w;
        x_1341 = x_1345;
      } else {
        let x_1348 : f32 = u_xlat7.x;
        x_1341 = x_1348;
      }
      let x_1349 : f32 = x_1341;
      u_xlat36 = x_1349;
      let x_1351 : bool = u_xlatb4.x;
      if (x_1351) {
        let x_1355 : vec4<f32> = u_xlat7;
        x_1352 = vec3<f32>(x_1355.x, x_1355.y, x_1355.z);
      } else {
        let x_1358 : f32 = u_xlat36;
        x_1352 = vec3<f32>(x_1358, x_1358, x_1358);
      }
      let x_1360 : vec3<f32> = x_1352;
      let x_1361 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1367 : vec4<f32> = u_xlat7;
    let x_1369 : i32 = u_xlati24;
    let x_1371 : vec4<f32> = x_681.x_AdditionalLightsColor[x_1369];
    let x_1373 : vec3<f32> = (vec3<f32>(x_1367.x, x_1367.y, x_1367.z) * vec3<f32>(x_1371.x, x_1371.y, x_1371.z));
    let x_1374 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1374.w);
    let x_1376 : f32 = u_xlat34;
    let x_1377 : f32 = u_xlat35;
    u_xlat24 = (x_1376 * x_1377);
    let x_1379 : f32 = u_xlat24;
    let x_1381 : vec4<f32> = u_xlat7;
    let x_1383 : vec3<f32> = (vec3<f32>(x_1379, x_1379, x_1379) * vec3<f32>(x_1381.x, x_1381.y, x_1381.z));
    let x_1384 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
    let x_1386 : vec4<f32> = u_xlat1;
    let x_1388 : vec3<f32> = u_xlat6;
    u_xlat24 = dot(vec3<f32>(x_1386.x, x_1386.y, x_1386.z), x_1388);
    let x_1390 : f32 = u_xlat24;
    u_xlat24 = clamp(x_1390, 0.0f, 1.0f);
    let x_1392 : f32 = u_xlat24;
    let x_1394 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1392, x_1392, x_1392) * vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
    let x_1397 : vec3<f32> = u_xlat6;
    let x_1398 : vec4<f32> = u_xlat0;
    let x_1401 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1397 * vec3<f32>(x_1398.y, x_1398.z, x_1398.w)) + x_1401);

    continuing {
      let x_1403 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1403 + bitcast<u32>(1i));
    }
  }
  let x_1406 : vec4<f32> = u_xlat3;
  let x_1408 : vec4<f32> = u_xlat0;
  let x_1411 : vec3<f32> = u_xlat12;
  u_xlat10 = ((vec3<f32>(x_1406.x, x_1406.y, x_1406.z) * vec3<f32>(x_1408.y, x_1408.z, x_1408.w)) + x_1411);
  let x_1415 : vec3<f32> = u_xlat5;
  let x_1416 : vec3<f32> = u_xlat10;
  let x_1417 : vec3<f32> = (x_1415 + x_1416);
  let x_1418 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
  let x_1422 : f32 = x_40.x_Surface;
  u_xlatb10 = (x_1422 == 1.0f);
  let x_1424 : bool = u_xlatb10;
  if (x_1424) {
    let x_1429 : f32 = u_xlat0.x;
    x_1425 = x_1429;
  } else {
    x_1425 = 1.0f;
  }
  let x_1431 : f32 = x_1425;
  SV_Target0.w = x_1431;
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


