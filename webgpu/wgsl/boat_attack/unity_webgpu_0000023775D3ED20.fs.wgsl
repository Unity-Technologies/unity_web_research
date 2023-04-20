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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

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

var<private> u_xlat26 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb10 : bool;

var<private> u_xlatb18 : bool;

var<private> u_xlat18 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlatu27 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati13 : i32;

var<private> u_xlati5 : i32;

var<private> u_xlat13 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_635 : AdditionalLights;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlati14 : i32;

var<private> u_xlatb22 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb30 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlatu28 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var txVec0 : vec3<f32>;
  var x_479 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_796 : f32;
  var x_806 : f32;
  var txVec1 : vec3<f32>;
  var x_917 : f32;
  var x_1017 : f32;
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
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_45.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_80 : vec3<f32> = u_xlat1;
  let x_83 : f32 = x_45.x_GlobalMipBias.x;
  let x_84 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_80.x, x_80.y), x_83);
  u_xlat1.x = x_84.w;
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
  let x_219 : vec4<f32> = x_159.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_216 < x_219);
  let x_222 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_222);
  let x_226 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_238);
  let x_244 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_244);
  let x_248 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_248);
  let x_251 : vec4<f32> = u_xlat2;
  let x_253 : vec4<f32> = u_xlat3;
  let x_255 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) + vec3<f32>(x_253.y, x_253.z, x_253.w));
  let x_256 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat2;
  let x_261 : vec3<f32> = max(vec3<f32>(x_258.x, x_258.y, x_258.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_262 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_262.x, x_261.x, x_261.y, x_261.z);
  let x_265 : vec4<f32> = u_xlat3;
  u_xlat25 = dot(x_265, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_271 : f32 = u_xlat25;
  u_xlat25 = (-(x_271) + 4.0f);
  let x_276 : f32 = u_xlat25;
  u_xlatu25 = u32(x_276);
  let x_280 : u32 = u_xlatu25;
  u_xlati25 = (bitcast<i32>(x_280) << bitcast<u32>(2i));
  let x_283 : vec3<f32> = vs_TEXCOORD1;
  let x_285 : i32 = u_xlati25;
  let x_288 : i32 = u_xlati25;
  let x_292 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_285 + 1i) / 4i)][((x_288 + 1i) % 4i)];
  let x_294 : vec3<f32> = (vec3<f32>(x_283.y, x_283.y, x_283.y) * vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : i32 = u_xlati25;
  let x_299 : i32 = u_xlati25;
  let x_302 : vec4<f32> = x_159.x_MainLightWorldToShadow[(x_297 / 4i)][(x_299 % 4i)];
  let x_304 : vec3<f32> = vs_TEXCOORD1;
  let x_307 : vec4<f32> = u_xlat2;
  let x_309 : vec3<f32> = ((vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_304.x, x_304.x, x_304.x)) + vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : i32 = u_xlati25;
  let x_315 : i32 = u_xlati25;
  let x_319 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_312 + 2i) / 4i)][((x_315 + 2i) % 4i)];
  let x_321 : vec3<f32> = vs_TEXCOORD1;
  let x_324 : vec4<f32> = u_xlat2;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.z, x_321.z, x_321.z)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat2;
  let x_331 : i32 = u_xlati25;
  let x_334 : i32 = u_xlati25;
  let x_338 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_331 + 3i) / 4i)][((x_334 + 3i) % 4i)];
  let x_340 : vec3<f32> = (vec3<f32>(x_329.x, x_329.y, x_329.z) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_344 : f32 = vs_TEXCOORD1.y;
  let x_347 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat25 = (x_344 * x_347);
  let x_350 : f32 = x_45.unity_MatrixV[0i].z;
  let x_352 : f32 = vs_TEXCOORD1.x;
  let x_354 : f32 = u_xlat25;
  u_xlat25 = ((x_350 * x_352) + x_354);
  let x_357 : f32 = x_45.unity_MatrixV[2i].z;
  let x_359 : f32 = vs_TEXCOORD1.z;
  let x_361 : f32 = u_xlat25;
  u_xlat25 = ((x_357 * x_359) + x_361);
  let x_363 : f32 = u_xlat25;
  let x_365 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat25 = (x_363 + x_365);
  let x_367 : f32 = u_xlat25;
  let x_370 : f32 = x_45.x_ProjectionParams.y;
  u_xlat25 = (-(x_367) + -(x_370));
  let x_373 : f32 = u_xlat25;
  u_xlat25 = max(x_373, 0.0f);
  let x_375 : f32 = u_xlat25;
  let x_378 : f32 = x_45.unity_FogParams.x;
  u_xlat25 = (x_375 * x_378);
  let x_386 : vec2<f32> = vs_TEXCOORD7;
  let x_388 : f32 = x_45.x_GlobalMipBias.x;
  let x_389 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_386, x_388);
  u_xlat3 = x_389;
  let x_394 : vec2<f32> = vs_TEXCOORD7;
  let x_396 : f32 = x_45.x_GlobalMipBias.x;
  let x_397 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_394, x_396);
  u_xlat4 = vec3<f32>(x_397.x, x_397.y, x_397.z);
  let x_399 : vec4<f32> = u_xlat3;
  let x_403 : vec3<f32> = (vec3<f32>(x_399.x, x_399.y, x_399.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_404 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_407 : vec3<f32> = u_xlat1;
  let x_408 : vec4<f32> = u_xlat3;
  u_xlat26 = dot(x_407, vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : f32 = u_xlat26;
  u_xlat26 = (x_411 + 0.5f);
  let x_414 : f32 = u_xlat26;
  let x_416 : vec3<f32> = u_xlat4;
  let x_417 : vec3<f32> = (vec3<f32>(x_414, x_414, x_414) * x_416);
  let x_418 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_421 : f32 = u_xlat3.w;
  u_xlat26 = max(x_421, 0.00009999999747378752f);
  let x_424 : vec4<f32> = u_xlat3;
  let x_426 : f32 = u_xlat26;
  let x_428 : vec3<f32> = (vec3<f32>(x_424.x, x_424.y, x_424.z) / vec3<f32>(x_426, x_426, x_426));
  let x_429 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_433 : vec4<f32> = u_xlat2;
  let x_434 : vec2<f32> = vec2<f32>(x_433.x, x_433.y);
  let x_436 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_434.x, x_434.y, x_436);
  let x_448 : vec3<f32> = txVec0;
  let x_450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_448.xy, x_448.z);
  u_xlat2.x = x_450;
  let x_454 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat10.x = (-(x_454) + 1.0f);
  let x_459 : f32 = u_xlat2.x;
  let x_461 : f32 = x_159.x_MainLightShadowParams.x;
  let x_464 : f32 = u_xlat10.x;
  u_xlat2.x = ((x_459 * x_461) + x_464);
  let x_469 : f32 = u_xlat2.z;
  u_xlatb10 = (0.0f >= x_469);
  let x_473 : f32 = u_xlat2.z;
  u_xlatb18 = (x_473 >= 1.0f);
  let x_475 : bool = u_xlatb18;
  let x_476 : bool = u_xlatb10;
  u_xlatb10 = (x_475 | x_476);
  let x_478 : bool = u_xlatb10;
  if (x_478) {
    x_479 = 1.0f;
  } else {
    let x_484 : f32 = u_xlat2.x;
    x_479 = x_484;
  }
  let x_485 : f32 = x_479;
  u_xlat2.x = x_485;
  let x_487 : vec3<f32> = vs_TEXCOORD1;
  let x_490 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat10 = (x_487 + -(x_490));
  let x_493 : vec3<f32> = u_xlat10;
  let x_494 : vec3<f32> = u_xlat10;
  u_xlat10.x = dot(x_493, x_494);
  let x_499 : f32 = u_xlat10.x;
  let x_501 : f32 = x_159.x_MainLightShadowParams.z;
  let x_504 : f32 = x_159.x_MainLightShadowParams.w;
  u_xlat18 = ((x_499 * x_501) + x_504);
  let x_506 : f32 = u_xlat18;
  u_xlat18 = clamp(x_506, 0.0f, 1.0f);
  let x_509 : f32 = u_xlat2.x;
  u_xlat26 = (-(x_509) + 1.0f);
  let x_512 : f32 = u_xlat18;
  let x_513 : f32 = u_xlat26;
  let x_516 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_512 * x_513) + x_516);
  let x_520 : f32 = u_xlat2.x;
  let x_522 : f32 = x_95.unity_LightData.z;
  u_xlat2.x = (x_520 * x_522);
  let x_525 : vec4<f32> = u_xlat2;
  let x_528 : vec4<f32> = x_45.x_MainLightColor;
  let x_530 : vec3<f32> = (vec3<f32>(x_525.x, x_525.x, x_525.x) * vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_530.x, x_531.y, x_530.y, x_530.z);
  let x_534 : vec3<f32> = u_xlat1;
  let x_536 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat27 = dot(x_534, vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : f32 = u_xlat27;
  u_xlat27 = clamp(x_539, 0.0f, 1.0f);
  let x_541 : vec4<f32> = u_xlat2;
  let x_543 : f32 = u_xlat27;
  let x_545 : vec3<f32> = (vec3<f32>(x_541.x, x_541.z, x_541.w) * vec3<f32>(x_543, x_543, x_543));
  let x_546 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_545.x, x_546.y, x_545.y, x_545.z);
  let x_548 : vec4<f32> = u_xlat0;
  let x_550 : vec4<f32> = u_xlat2;
  let x_552 : vec3<f32> = (vec3<f32>(x_548.y, x_548.z, x_548.w) * vec3<f32>(x_550.x, x_550.z, x_550.w));
  let x_553 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_552.x, x_553.y, x_552.y, x_552.z);
  let x_556 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_558 : f32 = x_95.unity_LightData.y;
  u_xlat27 = min(x_556, x_558);
  let x_561 : f32 = u_xlat27;
  u_xlatu27 = bitcast<u32>(i32(x_561));
  let x_565 : f32 = u_xlat10.x;
  let x_568 : f32 = x_159.x_AdditionalShadowFadeParams.x;
  let x_571 : f32 = x_159.x_AdditionalShadowFadeParams.y;
  u_xlat10.x = ((x_565 * x_568) + x_571);
  let x_575 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_575, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_588 : u32 = u_xlatu_loop_1;
    let x_589 : u32 = u_xlatu27;
    if ((x_588 < x_589)) {
    } else {
      break;
    }
    let x_592 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_592 >> 2u);
    let x_595 : u32 = u_xlatu_loop_1;
    u_xlati13 = bitcast<i32>((x_595 & 3u));
    let x_598 : u32 = u_xlatu5;
    let x_601 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_598)];
    let x_611 : i32 = u_xlati13;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_616 : vec4<u32> = indexable[x_611];
    u_xlat5.x = dot(x_601, bitcast<vec4<f32>>(x_616));
    let x_622 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_622);
    let x_625 : vec3<f32> = vs_TEXCOORD1;
    let x_636 : i32 = u_xlati5;
    let x_638 : vec4<f32> = x_635.x_AdditionalLightsPosition[x_636];
    let x_641 : i32 = u_xlati5;
    let x_643 : vec4<f32> = x_635.x_AdditionalLightsPosition[x_641];
    u_xlat13 = ((-(x_625) * vec3<f32>(x_638.w, x_638.w, x_638.w)) + vec3<f32>(x_643.x, x_643.y, x_643.z));
    let x_647 : vec3<f32> = u_xlat13;
    let x_648 : vec3<f32> = u_xlat13;
    u_xlat6.x = dot(x_647, x_648);
    let x_652 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_652, 0.00006103515625f);
    let x_658 : f32 = u_xlat6.x;
    u_xlat14.x = inverseSqrt(x_658);
    let x_661 : vec3<f32> = u_xlat13;
    let x_662 : vec3<f32> = u_xlat14;
    u_xlat13 = (x_661 * vec3<f32>(x_662.x, x_662.x, x_662.x));
    let x_666 : f32 = u_xlat6.x;
    u_xlat14.x = (1.0f / x_666);
    let x_670 : f32 = u_xlat6.x;
    let x_671 : i32 = u_xlati5;
    let x_673 : f32 = x_635.x_AdditionalLightsAttenuation[x_671].x;
    u_xlat6.x = (x_670 * x_673);
    let x_677 : f32 = u_xlat6.x;
    let x_680 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_677) * x_680) + 1.0f);
    let x_685 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_685, 0.0f);
    let x_689 : f32 = u_xlat6.x;
    let x_691 : f32 = u_xlat6.x;
    u_xlat6.x = (x_689 * x_691);
    let x_695 : f32 = u_xlat6.x;
    let x_697 : f32 = u_xlat14.x;
    u_xlat6.x = (x_695 * x_697);
    let x_700 : i32 = u_xlati5;
    let x_702 : vec4<f32> = x_635.x_AdditionalLightsSpotDir[x_700];
    let x_704 : vec3<f32> = u_xlat13;
    u_xlat14.x = dot(vec3<f32>(x_702.x, x_702.y, x_702.z), x_704);
    let x_708 : f32 = u_xlat14.x;
    let x_709 : i32 = u_xlati5;
    let x_711 : f32 = x_635.x_AdditionalLightsAttenuation[x_709].z;
    let x_713 : i32 = u_xlati5;
    let x_715 : f32 = x_635.x_AdditionalLightsAttenuation[x_713].w;
    u_xlat14.x = ((x_708 * x_711) + x_715);
    let x_719 : f32 = u_xlat14.x;
    u_xlat14.x = clamp(x_719, 0.0f, 1.0f);
    let x_723 : f32 = u_xlat14.x;
    let x_725 : f32 = u_xlat14.x;
    u_xlat14.x = (x_723 * x_725);
    let x_729 : f32 = u_xlat14.x;
    let x_731 : f32 = u_xlat6.x;
    u_xlat6.x = (x_729 * x_731);
    let x_736 : i32 = u_xlati5;
    let x_738 : f32 = x_159.x_AdditionalShadowParams[x_736].w;
    u_xlati14 = i32(x_738);
    let x_741 : i32 = u_xlati14;
    u_xlatb22 = (x_741 >= 0i);
    let x_743 : bool = u_xlatb22;
    if (x_743) {
      let x_747 : i32 = u_xlati5;
      let x_749 : f32 = x_159.x_AdditionalShadowParams[x_747].z;
      u_xlatb22 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_749, x_749, x_749, x_749))));
      let x_753 : bool = u_xlatb22;
      if (x_753) {
        let x_757 : vec3<f32> = u_xlat13;
        let x_760 : vec3<f32> = u_xlat13;
        let x_763 : vec4<bool> = (abs(vec4<f32>(x_757.z, x_757.z, x_757.y, x_757.z)) >= abs(vec4<f32>(x_760.x, x_760.y, x_760.x, x_760.x)));
        let x_765 : vec3<bool> = vec3<bool>(x_763.x, x_763.y, x_763.z);
        let x_766 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_765.x, x_765.y, x_765.z, x_766.w);
        let x_769 : bool = u_xlatb7.y;
        let x_771 : bool = u_xlatb7.x;
        u_xlatb22 = (x_769 & x_771);
        let x_773 : vec3<f32> = u_xlat13;
        let x_776 : vec4<bool> = (-(vec4<f32>(x_773.z, x_773.y, x_773.z, x_773.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_777 : vec3<bool> = vec3<bool>(x_776.x, x_776.y, x_776.w);
        let x_778 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_777.x, x_777.y, x_778.z, x_777.z);
        let x_782 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_782);
        let x_787 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_787);
        let x_792 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_792);
        let x_795 : bool = u_xlatb7.z;
        if (x_795) {
          let x_800 : f32 = u_xlat7.y;
          x_796 = x_800;
        } else {
          let x_802 : f32 = u_xlat30;
          x_796 = x_802;
        }
        let x_803 : f32 = x_796;
        u_xlat30 = x_803;
        let x_805 : bool = u_xlatb22;
        if (x_805) {
          let x_810 : f32 = u_xlat7.x;
          x_806 = x_810;
        } else {
          let x_812 : f32 = u_xlat30;
          x_806 = x_812;
        }
        let x_813 : f32 = x_806;
        u_xlat22 = x_813;
        let x_814 : i32 = u_xlati5;
        let x_816 : f32 = x_159.x_AdditionalShadowParams[x_814].w;
        u_xlat30 = trunc(x_816);
        let x_818 : f32 = u_xlat22;
        let x_819 : f32 = u_xlat30;
        u_xlat22 = (x_818 + x_819);
        let x_821 : f32 = u_xlat22;
        u_xlati14 = i32(x_821);
      }
      let x_823 : i32 = u_xlati14;
      u_xlati14 = (x_823 << bitcast<u32>(2i));
      let x_825 : vec3<f32> = vs_TEXCOORD1;
      let x_828 : i32 = u_xlati14;
      let x_831 : i32 = u_xlati14;
      let x_835 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_828 + 1i) / 4i)][((x_831 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_825.y, x_825.y, x_825.y, x_825.y) * x_835);
      let x_837 : i32 = u_xlati14;
      let x_839 : i32 = u_xlati14;
      let x_842 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[(x_837 / 4i)][(x_839 % 4i)];
      let x_843 : vec3<f32> = vs_TEXCOORD1;
      let x_846 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_842 * vec4<f32>(x_843.x, x_843.x, x_843.x, x_843.x)) + x_846);
      let x_848 : i32 = u_xlati14;
      let x_851 : i32 = u_xlati14;
      let x_855 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_848 + 2i) / 4i)][((x_851 + 2i) % 4i)];
      let x_856 : vec3<f32> = vs_TEXCOORD1;
      let x_859 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_855 * vec4<f32>(x_856.z, x_856.z, x_856.z, x_856.z)) + x_859);
      let x_861 : vec4<f32> = u_xlat7;
      let x_862 : i32 = u_xlati14;
      let x_865 : i32 = u_xlati14;
      let x_869 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_862 + 3i) / 4i)][((x_865 + 3i) % 4i)];
      u_xlat7 = (x_861 + x_869);
      let x_871 : vec4<f32> = u_xlat7;
      let x_873 : vec4<f32> = u_xlat7;
      u_xlat14 = (vec3<f32>(x_871.x, x_871.y, x_871.z) / vec3<f32>(x_873.w, x_873.w, x_873.w));
      let x_877 : vec3<f32> = u_xlat14;
      let x_878 : vec2<f32> = vec2<f32>(x_877.x, x_877.y);
      let x_880 : f32 = u_xlat14.z;
      txVec1 = vec3<f32>(x_878.x, x_878.y, x_880);
      let x_888 : vec3<f32> = txVec1;
      let x_890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_888.xy, x_888.z);
      u_xlat14.x = x_890;
      let x_892 : i32 = u_xlati5;
      let x_894 : f32 = x_159.x_AdditionalShadowParams[x_892].x;
      u_xlat22 = (1.0f + -(x_894));
      let x_898 : f32 = u_xlat14.x;
      let x_899 : i32 = u_xlati5;
      let x_901 : f32 = x_159.x_AdditionalShadowParams[x_899].x;
      let x_903 : f32 = u_xlat22;
      u_xlat14.x = ((x_898 * x_901) + x_903);
      let x_907 : f32 = u_xlat14.z;
      u_xlatb22 = (0.0f >= x_907);
      let x_911 : f32 = u_xlat14.z;
      u_xlatb30 = (x_911 >= 1.0f);
      let x_913 : bool = u_xlatb30;
      let x_914 : bool = u_xlatb22;
      u_xlatb22 = (x_913 | x_914);
      let x_916 : bool = u_xlatb22;
      if (x_916) {
        x_917 = 1.0f;
      } else {
        let x_922 : f32 = u_xlat14.x;
        x_917 = x_922;
      }
      let x_923 : f32 = x_917;
      u_xlat14.x = x_923;
    } else {
      u_xlat14.x = 1.0f;
    }
    let x_928 : f32 = u_xlat14.x;
    u_xlat22 = (-(x_928) + 1.0f);
    let x_932 : f32 = u_xlat10.x;
    let x_933 : f32 = u_xlat22;
    let x_936 : f32 = u_xlat14.x;
    u_xlat14.x = ((x_932 * x_933) + x_936);
    let x_940 : f32 = u_xlat14.x;
    let x_942 : f32 = u_xlat6.x;
    u_xlat6.x = (x_940 * x_942);
    let x_945 : vec3<f32> = u_xlat6;
    let x_947 : i32 = u_xlati5;
    let x_949 : vec4<f32> = x_635.x_AdditionalLightsColor[x_947];
    u_xlat6 = (vec3<f32>(x_945.x, x_945.x, x_945.x) * vec3<f32>(x_949.x, x_949.y, x_949.z));
    let x_952 : vec3<f32> = u_xlat1;
    let x_953 : vec3<f32> = u_xlat13;
    u_xlat5.x = dot(x_952, x_953);
    let x_957 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_957, 0.0f, 1.0f);
    let x_960 : vec3<f32> = u_xlat5;
    let x_962 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_960.x, x_960.x, x_960.x) * x_962);
    let x_964 : vec3<f32> = u_xlat5;
    let x_965 : vec4<f32> = u_xlat0;
    let x_968 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_964 * vec3<f32>(x_965.y, x_965.z, x_965.w)) + x_968);

    continuing {
      let x_970 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_970 + bitcast<u32>(1i));
    }
  }
  let x_973 : vec4<f32> = u_xlat3;
  let x_975 : vec4<f32> = u_xlat0;
  let x_978 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_973.x, x_973.y, x_973.z) * vec3<f32>(x_975.y, x_975.z, x_975.w)) + vec3<f32>(x_978.x, x_978.z, x_978.w));
  let x_981 : vec3<f32> = u_xlat4;
  let x_982 : vec3<f32> = u_xlat8;
  u_xlat8 = (x_981 + x_982);
  let x_984 : f32 = u_xlat25;
  let x_985 : f32 = u_xlat25;
  u_xlat1.x = (x_984 * -(x_985));
  let x_990 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_990);
  let x_993 : vec3<f32> = u_xlat8;
  let x_996 : vec4<f32> = x_45.unity_FogColor;
  u_xlat8 = (x_993 + -(vec3<f32>(x_996.x, x_996.y, x_996.z)));
  let x_1002 : vec3<f32> = u_xlat1;
  let x_1004 : vec3<f32> = u_xlat8;
  let x_1007 : vec4<f32> = x_45.unity_FogColor;
  let x_1009 : vec3<f32> = ((vec3<f32>(x_1002.x, x_1002.x, x_1002.x) * x_1004) + vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1010 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
  let x_1014 : f32 = x_57.x_Surface;
  u_xlatb8 = (x_1014 == 1.0f);
  let x_1016 : bool = u_xlatb8;
  if (x_1016) {
    let x_1021 : f32 = u_xlat0.x;
    x_1017 = x_1021;
  } else {
    x_1017 = 1.0f;
  }
  let x_1023 : f32 = x_1017;
  SV_Target0.w = x_1023;
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


