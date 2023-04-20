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

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_80 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat16 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

@group(1) @binding(4) var<uniform> x_479 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_673 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_934 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu16 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_428 : f32;
  var x_563 : f32;
  var x_574 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1066 : f32;
  var x_1076 : f32;
  var txVec1 : vec3<f32>;
  var x_1506 : f32;
  var x_1519 : f32;
  var x_1577 : f32;
  var x_1588 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0 = x_36;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_47 : f32 = x_28.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_44.x, x_44.y), x_47);
  u_xlat1 = x_48.x;
  let x_53 : vec4<f32> = vs_TEXCOORD3;
  let x_55 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_60 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_60);
  let x_63 : vec3<f32> = u_xlat15;
  let x_65 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_63.x, x_63.x, x_63.x) * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_71 : vec3<f32> = vs_TEXCOORD7;
  let x_84 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres0;
  let x_87 : vec3<f32> = (x_71 + -(vec3<f32>(x_84.x, x_84.y, x_84.z)));
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_87.x, x_87.y, x_87.z, x_88.w);
  let x_91 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres1;
  let x_97 : vec3<f32> = (x_91 + -(vec3<f32>(x_94.x, x_94.y, x_94.z)));
  let x_98 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_101 : vec3<f32> = vs_TEXCOORD7;
  let x_104 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_101 + -(vec3<f32>(x_104.x, x_104.y, x_104.z)));
  let x_109 : vec3<f32> = vs_TEXCOORD7;
  let x_112 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres3;
  let x_115 : vec3<f32> = (x_109 + -(vec3<f32>(x_112.x, x_112.y, x_112.z)));
  let x_116 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  let x_118 : vec4<f32> = u_xlat2;
  let x_120 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_118.x, x_118.y, x_118.z), vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_124 : vec4<f32> = u_xlat3;
  let x_126 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_124.x, x_124.y, x_124.z), vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_131 : vec3<f32> = u_xlat4;
  let x_132 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_131, x_132);
  let x_136 : vec4<f32> = u_xlat5;
  let x_138 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_136.x, x_136.y, x_136.z), vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_147 : vec4<f32> = u_xlat2;
  let x_150 : vec4<f32> = x_80.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_147 < x_150);
  let x_154 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_154);
  let x_160 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_160);
  let x_164 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_172);
  let x_178 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_178);
  let x_182 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_182);
  let x_185 : vec4<f32> = u_xlat2;
  let x_187 : vec4<f32> = u_xlat3;
  let x_189 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) + vec3<f32>(x_187.y, x_187.z, x_187.w));
  let x_190 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat2;
  let x_195 : vec3<f32> = max(vec3<f32>(x_192.x, x_192.y, x_192.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_196.x, x_195.x, x_195.y, x_195.z);
  let x_198 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_198, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_206 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_206) + 4.0f);
  let x_213 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_213);
  let x_217 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_217) << bitcast<u32>(2i));
  let x_221 : vec3<f32> = vs_TEXCOORD7;
  let x_223 : i32 = u_xlati2;
  let x_226 : i32 = u_xlati2;
  let x_230 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_223 + 1i) / 4i)][((x_226 + 1i) % 4i)];
  u_xlat16 = (vec3<f32>(x_221.y, x_221.y, x_221.y) * vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : i32 = u_xlati2;
  let x_235 : i32 = u_xlati2;
  let x_238 : vec4<f32> = x_80.x_MainLightWorldToShadow[(x_233 / 4i)][(x_235 % 4i)];
  let x_240 : vec3<f32> = vs_TEXCOORD7;
  let x_243 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.x, x_240.x, x_240.x)) + x_243);
  let x_245 : i32 = u_xlati2;
  let x_248 : i32 = u_xlati2;
  let x_252 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_245 + 2i) / 4i)][((x_248 + 2i) % 4i)];
  let x_254 : vec3<f32> = vs_TEXCOORD7;
  let x_257 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_252.x, x_252.y, x_252.z) * vec3<f32>(x_254.z, x_254.z, x_254.z)) + x_257);
  let x_259 : vec3<f32> = u_xlat16;
  let x_260 : i32 = u_xlati2;
  let x_263 : i32 = u_xlati2;
  let x_267 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_260 + 3i) / 4i)][((x_263 + 3i) % 4i)];
  let x_269 : vec3<f32> = (x_259 + vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_277 : vec4<f32> = vs_TEXCOORD0;
  let x_280 : f32 = x_28.x_GlobalMipBias.x;
  let x_281 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_277.z, x_277.w), x_280);
  u_xlat3 = x_281;
  let x_286 : vec4<f32> = vs_TEXCOORD0;
  let x_289 : f32 = x_28.x_GlobalMipBias.x;
  let x_290 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_286.z, x_286.w), x_289);
  u_xlat4 = vec3<f32>(x_290.x, x_290.y, x_290.z);
  let x_292 : vec4<f32> = u_xlat3;
  let x_296 : vec3<f32> = (vec3<f32>(x_292.x, x_292.y, x_292.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_297 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_300 : vec3<f32> = u_xlat15;
  let x_301 : vec4<f32> = u_xlat3;
  u_xlat44 = dot(x_300, vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : f32 = u_xlat44;
  u_xlat44 = (x_304 + 0.5f);
  let x_307 : f32 = u_xlat44;
  let x_309 : vec3<f32> = u_xlat4;
  let x_310 : vec3<f32> = (vec3<f32>(x_307, x_307, x_307) * x_309);
  let x_311 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_314 : f32 = u_xlat3.w;
  u_xlat44 = max(x_314, 0.00009999999747378752f);
  let x_317 : vec4<f32> = u_xlat3;
  let x_319 : f32 = u_xlat44;
  let x_321 : vec3<f32> = (vec3<f32>(x_317.x, x_317.y, x_317.z) / vec3<f32>(x_319, x_319, x_319));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : f32 = u_xlat1;
  u_xlat44 = ((-(x_324) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_330 : f32 = u_xlat44;
  u_xlat45 = (-(x_330) + 1.0f);
  let x_333 : vec4<f32> = u_xlat0;
  let x_335 : f32 = u_xlat44;
  u_xlat4 = (vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335, x_335, x_335));
  let x_338 : vec4<f32> = u_xlat0;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_343 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : f32 = u_xlat1;
  let x_347 : vec4<f32> = u_xlat0;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345, x_345, x_345) * vec3<f32>(x_347.x, x_347.y, x_347.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_353 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_356) + 1.0f);
  let x_359 : f32 = u_xlat1;
  let x_360 : f32 = u_xlat1;
  u_xlat44 = (x_359 * x_360);
  let x_362 : f32 = u_xlat44;
  u_xlat44 = max(x_362, 0.0078125f);
  let x_366 : f32 = u_xlat44;
  let x_367 : f32 = u_xlat44;
  u_xlat46 = (x_366 * x_367);
  let x_371 : f32 = u_xlat0.w;
  let x_372 : f32 = u_xlat45;
  u_xlat42 = (x_371 + x_372);
  let x_374 : f32 = u_xlat42;
  u_xlat42 = clamp(x_374, 0.0f, 1.0f);
  let x_376 : f32 = u_xlat44;
  u_xlat45 = ((x_376 * 4.0f) + 2.0f);
  let x_381 : vec4<f32> = u_xlat2;
  let x_382 : vec2<f32> = vec2<f32>(x_381.x, x_381.y);
  let x_384 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_382.x, x_382.y, x_384);
  let x_396 : vec3<f32> = txVec0;
  let x_398 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_396.xy, x_396.z);
  u_xlat2.x = x_398;
  let x_402 : f32 = x_80.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_402) + 1.0f);
  let x_407 : f32 = u_xlat2.x;
  let x_409 : f32 = x_80.x_MainLightShadowParams.x;
  let x_412 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_407 * x_409) + x_412);
  let x_417 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_417);
  let x_421 : f32 = u_xlat2.z;
  u_xlatb30 = (x_421 >= 1.0f);
  let x_423 : bool = u_xlatb30;
  let x_424 : bool = u_xlatb16;
  u_xlatb16 = (x_423 | x_424);
  let x_426 : bool = u_xlatb16;
  if (x_426) {
    x_428 = 1.0f;
  } else {
    let x_433 : f32 = u_xlat2.x;
    x_428 = x_433;
  }
  let x_434 : f32 = x_428;
  u_xlat2.x = x_434;
  let x_436 : vec3<f32> = vs_TEXCOORD7;
  let x_439 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_441 : vec3<f32> = (x_436 + -(x_439));
  let x_442 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat5;
  let x_446 : vec4<f32> = u_xlat5;
  u_xlat16.x = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_452 : f32 = u_xlat16.x;
  let x_454 : f32 = x_80.x_MainLightShadowParams.z;
  let x_457 : f32 = x_80.x_MainLightShadowParams.w;
  u_xlat30 = ((x_452 * x_454) + x_457);
  let x_459 : f32 = u_xlat30;
  u_xlat30 = clamp(x_459, 0.0f, 1.0f);
  let x_462 : f32 = u_xlat2.x;
  u_xlat5.x = (-(x_462) + 1.0f);
  let x_466 : f32 = u_xlat30;
  let x_468 : f32 = u_xlat5.x;
  let x_471 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_466 * x_468) + x_471);
  let x_481 : f32 = x_479.x_MainLightCookieTextureFormat;
  u_xlatb30 = !((x_481 == -1.0f));
  let x_483 : bool = u_xlatb30;
  if (x_483) {
    let x_486 : vec3<f32> = vs_TEXCOORD7;
    let x_489 : vec4<f32> = x_479.x_MainLightWorldToLight[1i];
    let x_491 : vec2<f32> = (vec2<f32>(x_486.y, x_486.y) * vec2<f32>(x_489.x, x_489.y));
    let x_492 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
    let x_495 : vec4<f32> = x_479.x_MainLightWorldToLight[0i];
    let x_497 : vec3<f32> = vs_TEXCOORD7;
    let x_500 : vec4<f32> = u_xlat5;
    let x_502 : vec2<f32> = ((vec2<f32>(x_495.x, x_495.y) * vec2<f32>(x_497.x, x_497.x)) + vec2<f32>(x_500.x, x_500.y));
    let x_503 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_502.x, x_502.y, x_503.z, x_503.w);
    let x_506 : vec4<f32> = x_479.x_MainLightWorldToLight[2i];
    let x_508 : vec3<f32> = vs_TEXCOORD7;
    let x_511 : vec4<f32> = u_xlat5;
    let x_513 : vec2<f32> = ((vec2<f32>(x_506.x, x_506.y) * vec2<f32>(x_508.z, x_508.z)) + vec2<f32>(x_511.x, x_511.y));
    let x_514 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
    let x_516 : vec4<f32> = u_xlat5;
    let x_519 : vec4<f32> = x_479.x_MainLightWorldToLight[3i];
    let x_521 : vec2<f32> = (vec2<f32>(x_516.x, x_516.y) + vec2<f32>(x_519.x, x_519.y));
    let x_522 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
    let x_524 : vec4<f32> = u_xlat5;
    let x_528 : vec2<f32> = ((vec2<f32>(x_524.x, x_524.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_529 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
    let x_536 : vec4<f32> = u_xlat5;
    let x_539 : f32 = x_28.x_GlobalMipBias.x;
    let x_540 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_536.x, x_536.y), x_539);
    u_xlat5 = x_540;
    let x_545 : f32 = x_479.x_MainLightCookieTextureFormat;
    let x_547 : f32 = x_479.x_MainLightCookieTextureFormat;
    let x_549 : f32 = x_479.x_MainLightCookieTextureFormat;
    let x_551 : f32 = x_479.x_MainLightCookieTextureFormat;
    let x_552 : vec4<f32> = vec4<f32>(x_545, x_547, x_549, x_551);
    let x_559 : vec4<bool> = (vec4<f32>(x_552.x, x_552.y, x_552.z, x_552.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_559.x, x_559.y);
    let x_562 : bool = u_xlatb6.y;
    if (x_562) {
      let x_567 : f32 = u_xlat5.w;
      x_563 = x_567;
    } else {
      let x_570 : f32 = u_xlat5.x;
      x_563 = x_570;
    }
    let x_571 : f32 = x_563;
    u_xlat30 = x_571;
    let x_573 : bool = u_xlatb6.x;
    if (x_573) {
      let x_577 : vec4<f32> = u_xlat5;
      x_574 = vec3<f32>(x_577.x, x_577.y, x_577.z);
    } else {
      let x_580 : f32 = u_xlat30;
      x_574 = vec3<f32>(x_580, x_580, x_580);
    }
    let x_582 : vec3<f32> = x_574;
    let x_583 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_589 : vec4<f32> = u_xlat5;
  let x_592 : vec4<f32> = x_28.x_MainLightColor;
  let x_594 : vec3<f32> = (vec3<f32>(x_589.x, x_589.y, x_589.z) * vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_600 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_600;
  let x_604 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_604;
  let x_608 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_608;
  let x_610 : vec3<f32> = u_xlat6;
  let x_612 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(-(x_610), x_612);
  let x_614 : f32 = u_xlat30;
  let x_615 : f32 = u_xlat30;
  u_xlat30 = (x_614 + x_615);
  let x_618 : vec3<f32> = u_xlat15;
  let x_619 : f32 = u_xlat30;
  let x_623 : vec3<f32> = u_xlat6;
  let x_625 : vec3<f32> = ((x_618 * -(vec3<f32>(x_619, x_619, x_619))) + -(x_623));
  let x_626 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec3<f32> = u_xlat15;
  let x_629 : vec3<f32> = u_xlat6;
  u_xlat30 = dot(x_628, x_629);
  let x_631 : f32 = u_xlat30;
  u_xlat30 = clamp(x_631, 0.0f, 1.0f);
  let x_633 : f32 = u_xlat30;
  u_xlat30 = (-(x_633) + 1.0f);
  let x_636 : f32 = u_xlat30;
  let x_637 : f32 = u_xlat30;
  u_xlat30 = (x_636 * x_637);
  let x_639 : f32 = u_xlat30;
  let x_640 : f32 = u_xlat30;
  u_xlat30 = (x_639 * x_640);
  let x_643 : f32 = u_xlat1;
  u_xlat47 = ((-(x_643) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_649 : f32 = u_xlat1;
  let x_650 : f32 = u_xlat47;
  u_xlat1 = (x_649 * x_650);
  let x_652 : f32 = u_xlat1;
  u_xlat1 = (x_652 * 6.0f);
  let x_663 : vec4<f32> = u_xlat7;
  let x_665 : f32 = u_xlat1;
  let x_666 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_663.x, x_663.y, x_663.z), x_665);
  u_xlat7 = x_666;
  let x_668 : f32 = u_xlat7.w;
  u_xlat1 = (x_668 + -1.0f);
  let x_675 : f32 = x_673.unity_SpecCube0_HDR.w;
  let x_676 : f32 = u_xlat1;
  u_xlat1 = ((x_675 * x_676) + 1.0f);
  let x_679 : f32 = u_xlat1;
  u_xlat1 = max(x_679, 0.0f);
  let x_681 : f32 = u_xlat1;
  u_xlat1 = log2(x_681);
  let x_683 : f32 = u_xlat1;
  let x_685 : f32 = x_673.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_683 * x_685);
  let x_687 : f32 = u_xlat1;
  u_xlat1 = exp2(x_687);
  let x_689 : f32 = u_xlat1;
  let x_691 : f32 = x_673.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_689 * x_691);
  let x_693 : vec4<f32> = u_xlat7;
  let x_695 : f32 = u_xlat1;
  let x_697 : vec3<f32> = (vec3<f32>(x_693.x, x_693.y, x_693.z) * vec3<f32>(x_695, x_695, x_695));
  let x_698 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_702 : f32 = u_xlat44;
  let x_704 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_702, x_702) * vec2<f32>(x_704, x_704)) + vec2<f32>(-1.0f, 1.0f));
  let x_710 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_710);
  let x_713 : vec4<f32> = u_xlat0;
  let x_716 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_713.x, x_713.y, x_713.z)) + vec3<f32>(x_716, x_716, x_716));
  let x_719 : f32 = u_xlat30;
  let x_721 : vec3<f32> = u_xlat22;
  let x_723 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_719, x_719, x_719) * x_721) + vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : f32 = u_xlat1;
  let x_728 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_726, x_726, x_726) * x_728);
  let x_730 : vec4<f32> = u_xlat7;
  let x_732 : vec3<f32> = u_xlat22;
  let x_733 : vec3<f32> = (vec3<f32>(x_730.x, x_730.y, x_730.z) * x_732);
  let x_734 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
  let x_736 : vec4<f32> = u_xlat3;
  let x_738 : vec3<f32> = u_xlat4;
  let x_740 : vec4<f32> = u_xlat7;
  let x_742 : vec3<f32> = ((vec3<f32>(x_736.x, x_736.y, x_736.z) * x_738) + vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_746 : f32 = u_xlat2.x;
  let x_748 : f32 = x_673.unity_LightData.z;
  u_xlat42 = (x_746 * x_748);
  let x_750 : vec3<f32> = u_xlat15;
  let x_752 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1 = dot(x_750, vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : f32 = u_xlat1;
  u_xlat1 = clamp(x_755, 0.0f, 1.0f);
  let x_757 : f32 = u_xlat42;
  let x_758 : f32 = u_xlat1;
  u_xlat42 = (x_757 * x_758);
  let x_760 : f32 = u_xlat42;
  let x_762 : vec4<f32> = u_xlat5;
  let x_764 : vec3<f32> = (vec3<f32>(x_760, x_760, x_760) * vec3<f32>(x_762.x, x_762.y, x_762.z));
  let x_765 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_764.x, x_765.y, x_764.y, x_764.z);
  let x_767 : vec3<f32> = u_xlat6;
  let x_769 : vec4<f32> = x_28.x_MainLightPosition;
  let x_771 : vec3<f32> = (x_767 + vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_772 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec4<f32> = u_xlat5;
  let x_776 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(vec3<f32>(x_774.x, x_774.y, x_774.z), vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : f32 = u_xlat42;
  u_xlat42 = max(x_779, 1.17549435e-38f);
  let x_782 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_782);
  let x_784 : f32 = u_xlat42;
  let x_786 : vec4<f32> = u_xlat5;
  let x_788 : vec3<f32> = (vec3<f32>(x_784, x_784, x_784) * vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_789 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_791 : vec3<f32> = u_xlat15;
  let x_792 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(x_791, vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : f32 = u_xlat42;
  u_xlat42 = clamp(x_795, 0.0f, 1.0f);
  let x_798 : vec4<f32> = x_28.x_MainLightPosition;
  let x_800 : vec4<f32> = u_xlat5;
  u_xlat1 = dot(vec3<f32>(x_798.x, x_798.y, x_798.z), vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_803 : f32 = u_xlat1;
  u_xlat1 = clamp(x_803, 0.0f, 1.0f);
  let x_805 : f32 = u_xlat42;
  let x_806 : f32 = u_xlat42;
  u_xlat42 = (x_805 * x_806);
  let x_808 : f32 = u_xlat42;
  let x_810 : f32 = u_xlat8.x;
  u_xlat42 = ((x_808 * x_810) + 1.00001001358032226562f);
  let x_814 : f32 = u_xlat1;
  let x_815 : f32 = u_xlat1;
  u_xlat1 = (x_814 * x_815);
  let x_817 : f32 = u_xlat42;
  let x_818 : f32 = u_xlat42;
  u_xlat42 = (x_817 * x_818);
  let x_820 : f32 = u_xlat1;
  u_xlat1 = max(x_820, 0.10000000149011611938f);
  let x_823 : f32 = u_xlat42;
  let x_824 : f32 = u_xlat1;
  u_xlat42 = (x_823 * x_824);
  let x_826 : f32 = u_xlat45;
  let x_827 : f32 = u_xlat42;
  u_xlat42 = (x_826 * x_827);
  let x_829 : f32 = u_xlat46;
  let x_830 : f32 = u_xlat42;
  u_xlat42 = (x_829 / x_830);
  let x_832 : vec4<f32> = u_xlat0;
  let x_834 : f32 = u_xlat42;
  let x_837 : vec3<f32> = u_xlat4;
  let x_838 : vec3<f32> = ((vec3<f32>(x_832.x, x_832.y, x_832.z) * vec3<f32>(x_834, x_834, x_834)) + x_837);
  let x_839 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_842 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_844 : f32 = x_673.unity_LightData.y;
  u_xlat42 = min(x_842, x_844);
  let x_847 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_847));
  let x_851 : f32 = u_xlat16.x;
  let x_854 : f32 = x_80.x_AdditionalShadowFadeParams.x;
  let x_857 : f32 = x_80.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_851 * x_854) + x_857);
  let x_859 : f32 = u_xlat1;
  u_xlat1 = clamp(x_859, 0.0f, 1.0f);
  let x_863 : f32 = x_479.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_865 : f32 = x_479.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_867 : f32 = x_479.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_869 : f32 = x_479.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_870 : vec4<f32> = vec4<f32>(x_863, x_865, x_867, x_869);
  let x_876 : vec4<bool> = (vec4<f32>(x_870.x, x_870.y, x_870.z, x_870.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_876.x, x_876.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_888 : u32 = u_xlatu_loop_1;
    let x_889 : u32 = u_xlatu42;
    if ((x_888 < x_889)) {
    } else {
      break;
    }
    let x_892 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_892 >> 2u);
    let x_895 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_895 & 3u));
    let x_899 : u32 = u_xlatu47;
    let x_902 : vec4<f32> = x_673.unity_LightIndices[bitcast<i32>(x_899)];
    let x_912 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_917 : vec4<u32> = indexable[x_912];
    u_xlat47 = dot(x_902, bitcast<vec4<f32>>(x_917));
    let x_921 : f32 = u_xlat47;
    u_xlati47 = i32(x_921);
    let x_924 : vec3<f32> = vs_TEXCOORD7;
    let x_935 : i32 = u_xlati47;
    let x_937 : vec4<f32> = x_934.x_AdditionalLightsPosition[x_935];
    let x_940 : i32 = u_xlati47;
    let x_942 : vec4<f32> = x_934.x_AdditionalLightsPosition[x_940];
    u_xlat9 = ((-(x_924) * vec3<f32>(x_937.w, x_937.w, x_937.w)) + vec3<f32>(x_942.x, x_942.y, x_942.z));
    let x_946 : vec3<f32> = u_xlat9;
    let x_947 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_946, x_947);
    let x_949 : f32 = u_xlat48;
    u_xlat48 = max(x_949, 0.00006103515625f);
    let x_953 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_953);
    let x_956 : f32 = u_xlat35;
    let x_958 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_956, x_956, x_956) * x_958);
    let x_961 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_961);
    let x_963 : f32 = u_xlat48;
    let x_964 : i32 = u_xlati47;
    let x_966 : f32 = x_934.x_AdditionalLightsAttenuation[x_964].x;
    u_xlat48 = (x_963 * x_966);
    let x_968 : f32 = u_xlat48;
    let x_970 : f32 = u_xlat48;
    u_xlat48 = ((-(x_968) * x_970) + 1.0f);
    let x_973 : f32 = u_xlat48;
    u_xlat48 = max(x_973, 0.0f);
    let x_975 : f32 = u_xlat48;
    let x_976 : f32 = u_xlat48;
    u_xlat48 = (x_975 * x_976);
    let x_978 : f32 = u_xlat48;
    let x_979 : f32 = u_xlat49;
    u_xlat48 = (x_978 * x_979);
    let x_981 : i32 = u_xlati47;
    let x_983 : vec4<f32> = x_934.x_AdditionalLightsSpotDir[x_981];
    let x_985 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_983.x, x_983.y, x_983.z), x_985);
    let x_987 : f32 = u_xlat49;
    let x_988 : i32 = u_xlati47;
    let x_990 : f32 = x_934.x_AdditionalLightsAttenuation[x_988].z;
    let x_992 : i32 = u_xlati47;
    let x_994 : f32 = x_934.x_AdditionalLightsAttenuation[x_992].w;
    u_xlat49 = ((x_987 * x_990) + x_994);
    let x_996 : f32 = u_xlat49;
    u_xlat49 = clamp(x_996, 0.0f, 1.0f);
    let x_998 : f32 = u_xlat49;
    let x_999 : f32 = u_xlat49;
    u_xlat49 = (x_998 * x_999);
    let x_1001 : f32 = u_xlat48;
    let x_1002 : f32 = u_xlat49;
    u_xlat48 = (x_1001 * x_1002);
    let x_1006 : i32 = u_xlati47;
    let x_1008 : f32 = x_80.x_AdditionalShadowParams[x_1006].w;
    u_xlati49 = i32(x_1008);
    let x_1011 : i32 = u_xlati49;
    u_xlatb51 = (x_1011 >= 0i);
    let x_1013 : bool = u_xlatb51;
    if (x_1013) {
      let x_1017 : i32 = u_xlati47;
      let x_1019 : f32 = x_80.x_AdditionalShadowParams[x_1017].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1019, x_1019, x_1019, x_1019))));
      let x_1023 : bool = u_xlatb51;
      if (x_1023) {
        let x_1027 : vec3<f32> = u_xlat10;
        let x_1030 : vec3<f32> = u_xlat10;
        let x_1033 : vec4<bool> = (abs(vec4<f32>(x_1027.z, x_1027.z, x_1027.y, x_1027.z)) >= abs(vec4<f32>(x_1030.x, x_1030.y, x_1030.x, x_1030.x)));
        let x_1035 : vec3<bool> = vec3<bool>(x_1033.x, x_1033.y, x_1033.z);
        let x_1036 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
        let x_1039 : bool = u_xlatb11.y;
        let x_1041 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1039 & x_1041);
        let x_1043 : vec3<f32> = u_xlat10;
        let x_1046 : vec4<bool> = (-(vec4<f32>(x_1043.z, x_1043.y, x_1043.z, x_1043.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1047 : vec3<bool> = vec3<bool>(x_1046.x, x_1046.y, x_1046.w);
        let x_1048 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1047.x, x_1047.y, x_1048.z, x_1047.z);
        let x_1052 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1052);
        let x_1057 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1057);
        let x_1062 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1062);
        let x_1065 : bool = u_xlatb11.z;
        if (x_1065) {
          let x_1070 : f32 = u_xlat11.y;
          x_1066 = x_1070;
        } else {
          let x_1072 : f32 = u_xlat52;
          x_1066 = x_1072;
        }
        let x_1073 : f32 = x_1066;
        u_xlat52 = x_1073;
        let x_1075 : bool = u_xlatb51;
        if (x_1075) {
          let x_1080 : f32 = u_xlat11.x;
          x_1076 = x_1080;
        } else {
          let x_1082 : f32 = u_xlat52;
          x_1076 = x_1082;
        }
        let x_1083 : f32 = x_1076;
        u_xlat51 = x_1083;
        let x_1084 : i32 = u_xlati47;
        let x_1086 : f32 = x_80.x_AdditionalShadowParams[x_1084].w;
        u_xlat52 = trunc(x_1086);
        let x_1088 : f32 = u_xlat51;
        let x_1089 : f32 = u_xlat52;
        u_xlat51 = (x_1088 + x_1089);
        let x_1091 : f32 = u_xlat51;
        u_xlati49 = i32(x_1091);
      }
      let x_1093 : i32 = u_xlati49;
      u_xlati49 = (x_1093 << bitcast<u32>(2i));
      let x_1095 : vec3<f32> = vs_TEXCOORD7;
      let x_1098 : i32 = u_xlati49;
      let x_1101 : i32 = u_xlati49;
      let x_1105 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_1098 + 1i) / 4i)][((x_1101 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1095.y, x_1095.y, x_1095.y, x_1095.y) * x_1105);
      let x_1107 : i32 = u_xlati49;
      let x_1109 : i32 = u_xlati49;
      let x_1112 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[(x_1107 / 4i)][(x_1109 % 4i)];
      let x_1113 : vec3<f32> = vs_TEXCOORD7;
      let x_1116 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1112 * vec4<f32>(x_1113.x, x_1113.x, x_1113.x, x_1113.x)) + x_1116);
      let x_1118 : i32 = u_xlati49;
      let x_1121 : i32 = u_xlati49;
      let x_1125 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_1118 + 2i) / 4i)][((x_1121 + 2i) % 4i)];
      let x_1126 : vec3<f32> = vs_TEXCOORD7;
      let x_1129 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1125 * vec4<f32>(x_1126.z, x_1126.z, x_1126.z, x_1126.z)) + x_1129);
      let x_1131 : vec4<f32> = u_xlat11;
      let x_1132 : i32 = u_xlati49;
      let x_1135 : i32 = u_xlati49;
      let x_1139 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_1132 + 3i) / 4i)][((x_1135 + 3i) % 4i)];
      u_xlat11 = (x_1131 + x_1139);
      let x_1141 : vec4<f32> = u_xlat11;
      let x_1143 : vec4<f32> = u_xlat11;
      let x_1145 : vec3<f32> = (vec3<f32>(x_1141.x, x_1141.y, x_1141.z) / vec3<f32>(x_1143.w, x_1143.w, x_1143.w));
      let x_1146 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
      let x_1149 : vec4<f32> = u_xlat11;
      let x_1150 : vec2<f32> = vec2<f32>(x_1149.x, x_1149.y);
      let x_1152 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1150.x, x_1150.y, x_1152);
      let x_1160 : vec3<f32> = txVec1;
      let x_1162 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1160.xy, x_1160.z);
      u_xlat49 = x_1162;
      let x_1163 : i32 = u_xlati47;
      let x_1165 : f32 = x_80.x_AdditionalShadowParams[x_1163].x;
      u_xlat51 = (1.0f + -(x_1165));
      let x_1168 : f32 = u_xlat49;
      let x_1169 : i32 = u_xlati47;
      let x_1171 : f32 = x_80.x_AdditionalShadowParams[x_1169].x;
      let x_1173 : f32 = u_xlat51;
      u_xlat49 = ((x_1168 * x_1171) + x_1173);
      let x_1176 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1176);
      let x_1180 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1180 >= 1.0f);
      let x_1182 : bool = u_xlatb51;
      let x_1183 : bool = u_xlatb52;
      u_xlatb51 = (x_1182 | x_1183);
      let x_1185 : bool = u_xlatb51;
      let x_1186 : f32 = u_xlat49;
      u_xlat49 = select(x_1186, 1.0f, x_1185);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1189 : f32 = u_xlat49;
    u_xlat51 = (-(x_1189) + 1.0f);
    let x_1192 : f32 = u_xlat1;
    let x_1193 : f32 = u_xlat51;
    let x_1195 : f32 = u_xlat49;
    u_xlat49 = ((x_1192 * x_1193) + x_1195);
    let x_1198 : i32 = u_xlati47;
    u_xlati51 = (1i << bitcast<u32>((x_1198 & 31i)));
    let x_1202 : i32 = u_xlati51;
    let x_1205 : f32 = x_479.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1202) & bitcast<u32>(x_1205)));
    let x_1209 : i32 = u_xlati51;
    if ((x_1209 != 0i)) {
      let x_1213 : i32 = u_xlati47;
      let x_1215 : f32 = x_479.x_AdditionalLightsLightTypes[x_1213].el;
      u_xlati51 = i32(x_1215);
      let x_1218 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1218 != 0i));
      let x_1222 : i32 = u_xlati47;
      u_xlati11 = (x_1222 << bitcast<u32>(2i));
      let x_1224 : i32 = u_xlati52;
      if ((x_1224 != 0i)) {
        let x_1229 : vec3<f32> = vs_TEXCOORD7;
        let x_1231 : i32 = u_xlati11;
        let x_1234 : i32 = u_xlati11;
        let x_1238 : vec4<f32> = x_479.x_AdditionalLightsWorldToLights[((x_1231 + 1i) / 4i)][((x_1234 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1229.y, x_1229.y, x_1229.y) * vec3<f32>(x_1238.x, x_1238.y, x_1238.w));
        let x_1241 : i32 = u_xlati11;
        let x_1243 : i32 = u_xlati11;
        let x_1246 : vec4<f32> = x_479.x_AdditionalLightsWorldToLights[(x_1241 / 4i)][(x_1243 % 4i)];
        let x_1248 : vec3<f32> = vs_TEXCOORD7;
        let x_1251 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1246.x, x_1246.y, x_1246.w) * vec3<f32>(x_1248.x, x_1248.x, x_1248.x)) + x_1251);
        let x_1253 : i32 = u_xlati11;
        let x_1256 : i32 = u_xlati11;
        let x_1260 : vec4<f32> = x_479.x_AdditionalLightsWorldToLights[((x_1253 + 2i) / 4i)][((x_1256 + 2i) % 4i)];
        let x_1262 : vec3<f32> = vs_TEXCOORD7;
        let x_1265 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1260.x, x_1260.y, x_1260.w) * vec3<f32>(x_1262.z, x_1262.z, x_1262.z)) + x_1265);
        let x_1267 : vec3<f32> = u_xlat25;
        let x_1268 : i32 = u_xlati11;
        let x_1271 : i32 = u_xlati11;
        let x_1275 : vec4<f32> = x_479.x_AdditionalLightsWorldToLights[((x_1268 + 3i) / 4i)][((x_1271 + 3i) % 4i)];
        u_xlat25 = (x_1267 + vec3<f32>(x_1275.x, x_1275.y, x_1275.w));
        let x_1278 : vec3<f32> = u_xlat25;
        let x_1280 : vec3<f32> = u_xlat25;
        let x_1282 : vec2<f32> = (vec2<f32>(x_1278.x, x_1278.y) / vec2<f32>(x_1280.z, x_1280.z));
        let x_1283 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1282.x, x_1282.y, x_1283.z);
        let x_1285 : vec3<f32> = u_xlat25;
        let x_1288 : vec2<f32> = ((vec2<f32>(x_1285.x, x_1285.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1289 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1288.x, x_1288.y, x_1289.z);
        let x_1291 : vec3<f32> = u_xlat25;
        let x_1295 : vec2<f32> = clamp(vec2<f32>(x_1291.x, x_1291.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1296 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1295.x, x_1295.y, x_1296.z);
        let x_1298 : i32 = u_xlati47;
        let x_1300 : vec4<f32> = x_479.x_AdditionalLightsCookieAtlasUVRects[x_1298];
        let x_1302 : vec3<f32> = u_xlat25;
        let x_1305 : i32 = u_xlati47;
        let x_1307 : vec4<f32> = x_479.x_AdditionalLightsCookieAtlasUVRects[x_1305];
        let x_1309 : vec2<f32> = ((vec2<f32>(x_1300.x, x_1300.y) * vec2<f32>(x_1302.x, x_1302.y)) + vec2<f32>(x_1307.z, x_1307.w));
        let x_1310 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1309.x, x_1309.y, x_1310.z);
      } else {
        let x_1313 : i32 = u_xlati51;
        u_xlatb51 = (x_1313 == 1i);
        let x_1315 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1315);
        let x_1317 : i32 = u_xlati51;
        if ((x_1317 != 0i)) {
          let x_1322 : vec3<f32> = vs_TEXCOORD7;
          let x_1324 : i32 = u_xlati11;
          let x_1327 : i32 = u_xlati11;
          let x_1331 : vec4<f32> = x_479.x_AdditionalLightsWorldToLights[((x_1324 + 1i) / 4i)][((x_1327 + 1i) % 4i)];
          let x_1333 : vec2<f32> = (vec2<f32>(x_1322.y, x_1322.y) * vec2<f32>(x_1331.x, x_1331.y));
          let x_1334 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1333.x, x_1333.y, x_1334.z, x_1334.w);
          let x_1336 : i32 = u_xlati11;
          let x_1338 : i32 = u_xlati11;
          let x_1341 : vec4<f32> = x_479.x_AdditionalLightsWorldToLights[(x_1336 / 4i)][(x_1338 % 4i)];
          let x_1343 : vec3<f32> = vs_TEXCOORD7;
          let x_1346 : vec4<f32> = u_xlat12;
          let x_1348 : vec2<f32> = ((vec2<f32>(x_1341.x, x_1341.y) * vec2<f32>(x_1343.x, x_1343.x)) + vec2<f32>(x_1346.x, x_1346.y));
          let x_1349 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1348.x, x_1348.y, x_1349.z, x_1349.w);
          let x_1351 : i32 = u_xlati11;
          let x_1354 : i32 = u_xlati11;
          let x_1358 : vec4<f32> = x_479.x_AdditionalLightsWorldToLights[((x_1351 + 2i) / 4i)][((x_1354 + 2i) % 4i)];
          let x_1360 : vec3<f32> = vs_TEXCOORD7;
          let x_1363 : vec4<f32> = u_xlat12;
          let x_1365 : vec2<f32> = ((vec2<f32>(x_1358.x, x_1358.y) * vec2<f32>(x_1360.z, x_1360.z)) + vec2<f32>(x_1363.x, x_1363.y));
          let x_1366 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1365.x, x_1365.y, x_1366.z, x_1366.w);
          let x_1368 : vec4<f32> = u_xlat12;
          let x_1370 : i32 = u_xlati11;
          let x_1373 : i32 = u_xlati11;
          let x_1377 : vec4<f32> = x_479.x_AdditionalLightsWorldToLights[((x_1370 + 3i) / 4i)][((x_1373 + 3i) % 4i)];
          let x_1379 : vec2<f32> = (vec2<f32>(x_1368.x, x_1368.y) + vec2<f32>(x_1377.x, x_1377.y));
          let x_1380 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
          let x_1382 : vec4<f32> = u_xlat12;
          let x_1385 : vec2<f32> = ((vec2<f32>(x_1382.x, x_1382.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1386 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1385.x, x_1385.y, x_1386.z, x_1386.w);
          let x_1388 : vec4<f32> = u_xlat12;
          let x_1390 : vec2<f32> = fract(vec2<f32>(x_1388.x, x_1388.y));
          let x_1391 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1390.x, x_1390.y, x_1391.z, x_1391.w);
          let x_1393 : i32 = u_xlati47;
          let x_1395 : vec4<f32> = x_479.x_AdditionalLightsCookieAtlasUVRects[x_1393];
          let x_1397 : vec4<f32> = u_xlat12;
          let x_1400 : i32 = u_xlati47;
          let x_1402 : vec4<f32> = x_479.x_AdditionalLightsCookieAtlasUVRects[x_1400];
          let x_1404 : vec2<f32> = ((vec2<f32>(x_1395.x, x_1395.y) * vec2<f32>(x_1397.x, x_1397.y)) + vec2<f32>(x_1402.z, x_1402.w));
          let x_1405 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1404.x, x_1404.y, x_1405.z);
        } else {
          let x_1408 : vec3<f32> = vs_TEXCOORD7;
          let x_1410 : i32 = u_xlati11;
          let x_1413 : i32 = u_xlati11;
          let x_1417 : vec4<f32> = x_479.x_AdditionalLightsWorldToLights[((x_1410 + 1i) / 4i)][((x_1413 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1408.y, x_1408.y, x_1408.y, x_1408.y) * x_1417);
          let x_1419 : i32 = u_xlati11;
          let x_1421 : i32 = u_xlati11;
          let x_1424 : vec4<f32> = x_479.x_AdditionalLightsWorldToLights[(x_1419 / 4i)][(x_1421 % 4i)];
          let x_1425 : vec3<f32> = vs_TEXCOORD7;
          let x_1428 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1424 * vec4<f32>(x_1425.x, x_1425.x, x_1425.x, x_1425.x)) + x_1428);
          let x_1430 : i32 = u_xlati11;
          let x_1433 : i32 = u_xlati11;
          let x_1437 : vec4<f32> = x_479.x_AdditionalLightsWorldToLights[((x_1430 + 2i) / 4i)][((x_1433 + 2i) % 4i)];
          let x_1438 : vec3<f32> = vs_TEXCOORD7;
          let x_1441 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1437 * vec4<f32>(x_1438.z, x_1438.z, x_1438.z, x_1438.z)) + x_1441);
          let x_1443 : vec4<f32> = u_xlat12;
          let x_1444 : i32 = u_xlati11;
          let x_1447 : i32 = u_xlati11;
          let x_1451 : vec4<f32> = x_479.x_AdditionalLightsWorldToLights[((x_1444 + 3i) / 4i)][((x_1447 + 3i) % 4i)];
          u_xlat12 = (x_1443 + x_1451);
          let x_1453 : vec4<f32> = u_xlat12;
          let x_1455 : vec4<f32> = u_xlat12;
          let x_1457 : vec3<f32> = (vec3<f32>(x_1453.x, x_1453.y, x_1453.z) / vec3<f32>(x_1455.w, x_1455.w, x_1455.w));
          let x_1458 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
          let x_1460 : vec4<f32> = u_xlat12;
          let x_1462 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1460.x, x_1460.y, x_1460.z), vec3<f32>(x_1462.x, x_1462.y, x_1462.z));
          let x_1465 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1465);
          let x_1467 : f32 = u_xlat51;
          let x_1469 : vec4<f32> = u_xlat12;
          let x_1471 : vec3<f32> = (vec3<f32>(x_1467, x_1467, x_1467) * vec3<f32>(x_1469.x, x_1469.y, x_1469.z));
          let x_1472 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1472.w);
          let x_1474 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1474.x, x_1474.y, x_1474.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1479 : f32 = u_xlat51;
          u_xlat51 = max(x_1479, 0.00000099999999747524f);
          let x_1482 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1482);
          let x_1485 : f32 = u_xlat51;
          let x_1487 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1485, x_1485, x_1485) * vec3<f32>(x_1487.z, x_1487.x, x_1487.y));
          let x_1491 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1491);
          let x_1495 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1495, 0.0f, 1.0f);
          let x_1498 : vec3<f32> = u_xlat13;
          let x_1500 : vec4<bool> = (vec4<f32>(x_1498.y, x_1498.y, x_1498.y, x_1498.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1501 : vec2<bool> = vec2<bool>(x_1500.x, x_1500.w);
          let x_1502 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1501.x, x_1502.y, x_1502.z, x_1501.y);
          let x_1505 : bool = u_xlatb11.x;
          if (x_1505) {
            let x_1510 : f32 = u_xlat13.x;
            x_1506 = x_1510;
          } else {
            let x_1513 : f32 = u_xlat13.x;
            x_1506 = -(x_1513);
          }
          let x_1515 : f32 = x_1506;
          u_xlat11.x = x_1515;
          let x_1518 : bool = u_xlatb11.w;
          if (x_1518) {
            let x_1523 : f32 = u_xlat13.x;
            x_1519 = x_1523;
          } else {
            let x_1526 : f32 = u_xlat13.x;
            x_1519 = -(x_1526);
          }
          let x_1528 : f32 = x_1519;
          u_xlat11.w = x_1528;
          let x_1530 : vec4<f32> = u_xlat12;
          let x_1532 : f32 = u_xlat51;
          let x_1535 : vec4<f32> = u_xlat11;
          let x_1537 : vec2<f32> = ((vec2<f32>(x_1530.x, x_1530.y) * vec2<f32>(x_1532, x_1532)) + vec2<f32>(x_1535.x, x_1535.w));
          let x_1538 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1537.x, x_1538.y, x_1538.z, x_1537.y);
          let x_1540 : vec4<f32> = u_xlat11;
          let x_1543 : vec2<f32> = ((vec2<f32>(x_1540.x, x_1540.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1544 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1543.x, x_1544.y, x_1544.z, x_1543.y);
          let x_1546 : vec4<f32> = u_xlat11;
          let x_1550 : vec2<f32> = clamp(vec2<f32>(x_1546.x, x_1546.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1551 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1550.x, x_1551.y, x_1551.z, x_1550.y);
          let x_1553 : i32 = u_xlati47;
          let x_1555 : vec4<f32> = x_479.x_AdditionalLightsCookieAtlasUVRects[x_1553];
          let x_1557 : vec4<f32> = u_xlat11;
          let x_1560 : i32 = u_xlati47;
          let x_1562 : vec4<f32> = x_479.x_AdditionalLightsCookieAtlasUVRects[x_1560];
          let x_1564 : vec2<f32> = ((vec2<f32>(x_1555.x, x_1555.y) * vec2<f32>(x_1557.x, x_1557.w)) + vec2<f32>(x_1562.z, x_1562.w));
          let x_1565 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1564.x, x_1564.y, x_1565.z);
        }
      }
      let x_1572 : vec3<f32> = u_xlat25;
      let x_1574 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1572.x, x_1572.y), 0.0f);
      u_xlat11 = x_1574;
      let x_1576 : bool = u_xlatb7.y;
      if (x_1576) {
        let x_1581 : f32 = u_xlat11.w;
        x_1577 = x_1581;
      } else {
        let x_1584 : f32 = u_xlat11.x;
        x_1577 = x_1584;
      }
      let x_1585 : f32 = x_1577;
      u_xlat51 = x_1585;
      let x_1587 : bool = u_xlatb7.x;
      if (x_1587) {
        let x_1591 : vec4<f32> = u_xlat11;
        x_1588 = vec3<f32>(x_1591.x, x_1591.y, x_1591.z);
      } else {
        let x_1594 : f32 = u_xlat51;
        x_1588 = vec3<f32>(x_1594, x_1594, x_1594);
      }
      let x_1596 : vec3<f32> = x_1588;
      let x_1597 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1596.x, x_1596.y, x_1596.z, x_1597.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1603 : vec4<f32> = u_xlat11;
    let x_1605 : i32 = u_xlati47;
    let x_1607 : vec4<f32> = x_934.x_AdditionalLightsColor[x_1605];
    let x_1609 : vec3<f32> = (vec3<f32>(x_1603.x, x_1603.y, x_1603.z) * vec3<f32>(x_1607.x, x_1607.y, x_1607.z));
    let x_1610 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1609.x, x_1609.y, x_1609.z, x_1610.w);
    let x_1612 : f32 = u_xlat48;
    let x_1613 : f32 = u_xlat49;
    u_xlat47 = (x_1612 * x_1613);
    let x_1615 : vec3<f32> = u_xlat15;
    let x_1616 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(x_1615, x_1616);
    let x_1618 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1618, 0.0f, 1.0f);
    let x_1620 : f32 = u_xlat47;
    let x_1621 : f32 = u_xlat48;
    u_xlat47 = (x_1620 * x_1621);
    let x_1623 : f32 = u_xlat47;
    let x_1625 : vec4<f32> = u_xlat11;
    let x_1627 : vec3<f32> = (vec3<f32>(x_1623, x_1623, x_1623) * vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
    let x_1628 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
    let x_1630 : vec3<f32> = u_xlat9;
    let x_1631 : f32 = u_xlat35;
    let x_1634 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1630 * vec3<f32>(x_1631, x_1631, x_1631)) + x_1634);
    let x_1636 : vec3<f32> = u_xlat9;
    let x_1637 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1636, x_1637);
    let x_1639 : f32 = u_xlat47;
    u_xlat47 = max(x_1639, 1.17549435e-38f);
    let x_1641 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1641);
    let x_1643 : f32 = u_xlat47;
    let x_1645 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1643, x_1643, x_1643) * x_1645);
    let x_1647 : vec3<f32> = u_xlat15;
    let x_1648 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1647, x_1648);
    let x_1650 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1650, 0.0f, 1.0f);
    let x_1652 : vec3<f32> = u_xlat10;
    let x_1653 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1652, x_1653);
    let x_1655 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1655, 0.0f, 1.0f);
    let x_1657 : f32 = u_xlat47;
    let x_1658 : f32 = u_xlat47;
    u_xlat47 = (x_1657 * x_1658);
    let x_1660 : f32 = u_xlat47;
    let x_1662 : f32 = u_xlat8.x;
    u_xlat47 = ((x_1660 * x_1662) + 1.00001001358032226562f);
    let x_1665 : f32 = u_xlat48;
    let x_1666 : f32 = u_xlat48;
    u_xlat48 = (x_1665 * x_1666);
    let x_1668 : f32 = u_xlat47;
    let x_1669 : f32 = u_xlat47;
    u_xlat47 = (x_1668 * x_1669);
    let x_1671 : f32 = u_xlat48;
    u_xlat48 = max(x_1671, 0.10000000149011611938f);
    let x_1673 : f32 = u_xlat47;
    let x_1674 : f32 = u_xlat48;
    u_xlat47 = (x_1673 * x_1674);
    let x_1676 : f32 = u_xlat45;
    let x_1677 : f32 = u_xlat47;
    u_xlat47 = (x_1676 * x_1677);
    let x_1679 : f32 = u_xlat46;
    let x_1680 : f32 = u_xlat47;
    u_xlat47 = (x_1679 / x_1680);
    let x_1682 : vec4<f32> = u_xlat0;
    let x_1684 : f32 = u_xlat47;
    let x_1687 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_1682.x, x_1682.y, x_1682.z) * vec3<f32>(x_1684, x_1684, x_1684)) + x_1687);
    let x_1689 : vec3<f32> = u_xlat9;
    let x_1690 : vec4<f32> = u_xlat11;
    let x_1693 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1689 * vec3<f32>(x_1690.x, x_1690.y, x_1690.z)) + x_1693);

    continuing {
      let x_1695 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1695 + bitcast<u32>(1i));
    }
  }
  let x_1697 : vec4<f32> = u_xlat5;
  let x_1699 : vec4<f32> = u_xlat2;
  let x_1702 : vec4<f32> = u_xlat3;
  let x_1704 : vec3<f32> = ((vec3<f32>(x_1697.x, x_1697.y, x_1697.z) * vec3<f32>(x_1699.x, x_1699.z, x_1699.w)) + vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
  let x_1705 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1704.x, x_1704.y, x_1704.z, x_1705.w);
  let x_1709 : vec3<f32> = u_xlat22;
  let x_1710 : vec4<f32> = u_xlat0;
  let x_1712 : vec3<f32> = (x_1709 + vec3<f32>(x_1710.x, x_1710.y, x_1710.z));
  let x_1713 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1713.w);
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


