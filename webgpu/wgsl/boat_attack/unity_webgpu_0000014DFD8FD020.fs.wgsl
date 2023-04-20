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
  /* @offset(208) */
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

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb10 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat28 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat3 : f32;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat12 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_345 : LightShadows;

var<private> u_xlatb4 : bool;

var<private> u_xlatb13 : bool;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatu15 : u32;

var<private> u_xlati24 : i32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlati15 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_573 : AdditionalLights;

var<private> u_xlat24 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlati33 : i32;

var<private> u_xlatb34 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat34 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat9 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb9 : bool;

var<private> u_xlatu6 : u32;

var<private> u_xlatb15 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_175 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_708 : f32;
  var x_718 : f32;
  var txVec1 : vec3<f32>;
  var x_967 : f32;
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
  u_xlatb10 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb10;
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
  let x_137 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb1 = (x_137 == 0.0f);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_147 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_142) + x_147);
  let x_150 : vec3<f32> = u_xlat10;
  let x_151 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_150, x_151);
  let x_155 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_155);
  let x_158 : vec3<f32> = u_xlat10;
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat10 = (x_158 * vec3<f32>(x_159.x, x_159.x, x_159.x));
  let x_164 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat2.x = x_164;
  let x_167 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat2.y = x_167;
  let x_171 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat2.z = x_171;
  let x_173 : bool = u_xlatb1;
  if (x_173) {
    let x_178 : vec3<f32> = u_xlat10;
    x_175 = x_178;
  } else {
    let x_180 : vec4<f32> = u_xlat2;
    x_175 = vec3<f32>(x_180.x, x_180.y, x_180.z);
  }
  let x_182 : vec3<f32> = x_175;
  u_xlat1 = x_182;
  let x_185 : vec3<f32> = vs_TEXCOORD2;
  let x_186 : vec3<f32> = vs_TEXCOORD2;
  u_xlat28 = dot(x_185, x_186);
  let x_188 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_188);
  let x_190 : f32 = u_xlat28;
  let x_192 : vec3<f32> = vs_TEXCOORD2;
  let x_193 : vec3<f32> = (vec3<f32>(x_190, x_190, x_190) * x_192);
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec3<f32> = u_xlat1;
  let x_197 : vec3<f32> = u_xlat1;
  u_xlat28 = dot(x_196, x_197);
  let x_199 : f32 = u_xlat28;
  u_xlat28 = max(x_199, 0.00006103515625f);
  let x_202 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_202);
  let x_206 : f32 = vs_TEXCOORD1.y;
  let x_208 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat3 = (x_206 * x_208);
  let x_211 : f32 = x_45.unity_MatrixV[0i].z;
  let x_213 : f32 = vs_TEXCOORD1.x;
  let x_215 : f32 = u_xlat3;
  u_xlat3 = ((x_211 * x_213) + x_215);
  let x_218 : f32 = x_45.unity_MatrixV[2i].z;
  let x_220 : f32 = vs_TEXCOORD1.z;
  let x_222 : f32 = u_xlat3;
  u_xlat3 = ((x_218 * x_220) + x_222);
  let x_224 : f32 = u_xlat3;
  let x_227 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat3 = (x_224 + x_227);
  let x_229 : f32 = u_xlat3;
  let x_233 : f32 = x_45.x_ProjectionParams.y;
  u_xlat3 = (-(x_229) + -(x_233));
  let x_236 : f32 = u_xlat3;
  u_xlat3 = max(x_236, 0.0f);
  let x_238 : f32 = u_xlat3;
  let x_241 : f32 = x_45.unity_FogParams.x;
  u_xlat3 = (x_238 * x_241);
  u_xlat2.w = 1.0f;
  let x_247 : vec4<f32> = x_95.unity_SHAr;
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_247, x_248);
  let x_253 : vec4<f32> = x_95.unity_SHAg;
  let x_254 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_253, x_254);
  let x_259 : vec4<f32> = x_95.unity_SHAb;
  let x_260 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_259, x_260);
  let x_264 : vec4<f32> = u_xlat2;
  let x_266 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_264.y, x_264.z, x_264.z, x_264.x) * vec4<f32>(x_266.x, x_266.y, x_266.z, x_266.z));
  let x_272 : vec4<f32> = x_95.unity_SHBr;
  let x_273 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_272, x_273);
  let x_278 : vec4<f32> = x_95.unity_SHBg;
  let x_279 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_278, x_279);
  let x_284 : vec4<f32> = x_95.unity_SHBb;
  let x_285 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_284, x_285);
  let x_290 : f32 = u_xlat2.y;
  let x_292 : f32 = u_xlat2.y;
  u_xlat29 = (x_290 * x_292);
  let x_295 : f32 = u_xlat2.x;
  let x_297 : f32 = u_xlat2.x;
  let x_299 : f32 = u_xlat29;
  u_xlat29 = ((x_295 * x_297) + -(x_299));
  let x_305 : vec4<f32> = x_95.unity_SHC;
  let x_307 : f32 = u_xlat29;
  let x_310 : vec3<f32> = u_xlat6;
  u_xlat12 = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307, x_307, x_307)) + x_310);
  let x_312 : vec3<f32> = u_xlat12;
  let x_313 : vec3<f32> = u_xlat4;
  u_xlat12 = (x_312 + x_313);
  let x_315 : vec3<f32> = u_xlat12;
  u_xlat12 = max(x_315, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_320 : vec4<f32> = vs_TEXCOORD6;
  let x_321 : vec2<f32> = vec2<f32>(x_320.x, x_320.y);
  let x_323 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_321.x, x_321.y, x_323);
  let x_335 : vec3<f32> = txVec0;
  let x_337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_335.xy, x_335.z);
  u_xlat29 = x_337;
  let x_348 : f32 = x_345.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_348) + 1.0f);
  let x_352 : f32 = u_xlat29;
  let x_354 : f32 = x_345.x_MainLightShadowParams.x;
  let x_357 : f32 = u_xlat4.x;
  u_xlat29 = ((x_352 * x_354) + x_357);
  let x_361 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (0.0f >= x_361);
  let x_365 : f32 = vs_TEXCOORD6.z;
  u_xlatb13 = (x_365 >= 1.0f);
  let x_367 : bool = u_xlatb13;
  let x_368 : bool = u_xlatb4;
  u_xlatb4 = (x_367 | x_368);
  let x_370 : bool = u_xlatb4;
  let x_371 : f32 = u_xlat29;
  u_xlat29 = select(x_371, 1.0f, x_370);
  let x_373 : vec3<f32> = vs_TEXCOORD1;
  let x_375 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat4 = (x_373 + -(x_375));
  let x_378 : vec3<f32> = u_xlat4;
  let x_379 : vec3<f32> = u_xlat4;
  u_xlat4.x = dot(x_378, x_379);
  let x_384 : f32 = u_xlat4.x;
  let x_386 : f32 = x_345.x_MainLightShadowParams.z;
  let x_389 : f32 = x_345.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_384 * x_386) + x_389);
  let x_393 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_393, 0.0f, 1.0f);
  let x_397 : f32 = u_xlat29;
  u_xlat22 = (-(x_397) + 1.0f);
  let x_401 : f32 = u_xlat13.x;
  let x_402 : f32 = u_xlat22;
  let x_404 : f32 = u_xlat29;
  u_xlat29 = ((x_401 * x_402) + x_404);
  let x_406 : f32 = u_xlat29;
  let x_408 : f32 = x_95.unity_LightData.z;
  u_xlat29 = (x_406 * x_408);
  let x_410 : f32 = u_xlat29;
  let x_413 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat13 = (vec3<f32>(x_410, x_410, x_410) * vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec4<f32> = u_xlat2;
  let x_419 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat29 = dot(vec3<f32>(x_416.x, x_416.y, x_416.z), vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : f32 = u_xlat29;
  u_xlat29 = clamp(x_422, 0.0f, 1.0f);
  let x_424 : f32 = u_xlat29;
  let x_426 : vec3<f32> = u_xlat13;
  let x_427 : vec3<f32> = (vec3<f32>(x_424, x_424, x_424) * x_426);
  let x_428 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_431 : f32 = u_xlat0.x;
  u_xlat29 = ((x_431 * 10.0f) + 1.0f);
  let x_435 : f32 = u_xlat29;
  u_xlat29 = exp2(x_435);
  let x_437 : vec3<f32> = u_xlat1;
  let x_438 : f32 = u_xlat28;
  let x_442 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat6 = ((x_437 * vec3<f32>(x_438, x_438, x_438)) + vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_446 : vec3<f32> = u_xlat6;
  let x_447 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_446, x_447);
  let x_449 : f32 = u_xlat32;
  u_xlat32 = max(x_449, 1.17549435e-38f);
  let x_452 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_452);
  let x_454 : f32 = u_xlat32;
  let x_456 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_454, x_454, x_454) * x_456);
  let x_458 : vec4<f32> = u_xlat2;
  let x_460 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(vec3<f32>(x_458.x, x_458.y, x_458.z), x_460);
  let x_462 : f32 = u_xlat32;
  u_xlat32 = clamp(x_462, 0.0f, 1.0f);
  let x_464 : f32 = u_xlat32;
  u_xlat32 = log2(x_464);
  let x_466 : f32 = u_xlat29;
  let x_467 : f32 = u_xlat32;
  u_xlat32 = (x_466 * x_467);
  let x_469 : f32 = u_xlat32;
  u_xlat32 = exp2(x_469);
  let x_471 : f32 = u_xlat32;
  let x_474 : vec4<f32> = x_57.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_471, x_471, x_471) * vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec3<f32> = u_xlat13;
  let x_478 : vec3<f32> = u_xlat6;
  u_xlat13 = (x_477 * x_478);
  let x_480 : vec4<f32> = u_xlat5;
  let x_482 : vec4<f32> = u_xlat0;
  let x_485 : vec3<f32> = u_xlat13;
  u_xlat13 = ((vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(x_482.y, x_482.z, x_482.w)) + x_485);
  let x_488 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_490 : f32 = x_95.unity_LightData.y;
  u_xlat5.x = min(x_488, x_490);
  let x_496 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_496));
  let x_500 : f32 = u_xlat4.x;
  let x_503 : f32 = x_345.x_AdditionalShadowFadeParams.x;
  let x_506 : f32 = x_345.x_AdditionalShadowFadeParams.y;
  u_xlat4.x = ((x_500 * x_503) + x_506);
  let x_510 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_510, 0.0f, 1.0f);
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_524 : u32 = u_xlatu_loop_1;
    let x_525 : u32 = u_xlatu5;
    if ((x_524 < x_525)) {
    } else {
      break;
    }
    let x_528 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_528 >> 2u);
    let x_532 : u32 = u_xlatu_loop_1;
    u_xlati24 = bitcast<i32>((x_532 & 3u));
    let x_536 : u32 = u_xlatu15;
    let x_539 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_536)];
    let x_549 : i32 = u_xlati24;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_554 : vec4<u32> = indexable[x_549];
    u_xlat15.x = dot(x_539, bitcast<vec4<f32>>(x_554));
    let x_560 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_560);
    let x_563 : vec3<f32> = vs_TEXCOORD1;
    let x_574 : i32 = u_xlati15;
    let x_576 : vec4<f32> = x_573.x_AdditionalLightsPosition[x_574];
    let x_579 : i32 = u_xlati15;
    let x_581 : vec4<f32> = x_573.x_AdditionalLightsPosition[x_579];
    u_xlat7 = ((-(x_563) * vec3<f32>(x_576.w, x_576.w, x_576.w)) + vec3<f32>(x_581.x, x_581.y, x_581.z));
    let x_585 : vec3<f32> = u_xlat7;
    let x_586 : vec3<f32> = u_xlat7;
    u_xlat24 = dot(x_585, x_586);
    let x_588 : f32 = u_xlat24;
    u_xlat24 = max(x_588, 0.00006103515625f);
    let x_591 : f32 = u_xlat24;
    u_xlat33 = inverseSqrt(x_591);
    let x_593 : f32 = u_xlat33;
    let x_595 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_593, x_593, x_593) * x_595);
    let x_597 : f32 = u_xlat24;
    u_xlat33 = (1.0f / x_597);
    let x_599 : f32 = u_xlat24;
    let x_600 : i32 = u_xlati15;
    let x_602 : f32 = x_573.x_AdditionalLightsAttenuation[x_600].x;
    u_xlat24 = (x_599 * x_602);
    let x_604 : f32 = u_xlat24;
    let x_606 : f32 = u_xlat24;
    u_xlat24 = ((-(x_604) * x_606) + 1.0f);
    let x_609 : f32 = u_xlat24;
    u_xlat24 = max(x_609, 0.0f);
    let x_611 : f32 = u_xlat24;
    let x_612 : f32 = u_xlat24;
    u_xlat24 = (x_611 * x_612);
    let x_614 : f32 = u_xlat24;
    let x_615 : f32 = u_xlat33;
    u_xlat24 = (x_614 * x_615);
    let x_617 : i32 = u_xlati15;
    let x_619 : vec4<f32> = x_573.x_AdditionalLightsSpotDir[x_617];
    let x_621 : vec3<f32> = u_xlat7;
    u_xlat33 = dot(vec3<f32>(x_619.x, x_619.y, x_619.z), x_621);
    let x_623 : f32 = u_xlat33;
    let x_624 : i32 = u_xlati15;
    let x_626 : f32 = x_573.x_AdditionalLightsAttenuation[x_624].z;
    let x_628 : i32 = u_xlati15;
    let x_630 : f32 = x_573.x_AdditionalLightsAttenuation[x_628].w;
    u_xlat33 = ((x_623 * x_626) + x_630);
    let x_632 : f32 = u_xlat33;
    u_xlat33 = clamp(x_632, 0.0f, 1.0f);
    let x_634 : f32 = u_xlat33;
    let x_635 : f32 = u_xlat33;
    u_xlat33 = (x_634 * x_635);
    let x_637 : f32 = u_xlat33;
    let x_638 : f32 = u_xlat24;
    u_xlat24 = (x_637 * x_638);
    let x_642 : i32 = u_xlati15;
    let x_644 : f32 = x_345.x_AdditionalShadowParams[x_642].w;
    u_xlati33 = i32(x_644);
    let x_647 : i32 = u_xlati33;
    u_xlatb34 = (x_647 >= 0i);
    let x_649 : bool = u_xlatb34;
    if (x_649) {
      let x_653 : i32 = u_xlati15;
      let x_655 : f32 = x_345.x_AdditionalShadowParams[x_653].z;
      u_xlatb34 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_655, x_655, x_655, x_655))));
      let x_660 : bool = u_xlatb34;
      if (x_660) {
        let x_665 : vec3<f32> = u_xlat7;
        let x_668 : vec3<f32> = u_xlat7;
        let x_671 : vec4<bool> = (abs(vec4<f32>(x_665.z, x_665.z, x_665.y, x_665.z)) >= abs(vec4<f32>(x_668.x, x_668.y, x_668.x, x_668.x)));
        let x_673 : vec3<bool> = vec3<bool>(x_671.x, x_671.y, x_671.z);
        let x_674 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_673.x, x_673.y, x_673.z, x_674.w);
        let x_677 : bool = u_xlatb8.y;
        let x_679 : bool = u_xlatb8.x;
        u_xlatb34 = (x_677 & x_679);
        let x_681 : vec3<f32> = u_xlat7;
        let x_684 : vec4<bool> = (-(vec4<f32>(x_681.z, x_681.y, x_681.z, x_681.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_685 : vec3<bool> = vec3<bool>(x_684.x, x_684.y, x_684.w);
        let x_686 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_685.x, x_685.y, x_686.z, x_685.z);
        let x_690 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_690);
        let x_696 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_696);
        let x_703 : bool = u_xlatb8.w;
        u_xlat35 = select(0.0f, 1.0f, x_703);
        let x_707 : bool = u_xlatb8.z;
        if (x_707) {
          let x_712 : f32 = u_xlat8.y;
          x_708 = x_712;
        } else {
          let x_714 : f32 = u_xlat35;
          x_708 = x_714;
        }
        let x_715 : f32 = x_708;
        u_xlat17 = x_715;
        let x_717 : bool = u_xlatb34;
        if (x_717) {
          let x_722 : f32 = u_xlat8.x;
          x_718 = x_722;
        } else {
          let x_724 : f32 = u_xlat17;
          x_718 = x_724;
        }
        let x_725 : f32 = x_718;
        u_xlat34 = x_725;
        let x_726 : i32 = u_xlati15;
        let x_728 : f32 = x_345.x_AdditionalShadowParams[x_726].w;
        u_xlat8.x = trunc(x_728);
        let x_731 : f32 = u_xlat34;
        let x_733 : f32 = u_xlat8.x;
        u_xlat34 = (x_731 + x_733);
        let x_735 : f32 = u_xlat34;
        u_xlati33 = i32(x_735);
      }
      let x_737 : i32 = u_xlati33;
      u_xlati33 = (x_737 << bitcast<u32>(2i));
      let x_739 : vec3<f32> = vs_TEXCOORD1;
      let x_742 : i32 = u_xlati33;
      let x_745 : i32 = u_xlati33;
      let x_749 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_742 + 1i) / 4i)][((x_745 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_739.y, x_739.y, x_739.y, x_739.y) * x_749);
      let x_751 : i32 = u_xlati33;
      let x_753 : i32 = u_xlati33;
      let x_756 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[(x_751 / 4i)][(x_753 % 4i)];
      let x_757 : vec3<f32> = vs_TEXCOORD1;
      let x_760 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_756 * vec4<f32>(x_757.x, x_757.x, x_757.x, x_757.x)) + x_760);
      let x_762 : i32 = u_xlati33;
      let x_765 : i32 = u_xlati33;
      let x_769 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_762 + 2i) / 4i)][((x_765 + 2i) % 4i)];
      let x_770 : vec3<f32> = vs_TEXCOORD1;
      let x_773 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_769 * vec4<f32>(x_770.z, x_770.z, x_770.z, x_770.z)) + x_773);
      let x_775 : vec4<f32> = u_xlat8;
      let x_776 : i32 = u_xlati33;
      let x_779 : i32 = u_xlati33;
      let x_783 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_776 + 3i) / 4i)][((x_779 + 3i) % 4i)];
      u_xlat8 = (x_775 + x_783);
      let x_785 : vec4<f32> = u_xlat8;
      let x_787 : vec4<f32> = u_xlat8;
      let x_789 : vec3<f32> = (vec3<f32>(x_785.x, x_785.y, x_785.z) / vec3<f32>(x_787.w, x_787.w, x_787.w));
      let x_790 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
      let x_793 : vec4<f32> = u_xlat8;
      let x_794 : vec2<f32> = vec2<f32>(x_793.x, x_793.y);
      let x_796 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_794.x, x_794.y, x_796);
      let x_804 : vec3<f32> = txVec1;
      let x_806 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_804.xy, x_804.z);
      u_xlat33 = x_806;
      let x_807 : i32 = u_xlati15;
      let x_809 : f32 = x_345.x_AdditionalShadowParams[x_807].x;
      u_xlat34 = (1.0f + -(x_809));
      let x_812 : f32 = u_xlat33;
      let x_813 : i32 = u_xlati15;
      let x_815 : f32 = x_345.x_AdditionalShadowParams[x_813].x;
      let x_817 : f32 = u_xlat34;
      u_xlat33 = ((x_812 * x_815) + x_817);
      let x_820 : f32 = u_xlat8.z;
      u_xlatb34 = (0.0f >= x_820);
      let x_823 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_823 >= 1.0f);
      let x_826 : bool = u_xlatb34;
      let x_828 : bool = u_xlatb8.x;
      u_xlatb34 = (x_826 | x_828);
      let x_830 : bool = u_xlatb34;
      let x_831 : f32 = u_xlat33;
      u_xlat33 = select(x_831, 1.0f, x_830);
    } else {
      u_xlat33 = 1.0f;
    }
    let x_834 : f32 = u_xlat33;
    u_xlat34 = (-(x_834) + 1.0f);
    let x_838 : f32 = u_xlat4.x;
    let x_839 : f32 = u_xlat34;
    let x_841 : f32 = u_xlat33;
    u_xlat33 = ((x_838 * x_839) + x_841);
    let x_843 : f32 = u_xlat33;
    let x_844 : f32 = u_xlat24;
    u_xlat24 = (x_843 * x_844);
    let x_846 : f32 = u_xlat24;
    let x_848 : i32 = u_xlati15;
    let x_850 : vec4<f32> = x_573.x_AdditionalLightsColor[x_848];
    u_xlat15 = (vec3<f32>(x_846, x_846, x_846) * vec3<f32>(x_850.x, x_850.y, x_850.z));
    let x_853 : vec4<f32> = u_xlat2;
    let x_855 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(vec3<f32>(x_853.x, x_853.y, x_853.z), x_855);
    let x_857 : f32 = u_xlat34;
    u_xlat34 = clamp(x_857, 0.0f, 1.0f);
    let x_859 : vec3<f32> = u_xlat15;
    let x_860 : f32 = u_xlat34;
    let x_862 : vec3<f32> = (x_859 * vec3<f32>(x_860, x_860, x_860));
    let x_863 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
    let x_865 : vec3<f32> = u_xlat1;
    let x_866 : f32 = u_xlat28;
    let x_869 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_865 * vec3<f32>(x_866, x_866, x_866)) + x_869);
    let x_871 : vec3<f32> = u_xlat7;
    let x_872 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_871, x_872);
    let x_874 : f32 = u_xlat34;
    u_xlat34 = max(x_874, 1.17549435e-38f);
    let x_876 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_876);
    let x_878 : f32 = u_xlat34;
    let x_880 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_878, x_878, x_878) * x_880);
    let x_882 : vec4<f32> = u_xlat2;
    let x_884 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_882.x, x_882.y, x_882.z), x_884);
    let x_888 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_888, 0.0f, 1.0f);
    let x_892 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_892);
    let x_895 : f32 = u_xlat29;
    let x_897 : f32 = u_xlat7.x;
    u_xlat7.x = (x_895 * x_897);
    let x_901 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_901);
    let x_904 : vec3<f32> = u_xlat7;
    let x_907 : vec4<f32> = x_57.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_904.x, x_904.x, x_904.x) * vec3<f32>(x_907.x, x_907.y, x_907.z));
    let x_910 : vec3<f32> = u_xlat15;
    let x_911 : vec3<f32> = u_xlat7;
    u_xlat15 = (x_910 * x_911);
    let x_913 : vec4<f32> = u_xlat8;
    let x_915 : vec4<f32> = u_xlat0;
    let x_918 : vec3<f32> = u_xlat15;
    u_xlat15 = ((vec3<f32>(x_913.x, x_913.y, x_913.z) * vec3<f32>(x_915.y, x_915.z, x_915.w)) + x_918);
    let x_920 : vec3<f32> = u_xlat14;
    let x_921 : vec3<f32> = u_xlat15;
    u_xlat14 = (x_920 + x_921);

    continuing {
      let x_923 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_923 + bitcast<u32>(1i));
    }
  }
  let x_926 : vec3<f32> = u_xlat12;
  let x_927 : vec4<f32> = u_xlat0;
  let x_930 : vec3<f32> = u_xlat13;
  u_xlat9 = ((x_926 * vec3<f32>(x_927.y, x_927.z, x_927.w)) + x_930);
  let x_932 : vec3<f32> = u_xlat14;
  let x_933 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_932 + x_933);
  let x_935 : f32 = u_xlat3;
  let x_936 : f32 = u_xlat3;
  u_xlat1.x = (x_935 * -(x_936));
  let x_941 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_941);
  let x_944 : vec3<f32> = u_xlat9;
  let x_946 : vec4<f32> = x_45.unity_FogColor;
  u_xlat9 = (x_944 + -(vec3<f32>(x_946.x, x_946.y, x_946.z)));
  let x_952 : vec3<f32> = u_xlat1;
  let x_954 : vec3<f32> = u_xlat9;
  let x_957 : vec4<f32> = x_45.unity_FogColor;
  let x_959 : vec3<f32> = ((vec3<f32>(x_952.x, x_952.x, x_952.x) * x_954) + vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_960 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_964 : f32 = x_57.x_Surface;
  u_xlatb9 = (x_964 == 1.0f);
  let x_966 : bool = u_xlatb9;
  if (x_966) {
    let x_971 : f32 = u_xlat0.x;
    x_967 = x_971;
  } else {
    x_967 = 1.0f;
  }
  let x_973 : f32 = x_967;
  SV_Target0.w = x_973;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


