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
  /* @offset(76) */
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

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb9 : bool;

@group(1) @binding(2) var<uniform> x_94 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat26 : f32;

@group(1) @binding(4) var<uniform> x_258 : LightShadows;

var<private> u_xlatb26 : bool;

var<private> u_xlatb3 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlatu25 : u32;

var<private> u_xlatu28 : u32;

var<private> u_xlati5 : i32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_434 : AdditionalLights;

var<private> u_xlat29 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb14 : vec3<bool>;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat14 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlatu27 : u32;

var<private> u_xlatb28 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_102 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_582 : f32;
  var x_593 : f32;
  var txVec1 : vec3<f32>;
  var x_710 : f32;
  var x_783 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_70.x, x_70.y, x_71.z, x_71.w);
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
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
  u_xlat1.w = 1.0f;
  let x_155 : vec4<f32> = x_94.unity_SHAr;
  let x_156 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_155, x_156);
  let x_161 : vec4<f32> = x_94.unity_SHAg;
  let x_162 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_161, x_162);
  let x_168 : vec4<f32> = x_94.unity_SHAb;
  let x_169 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_168, x_169);
  let x_173 : vec4<f32> = u_xlat1;
  let x_175 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_173.y, x_173.z, x_173.z, x_173.x) * vec4<f32>(x_175.x, x_175.y, x_175.z, x_175.z));
  let x_181 : vec4<f32> = x_94.unity_SHBr;
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_181, x_182);
  let x_187 : vec4<f32> = x_94.unity_SHBg;
  let x_188 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_187, x_188);
  let x_193 : vec4<f32> = x_94.unity_SHBb;
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_193, x_194);
  let x_199 : f32 = u_xlat1.y;
  let x_201 : f32 = u_xlat1.y;
  u_xlat25 = (x_199 * x_201);
  let x_204 : f32 = u_xlat1.x;
  let x_206 : f32 = u_xlat1.x;
  let x_208 : f32 = u_xlat25;
  u_xlat25 = ((x_204 * x_206) + -(x_208));
  let x_213 : vec4<f32> = x_94.unity_SHC;
  let x_215 : f32 = u_xlat25;
  let x_218 : vec3<f32> = u_xlat4;
  let x_219 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.y, x_213.z) * vec3<f32>(x_215, x_215, x_215)) + x_218);
  let x_220 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec3<f32> = u_xlat2;
  let x_223 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_222 + vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_226, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_232 : vec4<f32> = vs_TEXCOORD6;
  let x_233 : vec2<f32> = vec2<f32>(x_232.x, x_232.y);
  let x_235 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_233.x, x_233.y, x_235);
  let x_247 : vec3<f32> = txVec0;
  let x_249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_247.xy, x_247.z);
  u_xlat25 = x_249;
  let x_261 : f32 = x_258.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_261) + 1.0f);
  let x_264 : f32 = u_xlat25;
  let x_266 : f32 = x_258.x_MainLightShadowParams.x;
  let x_268 : f32 = u_xlat26;
  u_xlat25 = ((x_264 * x_266) + x_268);
  let x_272 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (0.0f >= x_272);
  let x_276 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (x_276 >= 1.0f);
  let x_278 : bool = u_xlatb26;
  let x_279 : bool = u_xlatb3;
  u_xlatb26 = (x_278 | x_279);
  let x_281 : bool = u_xlatb26;
  let x_282 : f32 = u_xlat25;
  u_xlat25 = select(x_282, 1.0f, x_281);
  let x_285 : vec3<f32> = vs_TEXCOORD1;
  let x_289 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_291 : vec3<f32> = (x_285 + -(x_289));
  let x_292 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat3;
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat26 = dot(vec3<f32>(x_294.x, x_294.y, x_294.z), vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : f32 = u_xlat26;
  let x_301 : f32 = x_258.x_MainLightShadowParams.z;
  let x_304 : f32 = x_258.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_299 * x_301) + x_304);
  let x_308 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_308, 0.0f, 1.0f);
  let x_312 : f32 = u_xlat25;
  u_xlat11 = (-(x_312) + 1.0f);
  let x_316 : f32 = u_xlat3.x;
  let x_317 : f32 = u_xlat11;
  let x_319 : f32 = u_xlat25;
  u_xlat25 = ((x_316 * x_317) + x_319);
  let x_321 : f32 = u_xlat25;
  let x_323 : f32 = x_94.unity_LightData.z;
  u_xlat25 = (x_321 * x_323);
  let x_325 : f32 = u_xlat25;
  let x_328 : vec4<f32> = x_44.x_MainLightColor;
  let x_330 : vec3<f32> = (vec3<f32>(x_325, x_325, x_325) * vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat1;
  let x_336 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat25 = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : f32 = u_xlat25;
  u_xlat25 = clamp(x_339, 0.0f, 1.0f);
  let x_341 : f32 = u_xlat25;
  let x_343 : vec4<f32> = u_xlat3;
  let x_345 : vec3<f32> = (vec3<f32>(x_341, x_341, x_341) * vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat0;
  let x_350 : vec4<f32> = u_xlat3;
  let x_352 : vec3<f32> = (vec3<f32>(x_348.y, x_348.z, x_348.w) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_357 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_359 : f32 = x_94.unity_LightData.y;
  u_xlat25 = min(x_357, x_359);
  let x_363 : f32 = u_xlat25;
  u_xlatu25 = bitcast<u32>(i32(x_363));
  let x_366 : f32 = u_xlat26;
  let x_369 : f32 = x_258.x_AdditionalShadowFadeParams.x;
  let x_372 : f32 = x_258.x_AdditionalShadowFadeParams.y;
  u_xlat26 = ((x_366 * x_369) + x_372);
  let x_374 : f32 = u_xlat26;
  u_xlat26 = clamp(x_374, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_386 : u32 = u_xlatu_loop_1;
    let x_387 : u32 = u_xlatu25;
    if ((x_386 < x_387)) {
    } else {
      break;
    }
    let x_390 : u32 = u_xlatu_loop_1;
    u_xlatu28 = (x_390 >> 2u);
    let x_394 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_394 & 3u));
    let x_399 : u32 = u_xlatu28;
    let x_402 : vec4<f32> = x_94.unity_LightIndices[bitcast<i32>(x_399)];
    let x_412 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_417 : vec4<u32> = indexable[x_412];
    u_xlat28 = dot(x_402, bitcast<vec4<f32>>(x_417));
    let x_421 : f32 = u_xlat28;
    u_xlati28 = i32(x_421);
    let x_424 : vec3<f32> = vs_TEXCOORD1;
    let x_435 : i32 = u_xlati28;
    let x_437 : vec4<f32> = x_434.x_AdditionalLightsPosition[x_435];
    let x_440 : i32 = u_xlati28;
    let x_442 : vec4<f32> = x_434.x_AdditionalLightsPosition[x_440];
    u_xlat5 = ((-(x_424) * vec3<f32>(x_437.w, x_437.w, x_437.w)) + vec3<f32>(x_442.x, x_442.y, x_442.z));
    let x_446 : vec3<f32> = u_xlat5;
    let x_447 : vec3<f32> = u_xlat5;
    u_xlat29 = dot(x_446, x_447);
    let x_449 : f32 = u_xlat29;
    u_xlat29 = max(x_449, 0.00006103515625f);
    let x_453 : f32 = u_xlat29;
    u_xlat6.x = inverseSqrt(x_453);
    let x_456 : vec3<f32> = u_xlat5;
    let x_457 : vec4<f32> = u_xlat6;
    u_xlat5 = (x_456 * vec3<f32>(x_457.x, x_457.x, x_457.x));
    let x_460 : f32 = u_xlat29;
    u_xlat6.x = (1.0f / x_460);
    let x_463 : f32 = u_xlat29;
    let x_464 : i32 = u_xlati28;
    let x_466 : f32 = x_434.x_AdditionalLightsAttenuation[x_464].x;
    u_xlat29 = (x_463 * x_466);
    let x_468 : f32 = u_xlat29;
    let x_470 : f32 = u_xlat29;
    u_xlat29 = ((-(x_468) * x_470) + 1.0f);
    let x_473 : f32 = u_xlat29;
    u_xlat29 = max(x_473, 0.0f);
    let x_475 : f32 = u_xlat29;
    let x_476 : f32 = u_xlat29;
    u_xlat29 = (x_475 * x_476);
    let x_478 : f32 = u_xlat29;
    let x_480 : f32 = u_xlat6.x;
    u_xlat29 = (x_478 * x_480);
    let x_482 : i32 = u_xlati28;
    let x_484 : vec4<f32> = x_434.x_AdditionalLightsSpotDir[x_482];
    let x_486 : vec3<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_484.x, x_484.y, x_484.z), x_486);
    let x_490 : f32 = u_xlat6.x;
    let x_491 : i32 = u_xlati28;
    let x_493 : f32 = x_434.x_AdditionalLightsAttenuation[x_491].z;
    let x_495 : i32 = u_xlati28;
    let x_497 : f32 = x_434.x_AdditionalLightsAttenuation[x_495].w;
    u_xlat6.x = ((x_490 * x_493) + x_497);
    let x_501 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_501, 0.0f, 1.0f);
    let x_505 : f32 = u_xlat6.x;
    let x_507 : f32 = u_xlat6.x;
    u_xlat6.x = (x_505 * x_507);
    let x_510 : f32 = u_xlat29;
    let x_512 : f32 = u_xlat6.x;
    u_xlat29 = (x_510 * x_512);
    let x_516 : i32 = u_xlati28;
    let x_518 : f32 = x_258.x_AdditionalShadowParams[x_516].w;
    u_xlati6 = i32(x_518);
    let x_523 : i32 = u_xlati6;
    u_xlatb14.x = (x_523 >= 0i);
    let x_527 : bool = u_xlatb14.x;
    if (x_527) {
      let x_531 : i32 = u_xlati28;
      let x_533 : f32 = x_258.x_AdditionalShadowParams[x_531].z;
      u_xlatb14.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_533, x_533, x_533, x_533))));
      let x_540 : bool = u_xlatb14.x;
      if (x_540) {
        let x_543 : vec3<f32> = u_xlat5;
        let x_546 : vec3<f32> = u_xlat5;
        let x_549 : vec4<bool> = (abs(vec4<f32>(x_543.z, x_543.z, x_543.y, x_543.y)) >= abs(vec4<f32>(x_546.x, x_546.y, x_546.x, x_546.x)));
        u_xlatb14 = vec3<bool>(x_549.x, x_549.y, x_549.z);
        let x_552 : bool = u_xlatb14.y;
        let x_554 : bool = u_xlatb14.x;
        u_xlatb14.x = (x_552 & x_554);
        let x_558 : vec3<f32> = u_xlat5;
        let x_561 : vec4<bool> = (-(vec4<f32>(x_558.z, x_558.y, x_558.x, x_558.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb7 = vec3<bool>(x_561.x, x_561.y, x_561.z);
        let x_565 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_565);
        let x_571 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_571);
        let x_578 : bool = u_xlatb7.z;
        u_xlat22 = select(0.0f, 1.0f, x_578);
        let x_581 : bool = u_xlatb14.z;
        if (x_581) {
          let x_586 : f32 = u_xlat7.y;
          x_582 = x_586;
        } else {
          let x_588 : f32 = u_xlat22;
          x_582 = x_588;
        }
        let x_589 : f32 = x_582;
        u_xlat22 = x_589;
        let x_592 : bool = u_xlatb14.x;
        if (x_592) {
          let x_597 : f32 = u_xlat7.x;
          x_593 = x_597;
        } else {
          let x_599 : f32 = u_xlat22;
          x_593 = x_599;
        }
        let x_600 : f32 = x_593;
        u_xlat14 = x_600;
        let x_601 : i32 = u_xlati28;
        let x_603 : f32 = x_258.x_AdditionalShadowParams[x_601].w;
        u_xlat22 = trunc(x_603);
        let x_605 : f32 = u_xlat14;
        let x_606 : f32 = u_xlat22;
        u_xlat14 = (x_605 + x_606);
        let x_608 : f32 = u_xlat14;
        u_xlati6 = i32(x_608);
      }
      let x_610 : i32 = u_xlati6;
      u_xlati6 = (x_610 << bitcast<u32>(2i));
      let x_612 : vec3<f32> = vs_TEXCOORD1;
      let x_615 : i32 = u_xlati6;
      let x_618 : i32 = u_xlati6;
      let x_622 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[((x_615 + 1i) / 4i)][((x_618 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_612.y, x_612.y, x_612.y, x_612.y) * x_622);
      let x_624 : i32 = u_xlati6;
      let x_626 : i32 = u_xlati6;
      let x_629 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[(x_624 / 4i)][(x_626 % 4i)];
      let x_630 : vec3<f32> = vs_TEXCOORD1;
      let x_633 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_629 * vec4<f32>(x_630.x, x_630.x, x_630.x, x_630.x)) + x_633);
      let x_635 : i32 = u_xlati6;
      let x_638 : i32 = u_xlati6;
      let x_642 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[((x_635 + 2i) / 4i)][((x_638 + 2i) % 4i)];
      let x_643 : vec3<f32> = vs_TEXCOORD1;
      let x_646 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_642 * vec4<f32>(x_643.z, x_643.z, x_643.z, x_643.z)) + x_646);
      let x_648 : vec4<f32> = u_xlat7;
      let x_649 : i32 = u_xlati6;
      let x_652 : i32 = u_xlati6;
      let x_656 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[((x_649 + 3i) / 4i)][((x_652 + 3i) % 4i)];
      u_xlat6 = (x_648 + x_656);
      let x_658 : vec4<f32> = u_xlat6;
      let x_660 : vec4<f32> = u_xlat6;
      let x_662 : vec3<f32> = (vec3<f32>(x_658.x, x_658.y, x_658.z) / vec3<f32>(x_660.w, x_660.w, x_660.w));
      let x_663 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
      let x_666 : vec4<f32> = u_xlat6;
      let x_667 : vec2<f32> = vec2<f32>(x_666.x, x_666.y);
      let x_669 : f32 = u_xlat6.z;
      txVec1 = vec3<f32>(x_667.x, x_667.y, x_669);
      let x_677 : vec3<f32> = txVec1;
      let x_679 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_677.xy, x_677.z);
      u_xlat6.x = x_679;
      let x_681 : i32 = u_xlati28;
      let x_683 : f32 = x_258.x_AdditionalShadowParams[x_681].x;
      u_xlat14 = (1.0f + -(x_683));
      let x_687 : f32 = u_xlat6.x;
      let x_688 : i32 = u_xlati28;
      let x_690 : f32 = x_258.x_AdditionalShadowParams[x_688].x;
      let x_692 : f32 = u_xlat14;
      u_xlat6.x = ((x_687 * x_690) + x_692);
      let x_696 : f32 = u_xlat6.z;
      u_xlatb14.x = (0.0f >= x_696);
      let x_701 : f32 = u_xlat6.z;
      u_xlatb22 = (x_701 >= 1.0f);
      let x_703 : bool = u_xlatb22;
      let x_705 : bool = u_xlatb14.x;
      u_xlatb14.x = (x_703 | x_705);
      let x_709 : bool = u_xlatb14.x;
      if (x_709) {
        x_710 = 1.0f;
      } else {
        let x_715 : f32 = u_xlat6.x;
        x_710 = x_715;
      }
      let x_716 : f32 = x_710;
      u_xlat6.x = x_716;
    } else {
      u_xlat6.x = 1.0f;
    }
    let x_721 : f32 = u_xlat6.x;
    u_xlat14 = (-(x_721) + 1.0f);
    let x_724 : f32 = u_xlat26;
    let x_725 : f32 = u_xlat14;
    let x_728 : f32 = u_xlat6.x;
    u_xlat6.x = ((x_724 * x_725) + x_728);
    let x_731 : f32 = u_xlat29;
    let x_733 : f32 = u_xlat6.x;
    u_xlat29 = (x_731 * x_733);
    let x_735 : f32 = u_xlat29;
    let x_737 : i32 = u_xlati28;
    let x_739 : vec4<f32> = x_434.x_AdditionalLightsColor[x_737];
    let x_741 : vec3<f32> = (vec3<f32>(x_735, x_735, x_735) * vec3<f32>(x_739.x, x_739.y, x_739.z));
    let x_742 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
    let x_744 : vec4<f32> = u_xlat1;
    let x_746 : vec3<f32> = u_xlat5;
    u_xlat28 = dot(vec3<f32>(x_744.x, x_744.y, x_744.z), x_746);
    let x_748 : f32 = u_xlat28;
    u_xlat28 = clamp(x_748, 0.0f, 1.0f);
    let x_750 : f32 = u_xlat28;
    let x_752 : vec4<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_750, x_750, x_750) * vec3<f32>(x_752.x, x_752.y, x_752.z));
    let x_755 : vec3<f32> = u_xlat5;
    let x_756 : vec4<f32> = u_xlat0;
    let x_759 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_755 * vec3<f32>(x_756.y, x_756.z, x_756.w)) + x_759);

    continuing {
      let x_761 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_761 + bitcast<u32>(1i));
    }
  }
  let x_764 : vec3<f32> = u_xlat2;
  let x_765 : vec4<f32> = u_xlat0;
  let x_768 : vec4<f32> = u_xlat3;
  u_xlat8 = ((x_764 * vec3<f32>(x_765.y, x_765.z, x_765.w)) + vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_773 : vec3<f32> = u_xlat4;
  let x_774 : vec3<f32> = u_xlat8;
  let x_775 : vec3<f32> = (x_773 + x_774);
  let x_776 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_780 : f32 = x_56.x_Surface;
  u_xlatb8 = (x_780 == 1.0f);
  let x_782 : bool = u_xlatb8;
  if (x_782) {
    let x_787 : f32 = u_xlat0.x;
    x_783 = x_787;
  } else {
    x_783 = 1.0f;
  }
  let x_789 : f32 = x_783;
  SV_Target0.w = x_789;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


