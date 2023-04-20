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

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
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
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_211 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat19 : f32;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat33 : f32;

@group(1) @binding(3) var<uniform> x_376 : LightShadows;

var<private> u_xlatb33 : bool;

var<private> u_xlatb47 : bool;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_439 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatb19 : vec2<bool>;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_884 : AdditionalLights;

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

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu44 : u32;

fn main_1() {
  var x_130 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_527 : f32;
  var x_538 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1018 : f32;
  var x_1029 : f32;
  var txVec1 : vec3<f32>;
  var x_1475 : f32;
  var x_1488 : f32;
  var x_1546 : f32;
  var x_1557 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_29.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1 = x_77.x;
  let x_83 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb15 = (x_83 == 0.0f);
  let x_88 : vec3<f32> = vs_TEXCOORD7;
  let x_93 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_94 : vec3<f32> = (-(x_88) + x_93);
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_103);
  let x_105 : f32 = u_xlat29;
  let x_107 : vec4<f32> = u_xlat2;
  let x_109 : vec3<f32> = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_117 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_117;
  let x_120 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_120;
  let x_125 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_125;
  let x_128 : bool = u_xlatb15;
  if (x_128) {
    let x_133 : vec4<f32> = u_xlat2;
    x_130 = vec3<f32>(x_133.x, x_133.y, x_133.z);
  } else {
    let x_136 : vec3<f32> = u_xlat3;
    x_130 = x_136;
  }
  let x_137 : vec3<f32> = x_130;
  u_xlat15 = x_137;
  let x_139 : vec3<f32> = vs_TEXCOORD3;
  let x_140 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_139, x_140);
  let x_144 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_144);
  let x_147 : vec4<f32> = u_xlat2;
  let x_149 : vec3<f32> = vs_TEXCOORD3;
  let x_150 : vec3<f32> = (vec3<f32>(x_147.x, x_147.x, x_147.x) * x_149);
  let x_151 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_155 : f32 = vs_TEXCOORD7.y;
  let x_157 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.x = (x_155 * x_157);
  let x_161 : f32 = x_29.unity_MatrixV[0i].z;
  let x_163 : f32 = vs_TEXCOORD7.x;
  let x_166 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_161 * x_163) + x_166);
  let x_170 : f32 = x_29.unity_MatrixV[2i].z;
  let x_172 : f32 = vs_TEXCOORD7.z;
  let x_175 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_170 * x_172) + x_175);
  let x_179 : f32 = u_xlat3.x;
  let x_182 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat3.x = (x_179 + x_182);
  let x_186 : f32 = u_xlat3.x;
  let x_190 : f32 = x_29.x_ProjectionParams.y;
  u_xlat3.x = (-(x_186) + -(x_190));
  let x_195 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_195, 0.0f);
  let x_199 : f32 = u_xlat3.x;
  let x_202 : f32 = x_29.unity_FogParams.x;
  u_xlat3.x = (x_199 * x_202);
  u_xlat2.w = 1.0f;
  let x_215 : vec4<f32> = x_211.unity_SHAr;
  let x_216 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_215, x_216);
  let x_221 : vec4<f32> = x_211.unity_SHAg;
  let x_222 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_221, x_222);
  let x_227 : vec4<f32> = x_211.unity_SHAb;
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_227, x_228);
  let x_232 : vec4<f32> = u_xlat2;
  let x_234 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_232.y, x_232.z, x_232.z, x_232.x) * vec4<f32>(x_234.x, x_234.y, x_234.z, x_234.z));
  let x_240 : vec4<f32> = x_211.unity_SHBr;
  let x_241 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_240, x_241);
  let x_246 : vec4<f32> = x_211.unity_SHBg;
  let x_247 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_246, x_247);
  let x_252 : vec4<f32> = x_211.unity_SHBb;
  let x_253 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_252, x_253);
  let x_258 : f32 = u_xlat2.y;
  let x_260 : f32 = u_xlat2.y;
  u_xlat44 = (x_258 * x_260);
  let x_263 : f32 = u_xlat2.x;
  let x_265 : f32 = u_xlat2.x;
  let x_267 : f32 = u_xlat44;
  u_xlat44 = ((x_263 * x_265) + -(x_267));
  let x_273 : vec4<f32> = x_211.unity_SHC;
  let x_275 : f32 = u_xlat44;
  let x_278 : vec4<f32> = u_xlat6;
  u_xlat17 = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275, x_275, x_275)) + vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec3<f32> = u_xlat17;
  let x_282 : vec3<f32> = u_xlat4;
  u_xlat17 = (x_281 + x_282);
  let x_284 : vec3<f32> = u_xlat17;
  u_xlat17 = max(x_284, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_287 : f32 = u_xlat1;
  u_xlat44 = ((-(x_287) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_292 : f32 = u_xlat44;
  u_xlat4.x = (-(x_292) + 1.0f);
  let x_297 : vec4<f32> = u_xlat0;
  let x_299 : f32 = u_xlat44;
  u_xlat18 = (vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299, x_299, x_299));
  let x_302 : vec4<f32> = u_xlat0;
  let x_306 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_307 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : f32 = u_xlat1;
  let x_311 : vec4<f32> = u_xlat0;
  let x_316 : vec3<f32> = ((vec3<f32>(x_309, x_309, x_309) * vec3<f32>(x_311.x, x_311.y, x_311.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_317 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_320 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_320) + 1.0f);
  let x_323 : f32 = u_xlat1;
  let x_324 : f32 = u_xlat1;
  u_xlat44 = (x_323 * x_324);
  let x_326 : f32 = u_xlat44;
  u_xlat44 = max(x_326, 0.0078125f);
  let x_329 : f32 = u_xlat44;
  let x_330 : f32 = u_xlat44;
  u_xlat5.x = (x_329 * x_330);
  let x_335 : f32 = u_xlat0.w;
  let x_337 : f32 = u_xlat4.x;
  u_xlat42 = (x_335 + x_337);
  let x_339 : f32 = u_xlat42;
  u_xlat42 = clamp(x_339, 0.0f, 1.0f);
  let x_341 : f32 = u_xlat44;
  u_xlat4.x = ((x_341 * 4.0f) + 2.0f);
  let x_349 : vec4<f32> = vs_TEXCOORD8;
  let x_350 : vec2<f32> = vec2<f32>(x_349.x, x_349.y);
  let x_352 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_350.x, x_350.y, x_352);
  let x_365 : vec3<f32> = txVec0;
  let x_367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_365.xy, x_365.z);
  u_xlat19 = x_367;
  let x_379 : f32 = x_376.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_379) + 1.0f);
  let x_382 : f32 = u_xlat19;
  let x_384 : f32 = x_376.x_MainLightShadowParams.x;
  let x_386 : f32 = u_xlat33;
  u_xlat19 = ((x_382 * x_384) + x_386);
  let x_390 : f32 = vs_TEXCOORD8.z;
  u_xlatb33 = (0.0f >= x_390);
  let x_394 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (x_394 >= 1.0f);
  let x_396 : bool = u_xlatb47;
  let x_397 : bool = u_xlatb33;
  u_xlatb33 = (x_396 | x_397);
  let x_399 : bool = u_xlatb33;
  let x_400 : f32 = u_xlat19;
  u_xlat19 = select(x_400, 1.0f, x_399);
  let x_402 : vec3<f32> = vs_TEXCOORD7;
  let x_404 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_406 : vec3<f32> = (x_402 + -(x_404));
  let x_407 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat6;
  let x_411 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_409.x, x_409.y, x_409.z), vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_415 : f32 = u_xlat33;
  let x_417 : f32 = x_376.x_MainLightShadowParams.z;
  let x_420 : f32 = x_376.x_MainLightShadowParams.w;
  u_xlat47 = ((x_415 * x_417) + x_420);
  let x_422 : f32 = u_xlat47;
  u_xlat47 = clamp(x_422, 0.0f, 1.0f);
  let x_424 : f32 = u_xlat19;
  u_xlat6.x = (-(x_424) + 1.0f);
  let x_428 : f32 = u_xlat47;
  let x_430 : f32 = u_xlat6.x;
  let x_432 : f32 = u_xlat19;
  u_xlat19 = ((x_428 * x_430) + x_432);
  let x_441 : f32 = x_439.x_MainLightCookieTextureFormat;
  u_xlatb47 = !((x_441 == -1.0f));
  let x_444 : bool = u_xlatb47;
  if (x_444) {
    let x_447 : vec3<f32> = vs_TEXCOORD7;
    let x_450 : vec4<f32> = x_439.x_MainLightWorldToLight[1i];
    let x_452 : vec2<f32> = (vec2<f32>(x_447.y, x_447.y) * vec2<f32>(x_450.x, x_450.y));
    let x_453 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
    let x_456 : vec4<f32> = x_439.x_MainLightWorldToLight[0i];
    let x_458 : vec3<f32> = vs_TEXCOORD7;
    let x_461 : vec4<f32> = u_xlat6;
    let x_463 : vec2<f32> = ((vec2<f32>(x_456.x, x_456.y) * vec2<f32>(x_458.x, x_458.x)) + vec2<f32>(x_461.x, x_461.y));
    let x_464 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
    let x_467 : vec4<f32> = x_439.x_MainLightWorldToLight[2i];
    let x_469 : vec3<f32> = vs_TEXCOORD7;
    let x_472 : vec4<f32> = u_xlat6;
    let x_474 : vec2<f32> = ((vec2<f32>(x_467.x, x_467.y) * vec2<f32>(x_469.z, x_469.z)) + vec2<f32>(x_472.x, x_472.y));
    let x_475 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_474.x, x_474.y, x_475.z, x_475.w);
    let x_477 : vec4<f32> = u_xlat6;
    let x_480 : vec4<f32> = x_439.x_MainLightWorldToLight[3i];
    let x_482 : vec2<f32> = (vec2<f32>(x_477.x, x_477.y) + vec2<f32>(x_480.x, x_480.y));
    let x_483 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_483.w);
    let x_485 : vec4<f32> = u_xlat6;
    let x_490 : vec2<f32> = ((vec2<f32>(x_485.x, x_485.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_491 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
    let x_498 : vec4<f32> = u_xlat6;
    let x_501 : f32 = x_29.x_GlobalMipBias.x;
    let x_502 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_498.x, x_498.y), x_501);
    u_xlat6 = x_502;
    let x_507 : f32 = x_439.x_MainLightCookieTextureFormat;
    let x_509 : f32 = x_439.x_MainLightCookieTextureFormat;
    let x_511 : f32 = x_439.x_MainLightCookieTextureFormat;
    let x_513 : f32 = x_439.x_MainLightCookieTextureFormat;
    let x_514 : vec4<f32> = vec4<f32>(x_507, x_509, x_511, x_513);
    let x_522 : vec4<bool> = (vec4<f32>(x_514.x, x_514.y, x_514.z, x_514.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_522.x, x_522.y);
    let x_525 : bool = u_xlatb7.y;
    if (x_525) {
      let x_531 : f32 = u_xlat6.w;
      x_527 = x_531;
    } else {
      let x_534 : f32 = u_xlat6.x;
      x_527 = x_534;
    }
    let x_535 : f32 = x_527;
    u_xlat47 = x_535;
    let x_537 : bool = u_xlatb7.x;
    if (x_537) {
      let x_541 : vec4<f32> = u_xlat6;
      x_538 = vec3<f32>(x_541.x, x_541.y, x_541.z);
    } else {
      let x_544 : f32 = u_xlat47;
      x_538 = vec3<f32>(x_544, x_544, x_544);
    }
    let x_546 : vec3<f32> = x_538;
    let x_547 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_553 : vec4<f32> = u_xlat6;
  let x_556 : vec4<f32> = x_29.x_MainLightColor;
  let x_558 : vec3<f32> = (vec3<f32>(x_553.x, x_553.y, x_553.z) * vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec3<f32> = u_xlat15;
  let x_563 : vec4<f32> = u_xlat2;
  u_xlat47 = dot(-(x_561), vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : f32 = u_xlat47;
  let x_567 : f32 = u_xlat47;
  u_xlat47 = (x_566 + x_567);
  let x_570 : vec4<f32> = u_xlat2;
  let x_572 : f32 = u_xlat47;
  let x_576 : vec3<f32> = u_xlat15;
  let x_578 : vec3<f32> = ((vec3<f32>(x_570.x, x_570.y, x_570.z) * -(vec3<f32>(x_572, x_572, x_572))) + -(x_576));
  let x_579 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat2;
  let x_583 : vec3<f32> = u_xlat15;
  u_xlat47 = dot(vec3<f32>(x_581.x, x_581.y, x_581.z), x_583);
  let x_585 : f32 = u_xlat47;
  u_xlat47 = clamp(x_585, 0.0f, 1.0f);
  let x_587 : f32 = u_xlat47;
  u_xlat47 = (-(x_587) + 1.0f);
  let x_590 : f32 = u_xlat47;
  let x_591 : f32 = u_xlat47;
  u_xlat47 = (x_590 * x_591);
  let x_593 : f32 = u_xlat47;
  let x_594 : f32 = u_xlat47;
  u_xlat47 = (x_593 * x_594);
  let x_597 : f32 = u_xlat1;
  u_xlat48 = ((-(x_597) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_603 : f32 = u_xlat1;
  let x_604 : f32 = u_xlat48;
  u_xlat1 = (x_603 * x_604);
  let x_606 : f32 = u_xlat1;
  u_xlat1 = (x_606 * 6.0f);
  let x_617 : vec4<f32> = u_xlat7;
  let x_619 : f32 = u_xlat1;
  let x_620 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_617.x, x_617.y, x_617.z), x_619);
  u_xlat7 = x_620;
  let x_622 : f32 = u_xlat7.w;
  u_xlat1 = (x_622 + -1.0f);
  let x_625 : f32 = x_211.unity_SpecCube0_HDR.w;
  let x_626 : f32 = u_xlat1;
  u_xlat1 = ((x_625 * x_626) + 1.0f);
  let x_629 : f32 = u_xlat1;
  u_xlat1 = max(x_629, 0.0f);
  let x_631 : f32 = u_xlat1;
  u_xlat1 = log2(x_631);
  let x_633 : f32 = u_xlat1;
  let x_635 : f32 = x_211.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_633 * x_635);
  let x_637 : f32 = u_xlat1;
  u_xlat1 = exp2(x_637);
  let x_639 : f32 = u_xlat1;
  let x_641 : f32 = x_211.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_639 * x_641);
  let x_643 : vec4<f32> = u_xlat7;
  let x_645 : f32 = u_xlat1;
  let x_647 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) * vec3<f32>(x_645, x_645, x_645));
  let x_648 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_652 : f32 = u_xlat44;
  let x_654 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_652, x_652) * vec2<f32>(x_654, x_654)) + vec2<f32>(-1.0f, 1.0f));
  let x_660 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_660);
  let x_663 : vec4<f32> = u_xlat0;
  let x_666 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_663.x, x_663.y, x_663.z)) + vec3<f32>(x_666, x_666, x_666));
  let x_669 : f32 = u_xlat47;
  let x_671 : vec3<f32> = u_xlat22;
  let x_673 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_669, x_669, x_669) * x_671) + vec3<f32>(x_673.x, x_673.y, x_673.z));
  let x_676 : f32 = u_xlat1;
  let x_678 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_676, x_676, x_676) * x_678);
  let x_680 : vec4<f32> = u_xlat7;
  let x_682 : vec3<f32> = u_xlat22;
  let x_683 : vec3<f32> = (vec3<f32>(x_680.x, x_680.y, x_680.z) * x_682);
  let x_684 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec3<f32> = u_xlat17;
  let x_687 : vec3<f32> = u_xlat18;
  let x_689 : vec4<f32> = u_xlat7;
  u_xlat17 = ((x_686 * x_687) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : f32 = u_xlat19;
  let x_694 : f32 = x_211.unity_LightData.z;
  u_xlat42 = (x_692 * x_694);
  let x_696 : vec4<f32> = u_xlat2;
  let x_699 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_696.x, x_696.y, x_696.z), vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_702 : f32 = u_xlat1;
  u_xlat1 = clamp(x_702, 0.0f, 1.0f);
  let x_704 : f32 = u_xlat42;
  let x_705 : f32 = u_xlat1;
  u_xlat42 = (x_704 * x_705);
  let x_707 : f32 = u_xlat42;
  let x_709 : vec4<f32> = u_xlat6;
  let x_711 : vec3<f32> = (vec3<f32>(x_707, x_707, x_707) * vec3<f32>(x_709.x, x_709.y, x_709.z));
  let x_712 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec3<f32> = u_xlat15;
  let x_716 : vec4<f32> = x_29.x_MainLightPosition;
  let x_718 : vec3<f32> = (x_714 + vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec4<f32> = u_xlat7;
  let x_723 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_721.x, x_721.y, x_721.z), vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : f32 = u_xlat42;
  u_xlat42 = max(x_726, 1.17549435e-38f);
  let x_729 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_729);
  let x_731 : f32 = u_xlat42;
  let x_733 : vec4<f32> = u_xlat7;
  let x_735 : vec3<f32> = (vec3<f32>(x_731, x_731, x_731) * vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_736 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : vec4<f32> = u_xlat2;
  let x_740 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_738.x, x_738.y, x_738.z), vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : f32 = u_xlat42;
  u_xlat42 = clamp(x_743, 0.0f, 1.0f);
  let x_746 : vec4<f32> = x_29.x_MainLightPosition;
  let x_748 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_746.x, x_746.y, x_746.z), vec3<f32>(x_748.x, x_748.y, x_748.z));
  let x_751 : f32 = u_xlat1;
  u_xlat1 = clamp(x_751, 0.0f, 1.0f);
  let x_753 : f32 = u_xlat42;
  let x_754 : f32 = u_xlat42;
  u_xlat42 = (x_753 * x_754);
  let x_756 : f32 = u_xlat42;
  let x_758 : f32 = u_xlat8.x;
  u_xlat42 = ((x_756 * x_758) + 1.00001001358032226562f);
  let x_762 : f32 = u_xlat1;
  let x_763 : f32 = u_xlat1;
  u_xlat1 = (x_762 * x_763);
  let x_765 : f32 = u_xlat42;
  let x_766 : f32 = u_xlat42;
  u_xlat42 = (x_765 * x_766);
  let x_768 : f32 = u_xlat1;
  u_xlat1 = max(x_768, 0.10000000149011611938f);
  let x_771 : f32 = u_xlat42;
  let x_772 : f32 = u_xlat1;
  u_xlat42 = (x_771 * x_772);
  let x_775 : f32 = u_xlat4.x;
  let x_776 : f32 = u_xlat42;
  u_xlat42 = (x_775 * x_776);
  let x_779 : f32 = u_xlat5.x;
  let x_780 : f32 = u_xlat42;
  u_xlat42 = (x_779 / x_780);
  let x_782 : vec4<f32> = u_xlat0;
  let x_784 : f32 = u_xlat42;
  let x_787 : vec3<f32> = u_xlat18;
  let x_788 : vec3<f32> = ((vec3<f32>(x_782.x, x_782.y, x_782.z) * vec3<f32>(x_784, x_784, x_784)) + x_787);
  let x_789 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_792 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_794 : f32 = x_211.unity_LightData.y;
  u_xlat42 = min(x_792, x_794);
  let x_798 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_798));
  let x_801 : f32 = u_xlat33;
  let x_804 : f32 = x_376.x_AdditionalShadowFadeParams.x;
  let x_807 : f32 = x_376.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_801 * x_804) + x_807);
  let x_809 : f32 = u_xlat1;
  u_xlat1 = clamp(x_809, 0.0f, 1.0f);
  let x_813 : f32 = x_439.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_815 : f32 = x_439.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_817 : f32 = x_439.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_819 : f32 = x_439.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_820 : vec4<f32> = vec4<f32>(x_813, x_815, x_817, x_819);
  let x_826 : vec4<bool> = (vec4<f32>(x_820.x, x_820.y, x_820.z, x_820.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb19 = vec2<bool>(x_826.x, x_826.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_838 : u32 = u_xlatu_loop_1;
    let x_839 : u32 = u_xlatu42;
    if ((x_838 < x_839)) {
    } else {
      break;
    }
    let x_842 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_842 >> 2u);
    let x_846 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_846 & 3u));
    let x_849 : u32 = u_xlatu47;
    let x_852 : vec4<f32> = x_211.unity_LightIndices[bitcast<i32>(x_849)];
    let x_862 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_867 : vec4<u32> = indexable[x_862];
    u_xlat47 = dot(x_852, bitcast<vec4<f32>>(x_867));
    let x_871 : f32 = u_xlat47;
    u_xlati47 = i32(x_871);
    let x_874 : vec3<f32> = vs_TEXCOORD7;
    let x_885 : i32 = u_xlati47;
    let x_887 : vec4<f32> = x_884.x_AdditionalLightsPosition[x_885];
    let x_890 : i32 = u_xlati47;
    let x_892 : vec4<f32> = x_884.x_AdditionalLightsPosition[x_890];
    u_xlat9 = ((-(x_874) * vec3<f32>(x_887.w, x_887.w, x_887.w)) + vec3<f32>(x_892.x, x_892.y, x_892.z));
    let x_895 : vec3<f32> = u_xlat9;
    let x_896 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_895, x_896);
    let x_898 : f32 = u_xlat48;
    u_xlat48 = max(x_898, 0.00006103515625f);
    let x_902 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_902);
    let x_905 : f32 = u_xlat49;
    let x_907 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_905, x_905, x_905) * x_907);
    let x_910 : f32 = u_xlat48;
    u_xlat51 = (1.0f / x_910);
    let x_912 : f32 = u_xlat48;
    let x_913 : i32 = u_xlati47;
    let x_915 : f32 = x_884.x_AdditionalLightsAttenuation[x_913].x;
    u_xlat48 = (x_912 * x_915);
    let x_917 : f32 = u_xlat48;
    let x_919 : f32 = u_xlat48;
    u_xlat48 = ((-(x_917) * x_919) + 1.0f);
    let x_922 : f32 = u_xlat48;
    u_xlat48 = max(x_922, 0.0f);
    let x_924 : f32 = u_xlat48;
    let x_925 : f32 = u_xlat48;
    u_xlat48 = (x_924 * x_925);
    let x_927 : f32 = u_xlat48;
    let x_928 : f32 = u_xlat51;
    u_xlat48 = (x_927 * x_928);
    let x_930 : i32 = u_xlati47;
    let x_932 : vec4<f32> = x_884.x_AdditionalLightsSpotDir[x_930];
    let x_934 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_932.x, x_932.y, x_932.z), x_934);
    let x_936 : f32 = u_xlat51;
    let x_937 : i32 = u_xlati47;
    let x_939 : f32 = x_884.x_AdditionalLightsAttenuation[x_937].z;
    let x_941 : i32 = u_xlati47;
    let x_943 : f32 = x_884.x_AdditionalLightsAttenuation[x_941].w;
    u_xlat51 = ((x_936 * x_939) + x_943);
    let x_945 : f32 = u_xlat51;
    u_xlat51 = clamp(x_945, 0.0f, 1.0f);
    let x_947 : f32 = u_xlat51;
    let x_948 : f32 = u_xlat51;
    u_xlat51 = (x_947 * x_948);
    let x_950 : f32 = u_xlat48;
    let x_951 : f32 = u_xlat51;
    u_xlat48 = (x_950 * x_951);
    let x_955 : i32 = u_xlati47;
    let x_957 : f32 = x_376.x_AdditionalShadowParams[x_955].w;
    u_xlati51 = i32(x_957);
    let x_960 : i32 = u_xlati51;
    u_xlatb52 = (x_960 >= 0i);
    let x_962 : bool = u_xlatb52;
    if (x_962) {
      let x_966 : i32 = u_xlati47;
      let x_968 : f32 = x_376.x_AdditionalShadowParams[x_966].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_968, x_968, x_968, x_968))));
      let x_972 : bool = u_xlatb52;
      if (x_972) {
        let x_977 : vec3<f32> = u_xlat10;
        let x_980 : vec3<f32> = u_xlat10;
        let x_983 : vec4<bool> = (abs(vec4<f32>(x_977.z, x_977.z, x_977.y, x_977.z)) >= abs(vec4<f32>(x_980.x, x_980.y, x_980.x, x_980.x)));
        let x_985 : vec3<bool> = vec3<bool>(x_983.x, x_983.y, x_983.z);
        let x_986 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_985.x, x_985.y, x_985.z, x_986.w);
        let x_989 : bool = u_xlatb11.y;
        let x_991 : bool = u_xlatb11.x;
        u_xlatb52 = (x_989 & x_991);
        let x_993 : vec3<f32> = u_xlat10;
        let x_996 : vec4<bool> = (-(vec4<f32>(x_993.z, x_993.y, x_993.z, x_993.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_997 : vec3<bool> = vec3<bool>(x_996.x, x_996.y, x_996.w);
        let x_998 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_997.x, x_997.y, x_998.z, x_997.z);
        let x_1002 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1002);
        let x_1007 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1007);
        let x_1013 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1013);
        let x_1017 : bool = u_xlatb11.z;
        if (x_1017) {
          let x_1022 : f32 = u_xlat11.y;
          x_1018 = x_1022;
        } else {
          let x_1024 : f32 = u_xlat53;
          x_1018 = x_1024;
        }
        let x_1025 : f32 = x_1018;
        u_xlat25.x = x_1025;
        let x_1028 : bool = u_xlatb52;
        if (x_1028) {
          let x_1033 : f32 = u_xlat11.x;
          x_1029 = x_1033;
        } else {
          let x_1036 : f32 = u_xlat25.x;
          x_1029 = x_1036;
        }
        let x_1037 : f32 = x_1029;
        u_xlat52 = x_1037;
        let x_1038 : i32 = u_xlati47;
        let x_1040 : f32 = x_376.x_AdditionalShadowParams[x_1038].w;
        u_xlat11.x = trunc(x_1040);
        let x_1043 : f32 = u_xlat52;
        let x_1045 : f32 = u_xlat11.x;
        u_xlat52 = (x_1043 + x_1045);
        let x_1047 : f32 = u_xlat52;
        u_xlati51 = i32(x_1047);
      }
      let x_1049 : i32 = u_xlati51;
      u_xlati51 = (x_1049 << bitcast<u32>(2i));
      let x_1051 : vec3<f32> = vs_TEXCOORD7;
      let x_1054 : i32 = u_xlati51;
      let x_1057 : i32 = u_xlati51;
      let x_1061 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[((x_1054 + 1i) / 4i)][((x_1057 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1051.y, x_1051.y, x_1051.y, x_1051.y) * x_1061);
      let x_1063 : i32 = u_xlati51;
      let x_1065 : i32 = u_xlati51;
      let x_1068 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[(x_1063 / 4i)][(x_1065 % 4i)];
      let x_1069 : vec3<f32> = vs_TEXCOORD7;
      let x_1072 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1068 * vec4<f32>(x_1069.x, x_1069.x, x_1069.x, x_1069.x)) + x_1072);
      let x_1074 : i32 = u_xlati51;
      let x_1077 : i32 = u_xlati51;
      let x_1081 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[((x_1074 + 2i) / 4i)][((x_1077 + 2i) % 4i)];
      let x_1082 : vec3<f32> = vs_TEXCOORD7;
      let x_1085 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1081 * vec4<f32>(x_1082.z, x_1082.z, x_1082.z, x_1082.z)) + x_1085);
      let x_1087 : vec4<f32> = u_xlat11;
      let x_1088 : i32 = u_xlati51;
      let x_1091 : i32 = u_xlati51;
      let x_1095 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[((x_1088 + 3i) / 4i)][((x_1091 + 3i) % 4i)];
      u_xlat11 = (x_1087 + x_1095);
      let x_1097 : vec4<f32> = u_xlat11;
      let x_1099 : vec4<f32> = u_xlat11;
      let x_1101 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) / vec3<f32>(x_1099.w, x_1099.w, x_1099.w));
      let x_1102 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
      let x_1105 : vec4<f32> = u_xlat11;
      let x_1106 : vec2<f32> = vec2<f32>(x_1105.x, x_1105.y);
      let x_1108 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1106.x, x_1106.y, x_1108);
      let x_1116 : vec3<f32> = txVec1;
      let x_1118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1116.xy, x_1116.z);
      u_xlat51 = x_1118;
      let x_1119 : i32 = u_xlati47;
      let x_1121 : f32 = x_376.x_AdditionalShadowParams[x_1119].x;
      u_xlat52 = (1.0f + -(x_1121));
      let x_1124 : f32 = u_xlat51;
      let x_1125 : i32 = u_xlati47;
      let x_1127 : f32 = x_376.x_AdditionalShadowParams[x_1125].x;
      let x_1129 : f32 = u_xlat52;
      u_xlat51 = ((x_1124 * x_1127) + x_1129);
      let x_1132 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1132);
      let x_1135 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1135 >= 1.0f);
      let x_1138 : bool = u_xlatb52;
      let x_1140 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1138 | x_1140);
      let x_1142 : bool = u_xlatb52;
      let x_1143 : f32 = u_xlat51;
      u_xlat51 = select(x_1143, 1.0f, x_1142);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1146 : f32 = u_xlat51;
    u_xlat52 = (-(x_1146) + 1.0f);
    let x_1149 : f32 = u_xlat1;
    let x_1150 : f32 = u_xlat52;
    let x_1152 : f32 = u_xlat51;
    u_xlat51 = ((x_1149 * x_1150) + x_1152);
    let x_1155 : i32 = u_xlati47;
    u_xlati52 = (1i << bitcast<u32>((x_1155 & 31i)));
    let x_1159 : i32 = u_xlati52;
    let x_1162 : f32 = x_439.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1159) & bitcast<u32>(x_1162)));
    let x_1166 : i32 = u_xlati52;
    if ((x_1166 != 0i)) {
      let x_1170 : i32 = u_xlati47;
      let x_1172 : f32 = x_439.x_AdditionalLightsLightTypes[x_1170].el;
      u_xlati52 = i32(x_1172);
      let x_1175 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1175 != 0i));
      let x_1179 : i32 = u_xlati47;
      u_xlati25 = (x_1179 << bitcast<u32>(2i));
      let x_1181 : i32 = u_xlati11;
      if ((x_1181 != 0i)) {
        let x_1185 : vec3<f32> = vs_TEXCOORD7;
        let x_1187 : i32 = u_xlati25;
        let x_1190 : i32 = u_xlati25;
        let x_1194 : vec4<f32> = x_439.x_AdditionalLightsWorldToLights[((x_1187 + 1i) / 4i)][((x_1190 + 1i) % 4i)];
        let x_1196 : vec3<f32> = (vec3<f32>(x_1185.y, x_1185.y, x_1185.y) * vec3<f32>(x_1194.x, x_1194.y, x_1194.w));
        let x_1197 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1196.x, x_1197.y, x_1196.y, x_1196.z);
        let x_1199 : i32 = u_xlati25;
        let x_1201 : i32 = u_xlati25;
        let x_1204 : vec4<f32> = x_439.x_AdditionalLightsWorldToLights[(x_1199 / 4i)][(x_1201 % 4i)];
        let x_1206 : vec3<f32> = vs_TEXCOORD7;
        let x_1209 : vec4<f32> = u_xlat11;
        let x_1211 : vec3<f32> = ((vec3<f32>(x_1204.x, x_1204.y, x_1204.w) * vec3<f32>(x_1206.x, x_1206.x, x_1206.x)) + vec3<f32>(x_1209.x, x_1209.z, x_1209.w));
        let x_1212 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1211.x, x_1212.y, x_1211.y, x_1211.z);
        let x_1214 : i32 = u_xlati25;
        let x_1217 : i32 = u_xlati25;
        let x_1221 : vec4<f32> = x_439.x_AdditionalLightsWorldToLights[((x_1214 + 2i) / 4i)][((x_1217 + 2i) % 4i)];
        let x_1223 : vec3<f32> = vs_TEXCOORD7;
        let x_1226 : vec4<f32> = u_xlat11;
        let x_1228 : vec3<f32> = ((vec3<f32>(x_1221.x, x_1221.y, x_1221.w) * vec3<f32>(x_1223.z, x_1223.z, x_1223.z)) + vec3<f32>(x_1226.x, x_1226.z, x_1226.w));
        let x_1229 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1228.x, x_1229.y, x_1228.y, x_1228.z);
        let x_1231 : vec4<f32> = u_xlat11;
        let x_1233 : i32 = u_xlati25;
        let x_1236 : i32 = u_xlati25;
        let x_1240 : vec4<f32> = x_439.x_AdditionalLightsWorldToLights[((x_1233 + 3i) / 4i)][((x_1236 + 3i) % 4i)];
        let x_1242 : vec3<f32> = (vec3<f32>(x_1231.x, x_1231.z, x_1231.w) + vec3<f32>(x_1240.x, x_1240.y, x_1240.w));
        let x_1243 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1242.x, x_1243.y, x_1242.y, x_1242.z);
        let x_1245 : vec4<f32> = u_xlat11;
        let x_1247 : vec4<f32> = u_xlat11;
        let x_1249 : vec2<f32> = (vec2<f32>(x_1245.x, x_1245.z) / vec2<f32>(x_1247.w, x_1247.w));
        let x_1250 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1249.x, x_1250.y, x_1249.y, x_1250.w);
        let x_1252 : vec4<f32> = u_xlat11;
        let x_1255 : vec2<f32> = ((vec2<f32>(x_1252.x, x_1252.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1256 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1255.x, x_1256.y, x_1255.y, x_1256.w);
        let x_1258 : vec4<f32> = u_xlat11;
        let x_1262 : vec2<f32> = clamp(vec2<f32>(x_1258.x, x_1258.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1263 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1262.x, x_1263.y, x_1262.y, x_1263.w);
        let x_1265 : i32 = u_xlati47;
        let x_1267 : vec4<f32> = x_439.x_AdditionalLightsCookieAtlasUVRects[x_1265];
        let x_1269 : vec4<f32> = u_xlat11;
        let x_1272 : i32 = u_xlati47;
        let x_1274 : vec4<f32> = x_439.x_AdditionalLightsCookieAtlasUVRects[x_1272];
        let x_1276 : vec2<f32> = ((vec2<f32>(x_1267.x, x_1267.y) * vec2<f32>(x_1269.x, x_1269.z)) + vec2<f32>(x_1274.z, x_1274.w));
        let x_1277 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1276.x, x_1277.y, x_1276.y, x_1277.w);
      } else {
        let x_1280 : i32 = u_xlati52;
        u_xlatb52 = (x_1280 == 1i);
        let x_1282 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1282);
        let x_1284 : i32 = u_xlati52;
        if ((x_1284 != 0i)) {
          let x_1289 : vec3<f32> = vs_TEXCOORD7;
          let x_1291 : i32 = u_xlati25;
          let x_1294 : i32 = u_xlati25;
          let x_1298 : vec4<f32> = x_439.x_AdditionalLightsWorldToLights[((x_1291 + 1i) / 4i)][((x_1294 + 1i) % 4i)];
          let x_1300 : vec2<f32> = (vec2<f32>(x_1289.y, x_1289.y) * vec2<f32>(x_1298.x, x_1298.y));
          let x_1301 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1300.x, x_1300.y, x_1301.z, x_1301.w);
          let x_1303 : i32 = u_xlati25;
          let x_1305 : i32 = u_xlati25;
          let x_1308 : vec4<f32> = x_439.x_AdditionalLightsWorldToLights[(x_1303 / 4i)][(x_1305 % 4i)];
          let x_1310 : vec3<f32> = vs_TEXCOORD7;
          let x_1313 : vec4<f32> = u_xlat12;
          let x_1315 : vec2<f32> = ((vec2<f32>(x_1308.x, x_1308.y) * vec2<f32>(x_1310.x, x_1310.x)) + vec2<f32>(x_1313.x, x_1313.y));
          let x_1316 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
          let x_1318 : i32 = u_xlati25;
          let x_1321 : i32 = u_xlati25;
          let x_1325 : vec4<f32> = x_439.x_AdditionalLightsWorldToLights[((x_1318 + 2i) / 4i)][((x_1321 + 2i) % 4i)];
          let x_1327 : vec3<f32> = vs_TEXCOORD7;
          let x_1330 : vec4<f32> = u_xlat12;
          let x_1332 : vec2<f32> = ((vec2<f32>(x_1325.x, x_1325.y) * vec2<f32>(x_1327.z, x_1327.z)) + vec2<f32>(x_1330.x, x_1330.y));
          let x_1333 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1332.x, x_1332.y, x_1333.z, x_1333.w);
          let x_1335 : vec4<f32> = u_xlat12;
          let x_1337 : i32 = u_xlati25;
          let x_1340 : i32 = u_xlati25;
          let x_1344 : vec4<f32> = x_439.x_AdditionalLightsWorldToLights[((x_1337 + 3i) / 4i)][((x_1340 + 3i) % 4i)];
          let x_1346 : vec2<f32> = (vec2<f32>(x_1335.x, x_1335.y) + vec2<f32>(x_1344.x, x_1344.y));
          let x_1347 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1346.x, x_1346.y, x_1347.z, x_1347.w);
          let x_1349 : vec4<f32> = u_xlat12;
          let x_1352 : vec2<f32> = ((vec2<f32>(x_1349.x, x_1349.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1353 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1352.x, x_1352.y, x_1353.z, x_1353.w);
          let x_1355 : vec4<f32> = u_xlat12;
          let x_1357 : vec2<f32> = fract(vec2<f32>(x_1355.x, x_1355.y));
          let x_1358 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1357.x, x_1357.y, x_1358.z, x_1358.w);
          let x_1360 : i32 = u_xlati47;
          let x_1362 : vec4<f32> = x_439.x_AdditionalLightsCookieAtlasUVRects[x_1360];
          let x_1364 : vec4<f32> = u_xlat12;
          let x_1367 : i32 = u_xlati47;
          let x_1369 : vec4<f32> = x_439.x_AdditionalLightsCookieAtlasUVRects[x_1367];
          let x_1371 : vec2<f32> = ((vec2<f32>(x_1362.x, x_1362.y) * vec2<f32>(x_1364.x, x_1364.y)) + vec2<f32>(x_1369.z, x_1369.w));
          let x_1372 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1371.x, x_1372.y, x_1371.y, x_1372.w);
        } else {
          let x_1375 : vec3<f32> = vs_TEXCOORD7;
          let x_1377 : i32 = u_xlati25;
          let x_1380 : i32 = u_xlati25;
          let x_1384 : vec4<f32> = x_439.x_AdditionalLightsWorldToLights[((x_1377 + 1i) / 4i)][((x_1380 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1375.y, x_1375.y, x_1375.y, x_1375.y) * x_1384);
          let x_1386 : i32 = u_xlati25;
          let x_1388 : i32 = u_xlati25;
          let x_1391 : vec4<f32> = x_439.x_AdditionalLightsWorldToLights[(x_1386 / 4i)][(x_1388 % 4i)];
          let x_1392 : vec3<f32> = vs_TEXCOORD7;
          let x_1395 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1391 * vec4<f32>(x_1392.x, x_1392.x, x_1392.x, x_1392.x)) + x_1395);
          let x_1397 : i32 = u_xlati25;
          let x_1400 : i32 = u_xlati25;
          let x_1404 : vec4<f32> = x_439.x_AdditionalLightsWorldToLights[((x_1397 + 2i) / 4i)][((x_1400 + 2i) % 4i)];
          let x_1405 : vec3<f32> = vs_TEXCOORD7;
          let x_1408 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1404 * vec4<f32>(x_1405.z, x_1405.z, x_1405.z, x_1405.z)) + x_1408);
          let x_1410 : vec4<f32> = u_xlat12;
          let x_1411 : i32 = u_xlati25;
          let x_1414 : i32 = u_xlati25;
          let x_1418 : vec4<f32> = x_439.x_AdditionalLightsWorldToLights[((x_1411 + 3i) / 4i)][((x_1414 + 3i) % 4i)];
          u_xlat12 = (x_1410 + x_1418);
          let x_1420 : vec4<f32> = u_xlat12;
          let x_1422 : vec4<f32> = u_xlat12;
          let x_1424 : vec3<f32> = (vec3<f32>(x_1420.x, x_1420.y, x_1420.z) / vec3<f32>(x_1422.w, x_1422.w, x_1422.w));
          let x_1425 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);
          let x_1427 : vec4<f32> = u_xlat12;
          let x_1429 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1427.x, x_1427.y, x_1427.z), vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
          let x_1432 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1432);
          let x_1434 : f32 = u_xlat52;
          let x_1436 : vec4<f32> = u_xlat12;
          let x_1438 : vec3<f32> = (vec3<f32>(x_1434, x_1434, x_1434) * vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
          let x_1439 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
          let x_1441 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1441.x, x_1441.y, x_1441.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1446 : f32 = u_xlat52;
          u_xlat52 = max(x_1446, 0.00000099999999747524f);
          let x_1449 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1449);
          let x_1452 : f32 = u_xlat52;
          let x_1454 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1452, x_1452, x_1452) * vec3<f32>(x_1454.z, x_1454.x, x_1454.y));
          let x_1458 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1458);
          let x_1462 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1462, 0.0f, 1.0f);
          let x_1467 : vec3<f32> = u_xlat13;
          let x_1469 : vec4<bool> = (vec4<f32>(x_1467.y, x_1467.y, x_1467.z, x_1467.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1470 : vec2<bool> = vec2<bool>(x_1469.x, x_1469.z);
          let x_1471 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1470.x, x_1471.y, x_1470.y);
          let x_1474 : bool = u_xlatb25.x;
          if (x_1474) {
            let x_1479 : f32 = u_xlat13.x;
            x_1475 = x_1479;
          } else {
            let x_1482 : f32 = u_xlat13.x;
            x_1475 = -(x_1482);
          }
          let x_1484 : f32 = x_1475;
          u_xlat25.x = x_1484;
          let x_1487 : bool = u_xlatb25.z;
          if (x_1487) {
            let x_1492 : f32 = u_xlat13.x;
            x_1488 = x_1492;
          } else {
            let x_1495 : f32 = u_xlat13.x;
            x_1488 = -(x_1495);
          }
          let x_1497 : f32 = x_1488;
          u_xlat25.z = x_1497;
          let x_1499 : vec4<f32> = u_xlat12;
          let x_1501 : f32 = u_xlat52;
          let x_1504 : vec3<f32> = u_xlat25;
          let x_1506 : vec2<f32> = ((vec2<f32>(x_1499.x, x_1499.y) * vec2<f32>(x_1501, x_1501)) + vec2<f32>(x_1504.x, x_1504.z));
          let x_1507 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1506.x, x_1507.y, x_1506.y);
          let x_1509 : vec3<f32> = u_xlat25;
          let x_1512 : vec2<f32> = ((vec2<f32>(x_1509.x, x_1509.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1513 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1512.x, x_1513.y, x_1512.y);
          let x_1515 : vec3<f32> = u_xlat25;
          let x_1519 : vec2<f32> = clamp(vec2<f32>(x_1515.x, x_1515.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1520 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1519.x, x_1520.y, x_1519.y);
          let x_1522 : i32 = u_xlati47;
          let x_1524 : vec4<f32> = x_439.x_AdditionalLightsCookieAtlasUVRects[x_1522];
          let x_1526 : vec3<f32> = u_xlat25;
          let x_1529 : i32 = u_xlati47;
          let x_1531 : vec4<f32> = x_439.x_AdditionalLightsCookieAtlasUVRects[x_1529];
          let x_1533 : vec2<f32> = ((vec2<f32>(x_1524.x, x_1524.y) * vec2<f32>(x_1526.x, x_1526.z)) + vec2<f32>(x_1531.z, x_1531.w));
          let x_1534 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1533.x, x_1534.y, x_1533.y, x_1534.w);
        }
      }
      let x_1541 : vec4<f32> = u_xlat11;
      let x_1543 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1541.x, x_1541.z), 0.0f);
      u_xlat11 = x_1543;
      let x_1545 : bool = u_xlatb19.y;
      if (x_1545) {
        let x_1550 : f32 = u_xlat11.w;
        x_1546 = x_1550;
      } else {
        let x_1553 : f32 = u_xlat11.x;
        x_1546 = x_1553;
      }
      let x_1554 : f32 = x_1546;
      u_xlat52 = x_1554;
      let x_1556 : bool = u_xlatb19.x;
      if (x_1556) {
        let x_1560 : vec4<f32> = u_xlat11;
        x_1557 = vec3<f32>(x_1560.x, x_1560.y, x_1560.z);
      } else {
        let x_1563 : f32 = u_xlat52;
        x_1557 = vec3<f32>(x_1563, x_1563, x_1563);
      }
      let x_1565 : vec3<f32> = x_1557;
      let x_1566 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1565.x, x_1565.y, x_1565.z, x_1566.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1572 : vec4<f32> = u_xlat11;
    let x_1574 : i32 = u_xlati47;
    let x_1576 : vec4<f32> = x_884.x_AdditionalLightsColor[x_1574];
    let x_1578 : vec3<f32> = (vec3<f32>(x_1572.x, x_1572.y, x_1572.z) * vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
    let x_1579 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1578.x, x_1578.y, x_1578.z, x_1579.w);
    let x_1581 : f32 = u_xlat48;
    let x_1582 : f32 = u_xlat51;
    u_xlat47 = (x_1581 * x_1582);
    let x_1584 : vec4<f32> = u_xlat2;
    let x_1586 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1584.x, x_1584.y, x_1584.z), x_1586);
    let x_1588 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1588, 0.0f, 1.0f);
    let x_1590 : f32 = u_xlat47;
    let x_1591 : f32 = u_xlat48;
    u_xlat47 = (x_1590 * x_1591);
    let x_1593 : f32 = u_xlat47;
    let x_1595 : vec4<f32> = u_xlat11;
    let x_1597 : vec3<f32> = (vec3<f32>(x_1593, x_1593, x_1593) * vec3<f32>(x_1595.x, x_1595.y, x_1595.z));
    let x_1598 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1597.x, x_1597.y, x_1597.z, x_1598.w);
    let x_1600 : vec3<f32> = u_xlat9;
    let x_1601 : f32 = u_xlat49;
    let x_1604 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1600 * vec3<f32>(x_1601, x_1601, x_1601)) + x_1604);
    let x_1606 : vec3<f32> = u_xlat9;
    let x_1607 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1606, x_1607);
    let x_1609 : f32 = u_xlat47;
    u_xlat47 = max(x_1609, 1.17549435e-38f);
    let x_1611 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1611);
    let x_1613 : f32 = u_xlat47;
    let x_1615 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1613, x_1613, x_1613) * x_1615);
    let x_1617 : vec4<f32> = u_xlat2;
    let x_1619 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1617.x, x_1617.y, x_1617.z), x_1619);
    let x_1621 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1621, 0.0f, 1.0f);
    let x_1623 : vec3<f32> = u_xlat10;
    let x_1624 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1623, x_1624);
    let x_1626 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1626, 0.0f, 1.0f);
    let x_1628 : f32 = u_xlat47;
    let x_1629 : f32 = u_xlat47;
    u_xlat47 = (x_1628 * x_1629);
    let x_1631 : f32 = u_xlat47;
    let x_1633 : f32 = u_xlat8.x;
    u_xlat47 = ((x_1631 * x_1633) + 1.00001001358032226562f);
    let x_1636 : f32 = u_xlat48;
    let x_1637 : f32 = u_xlat48;
    u_xlat48 = (x_1636 * x_1637);
    let x_1639 : f32 = u_xlat47;
    let x_1640 : f32 = u_xlat47;
    u_xlat47 = (x_1639 * x_1640);
    let x_1642 : f32 = u_xlat48;
    u_xlat48 = max(x_1642, 0.10000000149011611938f);
    let x_1644 : f32 = u_xlat47;
    let x_1645 : f32 = u_xlat48;
    u_xlat47 = (x_1644 * x_1645);
    let x_1648 : f32 = u_xlat4.x;
    let x_1649 : f32 = u_xlat47;
    u_xlat47 = (x_1648 * x_1649);
    let x_1652 : f32 = u_xlat5.x;
    let x_1653 : f32 = u_xlat47;
    u_xlat47 = (x_1652 / x_1653);
    let x_1655 : vec4<f32> = u_xlat0;
    let x_1657 : f32 = u_xlat47;
    let x_1660 : vec3<f32> = u_xlat18;
    u_xlat9 = ((vec3<f32>(x_1655.x, x_1655.y, x_1655.z) * vec3<f32>(x_1657, x_1657, x_1657)) + x_1660);
    let x_1662 : vec3<f32> = u_xlat9;
    let x_1663 : vec4<f32> = u_xlat11;
    let x_1666 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1662 * vec3<f32>(x_1663.x, x_1663.y, x_1663.z)) + x_1666);

    continuing {
      let x_1668 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1668 + bitcast<u32>(1i));
    }
  }
  let x_1670 : vec4<f32> = u_xlat7;
  let x_1672 : vec4<f32> = u_xlat6;
  let x_1675 : vec3<f32> = u_xlat17;
  let x_1676 : vec3<f32> = ((vec3<f32>(x_1670.x, x_1670.y, x_1670.z) * vec3<f32>(x_1672.x, x_1672.y, x_1672.z)) + x_1675);
  let x_1677 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
  let x_1679 : vec3<f32> = u_xlat22;
  let x_1680 : vec4<f32> = u_xlat0;
  let x_1682 : vec3<f32> = (x_1679 + vec3<f32>(x_1680.x, x_1680.y, x_1680.z));
  let x_1683 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1682.x, x_1682.y, x_1682.z, x_1683.w);
  let x_1686 : f32 = u_xlat3.x;
  let x_1688 : f32 = u_xlat3.x;
  u_xlat42 = (x_1686 * -(x_1688));
  let x_1691 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1691);
  let x_1693 : vec4<f32> = u_xlat0;
  let x_1696 : vec4<f32> = x_29.unity_FogColor;
  let x_1699 : vec3<f32> = (vec3<f32>(x_1693.x, x_1693.y, x_1693.z) + -(vec3<f32>(x_1696.x, x_1696.y, x_1696.z)));
  let x_1700 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1699.x, x_1699.y, x_1699.z, x_1700.w);
  let x_1704 : f32 = u_xlat42;
  let x_1706 : vec4<f32> = u_xlat0;
  let x_1710 : vec4<f32> = x_29.unity_FogColor;
  let x_1712 : vec3<f32> = ((vec3<f32>(x_1704, x_1704, x_1704) * vec3<f32>(x_1706.x, x_1706.y, x_1706.z)) + vec3<f32>(x_1710.x, x_1710.y, x_1710.z));
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
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


