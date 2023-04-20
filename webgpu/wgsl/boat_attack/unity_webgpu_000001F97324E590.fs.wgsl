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

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_160 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat25 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb10 : bool;

var<private> u_xlat18 : f32;

var<private> u_xlatu25 : u32;

var<private> u_xlatu28 : u32;

var<private> u_xlati5 : i32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

@group(1) @binding(1) var<uniform> x_614 : AdditionalLights;

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
  var x_758 : f32;
  var x_769 : f32;
  var txVec1 : vec3<f32>;
  var x_886 : f32;
  var x_964 : f32;
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
  let x_152 : vec3<f32> = vs_TEXCOORD1;
  let x_162 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres0;
  let x_165 : vec3<f32> = (x_152 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec3<f32> = vs_TEXCOORD1;
  let x_171 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres1;
  let x_174 : vec3<f32> = (x_169 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD1;
  let x_181 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres2;
  let x_184 : vec3<f32> = (x_178 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_189 : vec3<f32> = vs_TEXCOORD1;
  let x_192 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_189 + -(vec3<f32>(x_192.x, x_192.y, x_192.z)));
  let x_196 : vec4<f32> = u_xlat2;
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_202 : vec4<f32> = u_xlat3;
  let x_204 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_209 : vec4<f32> = u_xlat4;
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_209.x, x_209.y, x_209.z), vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_215 : vec3<f32> = u_xlat5;
  let x_216 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_215, x_216);
  let x_222 : vec4<f32> = u_xlat2;
  let x_224 : vec4<f32> = x_160.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_222 < x_224);
  let x_227 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_227);
  let x_231 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_231);
  let x_235 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_235);
  let x_239 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_239);
  let x_243 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_243);
  let x_249 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_249);
  let x_253 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_253);
  let x_256 : vec4<f32> = u_xlat2;
  let x_258 : vec4<f32> = u_xlat3;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + vec3<f32>(x_258.y, x_258.z, x_258.w));
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat2;
  let x_266 : vec3<f32> = max(vec3<f32>(x_263.x, x_263.y, x_263.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_267 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_267.x, x_266.x, x_266.y, x_266.z);
  let x_269 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_269, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_277 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_277) + 4.0f);
  let x_284 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_284);
  let x_288 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_288) << bitcast<u32>(2i));
  let x_292 : vec3<f32> = vs_TEXCOORD1;
  let x_294 : i32 = u_xlati2;
  let x_297 : i32 = u_xlati2;
  let x_301 : vec4<f32> = x_160.x_MainLightWorldToShadow[((x_294 + 1i) / 4i)][((x_297 + 1i) % 4i)];
  u_xlat10 = (vec3<f32>(x_292.y, x_292.y, x_292.y) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : i32 = u_xlati2;
  let x_306 : i32 = u_xlati2;
  let x_309 : vec4<f32> = x_160.x_MainLightWorldToShadow[(x_304 / 4i)][(x_306 % 4i)];
  let x_311 : vec3<f32> = vs_TEXCOORD1;
  let x_314 : vec3<f32> = u_xlat10;
  u_xlat10 = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.x, x_311.x, x_311.x)) + x_314);
  let x_316 : i32 = u_xlati2;
  let x_319 : i32 = u_xlati2;
  let x_323 : vec4<f32> = x_160.x_MainLightWorldToShadow[((x_316 + 2i) / 4i)][((x_319 + 2i) % 4i)];
  let x_325 : vec3<f32> = vs_TEXCOORD1;
  let x_328 : vec3<f32> = u_xlat10;
  u_xlat10 = ((vec3<f32>(x_323.x, x_323.y, x_323.z) * vec3<f32>(x_325.z, x_325.z, x_325.z)) + x_328);
  let x_330 : vec3<f32> = u_xlat10;
  let x_331 : i32 = u_xlati2;
  let x_334 : i32 = u_xlati2;
  let x_338 : vec4<f32> = x_160.x_MainLightWorldToShadow[((x_331 + 3i) / 4i)][((x_334 + 3i) % 4i)];
  let x_340 : vec3<f32> = (x_330 + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  u_xlat1.w = 1.0f;
  let x_346 : vec4<f32> = x_94.unity_SHAr;
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_346, x_347);
  let x_352 : vec4<f32> = x_94.unity_SHAg;
  let x_353 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_352, x_353);
  let x_358 : vec4<f32> = x_94.unity_SHAb;
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_358, x_359);
  let x_362 : vec4<f32> = u_xlat1;
  let x_364 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_362.y, x_362.z, x_362.z, x_362.x) * vec4<f32>(x_364.x, x_364.y, x_364.z, x_364.z));
  let x_369 : vec4<f32> = x_94.unity_SHBr;
  let x_370 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_369, x_370);
  let x_375 : vec4<f32> = x_94.unity_SHBg;
  let x_376 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_375, x_376);
  let x_381 : vec4<f32> = x_94.unity_SHBb;
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_381, x_382);
  let x_387 : f32 = u_xlat1.y;
  let x_389 : f32 = u_xlat1.y;
  u_xlat25 = (x_387 * x_389);
  let x_392 : f32 = u_xlat1.x;
  let x_394 : f32 = u_xlat1.x;
  let x_396 : f32 = u_xlat25;
  u_xlat25 = ((x_392 * x_394) + -(x_396));
  let x_401 : vec4<f32> = x_94.unity_SHC;
  let x_403 : f32 = u_xlat25;
  let x_406 : vec3<f32> = u_xlat5;
  let x_407 : vec3<f32> = ((vec3<f32>(x_401.x, x_401.y, x_401.z) * vec3<f32>(x_403, x_403, x_403)) + x_406);
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_410 : vec4<f32> = u_xlat3;
  let x_412 : vec4<f32> = u_xlat4;
  let x_414 : vec3<f32> = (vec3<f32>(x_410.x, x_410.y, x_410.z) + vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat3;
  let x_419 : vec3<f32> = max(vec3<f32>(x_417.x, x_417.y, x_417.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_420 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_424 : vec4<f32> = u_xlat2;
  let x_425 : vec2<f32> = vec2<f32>(x_424.x, x_424.y);
  let x_427 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_425.x, x_425.y, x_427);
  let x_439 : vec3<f32> = txVec0;
  let x_441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_439.xy, x_439.z);
  u_xlat25 = x_441;
  let x_444 : f32 = x_160.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_444) + 1.0f);
  let x_448 : f32 = u_xlat25;
  let x_450 : f32 = x_160.x_MainLightShadowParams.x;
  let x_453 : f32 = u_xlat2.x;
  u_xlat25 = ((x_448 * x_450) + x_453);
  let x_456 : f32 = u_xlat2.z;
  u_xlatb2.x = (0.0f >= x_456);
  let x_461 : f32 = u_xlat2.z;
  u_xlatb10 = (x_461 >= 1.0f);
  let x_463 : bool = u_xlatb10;
  let x_465 : bool = u_xlatb2.x;
  u_xlatb2.x = (x_463 | x_465);
  let x_469 : bool = u_xlatb2.x;
  let x_470 : f32 = u_xlat25;
  u_xlat25 = select(x_470, 1.0f, x_469);
  let x_472 : vec3<f32> = vs_TEXCOORD1;
  let x_475 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_477 : vec3<f32> = (x_472 + -(x_475));
  let x_478 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_480 : vec4<f32> = u_xlat2;
  let x_482 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_480.x, x_480.y, x_480.z), vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_487 : f32 = u_xlat2.x;
  let x_489 : f32 = x_160.x_MainLightShadowParams.z;
  let x_492 : f32 = x_160.x_MainLightShadowParams.w;
  u_xlat10.x = ((x_487 * x_489) + x_492);
  let x_496 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_496, 0.0f, 1.0f);
  let x_500 : f32 = u_xlat25;
  u_xlat18 = (-(x_500) + 1.0f);
  let x_504 : f32 = u_xlat10.x;
  let x_505 : f32 = u_xlat18;
  let x_507 : f32 = u_xlat25;
  u_xlat25 = ((x_504 * x_505) + x_507);
  let x_509 : f32 = u_xlat25;
  let x_511 : f32 = x_94.unity_LightData.z;
  u_xlat25 = (x_509 * x_511);
  let x_513 : f32 = u_xlat25;
  let x_516 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat10 = (vec3<f32>(x_513, x_513, x_513) * vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_519 : vec4<f32> = u_xlat1;
  let x_522 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat25 = dot(vec3<f32>(x_519.x, x_519.y, x_519.z), vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : f32 = u_xlat25;
  u_xlat25 = clamp(x_525, 0.0f, 1.0f);
  let x_527 : f32 = u_xlat25;
  let x_529 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_527, x_527, x_527) * x_529);
  let x_531 : vec4<f32> = u_xlat0;
  let x_533 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_531.y, x_531.z, x_531.w) * x_533);
  let x_536 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_538 : f32 = x_94.unity_LightData.y;
  u_xlat25 = min(x_536, x_538);
  let x_541 : f32 = u_xlat25;
  u_xlatu25 = bitcast<u32>(i32(x_541));
  let x_545 : f32 = u_xlat2.x;
  let x_548 : f32 = x_160.x_AdditionalShadowFadeParams.x;
  let x_551 : f32 = x_160.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_545 * x_548) + x_551);
  let x_555 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_555, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_568 : u32 = u_xlatu_loop_1;
    let x_569 : u32 = u_xlatu25;
    if ((x_568 < x_569)) {
    } else {
      break;
    }
    let x_572 : u32 = u_xlatu_loop_1;
    u_xlatu28 = (x_572 >> 2u);
    let x_575 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_575 & 3u));
    let x_580 : u32 = u_xlatu28;
    let x_583 : vec4<f32> = x_94.unity_LightIndices[bitcast<i32>(x_580)];
    let x_593 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_598 : vec4<u32> = indexable[x_593];
    u_xlat28 = dot(x_583, bitcast<vec4<f32>>(x_598));
    let x_602 : f32 = u_xlat28;
    u_xlati28 = i32(x_602);
    let x_604 : vec3<f32> = vs_TEXCOORD1;
    let x_615 : i32 = u_xlati28;
    let x_617 : vec4<f32> = x_614.x_AdditionalLightsPosition[x_615];
    let x_620 : i32 = u_xlati28;
    let x_622 : vec4<f32> = x_614.x_AdditionalLightsPosition[x_620];
    u_xlat5 = ((-(x_604) * vec3<f32>(x_617.w, x_617.w, x_617.w)) + vec3<f32>(x_622.x, x_622.y, x_622.z));
    let x_626 : vec3<f32> = u_xlat5;
    let x_627 : vec3<f32> = u_xlat5;
    u_xlat29 = dot(x_626, x_627);
    let x_629 : f32 = u_xlat29;
    u_xlat29 = max(x_629, 0.00006103515625f);
    let x_633 : f32 = u_xlat29;
    u_xlat6.x = inverseSqrt(x_633);
    let x_636 : vec3<f32> = u_xlat5;
    let x_637 : vec4<f32> = u_xlat6;
    u_xlat5 = (x_636 * vec3<f32>(x_637.x, x_637.x, x_637.x));
    let x_640 : f32 = u_xlat29;
    u_xlat6.x = (1.0f / x_640);
    let x_643 : f32 = u_xlat29;
    let x_644 : i32 = u_xlati28;
    let x_646 : f32 = x_614.x_AdditionalLightsAttenuation[x_644].x;
    u_xlat29 = (x_643 * x_646);
    let x_648 : f32 = u_xlat29;
    let x_650 : f32 = u_xlat29;
    u_xlat29 = ((-(x_648) * x_650) + 1.0f);
    let x_653 : f32 = u_xlat29;
    u_xlat29 = max(x_653, 0.0f);
    let x_655 : f32 = u_xlat29;
    let x_656 : f32 = u_xlat29;
    u_xlat29 = (x_655 * x_656);
    let x_658 : f32 = u_xlat29;
    let x_660 : f32 = u_xlat6.x;
    u_xlat29 = (x_658 * x_660);
    let x_662 : i32 = u_xlati28;
    let x_664 : vec4<f32> = x_614.x_AdditionalLightsSpotDir[x_662];
    let x_666 : vec3<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_664.x, x_664.y, x_664.z), x_666);
    let x_670 : f32 = u_xlat6.x;
    let x_671 : i32 = u_xlati28;
    let x_673 : f32 = x_614.x_AdditionalLightsAttenuation[x_671].z;
    let x_675 : i32 = u_xlati28;
    let x_677 : f32 = x_614.x_AdditionalLightsAttenuation[x_675].w;
    u_xlat6.x = ((x_670 * x_673) + x_677);
    let x_681 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_681, 0.0f, 1.0f);
    let x_685 : f32 = u_xlat6.x;
    let x_687 : f32 = u_xlat6.x;
    u_xlat6.x = (x_685 * x_687);
    let x_690 : f32 = u_xlat29;
    let x_692 : f32 = u_xlat6.x;
    u_xlat29 = (x_690 * x_692);
    let x_696 : i32 = u_xlati28;
    let x_698 : f32 = x_160.x_AdditionalShadowParams[x_696].w;
    u_xlati6 = i32(x_698);
    let x_703 : i32 = u_xlati6;
    u_xlatb14.x = (x_703 >= 0i);
    let x_707 : bool = u_xlatb14.x;
    if (x_707) {
      let x_711 : i32 = u_xlati28;
      let x_713 : f32 = x_160.x_AdditionalShadowParams[x_711].z;
      u_xlatb14.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_713, x_713, x_713, x_713))));
      let x_719 : bool = u_xlatb14.x;
      if (x_719) {
        let x_722 : vec3<f32> = u_xlat5;
        let x_725 : vec3<f32> = u_xlat5;
        let x_728 : vec4<bool> = (abs(vec4<f32>(x_722.z, x_722.z, x_722.y, x_722.y)) >= abs(vec4<f32>(x_725.x, x_725.y, x_725.x, x_725.x)));
        u_xlatb14 = vec3<bool>(x_728.x, x_728.y, x_728.z);
        let x_731 : bool = u_xlatb14.y;
        let x_733 : bool = u_xlatb14.x;
        u_xlatb14.x = (x_731 & x_733);
        let x_737 : vec3<f32> = u_xlat5;
        let x_740 : vec4<bool> = (-(vec4<f32>(x_737.z, x_737.y, x_737.x, x_737.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb7 = vec3<bool>(x_740.x, x_740.y, x_740.z);
        let x_744 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_744);
        let x_749 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_749);
        let x_754 : bool = u_xlatb7.z;
        u_xlat22 = select(0.0f, 1.0f, x_754);
        let x_757 : bool = u_xlatb14.z;
        if (x_757) {
          let x_762 : f32 = u_xlat7.y;
          x_758 = x_762;
        } else {
          let x_764 : f32 = u_xlat22;
          x_758 = x_764;
        }
        let x_765 : f32 = x_758;
        u_xlat22 = x_765;
        let x_768 : bool = u_xlatb14.x;
        if (x_768) {
          let x_773 : f32 = u_xlat7.x;
          x_769 = x_773;
        } else {
          let x_775 : f32 = u_xlat22;
          x_769 = x_775;
        }
        let x_776 : f32 = x_769;
        u_xlat14 = x_776;
        let x_777 : i32 = u_xlati28;
        let x_779 : f32 = x_160.x_AdditionalShadowParams[x_777].w;
        u_xlat22 = trunc(x_779);
        let x_781 : f32 = u_xlat14;
        let x_782 : f32 = u_xlat22;
        u_xlat14 = (x_781 + x_782);
        let x_784 : f32 = u_xlat14;
        u_xlati6 = i32(x_784);
      }
      let x_786 : i32 = u_xlati6;
      u_xlati6 = (x_786 << bitcast<u32>(2i));
      let x_788 : vec3<f32> = vs_TEXCOORD1;
      let x_791 : i32 = u_xlati6;
      let x_794 : i32 = u_xlati6;
      let x_798 : vec4<f32> = x_160.x_AdditionalLightsWorldToShadow[((x_791 + 1i) / 4i)][((x_794 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_788.y, x_788.y, x_788.y, x_788.y) * x_798);
      let x_800 : i32 = u_xlati6;
      let x_802 : i32 = u_xlati6;
      let x_805 : vec4<f32> = x_160.x_AdditionalLightsWorldToShadow[(x_800 / 4i)][(x_802 % 4i)];
      let x_806 : vec3<f32> = vs_TEXCOORD1;
      let x_809 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_805 * vec4<f32>(x_806.x, x_806.x, x_806.x, x_806.x)) + x_809);
      let x_811 : i32 = u_xlati6;
      let x_814 : i32 = u_xlati6;
      let x_818 : vec4<f32> = x_160.x_AdditionalLightsWorldToShadow[((x_811 + 2i) / 4i)][((x_814 + 2i) % 4i)];
      let x_819 : vec3<f32> = vs_TEXCOORD1;
      let x_822 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_818 * vec4<f32>(x_819.z, x_819.z, x_819.z, x_819.z)) + x_822);
      let x_824 : vec4<f32> = u_xlat7;
      let x_825 : i32 = u_xlati6;
      let x_828 : i32 = u_xlati6;
      let x_832 : vec4<f32> = x_160.x_AdditionalLightsWorldToShadow[((x_825 + 3i) / 4i)][((x_828 + 3i) % 4i)];
      u_xlat6 = (x_824 + x_832);
      let x_834 : vec4<f32> = u_xlat6;
      let x_836 : vec4<f32> = u_xlat6;
      let x_838 : vec3<f32> = (vec3<f32>(x_834.x, x_834.y, x_834.z) / vec3<f32>(x_836.w, x_836.w, x_836.w));
      let x_839 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
      let x_842 : vec4<f32> = u_xlat6;
      let x_843 : vec2<f32> = vec2<f32>(x_842.x, x_842.y);
      let x_845 : f32 = u_xlat6.z;
      txVec1 = vec3<f32>(x_843.x, x_843.y, x_845);
      let x_853 : vec3<f32> = txVec1;
      let x_855 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_853.xy, x_853.z);
      u_xlat6.x = x_855;
      let x_857 : i32 = u_xlati28;
      let x_859 : f32 = x_160.x_AdditionalShadowParams[x_857].x;
      u_xlat14 = (1.0f + -(x_859));
      let x_863 : f32 = u_xlat6.x;
      let x_864 : i32 = u_xlati28;
      let x_866 : f32 = x_160.x_AdditionalShadowParams[x_864].x;
      let x_868 : f32 = u_xlat14;
      u_xlat6.x = ((x_863 * x_866) + x_868);
      let x_872 : f32 = u_xlat6.z;
      u_xlatb14.x = (0.0f >= x_872);
      let x_877 : f32 = u_xlat6.z;
      u_xlatb22 = (x_877 >= 1.0f);
      let x_879 : bool = u_xlatb22;
      let x_881 : bool = u_xlatb14.x;
      u_xlatb14.x = (x_879 | x_881);
      let x_885 : bool = u_xlatb14.x;
      if (x_885) {
        x_886 = 1.0f;
      } else {
        let x_891 : f32 = u_xlat6.x;
        x_886 = x_891;
      }
      let x_892 : f32 = x_886;
      u_xlat6.x = x_892;
    } else {
      u_xlat6.x = 1.0f;
    }
    let x_897 : f32 = u_xlat6.x;
    u_xlat14 = (-(x_897) + 1.0f);
    let x_901 : f32 = u_xlat2.x;
    let x_902 : f32 = u_xlat14;
    let x_905 : f32 = u_xlat6.x;
    u_xlat6.x = ((x_901 * x_902) + x_905);
    let x_908 : f32 = u_xlat29;
    let x_910 : f32 = u_xlat6.x;
    u_xlat29 = (x_908 * x_910);
    let x_912 : f32 = u_xlat29;
    let x_914 : i32 = u_xlati28;
    let x_916 : vec4<f32> = x_614.x_AdditionalLightsColor[x_914];
    let x_918 : vec3<f32> = (vec3<f32>(x_912, x_912, x_912) * vec3<f32>(x_916.x, x_916.y, x_916.z));
    let x_919 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
    let x_921 : vec4<f32> = u_xlat1;
    let x_923 : vec3<f32> = u_xlat5;
    u_xlat28 = dot(vec3<f32>(x_921.x, x_921.y, x_921.z), x_923);
    let x_925 : f32 = u_xlat28;
    u_xlat28 = clamp(x_925, 0.0f, 1.0f);
    let x_927 : f32 = u_xlat28;
    let x_929 : vec4<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_927, x_927, x_927) * vec3<f32>(x_929.x, x_929.y, x_929.z));
    let x_932 : vec3<f32> = u_xlat5;
    let x_933 : vec4<f32> = u_xlat0;
    let x_936 : vec4<f32> = u_xlat4;
    let x_938 : vec3<f32> = ((x_932 * vec3<f32>(x_933.y, x_933.z, x_933.w)) + vec3<f32>(x_936.x, x_936.y, x_936.z));
    let x_939 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);

    continuing {
      let x_941 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_941 + bitcast<u32>(1i));
    }
  }
  let x_944 : vec4<f32> = u_xlat3;
  let x_946 : vec4<f32> = u_xlat0;
  let x_949 : vec3<f32> = u_xlat10;
  u_xlat8 = ((vec3<f32>(x_944.x, x_944.y, x_944.z) * vec3<f32>(x_946.y, x_946.z, x_946.w)) + x_949);
  let x_953 : vec4<f32> = u_xlat4;
  let x_955 : vec3<f32> = u_xlat8;
  let x_956 : vec3<f32> = (vec3<f32>(x_953.x, x_953.y, x_953.z) + x_955);
  let x_957 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_961 : f32 = x_56.x_Surface;
  u_xlatb8 = (x_961 == 1.0f);
  let x_963 : bool = u_xlatb8;
  if (x_963) {
    let x_968 : f32 = u_xlat0.x;
    x_964 = x_968;
  } else {
    x_964 = 1.0f;
  }
  let x_970 : f32 = x_964;
  SV_Target0.w = x_970;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


