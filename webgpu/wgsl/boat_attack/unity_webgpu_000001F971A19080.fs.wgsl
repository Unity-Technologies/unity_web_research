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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

var<private> u_xlat1 : f32;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_138 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu3 : u32;

var<private> u_xlati3 : i32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat45 : f32;

@group(1) @binding(2) var<uniform> x_367 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

@group(1) @binding(4) var<uniform> x_602 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatu31 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati31 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1048 : AdditionalLights;

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

fn main_1() {
  var x_106 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_552 : f32;
  var x_687 : f32;
  var x_698 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1180 : f32;
  var x_1191 : f32;
  var txVec1 : vec3<f32>;
  var x_1637 : f32;
  var x_1650 : f32;
  var x_1708 : f32;
  var x_1719 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1 = x_49.x;
  let x_57 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb15 = (x_57 == 0.0f);
  let x_63 : vec3<f32> = vs_TEXCOORD7;
  let x_68 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_69 : vec3<f32> = (-(x_63) + x_68);
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_73.x, x_73.y, x_73.z), vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_78);
  let x_80 : f32 = u_xlat29;
  let x_82 : vec4<f32> = u_xlat2;
  let x_84 : vec3<f32> = (vec3<f32>(x_80, x_80, x_80) * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_91 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_91;
  let x_95 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_95;
  let x_100 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_100;
  let x_104 : bool = u_xlatb15;
  if (x_104) {
    let x_109 : vec4<f32> = u_xlat2;
    x_106 = vec3<f32>(x_109.x, x_109.y, x_109.z);
  } else {
    let x_112 : vec4<f32> = u_xlat3;
    x_106 = vec3<f32>(x_112.x, x_112.y, x_112.z);
  }
  let x_114 : vec3<f32> = x_106;
  u_xlat15 = x_114;
  let x_116 : vec3<f32> = vs_TEXCOORD3;
  let x_117 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_116, x_117);
  let x_121 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_121);
  let x_124 : vec4<f32> = u_xlat2;
  let x_126 : vec3<f32> = vs_TEXCOORD3;
  let x_127 : vec3<f32> = (vec3<f32>(x_124.x, x_124.x, x_124.x) * x_126);
  let x_128 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : vec3<f32> = vs_TEXCOORD7;
  let x_141 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres0;
  let x_144 : vec3<f32> = (x_130 + -(vec3<f32>(x_141.x, x_141.y, x_141.z)));
  let x_145 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_148 : vec3<f32> = vs_TEXCOORD7;
  let x_150 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres1;
  let x_153 : vec3<f32> = (x_148 + -(vec3<f32>(x_150.x, x_150.y, x_150.z)));
  let x_154 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : vec3<f32> = vs_TEXCOORD7;
  let x_160 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres2;
  let x_163 : vec3<f32> = (x_157 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_TEXCOORD7;
  let x_169 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres3;
  let x_172 : vec3<f32> = (x_167 + -(vec3<f32>(x_169.x, x_169.y, x_169.z)));
  let x_173 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_175 : vec4<f32> = u_xlat3;
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_175.x, x_175.y, x_175.z), vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : vec4<f32> = u_xlat4;
  let x_183 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_181.x, x_181.y, x_181.z), vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_187 : vec4<f32> = u_xlat5;
  let x_189 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : vec4<f32> = u_xlat6;
  let x_195 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_202 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = x_138.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_202 < x_205);
  let x_208 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_208);
  let x_213 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_213);
  let x_217 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_217);
  let x_221 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_225);
  let x_231 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_231);
  let x_235 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_235);
  let x_238 : vec4<f32> = u_xlat3;
  let x_240 : vec4<f32> = u_xlat4;
  let x_242 : vec3<f32> = (vec3<f32>(x_238.x, x_238.y, x_238.z) + vec3<f32>(x_240.y, x_240.z, x_240.w));
  let x_243 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat3;
  let x_248 : vec3<f32> = max(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_249.x, x_248.x, x_248.y, x_248.z);
  let x_251 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_251, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_259 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_259) + 4.0f);
  let x_266 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_266);
  let x_270 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_270) << bitcast<u32>(2i));
  let x_274 : vec3<f32> = vs_TEXCOORD7;
  let x_276 : i32 = u_xlati3;
  let x_279 : i32 = u_xlati3;
  let x_283 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_276 + 1i) / 4i)][((x_279 + 1i) % 4i)];
  u_xlat17 = (vec3<f32>(x_274.y, x_274.y, x_274.y) * vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : i32 = u_xlati3;
  let x_288 : i32 = u_xlati3;
  let x_291 : vec4<f32> = x_138.x_MainLightWorldToShadow[(x_286 / 4i)][(x_288 % 4i)];
  let x_293 : vec3<f32> = vs_TEXCOORD7;
  let x_296 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_293.x, x_293.x, x_293.x)) + x_296);
  let x_298 : i32 = u_xlati3;
  let x_301 : i32 = u_xlati3;
  let x_305 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_298 + 2i) / 4i)][((x_301 + 2i) % 4i)];
  let x_307 : vec3<f32> = vs_TEXCOORD7;
  let x_310 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.z, x_307.z, x_307.z)) + x_310);
  let x_312 : vec3<f32> = u_xlat17;
  let x_313 : i32 = u_xlati3;
  let x_316 : i32 = u_xlati3;
  let x_320 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_313 + 3i) / 4i)][((x_316 + 3i) % 4i)];
  let x_322 : vec3<f32> = (x_312 + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_328 : f32 = vs_TEXCOORD7.y;
  let x_330 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat45 = (x_328 * x_330);
  let x_333 : f32 = x_29.unity_MatrixV[0i].z;
  let x_335 : f32 = vs_TEXCOORD7.x;
  let x_337 : f32 = u_xlat45;
  u_xlat45 = ((x_333 * x_335) + x_337);
  let x_340 : f32 = x_29.unity_MatrixV[2i].z;
  let x_342 : f32 = vs_TEXCOORD7.z;
  let x_344 : f32 = u_xlat45;
  u_xlat45 = ((x_340 * x_342) + x_344);
  let x_346 : f32 = u_xlat45;
  let x_348 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat45 = (x_346 + x_348);
  let x_350 : f32 = u_xlat45;
  let x_353 : f32 = x_29.x_ProjectionParams.y;
  u_xlat45 = (-(x_350) + -(x_353));
  let x_356 : f32 = u_xlat45;
  u_xlat45 = max(x_356, 0.0f);
  let x_358 : f32 = u_xlat45;
  let x_361 : f32 = x_29.unity_FogParams.x;
  u_xlat45 = (x_358 * x_361);
  u_xlat2.w = 1.0f;
  let x_370 : vec4<f32> = x_367.unity_SHAr;
  let x_371 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_370, x_371);
  let x_376 : vec4<f32> = x_367.unity_SHAg;
  let x_377 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_376, x_377);
  let x_382 : vec4<f32> = x_367.unity_SHAb;
  let x_383 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_382, x_383);
  let x_386 : vec4<f32> = u_xlat2;
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_386.y, x_386.z, x_386.z, x_386.x) * vec4<f32>(x_388.x, x_388.y, x_388.z, x_388.z));
  let x_393 : vec4<f32> = x_367.unity_SHBr;
  let x_394 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_393, x_394);
  let x_399 : vec4<f32> = x_367.unity_SHBg;
  let x_400 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_399, x_400);
  let x_405 : vec4<f32> = x_367.unity_SHBb;
  let x_406 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_405, x_406);
  let x_411 : f32 = u_xlat2.y;
  let x_413 : f32 = u_xlat2.y;
  u_xlat44 = (x_411 * x_413);
  let x_416 : f32 = u_xlat2.x;
  let x_418 : f32 = u_xlat2.x;
  let x_420 : f32 = u_xlat44;
  u_xlat44 = ((x_416 * x_418) + -(x_420));
  let x_425 : vec4<f32> = x_367.unity_SHC;
  let x_427 : f32 = u_xlat44;
  let x_430 : vec4<f32> = u_xlat6;
  let x_432 : vec3<f32> = ((vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_427, x_427, x_427)) + vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_435 : vec4<f32> = u_xlat4;
  let x_437 : vec4<f32> = u_xlat5;
  let x_439 : vec3<f32> = (vec3<f32>(x_435.x, x_435.y, x_435.z) + vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat4;
  let x_444 : vec3<f32> = max(vec3<f32>(x_442.x, x_442.y, x_442.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_445 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : f32 = u_xlat1;
  u_xlat44 = ((-(x_447) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_453 : f32 = u_xlat44;
  u_xlat46 = (-(x_453) + 1.0f);
  let x_456 : vec4<f32> = u_xlat0;
  let x_458 : f32 = u_xlat44;
  let x_460 : vec3<f32> = (vec3<f32>(x_456.x, x_456.y, x_456.z) * vec3<f32>(x_458, x_458, x_458));
  let x_461 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat0;
  let x_467 : vec3<f32> = (vec3<f32>(x_463.x, x_463.y, x_463.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_468 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : f32 = u_xlat1;
  let x_472 : vec4<f32> = u_xlat0;
  let x_477 : vec3<f32> = ((vec3<f32>(x_470, x_470, x_470) * vec3<f32>(x_472.x, x_472.y, x_472.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_478 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_481 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_481) + 1.0f);
  let x_484 : f32 = u_xlat1;
  let x_485 : f32 = u_xlat1;
  u_xlat44 = (x_484 * x_485);
  let x_487 : f32 = u_xlat44;
  u_xlat44 = max(x_487, 0.0078125f);
  let x_491 : f32 = u_xlat44;
  let x_492 : f32 = u_xlat44;
  u_xlat47 = (x_491 * x_492);
  let x_496 : f32 = u_xlat0.w;
  let x_497 : f32 = u_xlat46;
  u_xlat42 = (x_496 + x_497);
  let x_499 : f32 = u_xlat42;
  u_xlat42 = clamp(x_499, 0.0f, 1.0f);
  let x_501 : f32 = u_xlat44;
  u_xlat46 = ((x_501 * 4.0f) + 2.0f);
  let x_505 : vec4<f32> = u_xlat3;
  let x_506 : vec2<f32> = vec2<f32>(x_505.x, x_505.y);
  let x_508 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_506.x, x_506.y, x_508);
  let x_520 : vec3<f32> = txVec0;
  let x_522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_520.xy, x_520.z);
  u_xlat3.x = x_522;
  let x_526 : f32 = x_138.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_526) + 1.0f);
  let x_531 : f32 = u_xlat3.x;
  let x_533 : f32 = x_138.x_MainLightShadowParams.x;
  let x_536 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_531 * x_533) + x_536);
  let x_541 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_541);
  let x_545 : f32 = u_xlat3.z;
  u_xlatb31 = (x_545 >= 1.0f);
  let x_547 : bool = u_xlatb31;
  let x_548 : bool = u_xlatb17;
  u_xlatb17 = (x_547 | x_548);
  let x_550 : bool = u_xlatb17;
  if (x_550) {
    x_552 = 1.0f;
  } else {
    let x_557 : f32 = u_xlat3.x;
    x_552 = x_557;
  }
  let x_558 : f32 = x_552;
  u_xlat3.x = x_558;
  let x_560 : vec3<f32> = vs_TEXCOORD7;
  let x_562 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_564 : vec3<f32> = (x_560 + -(x_562));
  let x_565 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat6;
  let x_569 : vec4<f32> = u_xlat6;
  u_xlat17.x = dot(vec3<f32>(x_567.x, x_567.y, x_567.z), vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_575 : f32 = u_xlat17.x;
  let x_577 : f32 = x_138.x_MainLightShadowParams.z;
  let x_580 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat31 = ((x_575 * x_577) + x_580);
  let x_582 : f32 = u_xlat31;
  u_xlat31 = clamp(x_582, 0.0f, 1.0f);
  let x_585 : f32 = u_xlat3.x;
  u_xlat6.x = (-(x_585) + 1.0f);
  let x_589 : f32 = u_xlat31;
  let x_591 : f32 = u_xlat6.x;
  let x_594 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_589 * x_591) + x_594);
  let x_604 : f32 = x_602.x_MainLightCookieTextureFormat;
  u_xlatb31 = !((x_604 == -1.0f));
  let x_606 : bool = u_xlatb31;
  if (x_606) {
    let x_609 : vec3<f32> = vs_TEXCOORD7;
    let x_612 : vec4<f32> = x_602.x_MainLightWorldToLight[1i];
    let x_614 : vec2<f32> = (vec2<f32>(x_609.y, x_609.y) * vec2<f32>(x_612.x, x_612.y));
    let x_615 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
    let x_618 : vec4<f32> = x_602.x_MainLightWorldToLight[0i];
    let x_620 : vec3<f32> = vs_TEXCOORD7;
    let x_623 : vec4<f32> = u_xlat6;
    let x_625 : vec2<f32> = ((vec2<f32>(x_618.x, x_618.y) * vec2<f32>(x_620.x, x_620.x)) + vec2<f32>(x_623.x, x_623.y));
    let x_626 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
    let x_629 : vec4<f32> = x_602.x_MainLightWorldToLight[2i];
    let x_631 : vec3<f32> = vs_TEXCOORD7;
    let x_634 : vec4<f32> = u_xlat6;
    let x_636 : vec2<f32> = ((vec2<f32>(x_629.x, x_629.y) * vec2<f32>(x_631.z, x_631.z)) + vec2<f32>(x_634.x, x_634.y));
    let x_637 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
    let x_639 : vec4<f32> = u_xlat6;
    let x_642 : vec4<f32> = x_602.x_MainLightWorldToLight[3i];
    let x_644 : vec2<f32> = (vec2<f32>(x_639.x, x_639.y) + vec2<f32>(x_642.x, x_642.y));
    let x_645 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_644.x, x_644.y, x_645.z, x_645.w);
    let x_647 : vec4<f32> = u_xlat6;
    let x_652 : vec2<f32> = ((vec2<f32>(x_647.x, x_647.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_653 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
    let x_660 : vec4<f32> = u_xlat6;
    let x_663 : f32 = x_29.x_GlobalMipBias.x;
    let x_664 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_660.x, x_660.y), x_663);
    u_xlat6 = x_664;
    let x_669 : f32 = x_602.x_MainLightCookieTextureFormat;
    let x_671 : f32 = x_602.x_MainLightCookieTextureFormat;
    let x_673 : f32 = x_602.x_MainLightCookieTextureFormat;
    let x_675 : f32 = x_602.x_MainLightCookieTextureFormat;
    let x_676 : vec4<f32> = vec4<f32>(x_669, x_671, x_673, x_675);
    let x_683 : vec4<bool> = (vec4<f32>(x_676.x, x_676.y, x_676.z, x_676.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_683.x, x_683.y);
    let x_686 : bool = u_xlatb7.y;
    if (x_686) {
      let x_691 : f32 = u_xlat6.w;
      x_687 = x_691;
    } else {
      let x_694 : f32 = u_xlat6.x;
      x_687 = x_694;
    }
    let x_695 : f32 = x_687;
    u_xlat31 = x_695;
    let x_697 : bool = u_xlatb7.x;
    if (x_697) {
      let x_701 : vec4<f32> = u_xlat6;
      x_698 = vec3<f32>(x_701.x, x_701.y, x_701.z);
    } else {
      let x_704 : f32 = u_xlat31;
      x_698 = vec3<f32>(x_704, x_704, x_704);
    }
    let x_706 : vec3<f32> = x_698;
    let x_707 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_713 : vec4<f32> = u_xlat6;
  let x_716 : vec4<f32> = x_29.x_MainLightColor;
  let x_718 : vec3<f32> = (vec3<f32>(x_713.x, x_713.y, x_713.z) * vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec3<f32> = u_xlat15;
  let x_723 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(-(x_721), vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : f32 = u_xlat31;
  let x_727 : f32 = u_xlat31;
  u_xlat31 = (x_726 + x_727);
  let x_730 : vec4<f32> = u_xlat2;
  let x_732 : f32 = u_xlat31;
  let x_736 : vec3<f32> = u_xlat15;
  let x_738 : vec3<f32> = ((vec3<f32>(x_730.x, x_730.y, x_730.z) * -(vec3<f32>(x_732, x_732, x_732))) + -(x_736));
  let x_739 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_741 : vec4<f32> = u_xlat2;
  let x_743 : vec3<f32> = u_xlat15;
  u_xlat31 = dot(vec3<f32>(x_741.x, x_741.y, x_741.z), x_743);
  let x_745 : f32 = u_xlat31;
  u_xlat31 = clamp(x_745, 0.0f, 1.0f);
  let x_747 : f32 = u_xlat31;
  u_xlat31 = (-(x_747) + 1.0f);
  let x_750 : f32 = u_xlat31;
  let x_751 : f32 = u_xlat31;
  u_xlat31 = (x_750 * x_751);
  let x_753 : f32 = u_xlat31;
  let x_754 : f32 = u_xlat31;
  u_xlat31 = (x_753 * x_754);
  let x_757 : f32 = u_xlat1;
  u_xlat48 = ((-(x_757) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_763 : f32 = u_xlat1;
  let x_764 : f32 = u_xlat48;
  u_xlat1 = (x_763 * x_764);
  let x_766 : f32 = u_xlat1;
  u_xlat1 = (x_766 * 6.0f);
  let x_777 : vec4<f32> = u_xlat7;
  let x_779 : f32 = u_xlat1;
  let x_780 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_777.x, x_777.y, x_777.z), x_779);
  u_xlat7 = x_780;
  let x_782 : f32 = u_xlat7.w;
  u_xlat1 = (x_782 + -1.0f);
  let x_785 : f32 = x_367.unity_SpecCube0_HDR.w;
  let x_786 : f32 = u_xlat1;
  u_xlat1 = ((x_785 * x_786) + 1.0f);
  let x_789 : f32 = u_xlat1;
  u_xlat1 = max(x_789, 0.0f);
  let x_791 : f32 = u_xlat1;
  u_xlat1 = log2(x_791);
  let x_793 : f32 = u_xlat1;
  let x_795 : f32 = x_367.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_793 * x_795);
  let x_797 : f32 = u_xlat1;
  u_xlat1 = exp2(x_797);
  let x_799 : f32 = u_xlat1;
  let x_801 : f32 = x_367.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_799 * x_801);
  let x_803 : vec4<f32> = u_xlat7;
  let x_805 : f32 = u_xlat1;
  let x_807 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(x_805, x_805, x_805));
  let x_808 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_812 : f32 = u_xlat44;
  let x_814 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_812, x_812) * vec2<f32>(x_814, x_814)) + vec2<f32>(-1.0f, 1.0f));
  let x_820 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_820);
  let x_823 : vec4<f32> = u_xlat0;
  let x_826 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_823.x, x_823.y, x_823.z)) + vec3<f32>(x_826, x_826, x_826));
  let x_829 : f32 = u_xlat31;
  let x_831 : vec3<f32> = u_xlat22;
  let x_833 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_829, x_829, x_829) * x_831) + vec3<f32>(x_833.x, x_833.y, x_833.z));
  let x_836 : f32 = u_xlat1;
  let x_838 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_836, x_836, x_836) * x_838);
  let x_840 : vec4<f32> = u_xlat7;
  let x_842 : vec3<f32> = u_xlat22;
  let x_843 : vec3<f32> = (vec3<f32>(x_840.x, x_840.y, x_840.z) * x_842);
  let x_844 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat4;
  let x_848 : vec4<f32> = u_xlat5;
  let x_851 : vec4<f32> = u_xlat7;
  let x_853 : vec3<f32> = ((vec3<f32>(x_846.x, x_846.y, x_846.z) * vec3<f32>(x_848.x, x_848.y, x_848.z)) + vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_857 : f32 = u_xlat3.x;
  let x_859 : f32 = x_367.unity_LightData.z;
  u_xlat42 = (x_857 * x_859);
  let x_861 : vec4<f32> = u_xlat2;
  let x_864 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_861.x, x_861.y, x_861.z), vec3<f32>(x_864.x, x_864.y, x_864.z));
  let x_867 : f32 = u_xlat1;
  u_xlat1 = clamp(x_867, 0.0f, 1.0f);
  let x_869 : f32 = u_xlat42;
  let x_870 : f32 = u_xlat1;
  u_xlat42 = (x_869 * x_870);
  let x_872 : f32 = u_xlat42;
  let x_874 : vec4<f32> = u_xlat6;
  let x_876 : vec3<f32> = (vec3<f32>(x_872, x_872, x_872) * vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_877 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec3<f32> = u_xlat15;
  let x_881 : vec4<f32> = x_29.x_MainLightPosition;
  let x_883 : vec3<f32> = (x_879 + vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat7;
  let x_888 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_886.x, x_886.y, x_886.z), vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : f32 = u_xlat42;
  u_xlat42 = max(x_891, 1.17549435e-38f);
  let x_894 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_894);
  let x_896 : f32 = u_xlat42;
  let x_898 : vec4<f32> = u_xlat7;
  let x_900 : vec3<f32> = (vec3<f32>(x_896, x_896, x_896) * vec3<f32>(x_898.x, x_898.y, x_898.z));
  let x_901 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  let x_903 : vec4<f32> = u_xlat2;
  let x_905 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_903.x, x_903.y, x_903.z), vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_908 : f32 = u_xlat42;
  u_xlat42 = clamp(x_908, 0.0f, 1.0f);
  let x_911 : vec4<f32> = x_29.x_MainLightPosition;
  let x_913 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_911.x, x_911.y, x_911.z), vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_916 : f32 = u_xlat1;
  u_xlat1 = clamp(x_916, 0.0f, 1.0f);
  let x_918 : f32 = u_xlat42;
  let x_919 : f32 = u_xlat42;
  u_xlat42 = (x_918 * x_919);
  let x_921 : f32 = u_xlat42;
  let x_923 : f32 = u_xlat8.x;
  u_xlat42 = ((x_921 * x_923) + 1.00001001358032226562f);
  let x_927 : f32 = u_xlat1;
  let x_928 : f32 = u_xlat1;
  u_xlat1 = (x_927 * x_928);
  let x_930 : f32 = u_xlat42;
  let x_931 : f32 = u_xlat42;
  u_xlat42 = (x_930 * x_931);
  let x_933 : f32 = u_xlat1;
  u_xlat1 = max(x_933, 0.10000000149011611938f);
  let x_936 : f32 = u_xlat42;
  let x_937 : f32 = u_xlat1;
  u_xlat42 = (x_936 * x_937);
  let x_939 : f32 = u_xlat46;
  let x_940 : f32 = u_xlat42;
  u_xlat42 = (x_939 * x_940);
  let x_942 : f32 = u_xlat47;
  let x_943 : f32 = u_xlat42;
  u_xlat42 = (x_942 / x_943);
  let x_945 : vec4<f32> = u_xlat0;
  let x_947 : f32 = u_xlat42;
  let x_950 : vec4<f32> = u_xlat5;
  let x_952 : vec3<f32> = ((vec3<f32>(x_945.x, x_945.y, x_945.z) * vec3<f32>(x_947, x_947, x_947)) + vec3<f32>(x_950.x, x_950.y, x_950.z));
  let x_953 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  let x_956 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_958 : f32 = x_367.unity_LightData.y;
  u_xlat42 = min(x_956, x_958);
  let x_961 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_961));
  let x_965 : f32 = u_xlat17.x;
  let x_968 : f32 = x_138.x_AdditionalShadowFadeParams.x;
  let x_971 : f32 = x_138.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_965 * x_968) + x_971);
  let x_973 : f32 = u_xlat1;
  u_xlat1 = clamp(x_973, 0.0f, 1.0f);
  let x_976 : f32 = x_602.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_978 : f32 = x_602.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_980 : f32 = x_602.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_982 : f32 = x_602.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_983 : vec4<f32> = vec4<f32>(x_976, x_978, x_980, x_982);
  let x_989 : vec4<bool> = (vec4<f32>(x_983.x, x_983.y, x_983.z, x_983.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_990 : vec2<bool> = vec2<bool>(x_989.x, x_989.y);
  let x_991 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_990.x, x_990.y, x_991.z, x_991.w);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1003 : u32 = u_xlatu_loop_1;
    let x_1004 : u32 = u_xlatu42;
    if ((x_1003 < x_1004)) {
    } else {
      break;
    }
    let x_1007 : u32 = u_xlatu_loop_1;
    u_xlatu31 = (x_1007 >> 2u);
    let x_1010 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1010 & 3u));
    let x_1013 : u32 = u_xlatu31;
    let x_1016 : vec4<f32> = x_367.unity_LightIndices[bitcast<i32>(x_1013)];
    let x_1026 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1031 : vec4<u32> = indexable[x_1026];
    u_xlat31 = dot(x_1016, bitcast<vec4<f32>>(x_1031));
    let x_1035 : f32 = u_xlat31;
    u_xlati31 = i32(x_1035);
    let x_1038 : vec3<f32> = vs_TEXCOORD7;
    let x_1049 : i32 = u_xlati31;
    let x_1051 : vec4<f32> = x_1048.x_AdditionalLightsPosition[x_1049];
    let x_1054 : i32 = u_xlati31;
    let x_1056 : vec4<f32> = x_1048.x_AdditionalLightsPosition[x_1054];
    u_xlat9 = ((-(x_1038) * vec3<f32>(x_1051.w, x_1051.w, x_1051.w)) + vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
    let x_1059 : vec3<f32> = u_xlat9;
    let x_1060 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1059, x_1060);
    let x_1062 : f32 = u_xlat48;
    u_xlat48 = max(x_1062, 0.00006103515625f);
    let x_1066 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1066);
    let x_1069 : f32 = u_xlat49;
    let x_1071 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1069, x_1069, x_1069) * x_1071);
    let x_1074 : f32 = u_xlat48;
    u_xlat51 = (1.0f / x_1074);
    let x_1076 : f32 = u_xlat48;
    let x_1077 : i32 = u_xlati31;
    let x_1079 : f32 = x_1048.x_AdditionalLightsAttenuation[x_1077].x;
    u_xlat48 = (x_1076 * x_1079);
    let x_1081 : f32 = u_xlat48;
    let x_1083 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1081) * x_1083) + 1.0f);
    let x_1086 : f32 = u_xlat48;
    u_xlat48 = max(x_1086, 0.0f);
    let x_1088 : f32 = u_xlat48;
    let x_1089 : f32 = u_xlat48;
    u_xlat48 = (x_1088 * x_1089);
    let x_1091 : f32 = u_xlat48;
    let x_1092 : f32 = u_xlat51;
    u_xlat48 = (x_1091 * x_1092);
    let x_1094 : i32 = u_xlati31;
    let x_1096 : vec4<f32> = x_1048.x_AdditionalLightsSpotDir[x_1094];
    let x_1098 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1096.x, x_1096.y, x_1096.z), x_1098);
    let x_1100 : f32 = u_xlat51;
    let x_1101 : i32 = u_xlati31;
    let x_1103 : f32 = x_1048.x_AdditionalLightsAttenuation[x_1101].z;
    let x_1105 : i32 = u_xlati31;
    let x_1107 : f32 = x_1048.x_AdditionalLightsAttenuation[x_1105].w;
    u_xlat51 = ((x_1100 * x_1103) + x_1107);
    let x_1109 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1109, 0.0f, 1.0f);
    let x_1111 : f32 = u_xlat51;
    let x_1112 : f32 = u_xlat51;
    u_xlat51 = (x_1111 * x_1112);
    let x_1114 : f32 = u_xlat48;
    let x_1115 : f32 = u_xlat51;
    u_xlat48 = (x_1114 * x_1115);
    let x_1119 : i32 = u_xlati31;
    let x_1121 : f32 = x_138.x_AdditionalShadowParams[x_1119].w;
    u_xlati51 = i32(x_1121);
    let x_1124 : i32 = u_xlati51;
    u_xlatb52 = (x_1124 >= 0i);
    let x_1126 : bool = u_xlatb52;
    if (x_1126) {
      let x_1130 : i32 = u_xlati31;
      let x_1132 : f32 = x_138.x_AdditionalShadowParams[x_1130].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1132, x_1132, x_1132, x_1132))));
      let x_1136 : bool = u_xlatb52;
      if (x_1136) {
        let x_1140 : vec3<f32> = u_xlat10;
        let x_1143 : vec3<f32> = u_xlat10;
        let x_1146 : vec4<bool> = (abs(vec4<f32>(x_1140.z, x_1140.z, x_1140.y, x_1140.z)) >= abs(vec4<f32>(x_1143.x, x_1143.y, x_1143.x, x_1143.x)));
        let x_1148 : vec3<bool> = vec3<bool>(x_1146.x, x_1146.y, x_1146.z);
        let x_1149 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
        let x_1152 : bool = u_xlatb11.y;
        let x_1154 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1152 & x_1154);
        let x_1156 : vec3<f32> = u_xlat10;
        let x_1159 : vec4<bool> = (-(vec4<f32>(x_1156.z, x_1156.y, x_1156.z, x_1156.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1160 : vec3<bool> = vec3<bool>(x_1159.x, x_1159.y, x_1159.w);
        let x_1161 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1160.x, x_1160.y, x_1161.z, x_1160.z);
        let x_1165 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1165);
        let x_1170 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1170);
        let x_1175 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1175);
        let x_1179 : bool = u_xlatb11.z;
        if (x_1179) {
          let x_1184 : f32 = u_xlat11.y;
          x_1180 = x_1184;
        } else {
          let x_1186 : f32 = u_xlat53;
          x_1180 = x_1186;
        }
        let x_1187 : f32 = x_1180;
        u_xlat25.x = x_1187;
        let x_1190 : bool = u_xlatb52;
        if (x_1190) {
          let x_1195 : f32 = u_xlat11.x;
          x_1191 = x_1195;
        } else {
          let x_1198 : f32 = u_xlat25.x;
          x_1191 = x_1198;
        }
        let x_1199 : f32 = x_1191;
        u_xlat52 = x_1199;
        let x_1200 : i32 = u_xlati31;
        let x_1202 : f32 = x_138.x_AdditionalShadowParams[x_1200].w;
        u_xlat11.x = trunc(x_1202);
        let x_1205 : f32 = u_xlat52;
        let x_1207 : f32 = u_xlat11.x;
        u_xlat52 = (x_1205 + x_1207);
        let x_1209 : f32 = u_xlat52;
        u_xlati51 = i32(x_1209);
      }
      let x_1211 : i32 = u_xlati51;
      u_xlati51 = (x_1211 << bitcast<u32>(2i));
      let x_1213 : vec3<f32> = vs_TEXCOORD7;
      let x_1216 : i32 = u_xlati51;
      let x_1219 : i32 = u_xlati51;
      let x_1223 : vec4<f32> = x_138.x_AdditionalLightsWorldToShadow[((x_1216 + 1i) / 4i)][((x_1219 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1213.y, x_1213.y, x_1213.y, x_1213.y) * x_1223);
      let x_1225 : i32 = u_xlati51;
      let x_1227 : i32 = u_xlati51;
      let x_1230 : vec4<f32> = x_138.x_AdditionalLightsWorldToShadow[(x_1225 / 4i)][(x_1227 % 4i)];
      let x_1231 : vec3<f32> = vs_TEXCOORD7;
      let x_1234 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1230 * vec4<f32>(x_1231.x, x_1231.x, x_1231.x, x_1231.x)) + x_1234);
      let x_1236 : i32 = u_xlati51;
      let x_1239 : i32 = u_xlati51;
      let x_1243 : vec4<f32> = x_138.x_AdditionalLightsWorldToShadow[((x_1236 + 2i) / 4i)][((x_1239 + 2i) % 4i)];
      let x_1244 : vec3<f32> = vs_TEXCOORD7;
      let x_1247 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1243 * vec4<f32>(x_1244.z, x_1244.z, x_1244.z, x_1244.z)) + x_1247);
      let x_1249 : vec4<f32> = u_xlat11;
      let x_1250 : i32 = u_xlati51;
      let x_1253 : i32 = u_xlati51;
      let x_1257 : vec4<f32> = x_138.x_AdditionalLightsWorldToShadow[((x_1250 + 3i) / 4i)][((x_1253 + 3i) % 4i)];
      u_xlat11 = (x_1249 + x_1257);
      let x_1259 : vec4<f32> = u_xlat11;
      let x_1261 : vec4<f32> = u_xlat11;
      let x_1263 : vec3<f32> = (vec3<f32>(x_1259.x, x_1259.y, x_1259.z) / vec3<f32>(x_1261.w, x_1261.w, x_1261.w));
      let x_1264 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
      let x_1267 : vec4<f32> = u_xlat11;
      let x_1268 : vec2<f32> = vec2<f32>(x_1267.x, x_1267.y);
      let x_1270 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1268.x, x_1268.y, x_1270);
      let x_1278 : vec3<f32> = txVec1;
      let x_1280 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1278.xy, x_1278.z);
      u_xlat51 = x_1280;
      let x_1281 : i32 = u_xlati31;
      let x_1283 : f32 = x_138.x_AdditionalShadowParams[x_1281].x;
      u_xlat52 = (1.0f + -(x_1283));
      let x_1286 : f32 = u_xlat51;
      let x_1287 : i32 = u_xlati31;
      let x_1289 : f32 = x_138.x_AdditionalShadowParams[x_1287].x;
      let x_1291 : f32 = u_xlat52;
      u_xlat51 = ((x_1286 * x_1289) + x_1291);
      let x_1294 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1294);
      let x_1297 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1297 >= 1.0f);
      let x_1300 : bool = u_xlatb52;
      let x_1302 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1300 | x_1302);
      let x_1304 : bool = u_xlatb52;
      let x_1305 : f32 = u_xlat51;
      u_xlat51 = select(x_1305, 1.0f, x_1304);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1308 : f32 = u_xlat51;
    u_xlat52 = (-(x_1308) + 1.0f);
    let x_1311 : f32 = u_xlat1;
    let x_1312 : f32 = u_xlat52;
    let x_1314 : f32 = u_xlat51;
    u_xlat51 = ((x_1311 * x_1312) + x_1314);
    let x_1317 : i32 = u_xlati31;
    u_xlati52 = (1i << bitcast<u32>((x_1317 & 31i)));
    let x_1321 : i32 = u_xlati52;
    let x_1324 : f32 = x_602.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1321) & bitcast<u32>(x_1324)));
    let x_1328 : i32 = u_xlati52;
    if ((x_1328 != 0i)) {
      let x_1332 : i32 = u_xlati31;
      let x_1334 : f32 = x_602.x_AdditionalLightsLightTypes[x_1332].el;
      u_xlati52 = i32(x_1334);
      let x_1337 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1337 != 0i));
      let x_1341 : i32 = u_xlati31;
      u_xlati25 = (x_1341 << bitcast<u32>(2i));
      let x_1343 : i32 = u_xlati11;
      if ((x_1343 != 0i)) {
        let x_1347 : vec3<f32> = vs_TEXCOORD7;
        let x_1349 : i32 = u_xlati25;
        let x_1352 : i32 = u_xlati25;
        let x_1356 : vec4<f32> = x_602.x_AdditionalLightsWorldToLights[((x_1349 + 1i) / 4i)][((x_1352 + 1i) % 4i)];
        let x_1358 : vec3<f32> = (vec3<f32>(x_1347.y, x_1347.y, x_1347.y) * vec3<f32>(x_1356.x, x_1356.y, x_1356.w));
        let x_1359 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1358.x, x_1359.y, x_1358.y, x_1358.z);
        let x_1361 : i32 = u_xlati25;
        let x_1363 : i32 = u_xlati25;
        let x_1366 : vec4<f32> = x_602.x_AdditionalLightsWorldToLights[(x_1361 / 4i)][(x_1363 % 4i)];
        let x_1368 : vec3<f32> = vs_TEXCOORD7;
        let x_1371 : vec4<f32> = u_xlat11;
        let x_1373 : vec3<f32> = ((vec3<f32>(x_1366.x, x_1366.y, x_1366.w) * vec3<f32>(x_1368.x, x_1368.x, x_1368.x)) + vec3<f32>(x_1371.x, x_1371.z, x_1371.w));
        let x_1374 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1373.x, x_1374.y, x_1373.y, x_1373.z);
        let x_1376 : i32 = u_xlati25;
        let x_1379 : i32 = u_xlati25;
        let x_1383 : vec4<f32> = x_602.x_AdditionalLightsWorldToLights[((x_1376 + 2i) / 4i)][((x_1379 + 2i) % 4i)];
        let x_1385 : vec3<f32> = vs_TEXCOORD7;
        let x_1388 : vec4<f32> = u_xlat11;
        let x_1390 : vec3<f32> = ((vec3<f32>(x_1383.x, x_1383.y, x_1383.w) * vec3<f32>(x_1385.z, x_1385.z, x_1385.z)) + vec3<f32>(x_1388.x, x_1388.z, x_1388.w));
        let x_1391 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1390.x, x_1391.y, x_1390.y, x_1390.z);
        let x_1393 : vec4<f32> = u_xlat11;
        let x_1395 : i32 = u_xlati25;
        let x_1398 : i32 = u_xlati25;
        let x_1402 : vec4<f32> = x_602.x_AdditionalLightsWorldToLights[((x_1395 + 3i) / 4i)][((x_1398 + 3i) % 4i)];
        let x_1404 : vec3<f32> = (vec3<f32>(x_1393.x, x_1393.z, x_1393.w) + vec3<f32>(x_1402.x, x_1402.y, x_1402.w));
        let x_1405 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1404.x, x_1405.y, x_1404.y, x_1404.z);
        let x_1407 : vec4<f32> = u_xlat11;
        let x_1409 : vec4<f32> = u_xlat11;
        let x_1411 : vec2<f32> = (vec2<f32>(x_1407.x, x_1407.z) / vec2<f32>(x_1409.w, x_1409.w));
        let x_1412 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1411.x, x_1412.y, x_1411.y, x_1412.w);
        let x_1414 : vec4<f32> = u_xlat11;
        let x_1417 : vec2<f32> = ((vec2<f32>(x_1414.x, x_1414.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1418 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1417.x, x_1418.y, x_1417.y, x_1418.w);
        let x_1420 : vec4<f32> = u_xlat11;
        let x_1424 : vec2<f32> = clamp(vec2<f32>(x_1420.x, x_1420.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1425 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1424.x, x_1425.y, x_1424.y, x_1425.w);
        let x_1427 : i32 = u_xlati31;
        let x_1429 : vec4<f32> = x_602.x_AdditionalLightsCookieAtlasUVRects[x_1427];
        let x_1431 : vec4<f32> = u_xlat11;
        let x_1434 : i32 = u_xlati31;
        let x_1436 : vec4<f32> = x_602.x_AdditionalLightsCookieAtlasUVRects[x_1434];
        let x_1438 : vec2<f32> = ((vec2<f32>(x_1429.x, x_1429.y) * vec2<f32>(x_1431.x, x_1431.z)) + vec2<f32>(x_1436.z, x_1436.w));
        let x_1439 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1438.x, x_1439.y, x_1438.y, x_1439.w);
      } else {
        let x_1442 : i32 = u_xlati52;
        u_xlatb52 = (x_1442 == 1i);
        let x_1444 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1444);
        let x_1446 : i32 = u_xlati52;
        if ((x_1446 != 0i)) {
          let x_1451 : vec3<f32> = vs_TEXCOORD7;
          let x_1453 : i32 = u_xlati25;
          let x_1456 : i32 = u_xlati25;
          let x_1460 : vec4<f32> = x_602.x_AdditionalLightsWorldToLights[((x_1453 + 1i) / 4i)][((x_1456 + 1i) % 4i)];
          let x_1462 : vec2<f32> = (vec2<f32>(x_1451.y, x_1451.y) * vec2<f32>(x_1460.x, x_1460.y));
          let x_1463 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1462.x, x_1462.y, x_1463.z, x_1463.w);
          let x_1465 : i32 = u_xlati25;
          let x_1467 : i32 = u_xlati25;
          let x_1470 : vec4<f32> = x_602.x_AdditionalLightsWorldToLights[(x_1465 / 4i)][(x_1467 % 4i)];
          let x_1472 : vec3<f32> = vs_TEXCOORD7;
          let x_1475 : vec4<f32> = u_xlat12;
          let x_1477 : vec2<f32> = ((vec2<f32>(x_1470.x, x_1470.y) * vec2<f32>(x_1472.x, x_1472.x)) + vec2<f32>(x_1475.x, x_1475.y));
          let x_1478 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1477.x, x_1477.y, x_1478.z, x_1478.w);
          let x_1480 : i32 = u_xlati25;
          let x_1483 : i32 = u_xlati25;
          let x_1487 : vec4<f32> = x_602.x_AdditionalLightsWorldToLights[((x_1480 + 2i) / 4i)][((x_1483 + 2i) % 4i)];
          let x_1489 : vec3<f32> = vs_TEXCOORD7;
          let x_1492 : vec4<f32> = u_xlat12;
          let x_1494 : vec2<f32> = ((vec2<f32>(x_1487.x, x_1487.y) * vec2<f32>(x_1489.z, x_1489.z)) + vec2<f32>(x_1492.x, x_1492.y));
          let x_1495 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1494.x, x_1494.y, x_1495.z, x_1495.w);
          let x_1497 : vec4<f32> = u_xlat12;
          let x_1499 : i32 = u_xlati25;
          let x_1502 : i32 = u_xlati25;
          let x_1506 : vec4<f32> = x_602.x_AdditionalLightsWorldToLights[((x_1499 + 3i) / 4i)][((x_1502 + 3i) % 4i)];
          let x_1508 : vec2<f32> = (vec2<f32>(x_1497.x, x_1497.y) + vec2<f32>(x_1506.x, x_1506.y));
          let x_1509 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1508.x, x_1508.y, x_1509.z, x_1509.w);
          let x_1511 : vec4<f32> = u_xlat12;
          let x_1514 : vec2<f32> = ((vec2<f32>(x_1511.x, x_1511.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1515 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1514.x, x_1514.y, x_1515.z, x_1515.w);
          let x_1517 : vec4<f32> = u_xlat12;
          let x_1519 : vec2<f32> = fract(vec2<f32>(x_1517.x, x_1517.y));
          let x_1520 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1519.x, x_1519.y, x_1520.z, x_1520.w);
          let x_1522 : i32 = u_xlati31;
          let x_1524 : vec4<f32> = x_602.x_AdditionalLightsCookieAtlasUVRects[x_1522];
          let x_1526 : vec4<f32> = u_xlat12;
          let x_1529 : i32 = u_xlati31;
          let x_1531 : vec4<f32> = x_602.x_AdditionalLightsCookieAtlasUVRects[x_1529];
          let x_1533 : vec2<f32> = ((vec2<f32>(x_1524.x, x_1524.y) * vec2<f32>(x_1526.x, x_1526.y)) + vec2<f32>(x_1531.z, x_1531.w));
          let x_1534 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1533.x, x_1534.y, x_1533.y, x_1534.w);
        } else {
          let x_1537 : vec3<f32> = vs_TEXCOORD7;
          let x_1539 : i32 = u_xlati25;
          let x_1542 : i32 = u_xlati25;
          let x_1546 : vec4<f32> = x_602.x_AdditionalLightsWorldToLights[((x_1539 + 1i) / 4i)][((x_1542 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1537.y, x_1537.y, x_1537.y, x_1537.y) * x_1546);
          let x_1548 : i32 = u_xlati25;
          let x_1550 : i32 = u_xlati25;
          let x_1553 : vec4<f32> = x_602.x_AdditionalLightsWorldToLights[(x_1548 / 4i)][(x_1550 % 4i)];
          let x_1554 : vec3<f32> = vs_TEXCOORD7;
          let x_1557 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1553 * vec4<f32>(x_1554.x, x_1554.x, x_1554.x, x_1554.x)) + x_1557);
          let x_1559 : i32 = u_xlati25;
          let x_1562 : i32 = u_xlati25;
          let x_1566 : vec4<f32> = x_602.x_AdditionalLightsWorldToLights[((x_1559 + 2i) / 4i)][((x_1562 + 2i) % 4i)];
          let x_1567 : vec3<f32> = vs_TEXCOORD7;
          let x_1570 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1566 * vec4<f32>(x_1567.z, x_1567.z, x_1567.z, x_1567.z)) + x_1570);
          let x_1572 : vec4<f32> = u_xlat12;
          let x_1573 : i32 = u_xlati25;
          let x_1576 : i32 = u_xlati25;
          let x_1580 : vec4<f32> = x_602.x_AdditionalLightsWorldToLights[((x_1573 + 3i) / 4i)][((x_1576 + 3i) % 4i)];
          u_xlat12 = (x_1572 + x_1580);
          let x_1582 : vec4<f32> = u_xlat12;
          let x_1584 : vec4<f32> = u_xlat12;
          let x_1586 : vec3<f32> = (vec3<f32>(x_1582.x, x_1582.y, x_1582.z) / vec3<f32>(x_1584.w, x_1584.w, x_1584.w));
          let x_1587 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1586.x, x_1586.y, x_1586.z, x_1587.w);
          let x_1589 : vec4<f32> = u_xlat12;
          let x_1591 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1589.x, x_1589.y, x_1589.z), vec3<f32>(x_1591.x, x_1591.y, x_1591.z));
          let x_1594 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1594);
          let x_1596 : f32 = u_xlat52;
          let x_1598 : vec4<f32> = u_xlat12;
          let x_1600 : vec3<f32> = (vec3<f32>(x_1596, x_1596, x_1596) * vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
          let x_1601 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
          let x_1603 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1603.x, x_1603.y, x_1603.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1608 : f32 = u_xlat52;
          u_xlat52 = max(x_1608, 0.00000099999999747524f);
          let x_1611 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1611);
          let x_1614 : f32 = u_xlat52;
          let x_1616 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1614, x_1614, x_1614) * vec3<f32>(x_1616.z, x_1616.x, x_1616.y));
          let x_1620 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1620);
          let x_1624 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1624, 0.0f, 1.0f);
          let x_1629 : vec3<f32> = u_xlat13;
          let x_1631 : vec4<bool> = (vec4<f32>(x_1629.y, x_1629.y, x_1629.z, x_1629.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1632 : vec2<bool> = vec2<bool>(x_1631.x, x_1631.z);
          let x_1633 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1632.x, x_1633.y, x_1632.y);
          let x_1636 : bool = u_xlatb25.x;
          if (x_1636) {
            let x_1641 : f32 = u_xlat13.x;
            x_1637 = x_1641;
          } else {
            let x_1644 : f32 = u_xlat13.x;
            x_1637 = -(x_1644);
          }
          let x_1646 : f32 = x_1637;
          u_xlat25.x = x_1646;
          let x_1649 : bool = u_xlatb25.z;
          if (x_1649) {
            let x_1654 : f32 = u_xlat13.x;
            x_1650 = x_1654;
          } else {
            let x_1657 : f32 = u_xlat13.x;
            x_1650 = -(x_1657);
          }
          let x_1659 : f32 = x_1650;
          u_xlat25.z = x_1659;
          let x_1661 : vec4<f32> = u_xlat12;
          let x_1663 : f32 = u_xlat52;
          let x_1666 : vec3<f32> = u_xlat25;
          let x_1668 : vec2<f32> = ((vec2<f32>(x_1661.x, x_1661.y) * vec2<f32>(x_1663, x_1663)) + vec2<f32>(x_1666.x, x_1666.z));
          let x_1669 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1668.x, x_1669.y, x_1668.y);
          let x_1671 : vec3<f32> = u_xlat25;
          let x_1674 : vec2<f32> = ((vec2<f32>(x_1671.x, x_1671.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1675 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1674.x, x_1675.y, x_1674.y);
          let x_1677 : vec3<f32> = u_xlat25;
          let x_1681 : vec2<f32> = clamp(vec2<f32>(x_1677.x, x_1677.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1682 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1681.x, x_1682.y, x_1681.y);
          let x_1684 : i32 = u_xlati31;
          let x_1686 : vec4<f32> = x_602.x_AdditionalLightsCookieAtlasUVRects[x_1684];
          let x_1688 : vec3<f32> = u_xlat25;
          let x_1691 : i32 = u_xlati31;
          let x_1693 : vec4<f32> = x_602.x_AdditionalLightsCookieAtlasUVRects[x_1691];
          let x_1695 : vec2<f32> = ((vec2<f32>(x_1686.x, x_1686.y) * vec2<f32>(x_1688.x, x_1688.z)) + vec2<f32>(x_1693.z, x_1693.w));
          let x_1696 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1695.x, x_1696.y, x_1695.y, x_1696.w);
        }
      }
      let x_1703 : vec4<f32> = u_xlat11;
      let x_1705 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1703.x, x_1703.z), 0.0f);
      u_xlat11 = x_1705;
      let x_1707 : bool = u_xlatb3.y;
      if (x_1707) {
        let x_1712 : f32 = u_xlat11.w;
        x_1708 = x_1712;
      } else {
        let x_1715 : f32 = u_xlat11.x;
        x_1708 = x_1715;
      }
      let x_1716 : f32 = x_1708;
      u_xlat52 = x_1716;
      let x_1718 : bool = u_xlatb3.x;
      if (x_1718) {
        let x_1722 : vec4<f32> = u_xlat11;
        x_1719 = vec3<f32>(x_1722.x, x_1722.y, x_1722.z);
      } else {
        let x_1725 : f32 = u_xlat52;
        x_1719 = vec3<f32>(x_1725, x_1725, x_1725);
      }
      let x_1727 : vec3<f32> = x_1719;
      let x_1728 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1727.x, x_1727.y, x_1727.z, x_1728.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1734 : vec4<f32> = u_xlat11;
    let x_1736 : i32 = u_xlati31;
    let x_1738 : vec4<f32> = x_1048.x_AdditionalLightsColor[x_1736];
    let x_1740 : vec3<f32> = (vec3<f32>(x_1734.x, x_1734.y, x_1734.z) * vec3<f32>(x_1738.x, x_1738.y, x_1738.z));
    let x_1741 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1740.x, x_1740.y, x_1740.z, x_1741.w);
    let x_1743 : f32 = u_xlat48;
    let x_1744 : f32 = u_xlat51;
    u_xlat31 = (x_1743 * x_1744);
    let x_1746 : vec4<f32> = u_xlat2;
    let x_1748 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1746.x, x_1746.y, x_1746.z), x_1748);
    let x_1750 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1750, 0.0f, 1.0f);
    let x_1752 : f32 = u_xlat31;
    let x_1753 : f32 = u_xlat48;
    u_xlat31 = (x_1752 * x_1753);
    let x_1755 : f32 = u_xlat31;
    let x_1757 : vec4<f32> = u_xlat11;
    let x_1759 : vec3<f32> = (vec3<f32>(x_1755, x_1755, x_1755) * vec3<f32>(x_1757.x, x_1757.y, x_1757.z));
    let x_1760 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1759.x, x_1759.y, x_1759.z, x_1760.w);
    let x_1762 : vec3<f32> = u_xlat9;
    let x_1763 : f32 = u_xlat49;
    let x_1766 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1762 * vec3<f32>(x_1763, x_1763, x_1763)) + x_1766);
    let x_1768 : vec3<f32> = u_xlat9;
    let x_1769 : vec3<f32> = u_xlat9;
    u_xlat31 = dot(x_1768, x_1769);
    let x_1771 : f32 = u_xlat31;
    u_xlat31 = max(x_1771, 1.17549435e-38f);
    let x_1773 : f32 = u_xlat31;
    u_xlat31 = inverseSqrt(x_1773);
    let x_1775 : f32 = u_xlat31;
    let x_1777 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1775, x_1775, x_1775) * x_1777);
    let x_1779 : vec4<f32> = u_xlat2;
    let x_1781 : vec3<f32> = u_xlat9;
    u_xlat31 = dot(vec3<f32>(x_1779.x, x_1779.y, x_1779.z), x_1781);
    let x_1783 : f32 = u_xlat31;
    u_xlat31 = clamp(x_1783, 0.0f, 1.0f);
    let x_1785 : vec3<f32> = u_xlat10;
    let x_1786 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1785, x_1786);
    let x_1788 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1788, 0.0f, 1.0f);
    let x_1790 : f32 = u_xlat31;
    let x_1791 : f32 = u_xlat31;
    u_xlat31 = (x_1790 * x_1791);
    let x_1793 : f32 = u_xlat31;
    let x_1795 : f32 = u_xlat8.x;
    u_xlat31 = ((x_1793 * x_1795) + 1.00001001358032226562f);
    let x_1798 : f32 = u_xlat48;
    let x_1799 : f32 = u_xlat48;
    u_xlat48 = (x_1798 * x_1799);
    let x_1801 : f32 = u_xlat31;
    let x_1802 : f32 = u_xlat31;
    u_xlat31 = (x_1801 * x_1802);
    let x_1804 : f32 = u_xlat48;
    u_xlat48 = max(x_1804, 0.10000000149011611938f);
    let x_1806 : f32 = u_xlat31;
    let x_1807 : f32 = u_xlat48;
    u_xlat31 = (x_1806 * x_1807);
    let x_1809 : f32 = u_xlat46;
    let x_1810 : f32 = u_xlat31;
    u_xlat31 = (x_1809 * x_1810);
    let x_1812 : f32 = u_xlat47;
    let x_1813 : f32 = u_xlat31;
    u_xlat31 = (x_1812 / x_1813);
    let x_1815 : vec4<f32> = u_xlat0;
    let x_1817 : f32 = u_xlat31;
    let x_1820 : vec4<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1815.x, x_1815.y, x_1815.z) * vec3<f32>(x_1817, x_1817, x_1817)) + vec3<f32>(x_1820.x, x_1820.y, x_1820.z));
    let x_1823 : vec3<f32> = u_xlat9;
    let x_1824 : vec4<f32> = u_xlat11;
    let x_1827 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1823 * vec3<f32>(x_1824.x, x_1824.y, x_1824.z)) + x_1827);

    continuing {
      let x_1829 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1829 + bitcast<u32>(1i));
    }
  }
  let x_1831 : vec4<f32> = u_xlat7;
  let x_1833 : vec4<f32> = u_xlat6;
  let x_1836 : vec4<f32> = u_xlat4;
  let x_1838 : vec3<f32> = ((vec3<f32>(x_1831.x, x_1831.y, x_1831.z) * vec3<f32>(x_1833.x, x_1833.y, x_1833.z)) + vec3<f32>(x_1836.x, x_1836.y, x_1836.z));
  let x_1839 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1838.x, x_1838.y, x_1838.z, x_1839.w);
  let x_1841 : vec3<f32> = u_xlat22;
  let x_1842 : vec4<f32> = u_xlat0;
  let x_1844 : vec3<f32> = (x_1841 + vec3<f32>(x_1842.x, x_1842.y, x_1842.z));
  let x_1845 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1844.x, x_1844.y, x_1844.z, x_1845.w);
  let x_1847 : f32 = u_xlat45;
  let x_1848 : f32 = u_xlat45;
  u_xlat42 = (x_1847 * -(x_1848));
  let x_1851 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1851);
  let x_1853 : vec4<f32> = u_xlat0;
  let x_1856 : vec4<f32> = x_29.unity_FogColor;
  let x_1859 : vec3<f32> = (vec3<f32>(x_1853.x, x_1853.y, x_1853.z) + -(vec3<f32>(x_1856.x, x_1856.y, x_1856.z)));
  let x_1860 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1859.x, x_1859.y, x_1859.z, x_1860.w);
  let x_1864 : f32 = u_xlat42;
  let x_1866 : vec4<f32> = u_xlat0;
  let x_1870 : vec4<f32> = x_29.unity_FogColor;
  let x_1872 : vec3<f32> = ((vec3<f32>(x_1864, x_1864, x_1864) * vec3<f32>(x_1866.x, x_1866.y, x_1866.z)) + vec3<f32>(x_1870.x, x_1870.y, x_1870.z));
  let x_1873 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1872.x, x_1872.y, x_1872.z, x_1873.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


