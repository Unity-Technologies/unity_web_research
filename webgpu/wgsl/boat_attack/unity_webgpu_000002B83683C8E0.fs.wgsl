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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb9 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_159 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlat25 : f32;

var<private> u_xlatu25 : u32;

var<private> u_xlati25 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb10 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlatu28 : u32;

var<private> u_xlati5 : i32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

@group(1) @binding(1) var<uniform> x_583 : AdditionalLights;

var<private> u_xlat29 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb14 : vec3<bool>;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat14 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlatu27 : u32;

var<private> u_xlatb28 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_727 : f32;
  var x_738 : f32;
  var txVec1 : vec3<f32>;
  var x_855 : f32;
  var x_928 : f32;
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
  let x_65 : vec4<f32> = hlslcc_FragCoord;
  let x_69 : f32 = x_44.x_DitheringTextureInvSize;
  let x_71 : vec2<f32> = (vec2<f32>(x_65.x, x_65.y) * vec2<f32>(x_69, x_69));
  let x_72 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_71.x, x_71.y, x_72.z);
  let x_79 : vec3<f32> = u_xlat1;
  let x_82 : f32 = x_44.x_GlobalMipBias.x;
  let x_83 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_79.x, x_79.y), x_82);
  u_xlat1.x = x_83.w;
  let x_98 : f32 = x_95.unity_LODFade.x;
  u_xlatb9 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb9;
  if (x_101) {
    let x_107 : f32 = u_xlat1.x;
    x_103 = abs(x_107);
  } else {
    let x_111 : f32 = u_xlat1.x;
    x_103 = -(abs(x_111));
  }
  let x_114 : f32 = x_103;
  u_xlat1.x = x_114;
  let x_117 : f32 = u_xlat1.x;
  let x_120 : f32 = x_95.unity_LODFade.x;
  u_xlat1.x = (-(x_117) + x_120);
  let x_125 : f32 = u_xlat1.x;
  u_xlatb1 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb1;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_137, x_138);
  let x_142 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_142);
  let x_145 : vec3<f32> = u_xlat1;
  let x_147 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_145.x, x_145.x, x_145.x) * x_147);
  let x_151 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres0;
  let x_164 : vec3<f32> = (x_151 + -(vec3<f32>(x_161.x, x_161.y, x_161.z)));
  let x_165 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec3<f32> = vs_TEXCOORD1;
  let x_170 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres1;
  let x_173 : vec3<f32> = (x_168 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec3<f32> = vs_TEXCOORD1;
  let x_180 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_177 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_185 : vec3<f32> = vs_TEXCOORD1;
  let x_188 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_185 + -(vec3<f32>(x_188.x, x_188.y, x_188.z)));
  let x_192 : vec4<f32> = u_xlat2;
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_192.x, x_192.y, x_192.z), vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_198 : vec4<f32> = u_xlat3;
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_198.x, x_198.y, x_198.z), vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_205 : vec3<f32> = u_xlat4;
  let x_206 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_205, x_206);
  let x_209 : vec3<f32> = u_xlat5;
  let x_210 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_209, x_210);
  let x_216 : vec4<f32> = u_xlat2;
  let x_218 : vec4<f32> = x_159.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_216 < x_218);
  let x_221 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_225);
  let x_229 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_229);
  let x_233 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_233);
  let x_237 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_237);
  let x_243 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_243);
  let x_247 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_247);
  let x_250 : vec4<f32> = u_xlat2;
  let x_252 : vec4<f32> = u_xlat3;
  let x_254 : vec3<f32> = (vec3<f32>(x_250.x, x_250.y, x_250.z) + vec3<f32>(x_252.y, x_252.z, x_252.w));
  let x_255 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat2;
  let x_260 : vec3<f32> = max(vec3<f32>(x_257.x, x_257.y, x_257.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_261 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_261.x, x_260.x, x_260.y, x_260.z);
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat25 = dot(x_264, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_270 : f32 = u_xlat25;
  u_xlat25 = (-(x_270) + 4.0f);
  let x_275 : f32 = u_xlat25;
  u_xlatu25 = u32(x_275);
  let x_279 : u32 = u_xlatu25;
  u_xlati25 = (bitcast<i32>(x_279) << bitcast<u32>(2i));
  let x_282 : vec3<f32> = vs_TEXCOORD1;
  let x_284 : i32 = u_xlati25;
  let x_287 : i32 = u_xlati25;
  let x_291 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_284 + 1i) / 4i)][((x_287 + 1i) % 4i)];
  let x_293 : vec3<f32> = (vec3<f32>(x_282.y, x_282.y, x_282.y) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : i32 = u_xlati25;
  let x_298 : i32 = u_xlati25;
  let x_301 : vec4<f32> = x_159.x_MainLightWorldToShadow[(x_296 / 4i)][(x_298 % 4i)];
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_306 : vec4<f32> = u_xlat2;
  let x_308 : vec3<f32> = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.x, x_303.x)) + vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : i32 = u_xlati25;
  let x_314 : i32 = u_xlati25;
  let x_318 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_311 + 2i) / 4i)][((x_314 + 2i) % 4i)];
  let x_320 : vec3<f32> = vs_TEXCOORD1;
  let x_323 : vec4<f32> = u_xlat2;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.z, x_320.z, x_320.z)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat2;
  let x_330 : i32 = u_xlati25;
  let x_333 : i32 = u_xlati25;
  let x_337 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_330 + 3i) / 4i)][((x_333 + 3i) % 4i)];
  let x_339 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_348 : vec2<f32> = vs_TEXCOORD7;
  let x_350 : f32 = x_44.x_GlobalMipBias.x;
  let x_351 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_348, x_350);
  u_xlat3 = x_351;
  let x_356 : vec2<f32> = vs_TEXCOORD7;
  let x_358 : f32 = x_44.x_GlobalMipBias.x;
  let x_359 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_356, x_358);
  u_xlat4 = vec3<f32>(x_359.x, x_359.y, x_359.z);
  let x_361 : vec4<f32> = u_xlat3;
  let x_365 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_366 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec3<f32> = u_xlat1;
  let x_369 : vec4<f32> = u_xlat3;
  u_xlat25 = dot(x_368, vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : f32 = u_xlat25;
  u_xlat25 = (x_372 + 0.5f);
  let x_375 : f32 = u_xlat25;
  let x_377 : vec3<f32> = u_xlat4;
  let x_378 : vec3<f32> = (vec3<f32>(x_375, x_375, x_375) * x_377);
  let x_379 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : f32 = u_xlat3.w;
  u_xlat25 = max(x_382, 0.00009999999747378752f);
  let x_385 : vec4<f32> = u_xlat3;
  let x_387 : f32 = u_xlat25;
  let x_389 : vec3<f32> = (vec3<f32>(x_385.x, x_385.y, x_385.z) / vec3<f32>(x_387, x_387, x_387));
  let x_390 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_394 : vec4<f32> = u_xlat2;
  let x_395 : vec2<f32> = vec2<f32>(x_394.x, x_394.y);
  let x_397 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_395.x, x_395.y, x_397);
  let x_409 : vec3<f32> = txVec0;
  let x_411 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_409.xy, x_409.z);
  u_xlat25 = x_411;
  let x_414 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_414) + 1.0f);
  let x_418 : f32 = u_xlat25;
  let x_420 : f32 = x_159.x_MainLightShadowParams.x;
  let x_423 : f32 = u_xlat2.x;
  u_xlat25 = ((x_418 * x_420) + x_423);
  let x_426 : f32 = u_xlat2.z;
  u_xlatb2.x = (0.0f >= x_426);
  let x_431 : f32 = u_xlat2.z;
  u_xlatb10 = (x_431 >= 1.0f);
  let x_433 : bool = u_xlatb10;
  let x_435 : bool = u_xlatb2.x;
  u_xlatb2.x = (x_433 | x_435);
  let x_439 : bool = u_xlatb2.x;
  let x_440 : f32 = u_xlat25;
  u_xlat25 = select(x_440, 1.0f, x_439);
  let x_442 : vec3<f32> = vs_TEXCOORD1;
  let x_445 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_447 : vec3<f32> = (x_442 + -(x_445));
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : vec4<f32> = u_xlat2;
  let x_452 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_450.x, x_450.y, x_450.z), vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_458 : f32 = u_xlat2.x;
  let x_460 : f32 = x_159.x_MainLightShadowParams.z;
  let x_463 : f32 = x_159.x_MainLightShadowParams.w;
  u_xlat10.x = ((x_458 * x_460) + x_463);
  let x_467 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_467, 0.0f, 1.0f);
  let x_471 : f32 = u_xlat25;
  u_xlat18 = (-(x_471) + 1.0f);
  let x_475 : f32 = u_xlat10.x;
  let x_476 : f32 = u_xlat18;
  let x_478 : f32 = u_xlat25;
  u_xlat25 = ((x_475 * x_476) + x_478);
  let x_480 : f32 = u_xlat25;
  let x_482 : f32 = x_95.unity_LightData.z;
  u_xlat25 = (x_480 * x_482);
  let x_484 : f32 = u_xlat25;
  let x_487 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat10 = (vec3<f32>(x_484, x_484, x_484) * vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_490 : vec3<f32> = u_xlat1;
  let x_492 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat25 = dot(x_490, vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_495 : f32 = u_xlat25;
  u_xlat25 = clamp(x_495, 0.0f, 1.0f);
  let x_497 : f32 = u_xlat25;
  let x_499 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_497, x_497, x_497) * x_499);
  let x_501 : vec4<f32> = u_xlat0;
  let x_503 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_501.y, x_501.z, x_501.w) * x_503);
  let x_506 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_508 : f32 = x_95.unity_LightData.y;
  u_xlat25 = min(x_506, x_508);
  let x_510 : f32 = u_xlat25;
  u_xlatu25 = bitcast<u32>(i32(x_510));
  let x_514 : f32 = u_xlat2.x;
  let x_517 : f32 = x_159.x_AdditionalShadowFadeParams.x;
  let x_520 : f32 = x_159.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_514 * x_517) + x_520);
  let x_524 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_524, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_537 : u32 = u_xlatu_loop_1;
    let x_538 : u32 = u_xlatu25;
    if ((x_537 < x_538)) {
    } else {
      break;
    }
    let x_541 : u32 = u_xlatu_loop_1;
    u_xlatu28 = (x_541 >> 2u);
    let x_544 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_544 & 3u));
    let x_549 : u32 = u_xlatu28;
    let x_552 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_549)];
    let x_562 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_567 : vec4<u32> = indexable[x_562];
    u_xlat28 = dot(x_552, bitcast<vec4<f32>>(x_567));
    let x_571 : f32 = u_xlat28;
    u_xlati28 = i32(x_571);
    let x_573 : vec3<f32> = vs_TEXCOORD1;
    let x_584 : i32 = u_xlati28;
    let x_586 : vec4<f32> = x_583.x_AdditionalLightsPosition[x_584];
    let x_589 : i32 = u_xlati28;
    let x_591 : vec4<f32> = x_583.x_AdditionalLightsPosition[x_589];
    u_xlat5 = ((-(x_573) * vec3<f32>(x_586.w, x_586.w, x_586.w)) + vec3<f32>(x_591.x, x_591.y, x_591.z));
    let x_595 : vec3<f32> = u_xlat5;
    let x_596 : vec3<f32> = u_xlat5;
    u_xlat29 = dot(x_595, x_596);
    let x_598 : f32 = u_xlat29;
    u_xlat29 = max(x_598, 0.00006103515625f);
    let x_602 : f32 = u_xlat29;
    u_xlat6.x = inverseSqrt(x_602);
    let x_605 : vec3<f32> = u_xlat5;
    let x_606 : vec4<f32> = u_xlat6;
    u_xlat5 = (x_605 * vec3<f32>(x_606.x, x_606.x, x_606.x));
    let x_609 : f32 = u_xlat29;
    u_xlat6.x = (1.0f / x_609);
    let x_612 : f32 = u_xlat29;
    let x_613 : i32 = u_xlati28;
    let x_615 : f32 = x_583.x_AdditionalLightsAttenuation[x_613].x;
    u_xlat29 = (x_612 * x_615);
    let x_617 : f32 = u_xlat29;
    let x_619 : f32 = u_xlat29;
    u_xlat29 = ((-(x_617) * x_619) + 1.0f);
    let x_622 : f32 = u_xlat29;
    u_xlat29 = max(x_622, 0.0f);
    let x_624 : f32 = u_xlat29;
    let x_625 : f32 = u_xlat29;
    u_xlat29 = (x_624 * x_625);
    let x_627 : f32 = u_xlat29;
    let x_629 : f32 = u_xlat6.x;
    u_xlat29 = (x_627 * x_629);
    let x_631 : i32 = u_xlati28;
    let x_633 : vec4<f32> = x_583.x_AdditionalLightsSpotDir[x_631];
    let x_635 : vec3<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), x_635);
    let x_639 : f32 = u_xlat6.x;
    let x_640 : i32 = u_xlati28;
    let x_642 : f32 = x_583.x_AdditionalLightsAttenuation[x_640].z;
    let x_644 : i32 = u_xlati28;
    let x_646 : f32 = x_583.x_AdditionalLightsAttenuation[x_644].w;
    u_xlat6.x = ((x_639 * x_642) + x_646);
    let x_650 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_650, 0.0f, 1.0f);
    let x_654 : f32 = u_xlat6.x;
    let x_656 : f32 = u_xlat6.x;
    u_xlat6.x = (x_654 * x_656);
    let x_659 : f32 = u_xlat29;
    let x_661 : f32 = u_xlat6.x;
    u_xlat29 = (x_659 * x_661);
    let x_665 : i32 = u_xlati28;
    let x_667 : f32 = x_159.x_AdditionalShadowParams[x_665].w;
    u_xlati6 = i32(x_667);
    let x_672 : i32 = u_xlati6;
    u_xlatb14.x = (x_672 >= 0i);
    let x_676 : bool = u_xlatb14.x;
    if (x_676) {
      let x_680 : i32 = u_xlati28;
      let x_682 : f32 = x_159.x_AdditionalShadowParams[x_680].z;
      u_xlatb14.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_682, x_682, x_682, x_682))));
      let x_688 : bool = u_xlatb14.x;
      if (x_688) {
        let x_691 : vec3<f32> = u_xlat5;
        let x_694 : vec3<f32> = u_xlat5;
        let x_697 : vec4<bool> = (abs(vec4<f32>(x_691.z, x_691.z, x_691.y, x_691.y)) >= abs(vec4<f32>(x_694.x, x_694.y, x_694.x, x_694.x)));
        u_xlatb14 = vec3<bool>(x_697.x, x_697.y, x_697.z);
        let x_700 : bool = u_xlatb14.y;
        let x_702 : bool = u_xlatb14.x;
        u_xlatb14.x = (x_700 & x_702);
        let x_706 : vec3<f32> = u_xlat5;
        let x_709 : vec4<bool> = (-(vec4<f32>(x_706.z, x_706.y, x_706.x, x_706.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb7 = vec3<bool>(x_709.x, x_709.y, x_709.z);
        let x_713 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_713);
        let x_718 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_718);
        let x_723 : bool = u_xlatb7.z;
        u_xlat22 = select(0.0f, 1.0f, x_723);
        let x_726 : bool = u_xlatb14.z;
        if (x_726) {
          let x_731 : f32 = u_xlat7.y;
          x_727 = x_731;
        } else {
          let x_733 : f32 = u_xlat22;
          x_727 = x_733;
        }
        let x_734 : f32 = x_727;
        u_xlat22 = x_734;
        let x_737 : bool = u_xlatb14.x;
        if (x_737) {
          let x_742 : f32 = u_xlat7.x;
          x_738 = x_742;
        } else {
          let x_744 : f32 = u_xlat22;
          x_738 = x_744;
        }
        let x_745 : f32 = x_738;
        u_xlat14 = x_745;
        let x_746 : i32 = u_xlati28;
        let x_748 : f32 = x_159.x_AdditionalShadowParams[x_746].w;
        u_xlat22 = trunc(x_748);
        let x_750 : f32 = u_xlat14;
        let x_751 : f32 = u_xlat22;
        u_xlat14 = (x_750 + x_751);
        let x_753 : f32 = u_xlat14;
        u_xlati6 = i32(x_753);
      }
      let x_755 : i32 = u_xlati6;
      u_xlati6 = (x_755 << bitcast<u32>(2i));
      let x_757 : vec3<f32> = vs_TEXCOORD1;
      let x_760 : i32 = u_xlati6;
      let x_763 : i32 = u_xlati6;
      let x_767 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_760 + 1i) / 4i)][((x_763 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_757.y, x_757.y, x_757.y, x_757.y) * x_767);
      let x_769 : i32 = u_xlati6;
      let x_771 : i32 = u_xlati6;
      let x_774 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[(x_769 / 4i)][(x_771 % 4i)];
      let x_775 : vec3<f32> = vs_TEXCOORD1;
      let x_778 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_774 * vec4<f32>(x_775.x, x_775.x, x_775.x, x_775.x)) + x_778);
      let x_780 : i32 = u_xlati6;
      let x_783 : i32 = u_xlati6;
      let x_787 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_780 + 2i) / 4i)][((x_783 + 2i) % 4i)];
      let x_788 : vec3<f32> = vs_TEXCOORD1;
      let x_791 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_787 * vec4<f32>(x_788.z, x_788.z, x_788.z, x_788.z)) + x_791);
      let x_793 : vec4<f32> = u_xlat7;
      let x_794 : i32 = u_xlati6;
      let x_797 : i32 = u_xlati6;
      let x_801 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_794 + 3i) / 4i)][((x_797 + 3i) % 4i)];
      u_xlat6 = (x_793 + x_801);
      let x_803 : vec4<f32> = u_xlat6;
      let x_805 : vec4<f32> = u_xlat6;
      let x_807 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) / vec3<f32>(x_805.w, x_805.w, x_805.w));
      let x_808 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
      let x_811 : vec4<f32> = u_xlat6;
      let x_812 : vec2<f32> = vec2<f32>(x_811.x, x_811.y);
      let x_814 : f32 = u_xlat6.z;
      txVec1 = vec3<f32>(x_812.x, x_812.y, x_814);
      let x_822 : vec3<f32> = txVec1;
      let x_824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_822.xy, x_822.z);
      u_xlat6.x = x_824;
      let x_826 : i32 = u_xlati28;
      let x_828 : f32 = x_159.x_AdditionalShadowParams[x_826].x;
      u_xlat14 = (1.0f + -(x_828));
      let x_832 : f32 = u_xlat6.x;
      let x_833 : i32 = u_xlati28;
      let x_835 : f32 = x_159.x_AdditionalShadowParams[x_833].x;
      let x_837 : f32 = u_xlat14;
      u_xlat6.x = ((x_832 * x_835) + x_837);
      let x_841 : f32 = u_xlat6.z;
      u_xlatb14.x = (0.0f >= x_841);
      let x_846 : f32 = u_xlat6.z;
      u_xlatb22 = (x_846 >= 1.0f);
      let x_848 : bool = u_xlatb22;
      let x_850 : bool = u_xlatb14.x;
      u_xlatb14.x = (x_848 | x_850);
      let x_854 : bool = u_xlatb14.x;
      if (x_854) {
        x_855 = 1.0f;
      } else {
        let x_860 : f32 = u_xlat6.x;
        x_855 = x_860;
      }
      let x_861 : f32 = x_855;
      u_xlat6.x = x_861;
    } else {
      u_xlat6.x = 1.0f;
    }
    let x_866 : f32 = u_xlat6.x;
    u_xlat14 = (-(x_866) + 1.0f);
    let x_870 : f32 = u_xlat2.x;
    let x_871 : f32 = u_xlat14;
    let x_874 : f32 = u_xlat6.x;
    u_xlat6.x = ((x_870 * x_871) + x_874);
    let x_877 : f32 = u_xlat29;
    let x_879 : f32 = u_xlat6.x;
    u_xlat29 = (x_877 * x_879);
    let x_881 : f32 = u_xlat29;
    let x_883 : i32 = u_xlati28;
    let x_885 : vec4<f32> = x_583.x_AdditionalLightsColor[x_883];
    let x_887 : vec3<f32> = (vec3<f32>(x_881, x_881, x_881) * vec3<f32>(x_885.x, x_885.y, x_885.z));
    let x_888 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
    let x_890 : vec3<f32> = u_xlat1;
    let x_891 : vec3<f32> = u_xlat5;
    u_xlat28 = dot(x_890, x_891);
    let x_893 : f32 = u_xlat28;
    u_xlat28 = clamp(x_893, 0.0f, 1.0f);
    let x_895 : f32 = u_xlat28;
    let x_897 : vec4<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_895, x_895, x_895) * vec3<f32>(x_897.x, x_897.y, x_897.z));
    let x_900 : vec3<f32> = u_xlat5;
    let x_901 : vec4<f32> = u_xlat0;
    let x_904 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_900 * vec3<f32>(x_901.y, x_901.z, x_901.w)) + x_904);

    continuing {
      let x_906 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_906 + bitcast<u32>(1i));
    }
  }
  let x_909 : vec4<f32> = u_xlat3;
  let x_911 : vec4<f32> = u_xlat0;
  let x_914 : vec3<f32> = u_xlat10;
  u_xlat8 = ((vec3<f32>(x_909.x, x_909.y, x_909.z) * vec3<f32>(x_911.y, x_911.z, x_911.w)) + x_914);
  let x_918 : vec3<f32> = u_xlat4;
  let x_919 : vec3<f32> = u_xlat8;
  let x_920 : vec3<f32> = (x_918 + x_919);
  let x_921 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_925 : f32 = x_56.x_Surface;
  u_xlatb8 = (x_925 == 1.0f);
  let x_927 : bool = u_xlatb8;
  if (x_927) {
    let x_932 : f32 = u_xlat0.x;
    x_928 = x_932;
  } else {
    x_928 = 1.0f;
  }
  let x_934 : f32 = x_928;
  SV_Target0.w = x_934;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}


