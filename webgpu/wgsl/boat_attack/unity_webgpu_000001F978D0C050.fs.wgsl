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
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicTex : sampler;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_111 : LightShadows;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu13 : u32;

var<private> u_xlati13 : i32;

@group(1) @binding(2) var<uniform> x_344 : UnityPerDraw;

var<private> u_xlat38 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat25 : f32;

var<private> u_xlatb25 : bool;

var<private> u_xlatb37 : bool;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati42 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_892 : AdditionalLights;

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
  var txVec0 : vec3<f32>;
  var x_526 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1037 : f32;
  var x_1048 : f32;
  var txVec1 : vec3<f32>;
  var x_1165 : f32;
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
  u_xlat1.x = x_77.x;
  let x_83 : vec4<f32> = vs_TEXCOORD3;
  let x_85 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(vec3<f32>(x_83.x, x_83.y, x_83.z), vec3<f32>(x_85.x, x_85.y, x_85.z));
  let x_90 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_90);
  let x_94 : vec3<f32> = u_xlat13;
  let x_96 : vec4<f32> = vs_TEXCOORD3;
  let x_98 : vec3<f32> = (vec3<f32>(x_94.x, x_94.x, x_94.x) * vec3<f32>(x_96.x, x_96.y, x_96.z));
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_98.x, x_98.y, x_98.z, x_99.w);
  let x_103 : vec3<f32> = vs_TEXCOORD7;
  let x_114 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres0;
  u_xlat13 = (x_103 + -(vec3<f32>(x_114.x, x_114.y, x_114.z)));
  let x_119 : vec3<f32> = vs_TEXCOORD7;
  let x_122 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres1;
  u_xlat3 = (x_119 + -(vec3<f32>(x_122.x, x_122.y, x_122.z)));
  let x_127 : vec3<f32> = vs_TEXCOORD7;
  let x_130 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres2;
  let x_133 : vec3<f32> = (x_127 + -(vec3<f32>(x_130.x, x_130.y, x_130.z)));
  let x_134 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_137 : vec3<f32> = vs_TEXCOORD7;
  let x_140 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres3;
  let x_143 : vec3<f32> = (x_137 + -(vec3<f32>(x_140.x, x_140.y, x_140.z)));
  let x_144 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec3<f32> = u_xlat13;
  let x_148 : vec3<f32> = u_xlat13;
  u_xlat6.x = dot(x_147, x_148);
  let x_151 : vec3<f32> = u_xlat3;
  let x_152 : vec3<f32> = u_xlat3;
  u_xlat6.y = dot(x_151, x_152);
  let x_156 : vec4<f32> = u_xlat4;
  let x_158 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(vec3<f32>(x_156.x, x_156.y, x_156.z), vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_163 : vec4<f32> = u_xlat5;
  let x_165 : vec4<f32> = u_xlat5;
  u_xlat6.w = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_173 : vec4<f32> = u_xlat6;
  let x_176 : vec4<f32> = x_111.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_173 < x_176);
  let x_179 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_179);
  let x_184 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_184);
  let x_188 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_188);
  let x_192 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_192);
  let x_196 : bool = u_xlatb3.x;
  u_xlat13.x = select(-0.0f, -1.0f, x_196);
  let x_202 : bool = u_xlatb3.y;
  u_xlat13.y = select(-0.0f, -1.0f, x_202);
  let x_206 : bool = u_xlatb3.z;
  u_xlat13.z = select(-0.0f, -1.0f, x_206);
  let x_209 : vec3<f32> = u_xlat13;
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat13 = (x_209 + vec3<f32>(x_210.y, x_210.z, x_210.w));
  let x_213 : vec3<f32> = u_xlat13;
  let x_215 : vec3<f32> = max(x_213, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_216 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_216.x, x_215.x, x_215.y, x_215.z);
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat13.x = dot(x_218, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_226 : f32 = u_xlat13.x;
  u_xlat13.x = (-(x_226) + 4.0f);
  let x_233 : f32 = u_xlat13.x;
  u_xlatu13 = u32(x_233);
  let x_237 : u32 = u_xlatu13;
  u_xlati13 = (bitcast<i32>(x_237) << bitcast<u32>(2i));
  let x_240 : vec3<f32> = vs_TEXCOORD7;
  let x_242 : i32 = u_xlati13;
  let x_245 : i32 = u_xlati13;
  let x_249 : vec4<f32> = x_111.x_MainLightWorldToShadow[((x_242 + 1i) / 4i)][((x_245 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_240.y, x_240.y, x_240.y) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : i32 = u_xlati13;
  let x_254 : i32 = u_xlati13;
  let x_257 : vec4<f32> = x_111.x_MainLightWorldToShadow[(x_252 / 4i)][(x_254 % 4i)];
  let x_259 : vec3<f32> = vs_TEXCOORD7;
  let x_262 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.x, x_259.x, x_259.x)) + x_262);
  let x_264 : i32 = u_xlati13;
  let x_267 : i32 = u_xlati13;
  let x_271 : vec4<f32> = x_111.x_MainLightWorldToShadow[((x_264 + 2i) / 4i)][((x_267 + 2i) % 4i)];
  let x_273 : vec3<f32> = vs_TEXCOORD7;
  let x_276 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(x_273.z, x_273.z, x_273.z)) + x_276);
  let x_278 : vec3<f32> = u_xlat3;
  let x_279 : i32 = u_xlati13;
  let x_282 : i32 = u_xlati13;
  let x_286 : vec4<f32> = x_111.x_MainLightWorldToShadow[((x_279 + 3i) / 4i)][((x_282 + 3i) % 4i)];
  u_xlat13 = (x_278 + vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_291 : f32 = vs_TEXCOORD7.y;
  let x_294 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.x = (x_291 * x_294);
  let x_298 : f32 = x_29.unity_MatrixV[0i].z;
  let x_300 : f32 = vs_TEXCOORD7.x;
  let x_303 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_298 * x_300) + x_303);
  let x_307 : f32 = x_29.unity_MatrixV[2i].z;
  let x_309 : f32 = vs_TEXCOORD7.z;
  let x_312 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_307 * x_309) + x_312);
  let x_316 : f32 = u_xlat3.x;
  let x_318 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat3.x = (x_316 + x_318);
  let x_322 : f32 = u_xlat3.x;
  let x_325 : f32 = x_29.x_ProjectionParams.y;
  u_xlat3.x = (-(x_322) + -(x_325));
  let x_330 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_330, 0.0f);
  let x_334 : f32 = u_xlat3.x;
  let x_337 : f32 = x_29.unity_FogParams.x;
  u_xlat3.x = (x_334 * x_337);
  u_xlat2.w = 1.0f;
  let x_347 : vec4<f32> = x_344.unity_SHAr;
  let x_348 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_347, x_348);
  let x_353 : vec4<f32> = x_344.unity_SHAg;
  let x_354 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_353, x_354);
  let x_359 : vec4<f32> = x_344.unity_SHAb;
  let x_360 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_359, x_360);
  let x_363 : vec4<f32> = u_xlat2;
  let x_365 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_363.y, x_363.z, x_363.z, x_363.x) * vec4<f32>(x_365.x, x_365.y, x_365.z, x_365.z));
  let x_370 : vec4<f32> = x_344.unity_SHBr;
  let x_371 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_370, x_371);
  let x_376 : vec4<f32> = x_344.unity_SHBg;
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_376, x_377);
  let x_382 : vec4<f32> = x_344.unity_SHBb;
  let x_383 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_382, x_383);
  let x_388 : f32 = u_xlat2.y;
  let x_390 : f32 = u_xlat2.y;
  u_xlat38 = (x_388 * x_390);
  let x_393 : f32 = u_xlat2.x;
  let x_395 : f32 = u_xlat2.x;
  let x_397 : f32 = u_xlat38;
  u_xlat38 = ((x_393 * x_395) + -(x_397));
  let x_403 : vec4<f32> = x_344.unity_SHC;
  let x_405 : f32 = u_xlat38;
  let x_408 : vec4<f32> = u_xlat6;
  u_xlat15 = ((vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(x_405, x_405, x_405)) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec3<f32> = u_xlat15;
  let x_412 : vec4<f32> = u_xlat4;
  u_xlat15 = (x_411 + vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec3<f32> = u_xlat15;
  u_xlat15 = max(x_415, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_418 : f32 = u_xlat1.x;
  u_xlat38 = ((-(x_418) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_423 : f32 = u_xlat38;
  u_xlat4.x = (-(x_423) + 1.0f);
  let x_428 : vec4<f32> = u_xlat0;
  let x_430 : f32 = u_xlat38;
  u_xlat16 = (vec3<f32>(x_428.x, x_428.y, x_428.z) * vec3<f32>(x_430, x_430, x_430));
  let x_433 : vec4<f32> = u_xlat0;
  let x_437 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_438 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat1;
  let x_442 : vec4<f32> = u_xlat0;
  let x_447 : vec3<f32> = ((vec3<f32>(x_440.x, x_440.x, x_440.x) * vec3<f32>(x_442.x, x_442.y, x_442.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_448 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_451 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_451) + 1.0f);
  let x_456 : f32 = u_xlat1.x;
  let x_458 : f32 = u_xlat1.x;
  u_xlat38 = (x_456 * x_458);
  let x_460 : f32 = u_xlat38;
  u_xlat38 = max(x_460, 0.0078125f);
  let x_463 : f32 = u_xlat38;
  let x_464 : f32 = u_xlat38;
  u_xlat5.x = (x_463 * x_464);
  let x_469 : f32 = u_xlat0.w;
  let x_471 : f32 = u_xlat4.x;
  u_xlat36 = (x_469 + x_471);
  let x_473 : f32 = u_xlat36;
  u_xlat36 = clamp(x_473, 0.0f, 1.0f);
  let x_475 : f32 = u_xlat38;
  u_xlat4.x = ((x_475 * 4.0f) + 2.0f);
  let x_481 : vec3<f32> = u_xlat13;
  let x_482 : vec2<f32> = vec2<f32>(x_481.x, x_481.y);
  let x_484 : f32 = u_xlat13.z;
  txVec0 = vec3<f32>(x_482.x, x_482.y, x_484);
  let x_496 : vec3<f32> = txVec0;
  let x_498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_496.xy, x_496.z);
  u_xlat13.x = x_498;
  let x_502 : f32 = x_111.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_502) + 1.0f);
  let x_506 : f32 = u_xlat13.x;
  let x_508 : f32 = x_111.x_MainLightShadowParams.x;
  let x_510 : f32 = u_xlat25;
  u_xlat13.x = ((x_506 * x_508) + x_510);
  let x_515 : f32 = u_xlat13.z;
  u_xlatb25 = (0.0f >= x_515);
  let x_519 : f32 = u_xlat13.z;
  u_xlatb37 = (x_519 >= 1.0f);
  let x_521 : bool = u_xlatb37;
  let x_522 : bool = u_xlatb25;
  u_xlatb25 = (x_521 | x_522);
  let x_524 : bool = u_xlatb25;
  if (x_524) {
    x_526 = 1.0f;
  } else {
    let x_531 : f32 = u_xlat13.x;
    x_526 = x_531;
  }
  let x_532 : f32 = x_526;
  u_xlat13.x = x_532;
  let x_535 : vec3<f32> = vs_TEXCOORD7;
  let x_538 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat17 = (x_535 + -(x_538));
  let x_541 : vec3<f32> = u_xlat17;
  let x_542 : vec3<f32> = u_xlat17;
  u_xlat25 = dot(x_541, x_542);
  let x_545 : f32 = u_xlat25;
  let x_547 : f32 = x_111.x_MainLightShadowParams.z;
  let x_550 : f32 = x_111.x_MainLightShadowParams.w;
  u_xlat37 = ((x_545 * x_547) + x_550);
  let x_552 : f32 = u_xlat37;
  u_xlat37 = clamp(x_552, 0.0f, 1.0f);
  let x_555 : f32 = u_xlat13.x;
  u_xlat17.x = (-(x_555) + 1.0f);
  let x_559 : f32 = u_xlat37;
  let x_561 : f32 = u_xlat17.x;
  let x_564 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_559 * x_561) + x_564);
  let x_568 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_568;
  let x_572 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_572;
  let x_576 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_576;
  let x_578 : vec4<f32> = u_xlat6;
  let x_581 : vec4<f32> = u_xlat2;
  u_xlat37 = dot(-(vec3<f32>(x_578.x, x_578.y, x_578.z)), vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : f32 = u_xlat37;
  let x_585 : f32 = u_xlat37;
  u_xlat37 = (x_584 + x_585);
  let x_587 : vec4<f32> = u_xlat2;
  let x_589 : f32 = u_xlat37;
  let x_593 : vec4<f32> = u_xlat6;
  u_xlat17 = ((vec3<f32>(x_587.x, x_587.y, x_587.z) * -(vec3<f32>(x_589, x_589, x_589))) + -(vec3<f32>(x_593.x, x_593.y, x_593.z)));
  let x_597 : vec4<f32> = u_xlat2;
  let x_599 : vec4<f32> = u_xlat6;
  u_xlat37 = dot(vec3<f32>(x_597.x, x_597.y, x_597.z), vec3<f32>(x_599.x, x_599.y, x_599.z));
  let x_602 : f32 = u_xlat37;
  u_xlat37 = clamp(x_602, 0.0f, 1.0f);
  let x_604 : f32 = u_xlat37;
  u_xlat37 = (-(x_604) + 1.0f);
  let x_607 : f32 = u_xlat37;
  let x_608 : f32 = u_xlat37;
  u_xlat37 = (x_607 * x_608);
  let x_610 : f32 = u_xlat37;
  let x_611 : f32 = u_xlat37;
  u_xlat37 = (x_610 * x_611);
  let x_615 : f32 = u_xlat1.x;
  u_xlat42 = ((-(x_615) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_622 : f32 = u_xlat1.x;
  let x_623 : f32 = u_xlat42;
  u_xlat1.x = (x_622 * x_623);
  let x_627 : f32 = u_xlat1.x;
  u_xlat1.x = (x_627 * 6.0f);
  let x_640 : vec3<f32> = u_xlat17;
  let x_642 : f32 = u_xlat1.x;
  let x_643 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_640, x_642);
  u_xlat7 = x_643;
  let x_645 : f32 = u_xlat7.w;
  u_xlat1.x = (x_645 + -1.0f);
  let x_649 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_651 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_649 * x_651) + 1.0f);
  let x_656 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_656, 0.0f);
  let x_660 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_660);
  let x_664 : f32 = u_xlat1.x;
  let x_666 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_664 * x_666);
  let x_670 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_670);
  let x_674 : f32 = u_xlat1.x;
  let x_676 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_674 * x_676);
  let x_679 : vec4<f32> = u_xlat7;
  let x_681 : vec4<f32> = u_xlat1;
  u_xlat17 = (vec3<f32>(x_679.x, x_679.y, x_679.z) * vec3<f32>(x_681.x, x_681.x, x_681.x));
  let x_684 : f32 = u_xlat38;
  let x_686 : f32 = u_xlat38;
  let x_690 : vec2<f32> = ((vec2<f32>(x_684, x_684) * vec2<f32>(x_686, x_686)) + vec2<f32>(-1.0f, 1.0f));
  let x_691 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_690.x, x_690.y, x_691.z, x_691.w);
  let x_694 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_694);
  let x_698 : vec4<f32> = u_xlat0;
  let x_701 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_698.x, x_698.y, x_698.z)) + vec3<f32>(x_701, x_701, x_701));
  let x_704 : f32 = u_xlat37;
  let x_706 : vec3<f32> = u_xlat19;
  let x_708 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_704, x_704, x_704) * x_706) + vec3<f32>(x_708.x, x_708.y, x_708.z));
  let x_711 : vec4<f32> = u_xlat1;
  let x_713 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_711.x, x_711.x, x_711.x) * x_713);
  let x_715 : vec3<f32> = u_xlat17;
  let x_716 : vec3<f32> = u_xlat19;
  u_xlat17 = (x_715 * x_716);
  let x_718 : vec3<f32> = u_xlat15;
  let x_719 : vec3<f32> = u_xlat16;
  let x_721 : vec3<f32> = u_xlat17;
  u_xlat15 = ((x_718 * x_719) + x_721);
  let x_724 : f32 = u_xlat13.x;
  let x_726 : f32 = x_344.unity_LightData.z;
  u_xlat36 = (x_724 * x_726);
  let x_728 : vec4<f32> = u_xlat2;
  let x_731 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_728.x, x_728.y, x_728.z), vec3<f32>(x_731.x, x_731.y, x_731.z));
  let x_736 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_736, 0.0f, 1.0f);
  let x_739 : f32 = u_xlat36;
  let x_741 : f32 = u_xlat1.x;
  u_xlat36 = (x_739 * x_741);
  let x_743 : f32 = u_xlat36;
  let x_746 : vec4<f32> = x_29.x_MainLightColor;
  let x_748 : vec3<f32> = (vec3<f32>(x_743, x_743, x_743) * vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_748.x, x_748.y, x_749.z, x_748.z);
  let x_751 : vec4<f32> = u_xlat6;
  let x_754 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat17 = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(x_754.x, x_754.y, x_754.z));
  let x_757 : vec3<f32> = u_xlat17;
  let x_758 : vec3<f32> = u_xlat17;
  u_xlat36 = dot(x_757, x_758);
  let x_760 : f32 = u_xlat36;
  u_xlat36 = max(x_760, 1.17549435e-38f);
  let x_763 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_763);
  let x_765 : f32 = u_xlat36;
  let x_767 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_765, x_765, x_765) * x_767);
  let x_769 : vec4<f32> = u_xlat2;
  let x_771 : vec3<f32> = u_xlat17;
  u_xlat36 = dot(vec3<f32>(x_769.x, x_769.y, x_769.z), x_771);
  let x_773 : f32 = u_xlat36;
  u_xlat36 = clamp(x_773, 0.0f, 1.0f);
  let x_776 : vec4<f32> = x_29.x_MainLightPosition;
  let x_778 : vec3<f32> = u_xlat17;
  u_xlat38 = dot(vec3<f32>(x_776.x, x_776.y, x_776.z), x_778);
  let x_780 : f32 = u_xlat38;
  u_xlat38 = clamp(x_780, 0.0f, 1.0f);
  let x_782 : f32 = u_xlat36;
  let x_783 : f32 = u_xlat36;
  u_xlat36 = (x_782 * x_783);
  let x_785 : f32 = u_xlat36;
  let x_787 : f32 = u_xlat7.x;
  u_xlat36 = ((x_785 * x_787) + 1.00001001358032226562f);
  let x_791 : f32 = u_xlat38;
  let x_792 : f32 = u_xlat38;
  u_xlat38 = (x_791 * x_792);
  let x_794 : f32 = u_xlat36;
  let x_795 : f32 = u_xlat36;
  u_xlat36 = (x_794 * x_795);
  let x_797 : f32 = u_xlat38;
  u_xlat38 = max(x_797, 0.10000000149011611938f);
  let x_800 : f32 = u_xlat36;
  let x_801 : f32 = u_xlat38;
  u_xlat36 = (x_800 * x_801);
  let x_804 : f32 = u_xlat4.x;
  let x_805 : f32 = u_xlat36;
  u_xlat36 = (x_804 * x_805);
  let x_808 : f32 = u_xlat5.x;
  let x_809 : f32 = u_xlat36;
  u_xlat36 = (x_808 / x_809);
  let x_811 : vec4<f32> = u_xlat0;
  let x_813 : f32 = u_xlat36;
  let x_816 : vec3<f32> = u_xlat16;
  u_xlat17 = ((vec3<f32>(x_811.x, x_811.y, x_811.z) * vec3<f32>(x_813, x_813, x_813)) + x_816);
  let x_819 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_821 : f32 = x_344.unity_LightData.y;
  u_xlat36 = min(x_819, x_821);
  let x_824 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_824));
  let x_827 : f32 = u_xlat25;
  let x_830 : f32 = x_111.x_AdditionalShadowFadeParams.x;
  let x_833 : f32 = x_111.x_AdditionalShadowFadeParams.y;
  u_xlat25 = ((x_827 * x_830) + x_833);
  let x_835 : f32 = u_xlat25;
  u_xlat25 = clamp(x_835, 0.0f, 1.0f);
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_847 : u32 = u_xlatu_loop_1;
    let x_848 : u32 = u_xlatu36;
    if ((x_847 < x_848)) {
    } else {
      break;
    }
    let x_851 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_851 >> 2u);
    let x_854 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_854 & 3u));
    let x_857 : u32 = u_xlatu42;
    let x_860 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_857)];
    let x_870 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_875 : vec4<u32> = indexable[x_870];
    u_xlat42 = dot(x_860, bitcast<vec4<f32>>(x_875));
    let x_879 : f32 = u_xlat42;
    u_xlati42 = i32(x_879);
    let x_882 : vec3<f32> = vs_TEXCOORD7;
    let x_893 : i32 = u_xlati42;
    let x_895 : vec4<f32> = x_892.x_AdditionalLightsPosition[x_893];
    let x_898 : i32 = u_xlati42;
    let x_900 : vec4<f32> = x_892.x_AdditionalLightsPosition[x_898];
    u_xlat8 = ((-(x_882) * vec3<f32>(x_895.w, x_895.w, x_895.w)) + vec3<f32>(x_900.x, x_900.y, x_900.z));
    let x_904 : vec3<f32> = u_xlat8;
    let x_905 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_904, x_905);
    let x_907 : f32 = u_xlat44;
    u_xlat44 = max(x_907, 0.00006103515625f);
    let x_911 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_911);
    let x_914 : vec3<f32> = u_xlat8;
    let x_915 : f32 = u_xlat9;
    u_xlat21 = (x_914 * vec3<f32>(x_915, x_915, x_915));
    let x_919 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_919);
    let x_922 : f32 = u_xlat44;
    let x_923 : i32 = u_xlati42;
    let x_925 : f32 = x_892.x_AdditionalLightsAttenuation[x_923].x;
    u_xlat44 = (x_922 * x_925);
    let x_927 : f32 = u_xlat44;
    let x_929 : f32 = u_xlat44;
    u_xlat44 = ((-(x_927) * x_929) + 1.0f);
    let x_932 : f32 = u_xlat44;
    u_xlat44 = max(x_932, 0.0f);
    let x_934 : f32 = u_xlat44;
    let x_935 : f32 = u_xlat44;
    u_xlat44 = (x_934 * x_935);
    let x_937 : f32 = u_xlat44;
    let x_939 : f32 = u_xlat10.x;
    u_xlat44 = (x_937 * x_939);
    let x_941 : i32 = u_xlati42;
    let x_943 : vec4<f32> = x_892.x_AdditionalLightsSpotDir[x_941];
    let x_945 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_943.x, x_943.y, x_943.z), x_945);
    let x_949 : f32 = u_xlat10.x;
    let x_950 : i32 = u_xlati42;
    let x_952 : f32 = x_892.x_AdditionalLightsAttenuation[x_950].z;
    let x_954 : i32 = u_xlati42;
    let x_956 : f32 = x_892.x_AdditionalLightsAttenuation[x_954].w;
    u_xlat10.x = ((x_949 * x_952) + x_956);
    let x_960 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_960, 0.0f, 1.0f);
    let x_964 : f32 = u_xlat10.x;
    let x_966 : f32 = u_xlat10.x;
    u_xlat10.x = (x_964 * x_966);
    let x_969 : f32 = u_xlat44;
    let x_971 : f32 = u_xlat10.x;
    u_xlat44 = (x_969 * x_971);
    let x_975 : i32 = u_xlati42;
    let x_977 : f32 = x_111.x_AdditionalShadowParams[x_975].w;
    u_xlati10 = i32(x_977);
    let x_982 : i32 = u_xlati10;
    u_xlatb22.x = (x_982 >= 0i);
    let x_986 : bool = u_xlatb22.x;
    if (x_986) {
      let x_990 : i32 = u_xlati42;
      let x_992 : f32 = x_111.x_AdditionalShadowParams[x_990].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_992, x_992, x_992, x_992))));
      let x_998 : bool = u_xlatb22.x;
      if (x_998) {
        let x_1001 : vec3<f32> = u_xlat21;
        let x_1004 : vec3<f32> = u_xlat21;
        let x_1007 : vec4<bool> = (abs(vec4<f32>(x_1001.z, x_1001.z, x_1001.y, x_1001.y)) >= abs(vec4<f32>(x_1004.x, x_1004.y, x_1004.x, x_1004.x)));
        u_xlatb22 = vec3<bool>(x_1007.x, x_1007.y, x_1007.z);
        let x_1010 : bool = u_xlatb22.y;
        let x_1012 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1010 & x_1012);
        let x_1016 : vec3<f32> = u_xlat21;
        let x_1019 : vec4<bool> = (-(vec4<f32>(x_1016.z, x_1016.y, x_1016.x, x_1016.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1019.x, x_1019.y, x_1019.z);
        let x_1023 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1023);
        let x_1028 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1028);
        let x_1033 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1033);
        let x_1036 : bool = u_xlatb22.z;
        if (x_1036) {
          let x_1041 : f32 = u_xlat11.y;
          x_1037 = x_1041;
        } else {
          let x_1043 : f32 = u_xlat34;
          x_1037 = x_1043;
        }
        let x_1044 : f32 = x_1037;
        u_xlat34 = x_1044;
        let x_1047 : bool = u_xlatb22.x;
        if (x_1047) {
          let x_1052 : f32 = u_xlat11.x;
          x_1048 = x_1052;
        } else {
          let x_1054 : f32 = u_xlat34;
          x_1048 = x_1054;
        }
        let x_1055 : f32 = x_1048;
        u_xlat22 = x_1055;
        let x_1056 : i32 = u_xlati42;
        let x_1058 : f32 = x_111.x_AdditionalShadowParams[x_1056].w;
        u_xlat34 = trunc(x_1058);
        let x_1060 : f32 = u_xlat22;
        let x_1061 : f32 = u_xlat34;
        u_xlat22 = (x_1060 + x_1061);
        let x_1063 : f32 = u_xlat22;
        u_xlati10 = i32(x_1063);
      }
      let x_1065 : i32 = u_xlati10;
      u_xlati10 = (x_1065 << bitcast<u32>(2i));
      let x_1067 : vec3<f32> = vs_TEXCOORD7;
      let x_1070 : i32 = u_xlati10;
      let x_1073 : i32 = u_xlati10;
      let x_1077 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_1070 + 1i) / 4i)][((x_1073 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1067.y, x_1067.y, x_1067.y, x_1067.y) * x_1077);
      let x_1079 : i32 = u_xlati10;
      let x_1081 : i32 = u_xlati10;
      let x_1084 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[(x_1079 / 4i)][(x_1081 % 4i)];
      let x_1085 : vec3<f32> = vs_TEXCOORD7;
      let x_1088 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1084 * vec4<f32>(x_1085.x, x_1085.x, x_1085.x, x_1085.x)) + x_1088);
      let x_1090 : i32 = u_xlati10;
      let x_1093 : i32 = u_xlati10;
      let x_1097 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_1090 + 2i) / 4i)][((x_1093 + 2i) % 4i)];
      let x_1098 : vec3<f32> = vs_TEXCOORD7;
      let x_1101 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1097 * vec4<f32>(x_1098.z, x_1098.z, x_1098.z, x_1098.z)) + x_1101);
      let x_1103 : vec4<f32> = u_xlat11;
      let x_1104 : i32 = u_xlati10;
      let x_1107 : i32 = u_xlati10;
      let x_1111 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_1104 + 3i) / 4i)][((x_1107 + 3i) % 4i)];
      u_xlat10 = (x_1103 + x_1111);
      let x_1113 : vec4<f32> = u_xlat10;
      let x_1115 : vec4<f32> = u_xlat10;
      let x_1117 : vec3<f32> = (vec3<f32>(x_1113.x, x_1113.y, x_1113.z) / vec3<f32>(x_1115.w, x_1115.w, x_1115.w));
      let x_1118 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
      let x_1121 : vec4<f32> = u_xlat10;
      let x_1122 : vec2<f32> = vec2<f32>(x_1121.x, x_1121.y);
      let x_1124 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1122.x, x_1122.y, x_1124);
      let x_1132 : vec3<f32> = txVec1;
      let x_1134 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1132.xy, x_1132.z);
      u_xlat10.x = x_1134;
      let x_1136 : i32 = u_xlati42;
      let x_1138 : f32 = x_111.x_AdditionalShadowParams[x_1136].x;
      u_xlat22 = (1.0f + -(x_1138));
      let x_1142 : f32 = u_xlat10.x;
      let x_1143 : i32 = u_xlati42;
      let x_1145 : f32 = x_111.x_AdditionalShadowParams[x_1143].x;
      let x_1147 : f32 = u_xlat22;
      u_xlat10.x = ((x_1142 * x_1145) + x_1147);
      let x_1151 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1151);
      let x_1156 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1156 >= 1.0f);
      let x_1158 : bool = u_xlatb34;
      let x_1160 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1158 | x_1160);
      let x_1164 : bool = u_xlatb22.x;
      if (x_1164) {
        x_1165 = 1.0f;
      } else {
        let x_1170 : f32 = u_xlat10.x;
        x_1165 = x_1170;
      }
      let x_1171 : f32 = x_1165;
      u_xlat10.x = x_1171;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1176 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1176) + 1.0f);
    let x_1179 : f32 = u_xlat25;
    let x_1180 : f32 = u_xlat22;
    let x_1183 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1179 * x_1180) + x_1183);
    let x_1186 : f32 = u_xlat44;
    let x_1188 : f32 = u_xlat10.x;
    u_xlat44 = (x_1186 * x_1188);
    let x_1190 : vec4<f32> = u_xlat2;
    let x_1192 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1190.x, x_1190.y, x_1190.z), x_1192);
    let x_1196 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1196, 0.0f, 1.0f);
    let x_1199 : f32 = u_xlat44;
    let x_1201 : f32 = u_xlat10.x;
    u_xlat44 = (x_1199 * x_1201);
    let x_1203 : f32 = u_xlat44;
    let x_1205 : i32 = u_xlati42;
    let x_1207 : vec4<f32> = x_892.x_AdditionalLightsColor[x_1205];
    let x_1209 : vec3<f32> = (vec3<f32>(x_1203, x_1203, x_1203) * vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
    let x_1210 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
    let x_1212 : vec3<f32> = u_xlat8;
    let x_1213 : f32 = u_xlat9;
    let x_1216 : vec4<f32> = u_xlat6;
    u_xlat8 = ((x_1212 * vec3<f32>(x_1213, x_1213, x_1213)) + vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
    let x_1219 : vec3<f32> = u_xlat8;
    let x_1220 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1219, x_1220);
    let x_1222 : f32 = u_xlat42;
    u_xlat42 = max(x_1222, 1.17549435e-38f);
    let x_1224 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1224);
    let x_1226 : f32 = u_xlat42;
    let x_1228 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1226, x_1226, x_1226) * x_1228);
    let x_1230 : vec4<f32> = u_xlat2;
    let x_1232 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_1230.x, x_1230.y, x_1230.z), x_1232);
    let x_1234 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1234, 0.0f, 1.0f);
    let x_1236 : vec3<f32> = u_xlat21;
    let x_1237 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1236, x_1237);
    let x_1241 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1241, 0.0f, 1.0f);
    let x_1244 : f32 = u_xlat42;
    let x_1245 : f32 = u_xlat42;
    u_xlat42 = (x_1244 * x_1245);
    let x_1247 : f32 = u_xlat42;
    let x_1249 : f32 = u_xlat7.x;
    u_xlat42 = ((x_1247 * x_1249) + 1.00001001358032226562f);
    let x_1253 : f32 = u_xlat8.x;
    let x_1255 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1253 * x_1255);
    let x_1258 : f32 = u_xlat42;
    let x_1259 : f32 = u_xlat42;
    u_xlat42 = (x_1258 * x_1259);
    let x_1262 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1262, 0.10000000149011611938f);
    let x_1265 : f32 = u_xlat42;
    let x_1267 : f32 = u_xlat8.x;
    u_xlat42 = (x_1265 * x_1267);
    let x_1270 : f32 = u_xlat4.x;
    let x_1271 : f32 = u_xlat42;
    u_xlat42 = (x_1270 * x_1271);
    let x_1274 : f32 = u_xlat5.x;
    let x_1275 : f32 = u_xlat42;
    u_xlat42 = (x_1274 / x_1275);
    let x_1277 : vec4<f32> = u_xlat0;
    let x_1279 : f32 = u_xlat42;
    let x_1282 : vec3<f32> = u_xlat16;
    u_xlat8 = ((vec3<f32>(x_1277.x, x_1277.y, x_1277.z) * vec3<f32>(x_1279, x_1279, x_1279)) + x_1282);
    let x_1284 : vec3<f32> = u_xlat8;
    let x_1285 : vec4<f32> = u_xlat10;
    let x_1288 : vec3<f32> = u_xlat19;
    u_xlat19 = ((x_1284 * vec3<f32>(x_1285.x, x_1285.y, x_1285.z)) + x_1288);

    continuing {
      let x_1290 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1290 + bitcast<u32>(1i));
    }
  }
  let x_1292 : vec3<f32> = u_xlat17;
  let x_1293 : vec4<f32> = u_xlat1;
  let x_1296 : vec3<f32> = u_xlat15;
  let x_1297 : vec3<f32> = ((x_1292 * vec3<f32>(x_1293.x, x_1293.y, x_1293.w)) + x_1296);
  let x_1298 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);
  let x_1300 : vec3<f32> = u_xlat19;
  let x_1301 : vec4<f32> = u_xlat0;
  let x_1303 : vec3<f32> = (x_1300 + vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
  let x_1304 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
  let x_1307 : f32 = u_xlat3.x;
  let x_1309 : f32 = u_xlat3.x;
  u_xlat36 = (x_1307 * -(x_1309));
  let x_1312 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1312);
  let x_1314 : vec4<f32> = u_xlat0;
  let x_1318 : vec4<f32> = x_29.unity_FogColor;
  let x_1321 : vec3<f32> = (vec3<f32>(x_1314.x, x_1314.y, x_1314.z) + -(vec3<f32>(x_1318.x, x_1318.y, x_1318.z)));
  let x_1322 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
  let x_1326 : f32 = u_xlat36;
  let x_1328 : vec4<f32> = u_xlat0;
  let x_1332 : vec4<f32> = x_29.unity_FogColor;
  let x_1334 : vec3<f32> = ((vec3<f32>(x_1326, x_1326, x_1326) * vec3<f32>(x_1328.x, x_1328.y, x_1328.z)) + vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
  let x_1335 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
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


