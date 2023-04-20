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
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicTex : sampler;

var<private> u_xlatb13 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_211 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat29 : f32;

@group(1) @binding(3) var<uniform> x_377 : LightShadows;

var<private> u_xlatb29 : bool;

var<private> u_xlatb41 : bool;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati42 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_744 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb22 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatb42 : bool;

fn main_1() {
  var x_130 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_404 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_891 : f32;
  var x_902 : f32;
  var txVec1 : vec3<f32>;
  var x_1019 : f32;
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
  u_xlatb13 = (x_83 == 0.0f);
  let x_88 : vec3<f32> = vs_TEXCOORD7;
  let x_93 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_94 : vec3<f32> = (-(x_88) + x_93);
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_103);
  let x_105 : f32 = u_xlat25;
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
  let x_128 : bool = u_xlatb13;
  if (x_128) {
    let x_133 : vec4<f32> = u_xlat2;
    x_130 = vec3<f32>(x_133.x, x_133.y, x_133.z);
  } else {
    let x_136 : vec3<f32> = u_xlat3;
    x_130 = x_136;
  }
  let x_137 : vec3<f32> = x_130;
  u_xlat13 = x_137;
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
  u_xlat38 = (x_258 * x_260);
  let x_263 : f32 = u_xlat2.x;
  let x_265 : f32 = u_xlat2.x;
  let x_267 : f32 = u_xlat38;
  u_xlat38 = ((x_263 * x_265) + -(x_267));
  let x_273 : vec4<f32> = x_211.unity_SHC;
  let x_275 : f32 = u_xlat38;
  let x_278 : vec4<f32> = u_xlat6;
  u_xlat15 = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275, x_275, x_275)) + vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec3<f32> = u_xlat15;
  let x_282 : vec3<f32> = u_xlat4;
  u_xlat15 = (x_281 + x_282);
  let x_284 : vec3<f32> = u_xlat15;
  u_xlat15 = max(x_284, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_287 : f32 = u_xlat1;
  u_xlat38 = ((-(x_287) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_292 : f32 = u_xlat38;
  u_xlat4.x = (-(x_292) + 1.0f);
  let x_297 : vec4<f32> = u_xlat0;
  let x_299 : f32 = u_xlat38;
  u_xlat16 = (vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299, x_299, x_299));
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
  u_xlat38 = (x_323 * x_324);
  let x_326 : f32 = u_xlat38;
  u_xlat38 = max(x_326, 0.0078125f);
  let x_329 : f32 = u_xlat38;
  let x_330 : f32 = u_xlat38;
  u_xlat5.x = (x_329 * x_330);
  let x_335 : f32 = u_xlat0.w;
  let x_337 : f32 = u_xlat4.x;
  u_xlat36 = (x_335 + x_337);
  let x_339 : f32 = u_xlat36;
  u_xlat36 = clamp(x_339, 0.0f, 1.0f);
  let x_341 : f32 = u_xlat38;
  u_xlat4.x = ((x_341 * 4.0f) + 2.0f);
  let x_349 : vec4<f32> = vs_TEXCOORD8;
  let x_350 : vec2<f32> = vec2<f32>(x_349.x, x_349.y);
  let x_352 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_350.x, x_350.y, x_352);
  let x_365 : vec3<f32> = txVec0;
  let x_367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_365.xy, x_365.z);
  u_xlat17.x = x_367;
  let x_380 : f32 = x_377.x_MainLightShadowParams.x;
  u_xlat29 = (-(x_380) + 1.0f);
  let x_384 : f32 = u_xlat17.x;
  let x_386 : f32 = x_377.x_MainLightShadowParams.x;
  let x_388 : f32 = u_xlat29;
  u_xlat17.x = ((x_384 * x_386) + x_388);
  let x_393 : f32 = vs_TEXCOORD8.z;
  u_xlatb29 = (0.0f >= x_393);
  let x_397 : f32 = vs_TEXCOORD8.z;
  u_xlatb41 = (x_397 >= 1.0f);
  let x_399 : bool = u_xlatb41;
  let x_400 : bool = u_xlatb29;
  u_xlatb29 = (x_399 | x_400);
  let x_402 : bool = u_xlatb29;
  if (x_402) {
    x_404 = 1.0f;
  } else {
    let x_409 : f32 = u_xlat17.x;
    x_404 = x_409;
  }
  let x_410 : f32 = x_404;
  u_xlat17.x = x_410;
  let x_412 : vec3<f32> = vs_TEXCOORD7;
  let x_414 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_416 : vec3<f32> = (x_412 + -(x_414));
  let x_417 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat6;
  let x_421 : vec4<f32> = u_xlat6;
  u_xlat29 = dot(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_425 : f32 = u_xlat29;
  let x_427 : f32 = x_377.x_MainLightShadowParams.z;
  let x_430 : f32 = x_377.x_MainLightShadowParams.w;
  u_xlat41 = ((x_425 * x_427) + x_430);
  let x_432 : f32 = u_xlat41;
  u_xlat41 = clamp(x_432, 0.0f, 1.0f);
  let x_435 : f32 = u_xlat17.x;
  u_xlat6.x = (-(x_435) + 1.0f);
  let x_439 : f32 = u_xlat41;
  let x_441 : f32 = u_xlat6.x;
  let x_444 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_439 * x_441) + x_444);
  let x_447 : vec3<f32> = u_xlat13;
  let x_449 : vec4<f32> = u_xlat2;
  u_xlat41 = dot(-(x_447), vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : f32 = u_xlat41;
  let x_453 : f32 = u_xlat41;
  u_xlat41 = (x_452 + x_453);
  let x_455 : vec4<f32> = u_xlat2;
  let x_457 : f32 = u_xlat41;
  let x_461 : vec3<f32> = u_xlat13;
  let x_463 : vec3<f32> = ((vec3<f32>(x_455.x, x_455.y, x_455.z) * -(vec3<f32>(x_457, x_457, x_457))) + -(x_461));
  let x_464 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat2;
  let x_468 : vec3<f32> = u_xlat13;
  u_xlat41 = dot(vec3<f32>(x_466.x, x_466.y, x_466.z), x_468);
  let x_470 : f32 = u_xlat41;
  u_xlat41 = clamp(x_470, 0.0f, 1.0f);
  let x_472 : f32 = u_xlat41;
  u_xlat41 = (-(x_472) + 1.0f);
  let x_475 : f32 = u_xlat41;
  let x_476 : f32 = u_xlat41;
  u_xlat41 = (x_475 * x_476);
  let x_478 : f32 = u_xlat41;
  let x_479 : f32 = u_xlat41;
  u_xlat41 = (x_478 * x_479);
  let x_482 : f32 = u_xlat1;
  u_xlat42 = ((-(x_482) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_488 : f32 = u_xlat1;
  let x_489 : f32 = u_xlat42;
  u_xlat1 = (x_488 * x_489);
  let x_491 : f32 = u_xlat1;
  u_xlat1 = (x_491 * 6.0f);
  let x_502 : vec4<f32> = u_xlat6;
  let x_504 : f32 = u_xlat1;
  let x_505 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_502.x, x_502.y, x_502.z), x_504);
  u_xlat6 = x_505;
  let x_507 : f32 = u_xlat6.w;
  u_xlat1 = (x_507 + -1.0f);
  let x_511 : f32 = x_211.unity_SpecCube0_HDR.w;
  let x_512 : f32 = u_xlat1;
  u_xlat1 = ((x_511 * x_512) + 1.0f);
  let x_515 : f32 = u_xlat1;
  u_xlat1 = max(x_515, 0.0f);
  let x_517 : f32 = u_xlat1;
  u_xlat1 = log2(x_517);
  let x_519 : f32 = u_xlat1;
  let x_521 : f32 = x_211.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_519 * x_521);
  let x_523 : f32 = u_xlat1;
  u_xlat1 = exp2(x_523);
  let x_525 : f32 = u_xlat1;
  let x_527 : f32 = x_211.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_525 * x_527);
  let x_529 : vec4<f32> = u_xlat6;
  let x_531 : f32 = u_xlat1;
  let x_533 : vec3<f32> = (vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(x_531, x_531, x_531));
  let x_534 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_538 : f32 = u_xlat38;
  let x_540 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_538, x_538) * vec2<f32>(x_540, x_540)) + vec2<f32>(-1.0f, 1.0f));
  let x_546 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_546);
  let x_549 : vec4<f32> = u_xlat0;
  let x_552 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_549.x, x_549.y, x_549.z)) + vec3<f32>(x_552, x_552, x_552));
  let x_555 : f32 = u_xlat41;
  let x_557 : vec3<f32> = u_xlat19;
  let x_559 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_555, x_555, x_555) * x_557) + vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : f32 = u_xlat1;
  let x_564 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_562, x_562, x_562) * x_564);
  let x_566 : vec4<f32> = u_xlat6;
  let x_568 : vec3<f32> = u_xlat19;
  let x_569 : vec3<f32> = (vec3<f32>(x_566.x, x_566.y, x_566.z) * x_568);
  let x_570 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_572 : vec3<f32> = u_xlat15;
  let x_573 : vec3<f32> = u_xlat16;
  let x_575 : vec4<f32> = u_xlat6;
  u_xlat15 = ((x_572 * x_573) + vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_579 : f32 = u_xlat17.x;
  let x_581 : f32 = x_211.unity_LightData.z;
  u_xlat36 = (x_579 * x_581);
  let x_583 : vec4<f32> = u_xlat2;
  let x_586 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_583.x, x_583.y, x_583.z), vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : f32 = u_xlat1;
  u_xlat1 = clamp(x_589, 0.0f, 1.0f);
  let x_591 : f32 = u_xlat36;
  let x_592 : f32 = u_xlat1;
  u_xlat36 = (x_591 * x_592);
  let x_594 : f32 = u_xlat36;
  let x_597 : vec4<f32> = x_29.x_MainLightColor;
  let x_599 : vec3<f32> = (vec3<f32>(x_594, x_594, x_594) * vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec3<f32> = u_xlat13;
  let x_604 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat19 = (x_602 + vec3<f32>(x_604.x, x_604.y, x_604.z));
  let x_607 : vec3<f32> = u_xlat19;
  let x_608 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_607, x_608);
  let x_610 : f32 = u_xlat36;
  u_xlat36 = max(x_610, 1.17549435e-38f);
  let x_613 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_613);
  let x_615 : f32 = u_xlat36;
  let x_617 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_615, x_615, x_615) * x_617);
  let x_619 : vec4<f32> = u_xlat2;
  let x_621 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(vec3<f32>(x_619.x, x_619.y, x_619.z), x_621);
  let x_623 : f32 = u_xlat36;
  u_xlat36 = clamp(x_623, 0.0f, 1.0f);
  let x_626 : vec4<f32> = x_29.x_MainLightPosition;
  let x_628 : vec3<f32> = u_xlat19;
  u_xlat1 = dot(vec3<f32>(x_626.x, x_626.y, x_626.z), x_628);
  let x_630 : f32 = u_xlat1;
  u_xlat1 = clamp(x_630, 0.0f, 1.0f);
  let x_632 : f32 = u_xlat36;
  let x_633 : f32 = u_xlat36;
  u_xlat36 = (x_632 * x_633);
  let x_635 : f32 = u_xlat36;
  let x_637 : f32 = u_xlat7.x;
  u_xlat36 = ((x_635 * x_637) + 1.00001001358032226562f);
  let x_641 : f32 = u_xlat1;
  let x_642 : f32 = u_xlat1;
  u_xlat1 = (x_641 * x_642);
  let x_644 : f32 = u_xlat36;
  let x_645 : f32 = u_xlat36;
  u_xlat36 = (x_644 * x_645);
  let x_647 : f32 = u_xlat1;
  u_xlat1 = max(x_647, 0.10000000149011611938f);
  let x_650 : f32 = u_xlat36;
  let x_651 : f32 = u_xlat1;
  u_xlat36 = (x_650 * x_651);
  let x_654 : f32 = u_xlat4.x;
  let x_655 : f32 = u_xlat36;
  u_xlat36 = (x_654 * x_655);
  let x_658 : f32 = u_xlat5.x;
  let x_659 : f32 = u_xlat36;
  u_xlat36 = (x_658 / x_659);
  let x_661 : vec4<f32> = u_xlat0;
  let x_663 : f32 = u_xlat36;
  let x_666 : vec3<f32> = u_xlat16;
  u_xlat19 = ((vec3<f32>(x_661.x, x_661.y, x_661.z) * vec3<f32>(x_663, x_663, x_663)) + x_666);
  let x_669 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_671 : f32 = x_211.unity_LightData.y;
  u_xlat36 = min(x_669, x_671);
  let x_675 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_675));
  let x_678 : f32 = u_xlat29;
  let x_681 : f32 = x_377.x_AdditionalShadowFadeParams.x;
  let x_684 : f32 = x_377.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_678 * x_681) + x_684);
  let x_686 : f32 = u_xlat1;
  u_xlat1 = clamp(x_686, 0.0f, 1.0f);
  u_xlat17.x = 0.0f;
  u_xlat17.y = 0.0f;
  u_xlat17.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_698 : u32 = u_xlatu_loop_1;
    let x_699 : u32 = u_xlatu36;
    if ((x_698 < x_699)) {
    } else {
      break;
    }
    let x_702 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_702 >> 2u);
    let x_706 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_706 & 3u));
    let x_709 : u32 = u_xlatu42;
    let x_712 : vec4<f32> = x_211.unity_LightIndices[bitcast<i32>(x_709)];
    let x_722 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_727 : vec4<u32> = indexable[x_722];
    u_xlat42 = dot(x_712, bitcast<vec4<f32>>(x_727));
    let x_731 : f32 = u_xlat42;
    u_xlati42 = i32(x_731);
    let x_734 : vec3<f32> = vs_TEXCOORD7;
    let x_745 : i32 = u_xlati42;
    let x_747 : vec4<f32> = x_744.x_AdditionalLightsPosition[x_745];
    let x_750 : i32 = u_xlati42;
    let x_752 : vec4<f32> = x_744.x_AdditionalLightsPosition[x_750];
    u_xlat8 = ((-(x_734) * vec3<f32>(x_747.w, x_747.w, x_747.w)) + vec3<f32>(x_752.x, x_752.y, x_752.z));
    let x_756 : vec3<f32> = u_xlat8;
    let x_757 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_756, x_757);
    let x_759 : f32 = u_xlat44;
    u_xlat44 = max(x_759, 0.00006103515625f);
    let x_763 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_763);
    let x_766 : vec3<f32> = u_xlat8;
    let x_767 : f32 = u_xlat9;
    u_xlat21 = (x_766 * vec3<f32>(x_767, x_767, x_767));
    let x_771 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_771);
    let x_774 : f32 = u_xlat44;
    let x_775 : i32 = u_xlati42;
    let x_777 : f32 = x_744.x_AdditionalLightsAttenuation[x_775].x;
    u_xlat44 = (x_774 * x_777);
    let x_779 : f32 = u_xlat44;
    let x_781 : f32 = u_xlat44;
    u_xlat44 = ((-(x_779) * x_781) + 1.0f);
    let x_784 : f32 = u_xlat44;
    u_xlat44 = max(x_784, 0.0f);
    let x_786 : f32 = u_xlat44;
    let x_787 : f32 = u_xlat44;
    u_xlat44 = (x_786 * x_787);
    let x_789 : f32 = u_xlat44;
    let x_791 : f32 = u_xlat10.x;
    u_xlat44 = (x_789 * x_791);
    let x_793 : i32 = u_xlati42;
    let x_795 : vec4<f32> = x_744.x_AdditionalLightsSpotDir[x_793];
    let x_797 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_795.x, x_795.y, x_795.z), x_797);
    let x_801 : f32 = u_xlat10.x;
    let x_802 : i32 = u_xlati42;
    let x_804 : f32 = x_744.x_AdditionalLightsAttenuation[x_802].z;
    let x_806 : i32 = u_xlati42;
    let x_808 : f32 = x_744.x_AdditionalLightsAttenuation[x_806].w;
    u_xlat10.x = ((x_801 * x_804) + x_808);
    let x_812 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_812, 0.0f, 1.0f);
    let x_816 : f32 = u_xlat10.x;
    let x_818 : f32 = u_xlat10.x;
    u_xlat10.x = (x_816 * x_818);
    let x_821 : f32 = u_xlat44;
    let x_823 : f32 = u_xlat10.x;
    u_xlat44 = (x_821 * x_823);
    let x_827 : i32 = u_xlati42;
    let x_829 : f32 = x_377.x_AdditionalShadowParams[x_827].w;
    u_xlati10 = i32(x_829);
    let x_834 : i32 = u_xlati10;
    u_xlatb22.x = (x_834 >= 0i);
    let x_838 : bool = u_xlatb22.x;
    if (x_838) {
      let x_842 : i32 = u_xlati42;
      let x_844 : f32 = x_377.x_AdditionalShadowParams[x_842].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_844, x_844, x_844, x_844))));
      let x_851 : bool = u_xlatb22.x;
      if (x_851) {
        let x_854 : vec3<f32> = u_xlat21;
        let x_857 : vec3<f32> = u_xlat21;
        let x_860 : vec4<bool> = (abs(vec4<f32>(x_854.z, x_854.z, x_854.y, x_854.y)) >= abs(vec4<f32>(x_857.x, x_857.y, x_857.x, x_857.x)));
        u_xlatb22 = vec3<bool>(x_860.x, x_860.y, x_860.z);
        let x_863 : bool = u_xlatb22.y;
        let x_865 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_863 & x_865);
        let x_869 : vec3<f32> = u_xlat21;
        let x_872 : vec4<bool> = (-(vec4<f32>(x_869.z, x_869.y, x_869.x, x_869.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_872.x, x_872.y, x_872.z);
        let x_876 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_876);
        let x_881 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_881);
        let x_887 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_887);
        let x_890 : bool = u_xlatb22.z;
        if (x_890) {
          let x_895 : f32 = u_xlat11.y;
          x_891 = x_895;
        } else {
          let x_897 : f32 = u_xlat34;
          x_891 = x_897;
        }
        let x_898 : f32 = x_891;
        u_xlat34 = x_898;
        let x_901 : bool = u_xlatb22.x;
        if (x_901) {
          let x_906 : f32 = u_xlat11.x;
          x_902 = x_906;
        } else {
          let x_908 : f32 = u_xlat34;
          x_902 = x_908;
        }
        let x_909 : f32 = x_902;
        u_xlat22 = x_909;
        let x_910 : i32 = u_xlati42;
        let x_912 : f32 = x_377.x_AdditionalShadowParams[x_910].w;
        u_xlat34 = trunc(x_912);
        let x_914 : f32 = u_xlat22;
        let x_915 : f32 = u_xlat34;
        u_xlat22 = (x_914 + x_915);
        let x_917 : f32 = u_xlat22;
        u_xlati10 = i32(x_917);
      }
      let x_919 : i32 = u_xlati10;
      u_xlati10 = (x_919 << bitcast<u32>(2i));
      let x_921 : vec3<f32> = vs_TEXCOORD7;
      let x_924 : i32 = u_xlati10;
      let x_927 : i32 = u_xlati10;
      let x_931 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[((x_924 + 1i) / 4i)][((x_927 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_921.y, x_921.y, x_921.y, x_921.y) * x_931);
      let x_933 : i32 = u_xlati10;
      let x_935 : i32 = u_xlati10;
      let x_938 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[(x_933 / 4i)][(x_935 % 4i)];
      let x_939 : vec3<f32> = vs_TEXCOORD7;
      let x_942 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_938 * vec4<f32>(x_939.x, x_939.x, x_939.x, x_939.x)) + x_942);
      let x_944 : i32 = u_xlati10;
      let x_947 : i32 = u_xlati10;
      let x_951 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[((x_944 + 2i) / 4i)][((x_947 + 2i) % 4i)];
      let x_952 : vec3<f32> = vs_TEXCOORD7;
      let x_955 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_951 * vec4<f32>(x_952.z, x_952.z, x_952.z, x_952.z)) + x_955);
      let x_957 : vec4<f32> = u_xlat11;
      let x_958 : i32 = u_xlati10;
      let x_961 : i32 = u_xlati10;
      let x_965 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[((x_958 + 3i) / 4i)][((x_961 + 3i) % 4i)];
      u_xlat10 = (x_957 + x_965);
      let x_967 : vec4<f32> = u_xlat10;
      let x_969 : vec4<f32> = u_xlat10;
      let x_971 : vec3<f32> = (vec3<f32>(x_967.x, x_967.y, x_967.z) / vec3<f32>(x_969.w, x_969.w, x_969.w));
      let x_972 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
      let x_975 : vec4<f32> = u_xlat10;
      let x_976 : vec2<f32> = vec2<f32>(x_975.x, x_975.y);
      let x_978 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_976.x, x_976.y, x_978);
      let x_986 : vec3<f32> = txVec1;
      let x_988 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_986.xy, x_986.z);
      u_xlat10.x = x_988;
      let x_990 : i32 = u_xlati42;
      let x_992 : f32 = x_377.x_AdditionalShadowParams[x_990].x;
      u_xlat22 = (1.0f + -(x_992));
      let x_996 : f32 = u_xlat10.x;
      let x_997 : i32 = u_xlati42;
      let x_999 : f32 = x_377.x_AdditionalShadowParams[x_997].x;
      let x_1001 : f32 = u_xlat22;
      u_xlat10.x = ((x_996 * x_999) + x_1001);
      let x_1005 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1005);
      let x_1010 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1010 >= 1.0f);
      let x_1012 : bool = u_xlatb34;
      let x_1014 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1012 | x_1014);
      let x_1018 : bool = u_xlatb22.x;
      if (x_1018) {
        x_1019 = 1.0f;
      } else {
        let x_1024 : f32 = u_xlat10.x;
        x_1019 = x_1024;
      }
      let x_1025 : f32 = x_1019;
      u_xlat10.x = x_1025;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1030 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1030) + 1.0f);
    let x_1033 : f32 = u_xlat1;
    let x_1034 : f32 = u_xlat22;
    let x_1037 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1033 * x_1034) + x_1037);
    let x_1040 : f32 = u_xlat44;
    let x_1042 : f32 = u_xlat10.x;
    u_xlat44 = (x_1040 * x_1042);
    let x_1044 : vec4<f32> = u_xlat2;
    let x_1046 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1044.x, x_1044.y, x_1044.z), x_1046);
    let x_1050 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1050, 0.0f, 1.0f);
    let x_1053 : f32 = u_xlat44;
    let x_1055 : f32 = u_xlat10.x;
    u_xlat44 = (x_1053 * x_1055);
    let x_1057 : f32 = u_xlat44;
    let x_1059 : i32 = u_xlati42;
    let x_1061 : vec4<f32> = x_744.x_AdditionalLightsColor[x_1059];
    let x_1063 : vec3<f32> = (vec3<f32>(x_1057, x_1057, x_1057) * vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
    let x_1064 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
    let x_1066 : vec3<f32> = u_xlat8;
    let x_1067 : f32 = u_xlat9;
    let x_1070 : vec3<f32> = u_xlat13;
    u_xlat8 = ((x_1066 * vec3<f32>(x_1067, x_1067, x_1067)) + x_1070);
    let x_1072 : vec3<f32> = u_xlat8;
    let x_1073 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1072, x_1073);
    let x_1075 : f32 = u_xlat42;
    u_xlat42 = max(x_1075, 1.17549435e-38f);
    let x_1077 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1077);
    let x_1079 : f32 = u_xlat42;
    let x_1081 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1079, x_1079, x_1079) * x_1081);
    let x_1083 : vec4<f32> = u_xlat2;
    let x_1085 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_1083.x, x_1083.y, x_1083.z), x_1085);
    let x_1087 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1087, 0.0f, 1.0f);
    let x_1089 : vec3<f32> = u_xlat21;
    let x_1090 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1089, x_1090);
    let x_1094 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1094, 0.0f, 1.0f);
    let x_1097 : f32 = u_xlat42;
    let x_1098 : f32 = u_xlat42;
    u_xlat42 = (x_1097 * x_1098);
    let x_1100 : f32 = u_xlat42;
    let x_1102 : f32 = u_xlat7.x;
    u_xlat42 = ((x_1100 * x_1102) + 1.00001001358032226562f);
    let x_1106 : f32 = u_xlat8.x;
    let x_1108 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1106 * x_1108);
    let x_1111 : f32 = u_xlat42;
    let x_1112 : f32 = u_xlat42;
    u_xlat42 = (x_1111 * x_1112);
    let x_1115 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1115, 0.10000000149011611938f);
    let x_1118 : f32 = u_xlat42;
    let x_1120 : f32 = u_xlat8.x;
    u_xlat42 = (x_1118 * x_1120);
    let x_1123 : f32 = u_xlat4.x;
    let x_1124 : f32 = u_xlat42;
    u_xlat42 = (x_1123 * x_1124);
    let x_1127 : f32 = u_xlat5.x;
    let x_1128 : f32 = u_xlat42;
    u_xlat42 = (x_1127 / x_1128);
    let x_1130 : vec4<f32> = u_xlat0;
    let x_1132 : f32 = u_xlat42;
    let x_1135 : vec3<f32> = u_xlat16;
    u_xlat8 = ((vec3<f32>(x_1130.x, x_1130.y, x_1130.z) * vec3<f32>(x_1132, x_1132, x_1132)) + x_1135);
    let x_1137 : vec3<f32> = u_xlat8;
    let x_1138 : vec4<f32> = u_xlat10;
    let x_1141 : vec3<f32> = u_xlat17;
    u_xlat17 = ((x_1137 * vec3<f32>(x_1138.x, x_1138.y, x_1138.z)) + x_1141);

    continuing {
      let x_1143 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1143 + bitcast<u32>(1i));
    }
  }
  let x_1145 : vec3<f32> = u_xlat19;
  let x_1146 : vec4<f32> = u_xlat6;
  let x_1149 : vec3<f32> = u_xlat15;
  let x_1150 : vec3<f32> = ((x_1145 * vec3<f32>(x_1146.x, x_1146.y, x_1146.z)) + x_1149);
  let x_1151 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec3<f32> = u_xlat17;
  let x_1154 : vec4<f32> = u_xlat0;
  let x_1156 : vec3<f32> = (x_1153 + vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
  let x_1157 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
  let x_1160 : f32 = u_xlat3.x;
  let x_1162 : f32 = u_xlat3.x;
  u_xlat36 = (x_1160 * -(x_1162));
  let x_1165 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1165);
  let x_1167 : vec4<f32> = u_xlat0;
  let x_1170 : vec4<f32> = x_29.unity_FogColor;
  let x_1173 : vec3<f32> = (vec3<f32>(x_1167.x, x_1167.y, x_1167.z) + -(vec3<f32>(x_1170.x, x_1170.y, x_1170.z)));
  let x_1174 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
  let x_1178 : f32 = u_xlat36;
  let x_1180 : vec4<f32> = u_xlat0;
  let x_1184 : vec4<f32> = x_29.unity_FogColor;
  let x_1186 : vec3<f32> = ((vec3<f32>(x_1178, x_1178, x_1178) * vec3<f32>(x_1180.x, x_1180.y, x_1180.z)) + vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
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


