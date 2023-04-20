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
  /* @offset(192) */
  x_DitheringTextureInvSize : f32,
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb9 : bool;

@group(1) @binding(2) var<uniform> x_94 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_296 : LightShadows;

var<private> u_xlatb3 : bool;

var<private> u_xlatb11 : bool;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlatu25 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati13 : i32;

var<private> u_xlati5 : i32;

var<private> u_xlat13 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_466 : AdditionalLights;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlati14 : i32;

var<private> u_xlatb22 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb30 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlatu28 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_102 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_632 : f32;
  var x_642 : f32;
  var txVec1 : vec3<f32>;
  var x_753 : f32;
  var x_856 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_65 : vec4<f32> = hlslcc_FragCoord;
  let x_69 : f32 = x_45.x_DitheringTextureInvSize;
  let x_71 : vec2<f32> = (vec2<f32>(x_65.x, x_65.y) * vec2<f32>(x_69, x_69));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : f32 = x_45.x_GlobalMipBias.x;
  let x_83 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_79.x, x_79.y), x_82);
  u_xlat1.x = x_83.w;
  let x_97 : f32 = x_94.unity_LODFade.x;
  u_xlatb9 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb9;
  if (x_100) {
    let x_106 : f32 = u_xlat1.x;
    x_102 = abs(x_106);
  } else {
    let x_110 : f32 = u_xlat1.x;
    x_102 = -(abs(x_110));
  }
  let x_113 : f32 = x_102;
  u_xlat1.x = x_113;
  let x_116 : f32 = u_xlat1.x;
  let x_119 : f32 = x_94.unity_LODFade.x;
  u_xlat1.x = (-(x_116) + x_119);
  let x_124 : f32 = u_xlat1.x;
  u_xlatb1 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb1;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_136, x_137);
  let x_141 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_141);
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  let x_147 : vec3<f32> = (vec3<f32>(x_144.x, x_144.x, x_144.x) * x_146);
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_154 : f32 = vs_TEXCOORD1.y;
  let x_157 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat2 = (x_154 * x_157);
  let x_160 : f32 = x_45.unity_MatrixV[0i].z;
  let x_162 : f32 = vs_TEXCOORD1.x;
  let x_164 : f32 = u_xlat2;
  u_xlat2 = ((x_160 * x_162) + x_164);
  let x_167 : f32 = x_45.unity_MatrixV[2i].z;
  let x_169 : f32 = vs_TEXCOORD1.z;
  let x_171 : f32 = u_xlat2;
  u_xlat2 = ((x_167 * x_169) + x_171);
  let x_173 : f32 = u_xlat2;
  let x_176 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat2 = (x_173 + x_176);
  let x_178 : f32 = u_xlat2;
  let x_182 : f32 = x_45.x_ProjectionParams.y;
  u_xlat2 = (-(x_178) + -(x_182));
  let x_185 : f32 = u_xlat2;
  u_xlat2 = max(x_185, 0.0f);
  let x_187 : f32 = u_xlat2;
  let x_190 : f32 = x_45.unity_FogParams.x;
  u_xlat2 = (x_187 * x_190);
  u_xlat1.w = 1.0f;
  let x_197 : vec4<f32> = x_94.unity_SHAr;
  let x_198 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_197, x_198);
  let x_203 : vec4<f32> = x_94.unity_SHAg;
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_203, x_204);
  let x_209 : vec4<f32> = x_94.unity_SHAb;
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_209, x_210);
  let x_214 : vec4<f32> = u_xlat1;
  let x_216 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_214.y, x_214.z, x_214.z, x_214.x) * vec4<f32>(x_216.x, x_216.y, x_216.z, x_216.z));
  let x_222 : vec4<f32> = x_94.unity_SHBr;
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_222, x_223);
  let x_228 : vec4<f32> = x_94.unity_SHBg;
  let x_229 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_228, x_229);
  let x_234 : vec4<f32> = x_94.unity_SHBb;
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_234, x_235);
  let x_240 : f32 = u_xlat1.y;
  let x_242 : f32 = u_xlat1.y;
  u_xlat25 = (x_240 * x_242);
  let x_245 : f32 = u_xlat1.x;
  let x_247 : f32 = u_xlat1.x;
  let x_249 : f32 = u_xlat25;
  u_xlat25 = ((x_245 * x_247) + -(x_249));
  let x_255 : vec4<f32> = x_94.unity_SHC;
  let x_257 : f32 = u_xlat25;
  let x_260 : vec3<f32> = u_xlat5;
  u_xlat10 = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(x_257, x_257, x_257)) + x_260);
  let x_262 : vec3<f32> = u_xlat10;
  let x_263 : vec3<f32> = u_xlat3;
  u_xlat10 = (x_262 + x_263);
  let x_265 : vec3<f32> = u_xlat10;
  u_xlat10 = max(x_265, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_271 : vec4<f32> = vs_TEXCOORD6;
  let x_272 : vec2<f32> = vec2<f32>(x_271.x, x_271.y);
  let x_274 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_272.x, x_272.y, x_274);
  let x_286 : vec3<f32> = txVec0;
  let x_288 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_286.xy, x_286.z);
  u_xlat25 = x_288;
  let x_298 : f32 = x_296.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_298) + 1.0f);
  let x_302 : f32 = u_xlat25;
  let x_304 : f32 = x_296.x_MainLightShadowParams.x;
  let x_307 : f32 = u_xlat3.x;
  u_xlat25 = ((x_302 * x_304) + x_307);
  let x_311 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (0.0f >= x_311);
  let x_315 : f32 = vs_TEXCOORD6.z;
  u_xlatb11 = (x_315 >= 1.0f);
  let x_317 : bool = u_xlatb11;
  let x_318 : bool = u_xlatb3;
  u_xlatb3 = (x_317 | x_318);
  let x_320 : bool = u_xlatb3;
  let x_321 : f32 = u_xlat25;
  u_xlat25 = select(x_321, 1.0f, x_320);
  let x_323 : vec3<f32> = vs_TEXCOORD1;
  let x_327 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat3 = (x_323 + -(x_327));
  let x_330 : vec3<f32> = u_xlat3;
  let x_331 : vec3<f32> = u_xlat3;
  u_xlat3.x = dot(x_330, x_331);
  let x_336 : f32 = u_xlat3.x;
  let x_338 : f32 = x_296.x_MainLightShadowParams.z;
  let x_341 : f32 = x_296.x_MainLightShadowParams.w;
  u_xlat11.x = ((x_336 * x_338) + x_341);
  let x_345 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_345, 0.0f, 1.0f);
  let x_349 : f32 = u_xlat25;
  u_xlat19 = (-(x_349) + 1.0f);
  let x_353 : f32 = u_xlat11.x;
  let x_354 : f32 = u_xlat19;
  let x_356 : f32 = u_xlat25;
  u_xlat25 = ((x_353 * x_354) + x_356);
  let x_358 : f32 = u_xlat25;
  let x_360 : f32 = x_94.unity_LightData.z;
  u_xlat25 = (x_358 * x_360);
  let x_362 : f32 = u_xlat25;
  let x_365 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat11 = (vec3<f32>(x_362, x_362, x_362) * vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat1;
  let x_371 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat25 = dot(vec3<f32>(x_368.x, x_368.y, x_368.z), vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_374 : f32 = u_xlat25;
  u_xlat25 = clamp(x_374, 0.0f, 1.0f);
  let x_376 : f32 = u_xlat25;
  let x_378 : vec3<f32> = u_xlat11;
  u_xlat11 = (vec3<f32>(x_376, x_376, x_376) * x_378);
  let x_380 : vec4<f32> = u_xlat0;
  let x_382 : vec3<f32> = u_xlat11;
  u_xlat11 = (vec3<f32>(x_380.y, x_380.z, x_380.w) * x_382);
  let x_385 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_387 : f32 = x_94.unity_LightData.y;
  u_xlat25 = min(x_385, x_387);
  let x_391 : f32 = u_xlat25;
  u_xlatu25 = bitcast<u32>(i32(x_391));
  let x_395 : f32 = u_xlat3.x;
  let x_398 : f32 = x_296.x_AdditionalShadowFadeParams.x;
  let x_401 : f32 = x_296.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_395 * x_398) + x_401);
  let x_405 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_405, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_418 : u32 = u_xlatu_loop_1;
    let x_419 : u32 = u_xlatu25;
    if ((x_418 < x_419)) {
    } else {
      break;
    }
    let x_422 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_422 >> 2u);
    let x_426 : u32 = u_xlatu_loop_1;
    u_xlati13 = bitcast<i32>((x_426 & 3u));
    let x_429 : u32 = u_xlatu5;
    let x_432 : vec4<f32> = x_94.unity_LightIndices[bitcast<i32>(x_429)];
    let x_442 : i32 = u_xlati13;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_447 : vec4<u32> = indexable[x_442];
    u_xlat5.x = dot(x_432, bitcast<vec4<f32>>(x_447));
    let x_453 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_453);
    let x_456 : vec3<f32> = vs_TEXCOORD1;
    let x_467 : i32 = u_xlati5;
    let x_469 : vec4<f32> = x_466.x_AdditionalLightsPosition[x_467];
    let x_472 : i32 = u_xlati5;
    let x_474 : vec4<f32> = x_466.x_AdditionalLightsPosition[x_472];
    u_xlat13 = ((-(x_456) * vec3<f32>(x_469.w, x_469.w, x_469.w)) + vec3<f32>(x_474.x, x_474.y, x_474.z));
    let x_478 : vec3<f32> = u_xlat13;
    let x_479 : vec3<f32> = u_xlat13;
    u_xlat6.x = dot(x_478, x_479);
    let x_483 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_483, 0.00006103515625f);
    let x_489 : f32 = u_xlat6.x;
    u_xlat14.x = inverseSqrt(x_489);
    let x_492 : vec3<f32> = u_xlat13;
    let x_493 : vec3<f32> = u_xlat14;
    u_xlat13 = (x_492 * vec3<f32>(x_493.x, x_493.x, x_493.x));
    let x_497 : f32 = u_xlat6.x;
    u_xlat14.x = (1.0f / x_497);
    let x_501 : f32 = u_xlat6.x;
    let x_502 : i32 = u_xlati5;
    let x_504 : f32 = x_466.x_AdditionalLightsAttenuation[x_502].x;
    u_xlat6.x = (x_501 * x_504);
    let x_508 : f32 = u_xlat6.x;
    let x_511 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_508) * x_511) + 1.0f);
    let x_516 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_516, 0.0f);
    let x_520 : f32 = u_xlat6.x;
    let x_522 : f32 = u_xlat6.x;
    u_xlat6.x = (x_520 * x_522);
    let x_526 : f32 = u_xlat6.x;
    let x_528 : f32 = u_xlat14.x;
    u_xlat6.x = (x_526 * x_528);
    let x_531 : i32 = u_xlati5;
    let x_533 : vec4<f32> = x_466.x_AdditionalLightsSpotDir[x_531];
    let x_535 : vec3<f32> = u_xlat13;
    u_xlat14.x = dot(vec3<f32>(x_533.x, x_533.y, x_533.z), x_535);
    let x_539 : f32 = u_xlat14.x;
    let x_540 : i32 = u_xlati5;
    let x_542 : f32 = x_466.x_AdditionalLightsAttenuation[x_540].z;
    let x_544 : i32 = u_xlati5;
    let x_546 : f32 = x_466.x_AdditionalLightsAttenuation[x_544].w;
    u_xlat14.x = ((x_539 * x_542) + x_546);
    let x_550 : f32 = u_xlat14.x;
    u_xlat14.x = clamp(x_550, 0.0f, 1.0f);
    let x_554 : f32 = u_xlat14.x;
    let x_556 : f32 = u_xlat14.x;
    u_xlat14.x = (x_554 * x_556);
    let x_560 : f32 = u_xlat14.x;
    let x_562 : f32 = u_xlat6.x;
    u_xlat6.x = (x_560 * x_562);
    let x_567 : i32 = u_xlati5;
    let x_569 : f32 = x_296.x_AdditionalShadowParams[x_567].w;
    u_xlati14 = i32(x_569);
    let x_572 : i32 = u_xlati14;
    u_xlatb22 = (x_572 >= 0i);
    let x_574 : bool = u_xlatb22;
    if (x_574) {
      let x_578 : i32 = u_xlati5;
      let x_580 : f32 = x_296.x_AdditionalShadowParams[x_578].z;
      u_xlatb22 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_580, x_580, x_580, x_580))));
      let x_585 : bool = u_xlatb22;
      if (x_585) {
        let x_590 : vec3<f32> = u_xlat13;
        let x_593 : vec3<f32> = u_xlat13;
        let x_596 : vec4<bool> = (abs(vec4<f32>(x_590.z, x_590.z, x_590.y, x_590.z)) >= abs(vec4<f32>(x_593.x, x_593.y, x_593.x, x_593.x)));
        let x_598 : vec3<bool> = vec3<bool>(x_596.x, x_596.y, x_596.z);
        let x_599 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_598.x, x_598.y, x_598.z, x_599.w);
        let x_602 : bool = u_xlatb7.y;
        let x_604 : bool = u_xlatb7.x;
        u_xlatb22 = (x_602 & x_604);
        let x_606 : vec3<f32> = u_xlat13;
        let x_609 : vec4<bool> = (-(vec4<f32>(x_606.z, x_606.y, x_606.z, x_606.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_610 : vec3<bool> = vec3<bool>(x_609.x, x_609.y, x_609.w);
        let x_611 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_610.x, x_610.y, x_611.z, x_610.z);
        let x_615 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_615);
        let x_621 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_621);
        let x_628 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_628);
        let x_631 : bool = u_xlatb7.z;
        if (x_631) {
          let x_636 : f32 = u_xlat7.y;
          x_632 = x_636;
        } else {
          let x_638 : f32 = u_xlat30;
          x_632 = x_638;
        }
        let x_639 : f32 = x_632;
        u_xlat30 = x_639;
        let x_641 : bool = u_xlatb22;
        if (x_641) {
          let x_646 : f32 = u_xlat7.x;
          x_642 = x_646;
        } else {
          let x_648 : f32 = u_xlat30;
          x_642 = x_648;
        }
        let x_649 : f32 = x_642;
        u_xlat22 = x_649;
        let x_650 : i32 = u_xlati5;
        let x_652 : f32 = x_296.x_AdditionalShadowParams[x_650].w;
        u_xlat30 = trunc(x_652);
        let x_654 : f32 = u_xlat22;
        let x_655 : f32 = u_xlat30;
        u_xlat22 = (x_654 + x_655);
        let x_657 : f32 = u_xlat22;
        u_xlati14 = i32(x_657);
      }
      let x_659 : i32 = u_xlati14;
      u_xlati14 = (x_659 << bitcast<u32>(2i));
      let x_661 : vec3<f32> = vs_TEXCOORD1;
      let x_664 : i32 = u_xlati14;
      let x_667 : i32 = u_xlati14;
      let x_671 : vec4<f32> = x_296.x_AdditionalLightsWorldToShadow[((x_664 + 1i) / 4i)][((x_667 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_661.y, x_661.y, x_661.y, x_661.y) * x_671);
      let x_673 : i32 = u_xlati14;
      let x_675 : i32 = u_xlati14;
      let x_678 : vec4<f32> = x_296.x_AdditionalLightsWorldToShadow[(x_673 / 4i)][(x_675 % 4i)];
      let x_679 : vec3<f32> = vs_TEXCOORD1;
      let x_682 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_678 * vec4<f32>(x_679.x, x_679.x, x_679.x, x_679.x)) + x_682);
      let x_684 : i32 = u_xlati14;
      let x_687 : i32 = u_xlati14;
      let x_691 : vec4<f32> = x_296.x_AdditionalLightsWorldToShadow[((x_684 + 2i) / 4i)][((x_687 + 2i) % 4i)];
      let x_692 : vec3<f32> = vs_TEXCOORD1;
      let x_695 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_691 * vec4<f32>(x_692.z, x_692.z, x_692.z, x_692.z)) + x_695);
      let x_697 : vec4<f32> = u_xlat7;
      let x_698 : i32 = u_xlati14;
      let x_701 : i32 = u_xlati14;
      let x_705 : vec4<f32> = x_296.x_AdditionalLightsWorldToShadow[((x_698 + 3i) / 4i)][((x_701 + 3i) % 4i)];
      u_xlat7 = (x_697 + x_705);
      let x_707 : vec4<f32> = u_xlat7;
      let x_709 : vec4<f32> = u_xlat7;
      u_xlat14 = (vec3<f32>(x_707.x, x_707.y, x_707.z) / vec3<f32>(x_709.w, x_709.w, x_709.w));
      let x_713 : vec3<f32> = u_xlat14;
      let x_714 : vec2<f32> = vec2<f32>(x_713.x, x_713.y);
      let x_716 : f32 = u_xlat14.z;
      txVec1 = vec3<f32>(x_714.x, x_714.y, x_716);
      let x_724 : vec3<f32> = txVec1;
      let x_726 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_724.xy, x_724.z);
      u_xlat14.x = x_726;
      let x_728 : i32 = u_xlati5;
      let x_730 : f32 = x_296.x_AdditionalShadowParams[x_728].x;
      u_xlat22 = (1.0f + -(x_730));
      let x_734 : f32 = u_xlat14.x;
      let x_735 : i32 = u_xlati5;
      let x_737 : f32 = x_296.x_AdditionalShadowParams[x_735].x;
      let x_739 : f32 = u_xlat22;
      u_xlat14.x = ((x_734 * x_737) + x_739);
      let x_743 : f32 = u_xlat14.z;
      u_xlatb22 = (0.0f >= x_743);
      let x_747 : f32 = u_xlat14.z;
      u_xlatb30 = (x_747 >= 1.0f);
      let x_749 : bool = u_xlatb30;
      let x_750 : bool = u_xlatb22;
      u_xlatb22 = (x_749 | x_750);
      let x_752 : bool = u_xlatb22;
      if (x_752) {
        x_753 = 1.0f;
      } else {
        let x_758 : f32 = u_xlat14.x;
        x_753 = x_758;
      }
      let x_759 : f32 = x_753;
      u_xlat14.x = x_759;
    } else {
      u_xlat14.x = 1.0f;
    }
    let x_764 : f32 = u_xlat14.x;
    u_xlat22 = (-(x_764) + 1.0f);
    let x_768 : f32 = u_xlat3.x;
    let x_769 : f32 = u_xlat22;
    let x_772 : f32 = u_xlat14.x;
    u_xlat14.x = ((x_768 * x_769) + x_772);
    let x_776 : f32 = u_xlat14.x;
    let x_778 : f32 = u_xlat6.x;
    u_xlat6.x = (x_776 * x_778);
    let x_781 : vec3<f32> = u_xlat6;
    let x_783 : i32 = u_xlati5;
    let x_785 : vec4<f32> = x_466.x_AdditionalLightsColor[x_783];
    u_xlat6 = (vec3<f32>(x_781.x, x_781.x, x_781.x) * vec3<f32>(x_785.x, x_785.y, x_785.z));
    let x_788 : vec4<f32> = u_xlat1;
    let x_790 : vec3<f32> = u_xlat13;
    u_xlat5.x = dot(vec3<f32>(x_788.x, x_788.y, x_788.z), x_790);
    let x_794 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_794, 0.0f, 1.0f);
    let x_797 : vec3<f32> = u_xlat5;
    let x_799 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_797.x, x_797.x, x_797.x) * x_799);
    let x_801 : vec3<f32> = u_xlat5;
    let x_802 : vec4<f32> = u_xlat0;
    let x_805 : vec4<f32> = u_xlat4;
    let x_807 : vec3<f32> = ((x_801 * vec3<f32>(x_802.y, x_802.z, x_802.w)) + vec3<f32>(x_805.x, x_805.y, x_805.z));
    let x_808 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);

    continuing {
      let x_810 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_810 + bitcast<u32>(1i));
    }
  }
  let x_813 : vec3<f32> = u_xlat10;
  let x_814 : vec4<f32> = u_xlat0;
  let x_817 : vec3<f32> = u_xlat11;
  u_xlat8 = ((x_813 * vec3<f32>(x_814.y, x_814.z, x_814.w)) + x_817);
  let x_819 : vec4<f32> = u_xlat4;
  let x_821 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_819.x, x_819.y, x_819.z) + x_821);
  let x_823 : f32 = u_xlat2;
  let x_824 : f32 = u_xlat2;
  u_xlat1.x = (x_823 * -(x_824));
  let x_829 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_829);
  let x_832 : vec3<f32> = u_xlat8;
  let x_835 : vec4<f32> = x_45.unity_FogColor;
  u_xlat8 = (x_832 + -(vec3<f32>(x_835.x, x_835.y, x_835.z)));
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec3<f32> = u_xlat8;
  let x_846 : vec4<f32> = x_45.unity_FogColor;
  let x_848 : vec3<f32> = ((vec3<f32>(x_841.x, x_841.x, x_841.x) * x_843) + vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_853 : f32 = x_57.x_Surface;
  u_xlatb8 = (x_853 == 1.0f);
  let x_855 : bool = u_xlatb8;
  if (x_855) {
    let x_860 : f32 = u_xlat0.x;
    x_856 = x_860;
  } else {
    x_856 = 1.0f;
  }
  let x_862 : f32 = x_856;
  SV_Target0.w = x_862;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


