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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_83 : LightShadows;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu15 : u32;

var<private> u_xlati15 : i32;

@group(1) @binding(2) var<uniform> x_320 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat42 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat29 : f32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb43 : bool;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat43 : f32;

@group(1) @binding(4) var<uniform> x_548 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb19 : vec2<bool>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu48 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati48 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1011 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb52 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu44 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_502 : f32;
  var x_633 : f32;
  var x_644 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1144 : f32;
  var x_1155 : f32;
  var txVec1 : vec3<f32>;
  var x_1601 : f32;
  var x_1614 : f32;
  var x_1672 : f32;
  var x_1683 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_47 : f32 = x_29.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_44.x, x_44.y), x_47);
  u_xlat1.x = x_48.x;
  let x_55 : vec4<f32> = vs_TEXCOORD3;
  let x_57 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_55.x, x_55.y, x_55.z), vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_62 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_62);
  let x_66 : vec3<f32> = u_xlat15;
  let x_68 : vec4<f32> = vs_TEXCOORD3;
  let x_70 : vec3<f32> = (vec3<f32>(x_66.x, x_66.x, x_66.x) * vec3<f32>(x_68.x, x_68.y, x_68.z));
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_75 : vec3<f32> = vs_TEXCOORD7;
  let x_87 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres0;
  u_xlat15 = (x_75 + -(vec3<f32>(x_87.x, x_87.y, x_87.z)));
  let x_92 : vec3<f32> = vs_TEXCOORD7;
  let x_95 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres1;
  u_xlat3 = (x_92 + -(vec3<f32>(x_95.x, x_95.y, x_95.z)));
  let x_100 : vec3<f32> = vs_TEXCOORD7;
  let x_103 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres2;
  let x_106 : vec3<f32> = (x_100 + -(vec3<f32>(x_103.x, x_103.y, x_103.z)));
  let x_107 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_110 : vec3<f32> = vs_TEXCOORD7;
  let x_113 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres3;
  let x_116 : vec3<f32> = (x_110 + -(vec3<f32>(x_113.x, x_113.y, x_113.z)));
  let x_117 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_120 : vec3<f32> = u_xlat15;
  let x_121 : vec3<f32> = u_xlat15;
  u_xlat6.x = dot(x_120, x_121);
  let x_124 : vec3<f32> = u_xlat3;
  let x_125 : vec3<f32> = u_xlat3;
  u_xlat6.y = dot(x_124, x_125);
  let x_129 : vec4<f32> = u_xlat4;
  let x_131 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(vec3<f32>(x_129.x, x_129.y, x_129.z), vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_136 : vec4<f32> = u_xlat5;
  let x_138 : vec4<f32> = u_xlat5;
  u_xlat6.w = dot(vec3<f32>(x_136.x, x_136.y, x_136.z), vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_147 : vec4<f32> = u_xlat6;
  let x_150 : vec4<f32> = x_83.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_147 < x_150);
  let x_154 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_154);
  let x_160 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_160);
  let x_164 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb3.x;
  u_xlat15.x = select(-0.0f, -1.0f, x_172);
  let x_178 : bool = u_xlatb3.y;
  u_xlat15.y = select(-0.0f, -1.0f, x_178);
  let x_182 : bool = u_xlatb3.z;
  u_xlat15.z = select(-0.0f, -1.0f, x_182);
  let x_185 : vec3<f32> = u_xlat15;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat15 = (x_185 + vec3<f32>(x_186.y, x_186.z, x_186.w));
  let x_189 : vec3<f32> = u_xlat15;
  let x_191 : vec3<f32> = max(x_189, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_191.x, x_191.y, x_191.z);
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat15.x = dot(x_194, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_202 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_202) + 4.0f);
  let x_209 : f32 = u_xlat15.x;
  u_xlatu15 = u32(x_209);
  let x_213 : u32 = u_xlatu15;
  u_xlati15 = (bitcast<i32>(x_213) << bitcast<u32>(2i));
  let x_216 : vec3<f32> = vs_TEXCOORD7;
  let x_218 : i32 = u_xlati15;
  let x_221 : i32 = u_xlati15;
  let x_225 : vec4<f32> = x_83.x_MainLightWorldToShadow[((x_218 + 1i) / 4i)][((x_221 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_216.y, x_216.y, x_216.y) * vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : i32 = u_xlati15;
  let x_230 : i32 = u_xlati15;
  let x_233 : vec4<f32> = x_83.x_MainLightWorldToShadow[(x_228 / 4i)][(x_230 % 4i)];
  let x_235 : vec3<f32> = vs_TEXCOORD7;
  let x_238 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.x, x_235.x, x_235.x)) + x_238);
  let x_240 : i32 = u_xlati15;
  let x_243 : i32 = u_xlati15;
  let x_247 : vec4<f32> = x_83.x_MainLightWorldToShadow[((x_240 + 2i) / 4i)][((x_243 + 2i) % 4i)];
  let x_249 : vec3<f32> = vs_TEXCOORD7;
  let x_252 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.z, x_249.z, x_249.z)) + x_252);
  let x_254 : vec3<f32> = u_xlat3;
  let x_255 : i32 = u_xlati15;
  let x_258 : i32 = u_xlati15;
  let x_262 : vec4<f32> = x_83.x_MainLightWorldToShadow[((x_255 + 3i) / 4i)][((x_258 + 3i) % 4i)];
  u_xlat15 = (x_254 + vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_267 : f32 = vs_TEXCOORD7.y;
  let x_270 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.x = (x_267 * x_270);
  let x_274 : f32 = x_29.unity_MatrixV[0i].z;
  let x_276 : f32 = vs_TEXCOORD7.x;
  let x_279 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_274 * x_276) + x_279);
  let x_283 : f32 = x_29.unity_MatrixV[2i].z;
  let x_285 : f32 = vs_TEXCOORD7.z;
  let x_288 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_283 * x_285) + x_288);
  let x_292 : f32 = u_xlat3.x;
  let x_294 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat3.x = (x_292 + x_294);
  let x_298 : f32 = u_xlat3.x;
  let x_301 : f32 = x_29.x_ProjectionParams.y;
  u_xlat3.x = (-(x_298) + -(x_301));
  let x_306 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_306, 0.0f);
  let x_310 : f32 = u_xlat3.x;
  let x_313 : f32 = x_29.unity_FogParams.x;
  u_xlat3.x = (x_310 * x_313);
  u_xlat2.w = 1.0f;
  let x_323 : vec4<f32> = x_320.unity_SHAr;
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_323, x_324);
  let x_329 : vec4<f32> = x_320.unity_SHAg;
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_329, x_330);
  let x_335 : vec4<f32> = x_320.unity_SHAb;
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_335, x_336);
  let x_339 : vec4<f32> = u_xlat2;
  let x_341 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_339.y, x_339.z, x_339.z, x_339.x) * vec4<f32>(x_341.x, x_341.y, x_341.z, x_341.z));
  let x_346 : vec4<f32> = x_320.unity_SHBr;
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_346, x_347);
  let x_352 : vec4<f32> = x_320.unity_SHBg;
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_352, x_353);
  let x_358 : vec4<f32> = x_320.unity_SHBb;
  let x_359 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_358, x_359);
  let x_364 : f32 = u_xlat2.y;
  let x_366 : f32 = u_xlat2.y;
  u_xlat44 = (x_364 * x_366);
  let x_369 : f32 = u_xlat2.x;
  let x_371 : f32 = u_xlat2.x;
  let x_373 : f32 = u_xlat44;
  u_xlat44 = ((x_369 * x_371) + -(x_373));
  let x_379 : vec4<f32> = x_320.unity_SHC;
  let x_381 : f32 = u_xlat44;
  let x_384 : vec4<f32> = u_xlat6;
  u_xlat17 = ((vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(x_381, x_381, x_381)) + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec3<f32> = u_xlat17;
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_387 + vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec3<f32> = u_xlat17;
  u_xlat17 = max(x_391, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_394 : f32 = u_xlat1.x;
  u_xlat44 = ((-(x_394) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_399 : f32 = u_xlat44;
  u_xlat4.x = (-(x_399) + 1.0f);
  let x_404 : vec4<f32> = u_xlat0;
  let x_406 : f32 = u_xlat44;
  u_xlat18 = (vec3<f32>(x_404.x, x_404.y, x_404.z) * vec3<f32>(x_406, x_406, x_406));
  let x_409 : vec4<f32> = u_xlat0;
  let x_413 : vec3<f32> = (vec3<f32>(x_409.x, x_409.y, x_409.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_414 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat1;
  let x_418 : vec4<f32> = u_xlat0;
  let x_423 : vec3<f32> = ((vec3<f32>(x_416.x, x_416.x, x_416.x) * vec3<f32>(x_418.x, x_418.y, x_418.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_424 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_427 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_427) + 1.0f);
  let x_432 : f32 = u_xlat1.x;
  let x_434 : f32 = u_xlat1.x;
  u_xlat44 = (x_432 * x_434);
  let x_436 : f32 = u_xlat44;
  u_xlat44 = max(x_436, 0.0078125f);
  let x_439 : f32 = u_xlat44;
  let x_440 : f32 = u_xlat44;
  u_xlat5.x = (x_439 * x_440);
  let x_445 : f32 = u_xlat0.w;
  let x_447 : f32 = u_xlat4.x;
  u_xlat42 = (x_445 + x_447);
  let x_449 : f32 = u_xlat42;
  u_xlat42 = clamp(x_449, 0.0f, 1.0f);
  let x_451 : f32 = u_xlat44;
  u_xlat4.x = ((x_451 * 4.0f) + 2.0f);
  let x_457 : vec3<f32> = u_xlat15;
  let x_458 : vec2<f32> = vec2<f32>(x_457.x, x_457.y);
  let x_460 : f32 = u_xlat15.z;
  txVec0 = vec3<f32>(x_458.x, x_458.y, x_460);
  let x_472 : vec3<f32> = txVec0;
  let x_474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_472.xy, x_472.z);
  u_xlat15.x = x_474;
  let x_478 : f32 = x_83.x_MainLightShadowParams.x;
  u_xlat29 = (-(x_478) + 1.0f);
  let x_482 : f32 = u_xlat15.x;
  let x_484 : f32 = x_83.x_MainLightShadowParams.x;
  let x_486 : f32 = u_xlat29;
  u_xlat15.x = ((x_482 * x_484) + x_486);
  let x_491 : f32 = u_xlat15.z;
  u_xlatb29 = (0.0f >= x_491);
  let x_495 : f32 = u_xlat15.z;
  u_xlatb43 = (x_495 >= 1.0f);
  let x_497 : bool = u_xlatb43;
  let x_498 : bool = u_xlatb29;
  u_xlatb29 = (x_497 | x_498);
  let x_500 : bool = u_xlatb29;
  if (x_500) {
    x_502 = 1.0f;
  } else {
    let x_507 : f32 = u_xlat15.x;
    x_502 = x_507;
  }
  let x_508 : f32 = x_502;
  u_xlat15.x = x_508;
  let x_511 : vec3<f32> = vs_TEXCOORD7;
  let x_514 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat19 = (x_511 + -(x_514));
  let x_517 : vec3<f32> = u_xlat19;
  let x_518 : vec3<f32> = u_xlat19;
  u_xlat29 = dot(x_517, x_518);
  let x_521 : f32 = u_xlat29;
  let x_523 : f32 = x_83.x_MainLightShadowParams.z;
  let x_526 : f32 = x_83.x_MainLightShadowParams.w;
  u_xlat43 = ((x_521 * x_523) + x_526);
  let x_528 : f32 = u_xlat43;
  u_xlat43 = clamp(x_528, 0.0f, 1.0f);
  let x_531 : f32 = u_xlat15.x;
  u_xlat19.x = (-(x_531) + 1.0f);
  let x_535 : f32 = u_xlat43;
  let x_537 : f32 = u_xlat19.x;
  let x_540 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_535 * x_537) + x_540);
  let x_550 : f32 = x_548.x_MainLightCookieTextureFormat;
  u_xlatb43 = !((x_550 == -1.0f));
  let x_552 : bool = u_xlatb43;
  if (x_552) {
    let x_555 : vec3<f32> = vs_TEXCOORD7;
    let x_558 : vec4<f32> = x_548.x_MainLightWorldToLight[1i];
    let x_560 : vec2<f32> = (vec2<f32>(x_555.y, x_555.y) * vec2<f32>(x_558.x, x_558.y));
    let x_561 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_560.x, x_560.y, x_561.z);
    let x_564 : vec4<f32> = x_548.x_MainLightWorldToLight[0i];
    let x_566 : vec3<f32> = vs_TEXCOORD7;
    let x_569 : vec3<f32> = u_xlat19;
    let x_571 : vec2<f32> = ((vec2<f32>(x_564.x, x_564.y) * vec2<f32>(x_566.x, x_566.x)) + vec2<f32>(x_569.x, x_569.y));
    let x_572 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_571.x, x_571.y, x_572.z);
    let x_575 : vec4<f32> = x_548.x_MainLightWorldToLight[2i];
    let x_577 : vec3<f32> = vs_TEXCOORD7;
    let x_580 : vec3<f32> = u_xlat19;
    let x_582 : vec2<f32> = ((vec2<f32>(x_575.x, x_575.y) * vec2<f32>(x_577.z, x_577.z)) + vec2<f32>(x_580.x, x_580.y));
    let x_583 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_582.x, x_582.y, x_583.z);
    let x_585 : vec3<f32> = u_xlat19;
    let x_588 : vec4<f32> = x_548.x_MainLightWorldToLight[3i];
    let x_590 : vec2<f32> = (vec2<f32>(x_585.x, x_585.y) + vec2<f32>(x_588.x, x_588.y));
    let x_591 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_590.x, x_590.y, x_591.z);
    let x_593 : vec3<f32> = u_xlat19;
    let x_598 : vec2<f32> = ((vec2<f32>(x_593.x, x_593.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_599 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_598.x, x_598.y, x_599.z);
    let x_606 : vec3<f32> = u_xlat19;
    let x_609 : f32 = x_29.x_GlobalMipBias.x;
    let x_610 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_606.x, x_606.y), x_609);
    u_xlat6 = x_610;
    let x_615 : f32 = x_548.x_MainLightCookieTextureFormat;
    let x_617 : f32 = x_548.x_MainLightCookieTextureFormat;
    let x_619 : f32 = x_548.x_MainLightCookieTextureFormat;
    let x_621 : f32 = x_548.x_MainLightCookieTextureFormat;
    let x_622 : vec4<f32> = vec4<f32>(x_615, x_617, x_619, x_621);
    let x_629 : vec4<bool> = (vec4<f32>(x_622.x, x_622.y, x_622.z, x_622.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_629.x, x_629.y);
    let x_632 : bool = u_xlatb19.y;
    if (x_632) {
      let x_637 : f32 = u_xlat6.w;
      x_633 = x_637;
    } else {
      let x_640 : f32 = u_xlat6.x;
      x_633 = x_640;
    }
    let x_641 : f32 = x_633;
    u_xlat43 = x_641;
    let x_643 : bool = u_xlatb19.x;
    if (x_643) {
      let x_647 : vec4<f32> = u_xlat6;
      x_644 = vec3<f32>(x_647.x, x_647.y, x_647.z);
    } else {
      let x_650 : f32 = u_xlat43;
      x_644 = vec3<f32>(x_650, x_650, x_650);
    }
    let x_652 : vec3<f32> = x_644;
    u_xlat19 = x_652;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_657 : vec3<f32> = u_xlat19;
  let x_659 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat19 = (x_657 * vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_663 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_663;
  let x_667 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_667;
  let x_671 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_671;
  let x_673 : vec4<f32> = u_xlat6;
  let x_676 : vec4<f32> = u_xlat2;
  u_xlat43 = dot(-(vec3<f32>(x_673.x, x_673.y, x_673.z)), vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_679 : f32 = u_xlat43;
  let x_680 : f32 = u_xlat43;
  u_xlat43 = (x_679 + x_680);
  let x_683 : vec4<f32> = u_xlat2;
  let x_685 : f32 = u_xlat43;
  let x_689 : vec4<f32> = u_xlat6;
  let x_692 : vec3<f32> = ((vec3<f32>(x_683.x, x_683.y, x_683.z) * -(vec3<f32>(x_685, x_685, x_685))) + -(vec3<f32>(x_689.x, x_689.y, x_689.z)));
  let x_693 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec4<f32> = u_xlat2;
  let x_697 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_695.x, x_695.y, x_695.z), vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : f32 = u_xlat43;
  u_xlat43 = clamp(x_700, 0.0f, 1.0f);
  let x_702 : f32 = u_xlat43;
  u_xlat43 = (-(x_702) + 1.0f);
  let x_705 : f32 = u_xlat43;
  let x_706 : f32 = u_xlat43;
  u_xlat43 = (x_705 * x_706);
  let x_708 : f32 = u_xlat43;
  let x_709 : f32 = u_xlat43;
  u_xlat43 = (x_708 * x_709);
  let x_713 : f32 = u_xlat1.x;
  u_xlat48 = ((-(x_713) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_720 : f32 = u_xlat1.x;
  let x_721 : f32 = u_xlat48;
  u_xlat1.x = (x_720 * x_721);
  let x_725 : f32 = u_xlat1.x;
  u_xlat1.x = (x_725 * 6.0f);
  let x_737 : vec4<f32> = u_xlat7;
  let x_740 : f32 = u_xlat1.x;
  let x_741 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_737.x, x_737.y, x_737.z), x_740);
  u_xlat7 = x_741;
  let x_743 : f32 = u_xlat7.w;
  u_xlat1.x = (x_743 + -1.0f);
  let x_747 : f32 = x_320.unity_SpecCube0_HDR.w;
  let x_749 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_747 * x_749) + 1.0f);
  let x_754 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_754, 0.0f);
  let x_758 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_758);
  let x_762 : f32 = u_xlat1.x;
  let x_764 : f32 = x_320.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_762 * x_764);
  let x_768 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_768);
  let x_772 : f32 = u_xlat1.x;
  let x_774 : f32 = x_320.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_772 * x_774);
  let x_777 : vec4<f32> = u_xlat7;
  let x_779 : vec4<f32> = u_xlat1;
  let x_781 : vec3<f32> = (vec3<f32>(x_777.x, x_777.y, x_777.z) * vec3<f32>(x_779.x, x_779.x, x_779.x));
  let x_782 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_786 : f32 = u_xlat44;
  let x_788 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_786, x_786) * vec2<f32>(x_788, x_788)) + vec2<f32>(-1.0f, 1.0f));
  let x_794 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_794);
  let x_798 : vec4<f32> = u_xlat0;
  let x_801 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_798.x, x_798.y, x_798.z)) + vec3<f32>(x_801, x_801, x_801));
  let x_804 : f32 = u_xlat43;
  let x_806 : vec3<f32> = u_xlat22;
  let x_808 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_804, x_804, x_804) * x_806) + vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : vec4<f32> = u_xlat1;
  let x_813 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_811.x, x_811.x, x_811.x) * x_813);
  let x_815 : vec4<f32> = u_xlat7;
  let x_817 : vec3<f32> = u_xlat22;
  let x_818 : vec3<f32> = (vec3<f32>(x_815.x, x_815.y, x_815.z) * x_817);
  let x_819 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec3<f32> = u_xlat17;
  let x_822 : vec3<f32> = u_xlat18;
  let x_824 : vec4<f32> = u_xlat7;
  u_xlat17 = ((x_821 * x_822) + vec3<f32>(x_824.x, x_824.y, x_824.z));
  let x_828 : f32 = u_xlat15.x;
  let x_830 : f32 = x_320.unity_LightData.z;
  u_xlat42 = (x_828 * x_830);
  let x_832 : vec4<f32> = u_xlat2;
  let x_835 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_832.x, x_832.y, x_832.z), vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_840 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_840, 0.0f, 1.0f);
  let x_843 : f32 = u_xlat42;
  let x_845 : f32 = u_xlat1.x;
  u_xlat42 = (x_843 * x_845);
  let x_847 : f32 = u_xlat42;
  let x_849 : vec3<f32> = u_xlat19;
  let x_850 : vec3<f32> = (vec3<f32>(x_847, x_847, x_847) * x_849);
  let x_851 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_850.x, x_850.y, x_851.z, x_850.z);
  let x_853 : vec4<f32> = u_xlat6;
  let x_856 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat19 = (vec3<f32>(x_853.x, x_853.y, x_853.z) + vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec3<f32> = u_xlat19;
  let x_860 : vec3<f32> = u_xlat19;
  u_xlat42 = dot(x_859, x_860);
  let x_862 : f32 = u_xlat42;
  u_xlat42 = max(x_862, 1.17549435e-38f);
  let x_865 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_865);
  let x_867 : f32 = u_xlat42;
  let x_869 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_867, x_867, x_867) * x_869);
  let x_871 : vec4<f32> = u_xlat2;
  let x_873 : vec3<f32> = u_xlat19;
  u_xlat42 = dot(vec3<f32>(x_871.x, x_871.y, x_871.z), x_873);
  let x_875 : f32 = u_xlat42;
  u_xlat42 = clamp(x_875, 0.0f, 1.0f);
  let x_878 : vec4<f32> = x_29.x_MainLightPosition;
  let x_880 : vec3<f32> = u_xlat19;
  u_xlat44 = dot(vec3<f32>(x_878.x, x_878.y, x_878.z), x_880);
  let x_882 : f32 = u_xlat44;
  u_xlat44 = clamp(x_882, 0.0f, 1.0f);
  let x_884 : f32 = u_xlat42;
  let x_885 : f32 = u_xlat42;
  u_xlat42 = (x_884 * x_885);
  let x_887 : f32 = u_xlat42;
  let x_889 : f32 = u_xlat8.x;
  u_xlat42 = ((x_887 * x_889) + 1.00001001358032226562f);
  let x_893 : f32 = u_xlat44;
  let x_894 : f32 = u_xlat44;
  u_xlat44 = (x_893 * x_894);
  let x_896 : f32 = u_xlat42;
  let x_897 : f32 = u_xlat42;
  u_xlat42 = (x_896 * x_897);
  let x_899 : f32 = u_xlat44;
  u_xlat44 = max(x_899, 0.10000000149011611938f);
  let x_902 : f32 = u_xlat42;
  let x_903 : f32 = u_xlat44;
  u_xlat42 = (x_902 * x_903);
  let x_906 : f32 = u_xlat4.x;
  let x_907 : f32 = u_xlat42;
  u_xlat42 = (x_906 * x_907);
  let x_910 : f32 = u_xlat5.x;
  let x_911 : f32 = u_xlat42;
  u_xlat42 = (x_910 / x_911);
  let x_913 : vec4<f32> = u_xlat0;
  let x_915 : f32 = u_xlat42;
  let x_918 : vec3<f32> = u_xlat18;
  u_xlat19 = ((vec3<f32>(x_913.x, x_913.y, x_913.z) * vec3<f32>(x_915, x_915, x_915)) + x_918);
  let x_921 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_923 : f32 = x_320.unity_LightData.y;
  u_xlat42 = min(x_921, x_923);
  let x_926 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_926));
  let x_929 : f32 = u_xlat29;
  let x_932 : f32 = x_83.x_AdditionalShadowFadeParams.x;
  let x_935 : f32 = x_83.x_AdditionalShadowFadeParams.y;
  u_xlat29 = ((x_929 * x_932) + x_935);
  let x_937 : f32 = u_xlat29;
  u_xlat29 = clamp(x_937, 0.0f, 1.0f);
  let x_941 : f32 = x_548.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_943 : f32 = x_548.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_945 : f32 = x_548.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_947 : f32 = x_548.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_948 : vec4<f32> = vec4<f32>(x_941, x_943, x_945, x_947);
  let x_954 : vec4<bool> = (vec4<f32>(x_948.x, x_948.y, x_948.z, x_948.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_954.x, x_954.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_966 : u32 = u_xlatu_loop_1;
    let x_967 : u32 = u_xlatu42;
    if ((x_966 < x_967)) {
    } else {
      break;
    }
    let x_970 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_970 >> 2u);
    let x_973 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_973 & 3u));
    let x_976 : u32 = u_xlatu48;
    let x_979 : vec4<f32> = x_320.unity_LightIndices[bitcast<i32>(x_976)];
    let x_989 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_994 : vec4<u32> = indexable[x_989];
    u_xlat48 = dot(x_979, bitcast<vec4<f32>>(x_994));
    let x_998 : f32 = u_xlat48;
    u_xlati48 = i32(x_998);
    let x_1001 : vec3<f32> = vs_TEXCOORD7;
    let x_1012 : i32 = u_xlati48;
    let x_1014 : vec4<f32> = x_1011.x_AdditionalLightsPosition[x_1012];
    let x_1017 : i32 = u_xlati48;
    let x_1019 : vec4<f32> = x_1011.x_AdditionalLightsPosition[x_1017];
    u_xlat9 = ((-(x_1001) * vec3<f32>(x_1014.w, x_1014.w, x_1014.w)) + vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
    let x_1023 : vec3<f32> = u_xlat9;
    let x_1024 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1023, x_1024);
    let x_1026 : f32 = u_xlat35;
    u_xlat35 = max(x_1026, 0.00006103515625f);
    let x_1030 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1030);
    let x_1033 : f32 = u_xlat49;
    let x_1035 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1033, x_1033, x_1033) * x_1035);
    let x_1038 : f32 = u_xlat35;
    u_xlat51 = (1.0f / x_1038);
    let x_1040 : f32 = u_xlat35;
    let x_1041 : i32 = u_xlati48;
    let x_1043 : f32 = x_1011.x_AdditionalLightsAttenuation[x_1041].x;
    u_xlat35 = (x_1040 * x_1043);
    let x_1045 : f32 = u_xlat35;
    let x_1047 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1045) * x_1047) + 1.0f);
    let x_1050 : f32 = u_xlat35;
    u_xlat35 = max(x_1050, 0.0f);
    let x_1052 : f32 = u_xlat35;
    let x_1053 : f32 = u_xlat35;
    u_xlat35 = (x_1052 * x_1053);
    let x_1055 : f32 = u_xlat35;
    let x_1056 : f32 = u_xlat51;
    u_xlat35 = (x_1055 * x_1056);
    let x_1058 : i32 = u_xlati48;
    let x_1060 : vec4<f32> = x_1011.x_AdditionalLightsSpotDir[x_1058];
    let x_1062 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1060.x, x_1060.y, x_1060.z), x_1062);
    let x_1064 : f32 = u_xlat51;
    let x_1065 : i32 = u_xlati48;
    let x_1067 : f32 = x_1011.x_AdditionalLightsAttenuation[x_1065].z;
    let x_1069 : i32 = u_xlati48;
    let x_1071 : f32 = x_1011.x_AdditionalLightsAttenuation[x_1069].w;
    u_xlat51 = ((x_1064 * x_1067) + x_1071);
    let x_1073 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1073, 0.0f, 1.0f);
    let x_1075 : f32 = u_xlat51;
    let x_1076 : f32 = u_xlat51;
    u_xlat51 = (x_1075 * x_1076);
    let x_1078 : f32 = u_xlat35;
    let x_1079 : f32 = u_xlat51;
    u_xlat35 = (x_1078 * x_1079);
    let x_1083 : i32 = u_xlati48;
    let x_1085 : f32 = x_83.x_AdditionalShadowParams[x_1083].w;
    u_xlati51 = i32(x_1085);
    let x_1088 : i32 = u_xlati51;
    u_xlatb52 = (x_1088 >= 0i);
    let x_1090 : bool = u_xlatb52;
    if (x_1090) {
      let x_1094 : i32 = u_xlati48;
      let x_1096 : f32 = x_83.x_AdditionalShadowParams[x_1094].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1096, x_1096, x_1096, x_1096))));
      let x_1100 : bool = u_xlatb52;
      if (x_1100) {
        let x_1104 : vec3<f32> = u_xlat10;
        let x_1107 : vec3<f32> = u_xlat10;
        let x_1110 : vec4<bool> = (abs(vec4<f32>(x_1104.z, x_1104.z, x_1104.y, x_1104.z)) >= abs(vec4<f32>(x_1107.x, x_1107.y, x_1107.x, x_1107.x)));
        let x_1112 : vec3<bool> = vec3<bool>(x_1110.x, x_1110.y, x_1110.z);
        let x_1113 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
        let x_1116 : bool = u_xlatb11.y;
        let x_1118 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1116 & x_1118);
        let x_1120 : vec3<f32> = u_xlat10;
        let x_1123 : vec4<bool> = (-(vec4<f32>(x_1120.z, x_1120.y, x_1120.z, x_1120.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1124 : vec3<bool> = vec3<bool>(x_1123.x, x_1123.y, x_1123.w);
        let x_1125 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1124.x, x_1124.y, x_1125.z, x_1124.z);
        let x_1129 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1129);
        let x_1134 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1134);
        let x_1139 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1139);
        let x_1143 : bool = u_xlatb11.z;
        if (x_1143) {
          let x_1148 : f32 = u_xlat11.y;
          x_1144 = x_1148;
        } else {
          let x_1150 : f32 = u_xlat53;
          x_1144 = x_1150;
        }
        let x_1151 : f32 = x_1144;
        u_xlat25.x = x_1151;
        let x_1154 : bool = u_xlatb52;
        if (x_1154) {
          let x_1159 : f32 = u_xlat11.x;
          x_1155 = x_1159;
        } else {
          let x_1162 : f32 = u_xlat25.x;
          x_1155 = x_1162;
        }
        let x_1163 : f32 = x_1155;
        u_xlat52 = x_1163;
        let x_1164 : i32 = u_xlati48;
        let x_1166 : f32 = x_83.x_AdditionalShadowParams[x_1164].w;
        u_xlat11.x = trunc(x_1166);
        let x_1169 : f32 = u_xlat52;
        let x_1171 : f32 = u_xlat11.x;
        u_xlat52 = (x_1169 + x_1171);
        let x_1173 : f32 = u_xlat52;
        u_xlati51 = i32(x_1173);
      }
      let x_1175 : i32 = u_xlati51;
      u_xlati51 = (x_1175 << bitcast<u32>(2i));
      let x_1177 : vec3<f32> = vs_TEXCOORD7;
      let x_1180 : i32 = u_xlati51;
      let x_1183 : i32 = u_xlati51;
      let x_1187 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_1180 + 1i) / 4i)][((x_1183 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1177.y, x_1177.y, x_1177.y, x_1177.y) * x_1187);
      let x_1189 : i32 = u_xlati51;
      let x_1191 : i32 = u_xlati51;
      let x_1194 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[(x_1189 / 4i)][(x_1191 % 4i)];
      let x_1195 : vec3<f32> = vs_TEXCOORD7;
      let x_1198 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1194 * vec4<f32>(x_1195.x, x_1195.x, x_1195.x, x_1195.x)) + x_1198);
      let x_1200 : i32 = u_xlati51;
      let x_1203 : i32 = u_xlati51;
      let x_1207 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_1200 + 2i) / 4i)][((x_1203 + 2i) % 4i)];
      let x_1208 : vec3<f32> = vs_TEXCOORD7;
      let x_1211 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1207 * vec4<f32>(x_1208.z, x_1208.z, x_1208.z, x_1208.z)) + x_1211);
      let x_1213 : vec4<f32> = u_xlat11;
      let x_1214 : i32 = u_xlati51;
      let x_1217 : i32 = u_xlati51;
      let x_1221 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_1214 + 3i) / 4i)][((x_1217 + 3i) % 4i)];
      u_xlat11 = (x_1213 + x_1221);
      let x_1223 : vec4<f32> = u_xlat11;
      let x_1225 : vec4<f32> = u_xlat11;
      let x_1227 : vec3<f32> = (vec3<f32>(x_1223.x, x_1223.y, x_1223.z) / vec3<f32>(x_1225.w, x_1225.w, x_1225.w));
      let x_1228 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
      let x_1231 : vec4<f32> = u_xlat11;
      let x_1232 : vec2<f32> = vec2<f32>(x_1231.x, x_1231.y);
      let x_1234 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1232.x, x_1232.y, x_1234);
      let x_1242 : vec3<f32> = txVec1;
      let x_1244 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1242.xy, x_1242.z);
      u_xlat51 = x_1244;
      let x_1245 : i32 = u_xlati48;
      let x_1247 : f32 = x_83.x_AdditionalShadowParams[x_1245].x;
      u_xlat52 = (1.0f + -(x_1247));
      let x_1250 : f32 = u_xlat51;
      let x_1251 : i32 = u_xlati48;
      let x_1253 : f32 = x_83.x_AdditionalShadowParams[x_1251].x;
      let x_1255 : f32 = u_xlat52;
      u_xlat51 = ((x_1250 * x_1253) + x_1255);
      let x_1258 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1258);
      let x_1261 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1261 >= 1.0f);
      let x_1264 : bool = u_xlatb52;
      let x_1266 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1264 | x_1266);
      let x_1268 : bool = u_xlatb52;
      let x_1269 : f32 = u_xlat51;
      u_xlat51 = select(x_1269, 1.0f, x_1268);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1272 : f32 = u_xlat51;
    u_xlat52 = (-(x_1272) + 1.0f);
    let x_1275 : f32 = u_xlat29;
    let x_1276 : f32 = u_xlat52;
    let x_1278 : f32 = u_xlat51;
    u_xlat51 = ((x_1275 * x_1276) + x_1278);
    let x_1281 : i32 = u_xlati48;
    u_xlati52 = (1i << bitcast<u32>((x_1281 & 31i)));
    let x_1285 : i32 = u_xlati52;
    let x_1288 : f32 = x_548.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1285) & bitcast<u32>(x_1288)));
    let x_1292 : i32 = u_xlati52;
    if ((x_1292 != 0i)) {
      let x_1296 : i32 = u_xlati48;
      let x_1298 : f32 = x_548.x_AdditionalLightsLightTypes[x_1296].el;
      u_xlati52 = i32(x_1298);
      let x_1301 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1301 != 0i));
      let x_1305 : i32 = u_xlati48;
      u_xlati25 = (x_1305 << bitcast<u32>(2i));
      let x_1307 : i32 = u_xlati11;
      if ((x_1307 != 0i)) {
        let x_1311 : vec3<f32> = vs_TEXCOORD7;
        let x_1313 : i32 = u_xlati25;
        let x_1316 : i32 = u_xlati25;
        let x_1320 : vec4<f32> = x_548.x_AdditionalLightsWorldToLights[((x_1313 + 1i) / 4i)][((x_1316 + 1i) % 4i)];
        let x_1322 : vec3<f32> = (vec3<f32>(x_1311.y, x_1311.y, x_1311.y) * vec3<f32>(x_1320.x, x_1320.y, x_1320.w));
        let x_1323 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1322.x, x_1323.y, x_1322.y, x_1322.z);
        let x_1325 : i32 = u_xlati25;
        let x_1327 : i32 = u_xlati25;
        let x_1330 : vec4<f32> = x_548.x_AdditionalLightsWorldToLights[(x_1325 / 4i)][(x_1327 % 4i)];
        let x_1332 : vec3<f32> = vs_TEXCOORD7;
        let x_1335 : vec4<f32> = u_xlat11;
        let x_1337 : vec3<f32> = ((vec3<f32>(x_1330.x, x_1330.y, x_1330.w) * vec3<f32>(x_1332.x, x_1332.x, x_1332.x)) + vec3<f32>(x_1335.x, x_1335.z, x_1335.w));
        let x_1338 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1337.x, x_1338.y, x_1337.y, x_1337.z);
        let x_1340 : i32 = u_xlati25;
        let x_1343 : i32 = u_xlati25;
        let x_1347 : vec4<f32> = x_548.x_AdditionalLightsWorldToLights[((x_1340 + 2i) / 4i)][((x_1343 + 2i) % 4i)];
        let x_1349 : vec3<f32> = vs_TEXCOORD7;
        let x_1352 : vec4<f32> = u_xlat11;
        let x_1354 : vec3<f32> = ((vec3<f32>(x_1347.x, x_1347.y, x_1347.w) * vec3<f32>(x_1349.z, x_1349.z, x_1349.z)) + vec3<f32>(x_1352.x, x_1352.z, x_1352.w));
        let x_1355 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1354.x, x_1355.y, x_1354.y, x_1354.z);
        let x_1357 : vec4<f32> = u_xlat11;
        let x_1359 : i32 = u_xlati25;
        let x_1362 : i32 = u_xlati25;
        let x_1366 : vec4<f32> = x_548.x_AdditionalLightsWorldToLights[((x_1359 + 3i) / 4i)][((x_1362 + 3i) % 4i)];
        let x_1368 : vec3<f32> = (vec3<f32>(x_1357.x, x_1357.z, x_1357.w) + vec3<f32>(x_1366.x, x_1366.y, x_1366.w));
        let x_1369 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1368.x, x_1369.y, x_1368.y, x_1368.z);
        let x_1371 : vec4<f32> = u_xlat11;
        let x_1373 : vec4<f32> = u_xlat11;
        let x_1375 : vec2<f32> = (vec2<f32>(x_1371.x, x_1371.z) / vec2<f32>(x_1373.w, x_1373.w));
        let x_1376 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1375.x, x_1376.y, x_1375.y, x_1376.w);
        let x_1378 : vec4<f32> = u_xlat11;
        let x_1381 : vec2<f32> = ((vec2<f32>(x_1378.x, x_1378.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1382 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1381.x, x_1382.y, x_1381.y, x_1382.w);
        let x_1384 : vec4<f32> = u_xlat11;
        let x_1388 : vec2<f32> = clamp(vec2<f32>(x_1384.x, x_1384.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1389 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1388.x, x_1389.y, x_1388.y, x_1389.w);
        let x_1391 : i32 = u_xlati48;
        let x_1393 : vec4<f32> = x_548.x_AdditionalLightsCookieAtlasUVRects[x_1391];
        let x_1395 : vec4<f32> = u_xlat11;
        let x_1398 : i32 = u_xlati48;
        let x_1400 : vec4<f32> = x_548.x_AdditionalLightsCookieAtlasUVRects[x_1398];
        let x_1402 : vec2<f32> = ((vec2<f32>(x_1393.x, x_1393.y) * vec2<f32>(x_1395.x, x_1395.z)) + vec2<f32>(x_1400.z, x_1400.w));
        let x_1403 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1402.x, x_1403.y, x_1402.y, x_1403.w);
      } else {
        let x_1406 : i32 = u_xlati52;
        u_xlatb52 = (x_1406 == 1i);
        let x_1408 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1408);
        let x_1410 : i32 = u_xlati52;
        if ((x_1410 != 0i)) {
          let x_1415 : vec3<f32> = vs_TEXCOORD7;
          let x_1417 : i32 = u_xlati25;
          let x_1420 : i32 = u_xlati25;
          let x_1424 : vec4<f32> = x_548.x_AdditionalLightsWorldToLights[((x_1417 + 1i) / 4i)][((x_1420 + 1i) % 4i)];
          let x_1426 : vec2<f32> = (vec2<f32>(x_1415.y, x_1415.y) * vec2<f32>(x_1424.x, x_1424.y));
          let x_1427 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1426.x, x_1426.y, x_1427.z, x_1427.w);
          let x_1429 : i32 = u_xlati25;
          let x_1431 : i32 = u_xlati25;
          let x_1434 : vec4<f32> = x_548.x_AdditionalLightsWorldToLights[(x_1429 / 4i)][(x_1431 % 4i)];
          let x_1436 : vec3<f32> = vs_TEXCOORD7;
          let x_1439 : vec4<f32> = u_xlat12;
          let x_1441 : vec2<f32> = ((vec2<f32>(x_1434.x, x_1434.y) * vec2<f32>(x_1436.x, x_1436.x)) + vec2<f32>(x_1439.x, x_1439.y));
          let x_1442 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1441.x, x_1441.y, x_1442.z, x_1442.w);
          let x_1444 : i32 = u_xlati25;
          let x_1447 : i32 = u_xlati25;
          let x_1451 : vec4<f32> = x_548.x_AdditionalLightsWorldToLights[((x_1444 + 2i) / 4i)][((x_1447 + 2i) % 4i)];
          let x_1453 : vec3<f32> = vs_TEXCOORD7;
          let x_1456 : vec4<f32> = u_xlat12;
          let x_1458 : vec2<f32> = ((vec2<f32>(x_1451.x, x_1451.y) * vec2<f32>(x_1453.z, x_1453.z)) + vec2<f32>(x_1456.x, x_1456.y));
          let x_1459 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1458.x, x_1458.y, x_1459.z, x_1459.w);
          let x_1461 : vec4<f32> = u_xlat12;
          let x_1463 : i32 = u_xlati25;
          let x_1466 : i32 = u_xlati25;
          let x_1470 : vec4<f32> = x_548.x_AdditionalLightsWorldToLights[((x_1463 + 3i) / 4i)][((x_1466 + 3i) % 4i)];
          let x_1472 : vec2<f32> = (vec2<f32>(x_1461.x, x_1461.y) + vec2<f32>(x_1470.x, x_1470.y));
          let x_1473 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1472.x, x_1472.y, x_1473.z, x_1473.w);
          let x_1475 : vec4<f32> = u_xlat12;
          let x_1478 : vec2<f32> = ((vec2<f32>(x_1475.x, x_1475.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1479 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1478.x, x_1478.y, x_1479.z, x_1479.w);
          let x_1481 : vec4<f32> = u_xlat12;
          let x_1483 : vec2<f32> = fract(vec2<f32>(x_1481.x, x_1481.y));
          let x_1484 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1483.x, x_1483.y, x_1484.z, x_1484.w);
          let x_1486 : i32 = u_xlati48;
          let x_1488 : vec4<f32> = x_548.x_AdditionalLightsCookieAtlasUVRects[x_1486];
          let x_1490 : vec4<f32> = u_xlat12;
          let x_1493 : i32 = u_xlati48;
          let x_1495 : vec4<f32> = x_548.x_AdditionalLightsCookieAtlasUVRects[x_1493];
          let x_1497 : vec2<f32> = ((vec2<f32>(x_1488.x, x_1488.y) * vec2<f32>(x_1490.x, x_1490.y)) + vec2<f32>(x_1495.z, x_1495.w));
          let x_1498 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1497.x, x_1498.y, x_1497.y, x_1498.w);
        } else {
          let x_1501 : vec3<f32> = vs_TEXCOORD7;
          let x_1503 : i32 = u_xlati25;
          let x_1506 : i32 = u_xlati25;
          let x_1510 : vec4<f32> = x_548.x_AdditionalLightsWorldToLights[((x_1503 + 1i) / 4i)][((x_1506 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1501.y, x_1501.y, x_1501.y, x_1501.y) * x_1510);
          let x_1512 : i32 = u_xlati25;
          let x_1514 : i32 = u_xlati25;
          let x_1517 : vec4<f32> = x_548.x_AdditionalLightsWorldToLights[(x_1512 / 4i)][(x_1514 % 4i)];
          let x_1518 : vec3<f32> = vs_TEXCOORD7;
          let x_1521 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1517 * vec4<f32>(x_1518.x, x_1518.x, x_1518.x, x_1518.x)) + x_1521);
          let x_1523 : i32 = u_xlati25;
          let x_1526 : i32 = u_xlati25;
          let x_1530 : vec4<f32> = x_548.x_AdditionalLightsWorldToLights[((x_1523 + 2i) / 4i)][((x_1526 + 2i) % 4i)];
          let x_1531 : vec3<f32> = vs_TEXCOORD7;
          let x_1534 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1530 * vec4<f32>(x_1531.z, x_1531.z, x_1531.z, x_1531.z)) + x_1534);
          let x_1536 : vec4<f32> = u_xlat12;
          let x_1537 : i32 = u_xlati25;
          let x_1540 : i32 = u_xlati25;
          let x_1544 : vec4<f32> = x_548.x_AdditionalLightsWorldToLights[((x_1537 + 3i) / 4i)][((x_1540 + 3i) % 4i)];
          u_xlat12 = (x_1536 + x_1544);
          let x_1546 : vec4<f32> = u_xlat12;
          let x_1548 : vec4<f32> = u_xlat12;
          let x_1550 : vec3<f32> = (vec3<f32>(x_1546.x, x_1546.y, x_1546.z) / vec3<f32>(x_1548.w, x_1548.w, x_1548.w));
          let x_1551 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1551.w);
          let x_1553 : vec4<f32> = u_xlat12;
          let x_1555 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1553.x, x_1553.y, x_1553.z), vec3<f32>(x_1555.x, x_1555.y, x_1555.z));
          let x_1558 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1558);
          let x_1560 : f32 = u_xlat52;
          let x_1562 : vec4<f32> = u_xlat12;
          let x_1564 : vec3<f32> = (vec3<f32>(x_1560, x_1560, x_1560) * vec3<f32>(x_1562.x, x_1562.y, x_1562.z));
          let x_1565 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1565.w);
          let x_1567 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1567.x, x_1567.y, x_1567.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1572 : f32 = u_xlat52;
          u_xlat52 = max(x_1572, 0.00000099999999747524f);
          let x_1575 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1575);
          let x_1578 : f32 = u_xlat52;
          let x_1580 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1578, x_1578, x_1578) * vec3<f32>(x_1580.z, x_1580.x, x_1580.y));
          let x_1584 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1584);
          let x_1588 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1588, 0.0f, 1.0f);
          let x_1593 : vec3<f32> = u_xlat13;
          let x_1595 : vec4<bool> = (vec4<f32>(x_1593.y, x_1593.y, x_1593.z, x_1593.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1596 : vec2<bool> = vec2<bool>(x_1595.x, x_1595.z);
          let x_1597 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1596.x, x_1597.y, x_1596.y);
          let x_1600 : bool = u_xlatb25.x;
          if (x_1600) {
            let x_1605 : f32 = u_xlat13.x;
            x_1601 = x_1605;
          } else {
            let x_1608 : f32 = u_xlat13.x;
            x_1601 = -(x_1608);
          }
          let x_1610 : f32 = x_1601;
          u_xlat25.x = x_1610;
          let x_1613 : bool = u_xlatb25.z;
          if (x_1613) {
            let x_1618 : f32 = u_xlat13.x;
            x_1614 = x_1618;
          } else {
            let x_1621 : f32 = u_xlat13.x;
            x_1614 = -(x_1621);
          }
          let x_1623 : f32 = x_1614;
          u_xlat25.z = x_1623;
          let x_1625 : vec4<f32> = u_xlat12;
          let x_1627 : f32 = u_xlat52;
          let x_1630 : vec3<f32> = u_xlat25;
          let x_1632 : vec2<f32> = ((vec2<f32>(x_1625.x, x_1625.y) * vec2<f32>(x_1627, x_1627)) + vec2<f32>(x_1630.x, x_1630.z));
          let x_1633 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1632.x, x_1633.y, x_1632.y);
          let x_1635 : vec3<f32> = u_xlat25;
          let x_1638 : vec2<f32> = ((vec2<f32>(x_1635.x, x_1635.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1639 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1638.x, x_1639.y, x_1638.y);
          let x_1641 : vec3<f32> = u_xlat25;
          let x_1645 : vec2<f32> = clamp(vec2<f32>(x_1641.x, x_1641.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1646 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1645.x, x_1646.y, x_1645.y);
          let x_1648 : i32 = u_xlati48;
          let x_1650 : vec4<f32> = x_548.x_AdditionalLightsCookieAtlasUVRects[x_1648];
          let x_1652 : vec3<f32> = u_xlat25;
          let x_1655 : i32 = u_xlati48;
          let x_1657 : vec4<f32> = x_548.x_AdditionalLightsCookieAtlasUVRects[x_1655];
          let x_1659 : vec2<f32> = ((vec2<f32>(x_1650.x, x_1650.y) * vec2<f32>(x_1652.x, x_1652.z)) + vec2<f32>(x_1657.z, x_1657.w));
          let x_1660 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1659.x, x_1660.y, x_1659.y, x_1660.w);
        }
      }
      let x_1667 : vec4<f32> = u_xlat11;
      let x_1669 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1667.x, x_1667.z), 0.0f);
      u_xlat11 = x_1669;
      let x_1671 : bool = u_xlatb7.y;
      if (x_1671) {
        let x_1676 : f32 = u_xlat11.w;
        x_1672 = x_1676;
      } else {
        let x_1679 : f32 = u_xlat11.x;
        x_1672 = x_1679;
      }
      let x_1680 : f32 = x_1672;
      u_xlat52 = x_1680;
      let x_1682 : bool = u_xlatb7.x;
      if (x_1682) {
        let x_1686 : vec4<f32> = u_xlat11;
        x_1683 = vec3<f32>(x_1686.x, x_1686.y, x_1686.z);
      } else {
        let x_1689 : f32 = u_xlat52;
        x_1683 = vec3<f32>(x_1689, x_1689, x_1689);
      }
      let x_1691 : vec3<f32> = x_1683;
      let x_1692 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1698 : vec4<f32> = u_xlat11;
    let x_1700 : i32 = u_xlati48;
    let x_1702 : vec4<f32> = x_1011.x_AdditionalLightsColor[x_1700];
    let x_1704 : vec3<f32> = (vec3<f32>(x_1698.x, x_1698.y, x_1698.z) * vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
    let x_1705 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1704.x, x_1704.y, x_1704.z, x_1705.w);
    let x_1707 : f32 = u_xlat35;
    let x_1708 : f32 = u_xlat51;
    u_xlat48 = (x_1707 * x_1708);
    let x_1710 : vec4<f32> = u_xlat2;
    let x_1712 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_1710.x, x_1710.y, x_1710.z), x_1712);
    let x_1714 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1714, 0.0f, 1.0f);
    let x_1716 : f32 = u_xlat48;
    let x_1717 : f32 = u_xlat35;
    u_xlat48 = (x_1716 * x_1717);
    let x_1719 : f32 = u_xlat48;
    let x_1721 : vec4<f32> = u_xlat11;
    let x_1723 : vec3<f32> = (vec3<f32>(x_1719, x_1719, x_1719) * vec3<f32>(x_1721.x, x_1721.y, x_1721.z));
    let x_1724 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1723.x, x_1723.y, x_1723.z, x_1724.w);
    let x_1726 : vec3<f32> = u_xlat9;
    let x_1727 : f32 = u_xlat49;
    let x_1730 : vec4<f32> = u_xlat6;
    u_xlat9 = ((x_1726 * vec3<f32>(x_1727, x_1727, x_1727)) + vec3<f32>(x_1730.x, x_1730.y, x_1730.z));
    let x_1733 : vec3<f32> = u_xlat9;
    let x_1734 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1733, x_1734);
    let x_1736 : f32 = u_xlat48;
    u_xlat48 = max(x_1736, 1.17549435e-38f);
    let x_1738 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1738);
    let x_1740 : f32 = u_xlat48;
    let x_1742 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1740, x_1740, x_1740) * x_1742);
    let x_1744 : vec4<f32> = u_xlat2;
    let x_1746 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1744.x, x_1744.y, x_1744.z), x_1746);
    let x_1748 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1748, 0.0f, 1.0f);
    let x_1750 : vec3<f32> = u_xlat10;
    let x_1751 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1750, x_1751);
    let x_1753 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1753, 0.0f, 1.0f);
    let x_1755 : f32 = u_xlat48;
    let x_1756 : f32 = u_xlat48;
    u_xlat48 = (x_1755 * x_1756);
    let x_1758 : f32 = u_xlat48;
    let x_1760 : f32 = u_xlat8.x;
    u_xlat48 = ((x_1758 * x_1760) + 1.00001001358032226562f);
    let x_1763 : f32 = u_xlat35;
    let x_1764 : f32 = u_xlat35;
    u_xlat35 = (x_1763 * x_1764);
    let x_1766 : f32 = u_xlat48;
    let x_1767 : f32 = u_xlat48;
    u_xlat48 = (x_1766 * x_1767);
    let x_1769 : f32 = u_xlat35;
    u_xlat35 = max(x_1769, 0.10000000149011611938f);
    let x_1771 : f32 = u_xlat48;
    let x_1772 : f32 = u_xlat35;
    u_xlat48 = (x_1771 * x_1772);
    let x_1775 : f32 = u_xlat4.x;
    let x_1776 : f32 = u_xlat48;
    u_xlat48 = (x_1775 * x_1776);
    let x_1779 : f32 = u_xlat5.x;
    let x_1780 : f32 = u_xlat48;
    u_xlat48 = (x_1779 / x_1780);
    let x_1782 : vec4<f32> = u_xlat0;
    let x_1784 : f32 = u_xlat48;
    let x_1787 : vec3<f32> = u_xlat18;
    u_xlat9 = ((vec3<f32>(x_1782.x, x_1782.y, x_1782.z) * vec3<f32>(x_1784, x_1784, x_1784)) + x_1787);
    let x_1789 : vec3<f32> = u_xlat9;
    let x_1790 : vec4<f32> = u_xlat11;
    let x_1793 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1789 * vec3<f32>(x_1790.x, x_1790.y, x_1790.z)) + x_1793);

    continuing {
      let x_1795 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1795 + bitcast<u32>(1i));
    }
  }
  let x_1797 : vec3<f32> = u_xlat19;
  let x_1798 : vec4<f32> = u_xlat1;
  let x_1801 : vec3<f32> = u_xlat17;
  let x_1802 : vec3<f32> = ((x_1797 * vec3<f32>(x_1798.x, x_1798.y, x_1798.w)) + x_1801);
  let x_1803 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1803.w);
  let x_1805 : vec3<f32> = u_xlat22;
  let x_1806 : vec4<f32> = u_xlat0;
  let x_1808 : vec3<f32> = (x_1805 + vec3<f32>(x_1806.x, x_1806.y, x_1806.z));
  let x_1809 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1809.w);
  let x_1812 : f32 = u_xlat3.x;
  let x_1814 : f32 = u_xlat3.x;
  u_xlat42 = (x_1812 * -(x_1814));
  let x_1817 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1817);
  let x_1819 : vec4<f32> = u_xlat0;
  let x_1823 : vec4<f32> = x_29.unity_FogColor;
  let x_1826 : vec3<f32> = (vec3<f32>(x_1819.x, x_1819.y, x_1819.z) + -(vec3<f32>(x_1823.x, x_1823.y, x_1823.z)));
  let x_1827 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1827.w);
  let x_1831 : f32 = u_xlat42;
  let x_1833 : vec4<f32> = u_xlat0;
  let x_1837 : vec4<f32> = x_29.unity_FogColor;
  let x_1839 : vec3<f32> = ((vec3<f32>(x_1831, x_1831, x_1831) * vec3<f32>(x_1833.x, x_1833.y, x_1833.z)) + vec3<f32>(x_1837.x, x_1837.y, x_1837.z));
  let x_1840 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1839.x, x_1839.y, x_1839.z, x_1840.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


