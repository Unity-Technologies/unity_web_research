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
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

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

var<private> u_xlat32 : f32;

@group(1) @binding(2) var<uniform> x_310 : UnityPerDraw;

var<private> u_xlat31 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb12 : vec2<bool>;

var<private> u_xlat22 : f32;

@group(1) @binding(5) var<uniform> x_484 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatu31 : u32;

var<private> u_xlatu34 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlat34 : f32;

var<private> u_xlati34 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_731 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlati36 : i32;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb17 : bool;

var<private> u_xlati7 : i32;

var<private> u_xlati17 : i32;

var<private> u_xlati27 : i32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb28 : vec2<bool>;

var<private> u_xlat28 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> u_xlat37 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb10 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu33 : u32;

var<private> u_xlatb34 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_569 : f32;
  var x_580 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_865 : f32;
  var x_877 : f32;
  var txVec1 : vec3<f32>;
  var x_1342 : f32;
  var x_1355 : f32;
  var x_1413 : f32;
  var x_1424 : vec3<f32>;
  var x_1522 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_51 : vec3<f32> = vs_TEXCOORD2;
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_51, x_52);
  let x_57 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_57);
  let x_60 : vec4<f32> = u_xlat1;
  let x_62 : vec3<f32> = vs_TEXCOORD2;
  let x_63 : vec3<f32> = (vec3<f32>(x_60.x, x_60.x, x_60.x) * x_62);
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_68 : vec3<f32> = vs_TEXCOORD1;
  let x_78 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres0;
  let x_81 : vec3<f32> = (x_68 + -(vec3<f32>(x_78.x, x_78.y, x_78.z)));
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
  let x_270 : f32 = vs_TEXCOORD1.y;
  let x_273 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat32 = (x_270 * x_273);
  let x_276 : f32 = x_28.unity_MatrixV[0i].z;
  let x_278 : f32 = vs_TEXCOORD1.x;
  let x_280 : f32 = u_xlat32;
  u_xlat32 = ((x_276 * x_278) + x_280);
  let x_283 : f32 = x_28.unity_MatrixV[2i].z;
  let x_285 : f32 = vs_TEXCOORD1.z;
  let x_287 : f32 = u_xlat32;
  u_xlat32 = ((x_283 * x_285) + x_287);
  let x_289 : f32 = u_xlat32;
  let x_291 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat32 = (x_289 + x_291);
  let x_293 : f32 = u_xlat32;
  let x_296 : f32 = x_28.x_ProjectionParams.y;
  u_xlat32 = (-(x_293) + -(x_296));
  let x_299 : f32 = u_xlat32;
  u_xlat32 = max(x_299, 0.0f);
  let x_301 : f32 = u_xlat32;
  let x_304 : f32 = x_28.unity_FogParams.x;
  u_xlat32 = (x_301 * x_304);
  u_xlat1.w = 1.0f;
  let x_313 : vec4<f32> = x_310.unity_SHAr;
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_313, x_314);
  let x_319 : vec4<f32> = x_310.unity_SHAg;
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_319, x_320);
  let x_325 : vec4<f32> = x_310.unity_SHAb;
  let x_326 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_325, x_326);
  let x_329 : vec4<f32> = u_xlat1;
  let x_331 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_329.y, x_329.z, x_329.z, x_329.x) * vec4<f32>(x_331.x, x_331.y, x_331.z, x_331.z));
  let x_336 : vec4<f32> = x_310.unity_SHBr;
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_336, x_337);
  let x_342 : vec4<f32> = x_310.unity_SHBg;
  let x_343 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_342, x_343);
  let x_348 : vec4<f32> = x_310.unity_SHBb;
  let x_349 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_348, x_349);
  let x_354 : f32 = u_xlat1.y;
  let x_356 : f32 = u_xlat1.y;
  u_xlat31 = (x_354 * x_356);
  let x_359 : f32 = u_xlat1.x;
  let x_361 : f32 = u_xlat1.x;
  let x_363 : f32 = u_xlat31;
  u_xlat31 = ((x_359 * x_361) + -(x_363));
  let x_368 : vec4<f32> = x_310.unity_SHC;
  let x_370 : f32 = u_xlat31;
  let x_373 : vec3<f32> = u_xlat5;
  let x_374 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370, x_370, x_370)) + x_373);
  let x_375 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_377 : vec4<f32> = u_xlat3;
  let x_379 : vec4<f32> = u_xlat4;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) + vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat3;
  let x_386 : vec3<f32> = max(vec3<f32>(x_384.x, x_384.y, x_384.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_387 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_391 : vec4<f32> = u_xlat2;
  let x_392 : vec2<f32> = vec2<f32>(x_391.x, x_391.y);
  let x_394 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_392.x, x_392.y, x_394);
  let x_406 : vec3<f32> = txVec0;
  let x_408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_406.xy, x_406.z);
  u_xlat31 = x_408;
  let x_410 : f32 = x_76.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_410) + 1.0f);
  let x_414 : f32 = u_xlat31;
  let x_416 : f32 = x_76.x_MainLightShadowParams.x;
  let x_419 : f32 = u_xlat2.x;
  u_xlat31 = ((x_414 * x_416) + x_419);
  let x_422 : f32 = u_xlat2.z;
  u_xlatb2.x = (0.0f >= x_422);
  let x_429 : f32 = u_xlat2.z;
  u_xlatb12.x = (x_429 >= 1.0f);
  let x_433 : bool = u_xlatb12.x;
  let x_435 : bool = u_xlatb2.x;
  u_xlatb2.x = (x_433 | x_435);
  let x_439 : bool = u_xlatb2.x;
  let x_440 : f32 = u_xlat31;
  u_xlat31 = select(x_440, 1.0f, x_439);
  let x_442 : vec3<f32> = vs_TEXCOORD1;
  let x_445 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_447 : vec3<f32> = (x_442 + -(x_445));
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : vec4<f32> = u_xlat2;
  let x_452 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_450.x, x_450.y, x_450.z), vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_457 : f32 = u_xlat2.x;
  let x_459 : f32 = x_76.x_MainLightShadowParams.z;
  let x_462 : f32 = x_76.x_MainLightShadowParams.w;
  u_xlat12.x = ((x_457 * x_459) + x_462);
  let x_466 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_466, 0.0f, 1.0f);
  let x_470 : f32 = u_xlat31;
  u_xlat22 = (-(x_470) + 1.0f);
  let x_474 : f32 = u_xlat12.x;
  let x_475 : f32 = u_xlat22;
  let x_477 : f32 = u_xlat31;
  u_xlat31 = ((x_474 * x_475) + x_477);
  let x_486 : f32 = x_484.x_MainLightCookieTextureFormat;
  u_xlatb12.x = !((x_486 == -1.0f));
  let x_490 : bool = u_xlatb12.x;
  if (x_490) {
    let x_493 : vec3<f32> = vs_TEXCOORD1;
    let x_496 : vec4<f32> = x_484.x_MainLightWorldToLight[1i];
    let x_498 : vec2<f32> = (vec2<f32>(x_493.y, x_493.y) * vec2<f32>(x_496.x, x_496.y));
    let x_499 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_498.x, x_498.y, x_499.z);
    let x_502 : vec4<f32> = x_484.x_MainLightWorldToLight[0i];
    let x_504 : vec3<f32> = vs_TEXCOORD1;
    let x_507 : vec3<f32> = u_xlat12;
    let x_509 : vec2<f32> = ((vec2<f32>(x_502.x, x_502.y) * vec2<f32>(x_504.x, x_504.x)) + vec2<f32>(x_507.x, x_507.y));
    let x_510 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_509.x, x_509.y, x_510.z);
    let x_513 : vec4<f32> = x_484.x_MainLightWorldToLight[2i];
    let x_515 : vec3<f32> = vs_TEXCOORD1;
    let x_518 : vec3<f32> = u_xlat12;
    let x_520 : vec2<f32> = ((vec2<f32>(x_513.x, x_513.y) * vec2<f32>(x_515.z, x_515.z)) + vec2<f32>(x_518.x, x_518.y));
    let x_521 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_520.x, x_520.y, x_521.z);
    let x_523 : vec3<f32> = u_xlat12;
    let x_526 : vec4<f32> = x_484.x_MainLightWorldToLight[3i];
    let x_528 : vec2<f32> = (vec2<f32>(x_523.x, x_523.y) + vec2<f32>(x_526.x, x_526.y));
    let x_529 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_528.x, x_528.y, x_529.z);
    let x_531 : vec3<f32> = u_xlat12;
    let x_536 : vec2<f32> = ((vec2<f32>(x_531.x, x_531.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_537 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_536.x, x_536.y, x_537.z);
    let x_544 : vec3<f32> = u_xlat12;
    let x_547 : f32 = x_28.x_GlobalMipBias.x;
    let x_548 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_544.x, x_544.y), x_547);
    u_xlat4 = x_548;
    let x_550 : f32 = x_484.x_MainLightCookieTextureFormat;
    let x_552 : f32 = x_484.x_MainLightCookieTextureFormat;
    let x_554 : f32 = x_484.x_MainLightCookieTextureFormat;
    let x_556 : f32 = x_484.x_MainLightCookieTextureFormat;
    let x_557 : vec4<f32> = vec4<f32>(x_550, x_552, x_554, x_556);
    let x_564 : vec4<bool> = (vec4<f32>(x_557.x, x_557.y, x_557.z, x_557.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb12 = vec2<bool>(x_564.x, x_564.y);
    let x_567 : bool = u_xlatb12.y;
    if (x_567) {
      let x_573 : f32 = u_xlat4.w;
      x_569 = x_573;
    } else {
      let x_576 : f32 = u_xlat4.x;
      x_569 = x_576;
    }
    let x_577 : f32 = x_569;
    u_xlat22 = x_577;
    let x_579 : bool = u_xlatb12.x;
    if (x_579) {
      let x_583 : vec4<f32> = u_xlat4;
      x_580 = vec3<f32>(x_583.x, x_583.y, x_583.z);
    } else {
      let x_586 : f32 = u_xlat22;
      x_580 = vec3<f32>(x_586, x_586, x_586);
    }
    let x_588 : vec3<f32> = x_580;
    let x_589 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_595 : vec4<f32> = u_xlat4;
  let x_598 : vec4<f32> = x_28.x_MainLightColor;
  let x_600 : vec3<f32> = (vec3<f32>(x_595.x, x_595.y, x_595.z) * vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_601 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_603 : f32 = u_xlat31;
  let x_605 : f32 = x_310.unity_LightData.z;
  u_xlat31 = (x_603 * x_605);
  let x_607 : f32 = u_xlat31;
  let x_609 : vec4<f32> = u_xlat4;
  let x_611 : vec3<f32> = (vec3<f32>(x_607, x_607, x_607) * vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat1;
  let x_617 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat31 = dot(vec3<f32>(x_614.x, x_614.y, x_614.z), vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : f32 = u_xlat31;
  u_xlat31 = clamp(x_620, 0.0f, 1.0f);
  let x_622 : f32 = u_xlat31;
  let x_624 : vec4<f32> = u_xlat4;
  let x_626 : vec3<f32> = (vec3<f32>(x_622, x_622, x_622) * vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat0;
  let x_631 : vec4<f32> = u_xlat4;
  let x_633 : vec3<f32> = (vec3<f32>(x_629.y, x_629.z, x_629.w) * vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_637 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_639 : f32 = x_310.unity_LightData.y;
  u_xlat31 = min(x_637, x_639);
  let x_642 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_642));
  let x_646 : f32 = u_xlat2.x;
  let x_649 : f32 = x_76.x_AdditionalShadowFadeParams.x;
  let x_652 : f32 = x_76.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_646 * x_649) + x_652);
  let x_656 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_656, 0.0f, 1.0f);
  let x_660 : f32 = x_484.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_662 : f32 = x_484.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_664 : f32 = x_484.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_666 : f32 = x_484.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_667 : vec4<f32> = vec4<f32>(x_660, x_662, x_664, x_666);
  let x_673 : vec4<bool> = (vec4<f32>(x_667.x, x_667.y, x_667.z, x_667.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb12 = vec2<bool>(x_673.x, x_673.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_685 : u32 = u_xlatu_loop_1;
    let x_686 : u32 = u_xlatu31;
    if ((x_685 < x_686)) {
    } else {
      break;
    }
    let x_689 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_689 >> 2u);
    let x_692 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_692 & 3u));
    let x_696 : u32 = u_xlatu34;
    let x_699 : vec4<f32> = x_310.unity_LightIndices[bitcast<i32>(x_696)];
    let x_709 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_714 : vec4<u32> = indexable[x_709];
    u_xlat34 = dot(x_699, bitcast<vec4<f32>>(x_714));
    let x_718 : f32 = u_xlat34;
    u_xlati34 = i32(x_718);
    let x_721 : vec3<f32> = vs_TEXCOORD1;
    let x_732 : i32 = u_xlati34;
    let x_734 : vec4<f32> = x_731.x_AdditionalLightsPosition[x_732];
    let x_737 : i32 = u_xlati34;
    let x_739 : vec4<f32> = x_731.x_AdditionalLightsPosition[x_737];
    u_xlat6 = ((-(x_721) * vec3<f32>(x_734.w, x_734.w, x_734.w)) + vec3<f32>(x_739.x, x_739.y, x_739.z));
    let x_743 : vec3<f32> = u_xlat6;
    let x_744 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(x_743, x_744);
    let x_746 : f32 = u_xlat35;
    u_xlat35 = max(x_746, 0.00006103515625f);
    let x_750 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_750);
    let x_752 : f32 = u_xlat36;
    let x_754 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_752, x_752, x_752) * x_754);
    let x_756 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_756);
    let x_758 : f32 = u_xlat35;
    let x_759 : i32 = u_xlati34;
    let x_761 : f32 = x_731.x_AdditionalLightsAttenuation[x_759].x;
    u_xlat35 = (x_758 * x_761);
    let x_763 : f32 = u_xlat35;
    let x_765 : f32 = u_xlat35;
    u_xlat35 = ((-(x_763) * x_765) + 1.0f);
    let x_768 : f32 = u_xlat35;
    u_xlat35 = max(x_768, 0.0f);
    let x_770 : f32 = u_xlat35;
    let x_771 : f32 = u_xlat35;
    u_xlat35 = (x_770 * x_771);
    let x_773 : f32 = u_xlat35;
    let x_774 : f32 = u_xlat36;
    u_xlat35 = (x_773 * x_774);
    let x_776 : i32 = u_xlati34;
    let x_778 : vec4<f32> = x_731.x_AdditionalLightsSpotDir[x_776];
    let x_780 : vec3<f32> = u_xlat6;
    u_xlat36 = dot(vec3<f32>(x_778.x, x_778.y, x_778.z), x_780);
    let x_782 : f32 = u_xlat36;
    let x_783 : i32 = u_xlati34;
    let x_785 : f32 = x_731.x_AdditionalLightsAttenuation[x_783].z;
    let x_787 : i32 = u_xlati34;
    let x_789 : f32 = x_731.x_AdditionalLightsAttenuation[x_787].w;
    u_xlat36 = ((x_782 * x_785) + x_789);
    let x_791 : f32 = u_xlat36;
    u_xlat36 = clamp(x_791, 0.0f, 1.0f);
    let x_793 : f32 = u_xlat36;
    let x_794 : f32 = u_xlat36;
    u_xlat36 = (x_793 * x_794);
    let x_796 : f32 = u_xlat35;
    let x_797 : f32 = u_xlat36;
    u_xlat35 = (x_796 * x_797);
    let x_801 : i32 = u_xlati34;
    let x_803 : f32 = x_76.x_AdditionalShadowParams[x_801].w;
    u_xlati36 = i32(x_803);
    let x_808 : i32 = u_xlati36;
    u_xlatb7.x = (x_808 >= 0i);
    let x_812 : bool = u_xlatb7.x;
    if (x_812) {
      let x_816 : i32 = u_xlati34;
      let x_818 : f32 = x_76.x_AdditionalShadowParams[x_816].z;
      u_xlatb7.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_818, x_818, x_818, x_818))));
      let x_824 : bool = u_xlatb7.x;
      if (x_824) {
        let x_827 : vec3<f32> = u_xlat6;
        let x_830 : vec3<f32> = u_xlat6;
        let x_833 : vec4<bool> = (abs(vec4<f32>(x_827.z, x_827.z, x_827.y, x_827.z)) >= abs(vec4<f32>(x_830.x, x_830.y, x_830.x, x_830.x)));
        u_xlatb7 = vec3<bool>(x_833.x, x_833.y, x_833.z);
        let x_836 : bool = u_xlatb7.y;
        let x_838 : bool = u_xlatb7.x;
        u_xlatb7.x = (x_836 & x_838);
        let x_842 : vec3<f32> = u_xlat6;
        let x_845 : vec4<bool> = (-(vec4<f32>(x_842.z, x_842.y, x_842.x, x_842.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb8 = vec3<bool>(x_845.x, x_845.y, x_845.z);
        let x_849 : bool = u_xlatb8.x;
        u_xlat17.x = select(4.0f, 5.0f, x_849);
        let x_854 : bool = u_xlatb8.y;
        u_xlat17.z = select(2.0f, 3.0f, x_854);
        let x_859 : bool = u_xlatb8.z;
        u_xlat8.x = select(0.0f, 1.0f, x_859);
        let x_864 : bool = u_xlatb7.z;
        if (x_864) {
          let x_869 : f32 = u_xlat17.z;
          x_865 = x_869;
        } else {
          let x_872 : f32 = u_xlat8.x;
          x_865 = x_872;
        }
        let x_873 : f32 = x_865;
        u_xlat27 = x_873;
        let x_876 : bool = u_xlatb7.x;
        if (x_876) {
          let x_881 : f32 = u_xlat17.x;
          x_877 = x_881;
        } else {
          let x_883 : f32 = u_xlat27;
          x_877 = x_883;
        }
        let x_884 : f32 = x_877;
        u_xlat7.x = x_884;
        let x_886 : i32 = u_xlati34;
        let x_888 : f32 = x_76.x_AdditionalShadowParams[x_886].w;
        u_xlat17.x = trunc(x_888);
        let x_892 : f32 = u_xlat7.x;
        let x_894 : f32 = u_xlat17.x;
        u_xlat7.x = (x_892 + x_894);
        let x_898 : f32 = u_xlat7.x;
        u_xlati36 = i32(x_898);
      }
      let x_900 : i32 = u_xlati36;
      u_xlati36 = (x_900 << bitcast<u32>(2i));
      let x_902 : vec3<f32> = vs_TEXCOORD1;
      let x_905 : i32 = u_xlati36;
      let x_908 : i32 = u_xlati36;
      let x_912 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_905 + 1i) / 4i)][((x_908 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_902.y, x_902.y, x_902.y, x_902.y) * x_912);
      let x_914 : i32 = u_xlati36;
      let x_916 : i32 = u_xlati36;
      let x_919 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[(x_914 / 4i)][(x_916 % 4i)];
      let x_920 : vec3<f32> = vs_TEXCOORD1;
      let x_923 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_919 * vec4<f32>(x_920.x, x_920.x, x_920.x, x_920.x)) + x_923);
      let x_925 : i32 = u_xlati36;
      let x_928 : i32 = u_xlati36;
      let x_932 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_925 + 2i) / 4i)][((x_928 + 2i) % 4i)];
      let x_933 : vec3<f32> = vs_TEXCOORD1;
      let x_936 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_932 * vec4<f32>(x_933.z, x_933.z, x_933.z, x_933.z)) + x_936);
      let x_938 : vec4<f32> = u_xlat7;
      let x_939 : i32 = u_xlati36;
      let x_942 : i32 = u_xlati36;
      let x_946 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_939 + 3i) / 4i)][((x_942 + 3i) % 4i)];
      u_xlat7 = (x_938 + x_946);
      let x_948 : vec4<f32> = u_xlat7;
      let x_950 : vec4<f32> = u_xlat7;
      let x_952 : vec3<f32> = (vec3<f32>(x_948.x, x_948.y, x_948.z) / vec3<f32>(x_950.w, x_950.w, x_950.w));
      let x_953 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
      let x_956 : vec4<f32> = u_xlat7;
      let x_957 : vec2<f32> = vec2<f32>(x_956.x, x_956.y);
      let x_959 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_957.x, x_957.y, x_959);
      let x_967 : vec3<f32> = txVec1;
      let x_969 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_967.xy, x_967.z);
      u_xlat36 = x_969;
      let x_970 : i32 = u_xlati34;
      let x_972 : f32 = x_76.x_AdditionalShadowParams[x_970].x;
      u_xlat7.x = (1.0f + -(x_972));
      let x_976 : f32 = u_xlat36;
      let x_977 : i32 = u_xlati34;
      let x_979 : f32 = x_76.x_AdditionalShadowParams[x_977].x;
      let x_982 : f32 = u_xlat7.x;
      u_xlat36 = ((x_976 * x_979) + x_982);
      let x_985 : f32 = u_xlat7.z;
      u_xlatb7.x = (0.0f >= x_985);
      let x_990 : f32 = u_xlat7.z;
      u_xlatb17 = (x_990 >= 1.0f);
      let x_992 : bool = u_xlatb17;
      let x_994 : bool = u_xlatb7.x;
      u_xlatb7.x = (x_992 | x_994);
      let x_998 : bool = u_xlatb7.x;
      let x_999 : f32 = u_xlat36;
      u_xlat36 = select(x_999, 1.0f, x_998);
    } else {
      u_xlat36 = 1.0f;
    }
    let x_1002 : f32 = u_xlat36;
    u_xlat7.x = (-(x_1002) + 1.0f);
    let x_1007 : f32 = u_xlat2.x;
    let x_1009 : f32 = u_xlat7.x;
    let x_1011 : f32 = u_xlat36;
    u_xlat36 = ((x_1007 * x_1009) + x_1011);
    let x_1014 : i32 = u_xlati34;
    u_xlati7 = (1i << bitcast<u32>((x_1014 & 31i)));
    let x_1018 : i32 = u_xlati7;
    let x_1021 : f32 = x_484.x_AdditionalLightsCookieEnableBits;
    u_xlati7 = bitcast<i32>((bitcast<u32>(x_1018) & bitcast<u32>(x_1021)));
    let x_1025 : i32 = u_xlati7;
    if ((x_1025 != 0i)) {
      let x_1029 : i32 = u_xlati34;
      let x_1031 : f32 = x_484.x_AdditionalLightsLightTypes[x_1029].el;
      u_xlati7 = i32(x_1031);
      let x_1034 : i32 = u_xlati7;
      u_xlati17 = select(1i, 0i, (x_1034 != 0i));
      let x_1038 : i32 = u_xlati34;
      u_xlati27 = (x_1038 << bitcast<u32>(2i));
      let x_1040 : i32 = u_xlati17;
      if ((x_1040 != 0i)) {
        let x_1044 : vec3<f32> = vs_TEXCOORD1;
        let x_1046 : i32 = u_xlati27;
        let x_1049 : i32 = u_xlati27;
        let x_1053 : vec4<f32> = x_484.x_AdditionalLightsWorldToLights[((x_1046 + 1i) / 4i)][((x_1049 + 1i) % 4i)];
        let x_1055 : vec3<f32> = (vec3<f32>(x_1044.y, x_1044.y, x_1044.y) * vec3<f32>(x_1053.x, x_1053.y, x_1053.w));
        let x_1056 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
        let x_1058 : i32 = u_xlati27;
        let x_1060 : i32 = u_xlati27;
        let x_1063 : vec4<f32> = x_484.x_AdditionalLightsWorldToLights[(x_1058 / 4i)][(x_1060 % 4i)];
        let x_1065 : vec3<f32> = vs_TEXCOORD1;
        let x_1068 : vec4<f32> = u_xlat8;
        let x_1070 : vec3<f32> = ((vec3<f32>(x_1063.x, x_1063.y, x_1063.w) * vec3<f32>(x_1065.x, x_1065.x, x_1065.x)) + vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
        let x_1071 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
        let x_1073 : i32 = u_xlati27;
        let x_1076 : i32 = u_xlati27;
        let x_1080 : vec4<f32> = x_484.x_AdditionalLightsWorldToLights[((x_1073 + 2i) / 4i)][((x_1076 + 2i) % 4i)];
        let x_1082 : vec3<f32> = vs_TEXCOORD1;
        let x_1085 : vec4<f32> = u_xlat8;
        let x_1087 : vec3<f32> = ((vec3<f32>(x_1080.x, x_1080.y, x_1080.w) * vec3<f32>(x_1082.z, x_1082.z, x_1082.z)) + vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
        let x_1088 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
        let x_1090 : vec4<f32> = u_xlat8;
        let x_1092 : i32 = u_xlati27;
        let x_1095 : i32 = u_xlati27;
        let x_1099 : vec4<f32> = x_484.x_AdditionalLightsWorldToLights[((x_1092 + 3i) / 4i)][((x_1095 + 3i) % 4i)];
        let x_1101 : vec3<f32> = (vec3<f32>(x_1090.x, x_1090.y, x_1090.z) + vec3<f32>(x_1099.x, x_1099.y, x_1099.w));
        let x_1102 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
        let x_1104 : vec4<f32> = u_xlat8;
        let x_1106 : vec4<f32> = u_xlat8;
        let x_1108 : vec2<f32> = (vec2<f32>(x_1104.x, x_1104.y) / vec2<f32>(x_1106.z, x_1106.z));
        let x_1109 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_1108.x, x_1109.y, x_1108.y);
        let x_1111 : vec3<f32> = u_xlat17;
        let x_1114 : vec2<f32> = ((vec2<f32>(x_1111.x, x_1111.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1115 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_1114.x, x_1115.y, x_1114.y);
        let x_1117 : vec3<f32> = u_xlat17;
        let x_1121 : vec2<f32> = clamp(vec2<f32>(x_1117.x, x_1117.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1122 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_1121.x, x_1122.y, x_1121.y);
        let x_1124 : i32 = u_xlati34;
        let x_1126 : vec4<f32> = x_484.x_AdditionalLightsCookieAtlasUVRects[x_1124];
        let x_1128 : vec3<f32> = u_xlat17;
        let x_1131 : i32 = u_xlati34;
        let x_1133 : vec4<f32> = x_484.x_AdditionalLightsCookieAtlasUVRects[x_1131];
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1126.x, x_1126.y) * vec2<f32>(x_1128.x, x_1128.z)) + vec2<f32>(x_1133.z, x_1133.w));
        let x_1136 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_1135.x, x_1136.y, x_1135.y);
      } else {
        let x_1139 : i32 = u_xlati7;
        u_xlatb7.x = (x_1139 == 1i);
        let x_1143 : bool = u_xlatb7.x;
        u_xlati7 = select(0i, 1i, x_1143);
        let x_1145 : i32 = u_xlati7;
        if ((x_1145 != 0i)) {
          let x_1149 : vec3<f32> = vs_TEXCOORD1;
          let x_1151 : i32 = u_xlati27;
          let x_1154 : i32 = u_xlati27;
          let x_1158 : vec4<f32> = x_484.x_AdditionalLightsWorldToLights[((x_1151 + 1i) / 4i)][((x_1154 + 1i) % 4i)];
          let x_1160 : vec2<f32> = (vec2<f32>(x_1149.y, x_1149.y) * vec2<f32>(x_1158.x, x_1158.y));
          let x_1161 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
          let x_1163 : i32 = u_xlati27;
          let x_1165 : i32 = u_xlati27;
          let x_1168 : vec4<f32> = x_484.x_AdditionalLightsWorldToLights[(x_1163 / 4i)][(x_1165 % 4i)];
          let x_1170 : vec3<f32> = vs_TEXCOORD1;
          let x_1173 : vec4<f32> = u_xlat8;
          let x_1175 : vec2<f32> = ((vec2<f32>(x_1168.x, x_1168.y) * vec2<f32>(x_1170.x, x_1170.x)) + vec2<f32>(x_1173.x, x_1173.y));
          let x_1176 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
          let x_1178 : i32 = u_xlati27;
          let x_1181 : i32 = u_xlati27;
          let x_1185 : vec4<f32> = x_484.x_AdditionalLightsWorldToLights[((x_1178 + 2i) / 4i)][((x_1181 + 2i) % 4i)];
          let x_1187 : vec3<f32> = vs_TEXCOORD1;
          let x_1190 : vec4<f32> = u_xlat8;
          let x_1192 : vec2<f32> = ((vec2<f32>(x_1185.x, x_1185.y) * vec2<f32>(x_1187.z, x_1187.z)) + vec2<f32>(x_1190.x, x_1190.y));
          let x_1193 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1192.x, x_1192.y, x_1193.z, x_1193.w);
          let x_1195 : vec4<f32> = u_xlat8;
          let x_1197 : i32 = u_xlati27;
          let x_1200 : i32 = u_xlati27;
          let x_1204 : vec4<f32> = x_484.x_AdditionalLightsWorldToLights[((x_1197 + 3i) / 4i)][((x_1200 + 3i) % 4i)];
          let x_1206 : vec2<f32> = (vec2<f32>(x_1195.x, x_1195.y) + vec2<f32>(x_1204.x, x_1204.y));
          let x_1207 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
          let x_1209 : vec4<f32> = u_xlat8;
          let x_1212 : vec2<f32> = ((vec2<f32>(x_1209.x, x_1209.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1213 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
          let x_1215 : vec4<f32> = u_xlat8;
          let x_1217 : vec2<f32> = fract(vec2<f32>(x_1215.x, x_1215.y));
          let x_1218 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1217.x, x_1217.y, x_1218.z, x_1218.w);
          let x_1220 : i32 = u_xlati34;
          let x_1222 : vec4<f32> = x_484.x_AdditionalLightsCookieAtlasUVRects[x_1220];
          let x_1224 : vec4<f32> = u_xlat8;
          let x_1227 : i32 = u_xlati34;
          let x_1229 : vec4<f32> = x_484.x_AdditionalLightsCookieAtlasUVRects[x_1227];
          let x_1231 : vec2<f32> = ((vec2<f32>(x_1222.x, x_1222.y) * vec2<f32>(x_1224.x, x_1224.y)) + vec2<f32>(x_1229.z, x_1229.w));
          let x_1232 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1231.x, x_1232.y, x_1231.y);
        } else {
          let x_1235 : vec3<f32> = vs_TEXCOORD1;
          let x_1237 : i32 = u_xlati27;
          let x_1240 : i32 = u_xlati27;
          let x_1244 : vec4<f32> = x_484.x_AdditionalLightsWorldToLights[((x_1237 + 1i) / 4i)][((x_1240 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_1235.y, x_1235.y, x_1235.y, x_1235.y) * x_1244);
          let x_1246 : i32 = u_xlati27;
          let x_1248 : i32 = u_xlati27;
          let x_1251 : vec4<f32> = x_484.x_AdditionalLightsWorldToLights[(x_1246 / 4i)][(x_1248 % 4i)];
          let x_1252 : vec3<f32> = vs_TEXCOORD1;
          let x_1255 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1251 * vec4<f32>(x_1252.x, x_1252.x, x_1252.x, x_1252.x)) + x_1255);
          let x_1257 : i32 = u_xlati27;
          let x_1260 : i32 = u_xlati27;
          let x_1264 : vec4<f32> = x_484.x_AdditionalLightsWorldToLights[((x_1257 + 2i) / 4i)][((x_1260 + 2i) % 4i)];
          let x_1265 : vec3<f32> = vs_TEXCOORD1;
          let x_1268 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1264 * vec4<f32>(x_1265.z, x_1265.z, x_1265.z, x_1265.z)) + x_1268);
          let x_1270 : vec4<f32> = u_xlat8;
          let x_1271 : i32 = u_xlati27;
          let x_1274 : i32 = u_xlati27;
          let x_1278 : vec4<f32> = x_484.x_AdditionalLightsWorldToLights[((x_1271 + 3i) / 4i)][((x_1274 + 3i) % 4i)];
          u_xlat8 = (x_1270 + x_1278);
          let x_1280 : vec4<f32> = u_xlat8;
          let x_1282 : vec4<f32> = u_xlat8;
          let x_1284 : vec3<f32> = (vec3<f32>(x_1280.x, x_1280.y, x_1280.z) / vec3<f32>(x_1282.w, x_1282.w, x_1282.w));
          let x_1285 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
          let x_1287 : vec4<f32> = u_xlat8;
          let x_1289 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(vec3<f32>(x_1287.x, x_1287.y, x_1287.z), vec3<f32>(x_1289.x, x_1289.y, x_1289.z));
          let x_1294 : f32 = u_xlat7.x;
          u_xlat7.x = inverseSqrt(x_1294);
          let x_1297 : vec4<f32> = u_xlat7;
          let x_1299 : vec4<f32> = u_xlat8;
          let x_1301 : vec3<f32> = (vec3<f32>(x_1297.x, x_1297.x, x_1297.x) * vec3<f32>(x_1299.x, x_1299.y, x_1299.z));
          let x_1302 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
          let x_1304 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(abs(vec3<f32>(x_1304.x, x_1304.y, x_1304.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1311 : f32 = u_xlat7.x;
          u_xlat7.x = max(x_1311, 0.00000099999999747524f);
          let x_1316 : f32 = u_xlat7.x;
          u_xlat7.x = (1.0f / x_1316);
          let x_1320 : vec4<f32> = u_xlat7;
          let x_1322 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1320.x, x_1320.x, x_1320.x) * vec3<f32>(x_1322.z, x_1322.x, x_1322.y));
          let x_1326 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1326);
          let x_1330 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1330, 0.0f, 1.0f);
          let x_1334 : vec3<f32> = u_xlat9;
          let x_1336 : vec4<bool> = (vec4<f32>(x_1334.y, x_1334.z, x_1334.y, x_1334.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb28 = vec2<bool>(x_1336.x, x_1336.y);
          let x_1341 : bool = u_xlatb28.x;
          if (x_1341) {
            let x_1346 : f32 = u_xlat9.x;
            x_1342 = x_1346;
          } else {
            let x_1349 : f32 = u_xlat9.x;
            x_1342 = -(x_1349);
          }
          let x_1351 : f32 = x_1342;
          u_xlat28.x = x_1351;
          let x_1354 : bool = u_xlatb28.y;
          if (x_1354) {
            let x_1359 : f32 = u_xlat9.x;
            x_1355 = x_1359;
          } else {
            let x_1362 : f32 = u_xlat9.x;
            x_1355 = -(x_1362);
          }
          let x_1364 : f32 = x_1355;
          u_xlat28.y = x_1364;
          let x_1366 : vec4<f32> = u_xlat8;
          let x_1368 : vec4<f32> = u_xlat7;
          let x_1371 : vec2<f32> = u_xlat28;
          let x_1372 : vec2<f32> = ((vec2<f32>(x_1366.x, x_1366.y) * vec2<f32>(x_1368.x, x_1368.x)) + x_1371);
          let x_1373 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1372.x, x_1373.y, x_1372.y, x_1373.w);
          let x_1375 : vec4<f32> = u_xlat7;
          let x_1378 : vec2<f32> = ((vec2<f32>(x_1375.x, x_1375.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1379 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1378.x, x_1379.y, x_1378.y, x_1379.w);
          let x_1381 : vec4<f32> = u_xlat7;
          let x_1385 : vec2<f32> = clamp(vec2<f32>(x_1381.x, x_1381.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1386 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1385.x, x_1386.y, x_1385.y, x_1386.w);
          let x_1388 : i32 = u_xlati34;
          let x_1390 : vec4<f32> = x_484.x_AdditionalLightsCookieAtlasUVRects[x_1388];
          let x_1392 : vec4<f32> = u_xlat7;
          let x_1395 : i32 = u_xlati34;
          let x_1397 : vec4<f32> = x_484.x_AdditionalLightsCookieAtlasUVRects[x_1395];
          let x_1399 : vec2<f32> = ((vec2<f32>(x_1390.x, x_1390.y) * vec2<f32>(x_1392.x, x_1392.z)) + vec2<f32>(x_1397.z, x_1397.w));
          let x_1400 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1399.x, x_1400.y, x_1399.y);
        }
      }
      let x_1407 : vec3<f32> = u_xlat17;
      let x_1409 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1407.x, x_1407.z), 0.0f);
      u_xlat7 = x_1409;
      let x_1412 : bool = u_xlatb12.y;
      if (x_1412) {
        let x_1417 : f32 = u_xlat7.w;
        x_1413 = x_1417;
      } else {
        let x_1420 : f32 = u_xlat7.x;
        x_1413 = x_1420;
      }
      let x_1421 : f32 = x_1413;
      u_xlat37 = x_1421;
      let x_1423 : bool = u_xlatb12.x;
      if (x_1423) {
        let x_1427 : vec4<f32> = u_xlat7;
        x_1424 = vec3<f32>(x_1427.x, x_1427.y, x_1427.z);
      } else {
        let x_1430 : f32 = u_xlat37;
        x_1424 = vec3<f32>(x_1430, x_1430, x_1430);
      }
      let x_1432 : vec3<f32> = x_1424;
      let x_1433 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1439 : vec4<f32> = u_xlat7;
    let x_1441 : i32 = u_xlati34;
    let x_1443 : vec4<f32> = x_731.x_AdditionalLightsColor[x_1441];
    let x_1445 : vec3<f32> = (vec3<f32>(x_1439.x, x_1439.y, x_1439.z) * vec3<f32>(x_1443.x, x_1443.y, x_1443.z));
    let x_1446 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
    let x_1448 : f32 = u_xlat35;
    let x_1449 : f32 = u_xlat36;
    u_xlat34 = (x_1448 * x_1449);
    let x_1451 : f32 = u_xlat34;
    let x_1453 : vec4<f32> = u_xlat7;
    let x_1455 : vec3<f32> = (vec3<f32>(x_1451, x_1451, x_1451) * vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
    let x_1456 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
    let x_1458 : vec4<f32> = u_xlat1;
    let x_1460 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(vec3<f32>(x_1458.x, x_1458.y, x_1458.z), x_1460);
    let x_1462 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1462, 0.0f, 1.0f);
    let x_1464 : f32 = u_xlat34;
    let x_1466 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1464, x_1464, x_1464) * vec3<f32>(x_1466.x, x_1466.y, x_1466.z));
    let x_1469 : vec3<f32> = u_xlat6;
    let x_1470 : vec4<f32> = u_xlat0;
    let x_1473 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1469 * vec3<f32>(x_1470.y, x_1470.z, x_1470.w)) + x_1473);

    continuing {
      let x_1475 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1475 + bitcast<u32>(1i));
    }
  }
  let x_1478 : vec4<f32> = u_xlat3;
  let x_1480 : vec4<f32> = u_xlat0;
  let x_1483 : vec4<f32> = u_xlat4;
  u_xlat10 = ((vec3<f32>(x_1478.x, x_1478.y, x_1478.z) * vec3<f32>(x_1480.y, x_1480.z, x_1480.w)) + vec3<f32>(x_1483.x, x_1483.y, x_1483.z));
  let x_1486 : vec3<f32> = u_xlat5;
  let x_1487 : vec3<f32> = u_xlat10;
  u_xlat10 = (x_1486 + x_1487);
  let x_1489 : f32 = u_xlat32;
  let x_1490 : f32 = u_xlat32;
  u_xlat1.x = (x_1489 * -(x_1490));
  let x_1495 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1495);
  let x_1498 : vec3<f32> = u_xlat10;
  let x_1501 : vec4<f32> = x_28.unity_FogColor;
  u_xlat10 = (x_1498 + -(vec3<f32>(x_1501.x, x_1501.y, x_1501.z)));
  let x_1507 : vec4<f32> = u_xlat1;
  let x_1509 : vec3<f32> = u_xlat10;
  let x_1512 : vec4<f32> = x_28.unity_FogColor;
  let x_1514 : vec3<f32> = ((vec3<f32>(x_1507.x, x_1507.x, x_1507.x) * x_1509) + vec3<f32>(x_1512.x, x_1512.y, x_1512.z));
  let x_1515 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1515.w);
  let x_1519 : f32 = x_41.x_Surface;
  u_xlatb10 = (x_1519 == 1.0f);
  let x_1521 : bool = u_xlatb10;
  if (x_1521) {
    let x_1526 : f32 = u_xlat0.x;
    x_1522 = x_1526;
  } else {
    x_1522 = 1.0f;
  }
  let x_1528 : f32 = x_1522;
  SV_Target0.w = x_1528;
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


