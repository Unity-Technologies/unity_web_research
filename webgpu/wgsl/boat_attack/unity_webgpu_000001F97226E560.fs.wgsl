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

var<private> u_xlat1 : f32;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicTex : sampler;

var<private> u_xlatb13 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_162 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu3 : u32;

var<private> u_xlati3 : i32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat39 : f32;

@group(1) @binding(2) var<uniform> x_391 : UnityPerDraw;

var<private> u_xlat38 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat36 : f32;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb15 : bool;

var<private> u_xlatb27 : bool;

var<private> u_xlat27 : f32;

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

@group(1) @binding(1) var<uniform> x_919 : AdditionalLights;

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
  var x_576 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1064 : f32;
  var x_1075 : f32;
  var txVec1 : vec3<f32>;
  var x_1192 : f32;
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
  let x_116 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_116;
  let x_119 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_119;
  let x_124 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_124;
  let x_128 : bool = u_xlatb13;
  if (x_128) {
    let x_133 : vec4<f32> = u_xlat2;
    x_130 = vec3<f32>(x_133.x, x_133.y, x_133.z);
  } else {
    let x_136 : vec4<f32> = u_xlat3;
    x_130 = vec3<f32>(x_136.x, x_136.y, x_136.z);
  }
  let x_138 : vec3<f32> = x_130;
  u_xlat13 = x_138;
  let x_140 : vec3<f32> = vs_TEXCOORD3;
  let x_141 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_140, x_141);
  let x_145 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_145);
  let x_148 : vec4<f32> = u_xlat2;
  let x_150 : vec3<f32> = vs_TEXCOORD3;
  let x_151 : vec3<f32> = (vec3<f32>(x_148.x, x_148.x, x_148.x) * x_150);
  let x_152 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_154 : vec3<f32> = vs_TEXCOORD7;
  let x_165 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres0;
  let x_168 : vec3<f32> = (x_154 + -(vec3<f32>(x_165.x, x_165.y, x_165.z)));
  let x_169 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec3<f32> = vs_TEXCOORD7;
  let x_174 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres1;
  let x_177 : vec3<f32> = (x_172 + -(vec3<f32>(x_174.x, x_174.y, x_174.z)));
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_181 : vec3<f32> = vs_TEXCOORD7;
  let x_184 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres2;
  let x_187 : vec3<f32> = (x_181 + -(vec3<f32>(x_184.x, x_184.y, x_184.z)));
  let x_188 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_191 : vec3<f32> = vs_TEXCOORD7;
  let x_193 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres3;
  let x_196 : vec3<f32> = (x_191 + -(vec3<f32>(x_193.x, x_193.y, x_193.z)));
  let x_197 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_199 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_199.x, x_199.y, x_199.z), vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec4<f32> = u_xlat4;
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_205.x, x_205.y, x_205.z), vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_211 : vec4<f32> = u_xlat5;
  let x_213 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_211.x, x_211.y, x_211.z), vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_217 : vec4<f32> = u_xlat6;
  let x_219 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_226 : vec4<f32> = u_xlat3;
  let x_229 : vec4<f32> = x_162.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_226 < x_229);
  let x_232 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_232);
  let x_237 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_237);
  let x_241 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_241);
  let x_245 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_245);
  let x_249 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_249);
  let x_255 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_255);
  let x_259 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_259);
  let x_262 : vec4<f32> = u_xlat3;
  let x_264 : vec4<f32> = u_xlat4;
  let x_266 : vec3<f32> = (vec3<f32>(x_262.x, x_262.y, x_262.z) + vec3<f32>(x_264.y, x_264.z, x_264.w));
  let x_267 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat3;
  let x_272 : vec3<f32> = max(vec3<f32>(x_269.x, x_269.y, x_269.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_273 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_273.x, x_272.x, x_272.y, x_272.z);
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_275, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_283 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_283) + 4.0f);
  let x_290 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_290);
  let x_294 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_294) << bitcast<u32>(2i));
  let x_298 : vec3<f32> = vs_TEXCOORD7;
  let x_300 : i32 = u_xlati3;
  let x_303 : i32 = u_xlati3;
  let x_307 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_300 + 1i) / 4i)][((x_303 + 1i) % 4i)];
  u_xlat15 = (vec3<f32>(x_298.y, x_298.y, x_298.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : i32 = u_xlati3;
  let x_312 : i32 = u_xlati3;
  let x_315 : vec4<f32> = x_162.x_MainLightWorldToShadow[(x_310 / 4i)][(x_312 % 4i)];
  let x_317 : vec3<f32> = vs_TEXCOORD7;
  let x_320 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.x, x_317.x)) + x_320);
  let x_322 : i32 = u_xlati3;
  let x_325 : i32 = u_xlati3;
  let x_329 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_322 + 2i) / 4i)][((x_325 + 2i) % 4i)];
  let x_331 : vec3<f32> = vs_TEXCOORD7;
  let x_334 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331.z, x_331.z, x_331.z)) + x_334);
  let x_336 : vec3<f32> = u_xlat15;
  let x_337 : i32 = u_xlati3;
  let x_340 : i32 = u_xlati3;
  let x_344 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_337 + 3i) / 4i)][((x_340 + 3i) % 4i)];
  let x_346 : vec3<f32> = (x_336 + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_352 : f32 = vs_TEXCOORD7.y;
  let x_354 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat39 = (x_352 * x_354);
  let x_357 : f32 = x_29.unity_MatrixV[0i].z;
  let x_359 : f32 = vs_TEXCOORD7.x;
  let x_361 : f32 = u_xlat39;
  u_xlat39 = ((x_357 * x_359) + x_361);
  let x_364 : f32 = x_29.unity_MatrixV[2i].z;
  let x_366 : f32 = vs_TEXCOORD7.z;
  let x_368 : f32 = u_xlat39;
  u_xlat39 = ((x_364 * x_366) + x_368);
  let x_370 : f32 = u_xlat39;
  let x_372 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat39 = (x_370 + x_372);
  let x_374 : f32 = u_xlat39;
  let x_377 : f32 = x_29.x_ProjectionParams.y;
  u_xlat39 = (-(x_374) + -(x_377));
  let x_380 : f32 = u_xlat39;
  u_xlat39 = max(x_380, 0.0f);
  let x_382 : f32 = u_xlat39;
  let x_385 : f32 = x_29.unity_FogParams.x;
  u_xlat39 = (x_382 * x_385);
  u_xlat2.w = 1.0f;
  let x_394 : vec4<f32> = x_391.unity_SHAr;
  let x_395 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_394, x_395);
  let x_400 : vec4<f32> = x_391.unity_SHAg;
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_400, x_401);
  let x_406 : vec4<f32> = x_391.unity_SHAb;
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_406, x_407);
  let x_410 : vec4<f32> = u_xlat2;
  let x_412 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_410.y, x_410.z, x_410.z, x_410.x) * vec4<f32>(x_412.x, x_412.y, x_412.z, x_412.z));
  let x_417 : vec4<f32> = x_391.unity_SHBr;
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_417, x_418);
  let x_423 : vec4<f32> = x_391.unity_SHBg;
  let x_424 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_423, x_424);
  let x_429 : vec4<f32> = x_391.unity_SHBb;
  let x_430 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_429, x_430);
  let x_435 : f32 = u_xlat2.y;
  let x_437 : f32 = u_xlat2.y;
  u_xlat38 = (x_435 * x_437);
  let x_440 : f32 = u_xlat2.x;
  let x_442 : f32 = u_xlat2.x;
  let x_444 : f32 = u_xlat38;
  u_xlat38 = ((x_440 * x_442) + -(x_444));
  let x_449 : vec4<f32> = x_391.unity_SHC;
  let x_451 : f32 = u_xlat38;
  let x_454 : vec4<f32> = u_xlat6;
  let x_456 : vec3<f32> = ((vec3<f32>(x_449.x, x_449.y, x_449.z) * vec3<f32>(x_451, x_451, x_451)) + vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat4;
  let x_461 : vec4<f32> = u_xlat5;
  let x_463 : vec3<f32> = (vec3<f32>(x_459.x, x_459.y, x_459.z) + vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat4;
  let x_468 : vec3<f32> = max(vec3<f32>(x_466.x, x_466.y, x_466.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_469 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : f32 = u_xlat1;
  u_xlat38 = ((-(x_471) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_477 : f32 = u_xlat38;
  u_xlat40 = (-(x_477) + 1.0f);
  let x_480 : vec4<f32> = u_xlat0;
  let x_482 : f32 = u_xlat38;
  let x_484 : vec3<f32> = (vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(x_482, x_482, x_482));
  let x_485 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat0;
  let x_491 : vec3<f32> = (vec3<f32>(x_487.x, x_487.y, x_487.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_492 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : f32 = u_xlat1;
  let x_496 : vec4<f32> = u_xlat0;
  let x_501 : vec3<f32> = ((vec3<f32>(x_494, x_494, x_494) * vec3<f32>(x_496.x, x_496.y, x_496.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_502 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_505 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_505) + 1.0f);
  let x_508 : f32 = u_xlat1;
  let x_509 : f32 = u_xlat1;
  u_xlat38 = (x_508 * x_509);
  let x_511 : f32 = u_xlat38;
  u_xlat38 = max(x_511, 0.0078125f);
  let x_515 : f32 = u_xlat38;
  let x_516 : f32 = u_xlat38;
  u_xlat41 = (x_515 * x_516);
  let x_520 : f32 = u_xlat0.w;
  let x_521 : f32 = u_xlat40;
  u_xlat36 = (x_520 + x_521);
  let x_523 : f32 = u_xlat36;
  u_xlat36 = clamp(x_523, 0.0f, 1.0f);
  let x_525 : f32 = u_xlat38;
  u_xlat40 = ((x_525 * 4.0f) + 2.0f);
  let x_529 : vec4<f32> = u_xlat3;
  let x_530 : vec2<f32> = vec2<f32>(x_529.x, x_529.y);
  let x_532 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_530.x, x_530.y, x_532);
  let x_544 : vec3<f32> = txVec0;
  let x_546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_544.xy, x_544.z);
  u_xlat3.x = x_546;
  let x_550 : f32 = x_162.x_MainLightShadowParams.x;
  u_xlat15.x = (-(x_550) + 1.0f);
  let x_555 : f32 = u_xlat3.x;
  let x_557 : f32 = x_162.x_MainLightShadowParams.x;
  let x_560 : f32 = u_xlat15.x;
  u_xlat3.x = ((x_555 * x_557) + x_560);
  let x_565 : f32 = u_xlat3.z;
  u_xlatb15 = (0.0f >= x_565);
  let x_569 : f32 = u_xlat3.z;
  u_xlatb27 = (x_569 >= 1.0f);
  let x_571 : bool = u_xlatb27;
  let x_572 : bool = u_xlatb15;
  u_xlatb15 = (x_571 | x_572);
  let x_574 : bool = u_xlatb15;
  if (x_574) {
    x_576 = 1.0f;
  } else {
    let x_581 : f32 = u_xlat3.x;
    x_576 = x_581;
  }
  let x_582 : f32 = x_576;
  u_xlat3.x = x_582;
  let x_584 : vec3<f32> = vs_TEXCOORD7;
  let x_586 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_588 : vec3<f32> = (x_584 + -(x_586));
  let x_589 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat6;
  let x_593 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_591.x, x_591.y, x_591.z), vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_599 : f32 = u_xlat15.x;
  let x_601 : f32 = x_162.x_MainLightShadowParams.z;
  let x_604 : f32 = x_162.x_MainLightShadowParams.w;
  u_xlat27 = ((x_599 * x_601) + x_604);
  let x_606 : f32 = u_xlat27;
  u_xlat27 = clamp(x_606, 0.0f, 1.0f);
  let x_609 : f32 = u_xlat3.x;
  u_xlat6.x = (-(x_609) + 1.0f);
  let x_613 : f32 = u_xlat27;
  let x_615 : f32 = u_xlat6.x;
  let x_618 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_613 * x_615) + x_618);
  let x_621 : vec3<f32> = u_xlat13;
  let x_623 : vec4<f32> = u_xlat2;
  u_xlat27 = dot(-(x_621), vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : f32 = u_xlat27;
  let x_627 : f32 = u_xlat27;
  u_xlat27 = (x_626 + x_627);
  let x_629 : vec4<f32> = u_xlat2;
  let x_631 : f32 = u_xlat27;
  let x_635 : vec3<f32> = u_xlat13;
  let x_637 : vec3<f32> = ((vec3<f32>(x_629.x, x_629.y, x_629.z) * -(vec3<f32>(x_631, x_631, x_631))) + -(x_635));
  let x_638 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_640 : vec4<f32> = u_xlat2;
  let x_642 : vec3<f32> = u_xlat13;
  u_xlat27 = dot(vec3<f32>(x_640.x, x_640.y, x_640.z), x_642);
  let x_644 : f32 = u_xlat27;
  u_xlat27 = clamp(x_644, 0.0f, 1.0f);
  let x_646 : f32 = u_xlat27;
  u_xlat27 = (-(x_646) + 1.0f);
  let x_649 : f32 = u_xlat27;
  let x_650 : f32 = u_xlat27;
  u_xlat27 = (x_649 * x_650);
  let x_652 : f32 = u_xlat27;
  let x_653 : f32 = u_xlat27;
  u_xlat27 = (x_652 * x_653);
  let x_656 : f32 = u_xlat1;
  u_xlat42 = ((-(x_656) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_662 : f32 = u_xlat1;
  let x_663 : f32 = u_xlat42;
  u_xlat1 = (x_662 * x_663);
  let x_665 : f32 = u_xlat1;
  u_xlat1 = (x_665 * 6.0f);
  let x_676 : vec4<f32> = u_xlat6;
  let x_678 : f32 = u_xlat1;
  let x_679 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_676.x, x_676.y, x_676.z), x_678);
  u_xlat6 = x_679;
  let x_681 : f32 = u_xlat6.w;
  u_xlat1 = (x_681 + -1.0f);
  let x_684 : f32 = x_391.unity_SpecCube0_HDR.w;
  let x_685 : f32 = u_xlat1;
  u_xlat1 = ((x_684 * x_685) + 1.0f);
  let x_688 : f32 = u_xlat1;
  u_xlat1 = max(x_688, 0.0f);
  let x_690 : f32 = u_xlat1;
  u_xlat1 = log2(x_690);
  let x_692 : f32 = u_xlat1;
  let x_694 : f32 = x_391.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_692 * x_694);
  let x_696 : f32 = u_xlat1;
  u_xlat1 = exp2(x_696);
  let x_698 : f32 = u_xlat1;
  let x_700 : f32 = x_391.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_698 * x_700);
  let x_702 : vec4<f32> = u_xlat6;
  let x_704 : f32 = u_xlat1;
  let x_706 : vec3<f32> = (vec3<f32>(x_702.x, x_702.y, x_702.z) * vec3<f32>(x_704, x_704, x_704));
  let x_707 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_711 : f32 = u_xlat38;
  let x_713 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_711, x_711) * vec2<f32>(x_713, x_713)) + vec2<f32>(-1.0f, 1.0f));
  let x_719 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_719);
  let x_722 : vec4<f32> = u_xlat0;
  let x_725 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_722.x, x_722.y, x_722.z)) + vec3<f32>(x_725, x_725, x_725));
  let x_728 : f32 = u_xlat27;
  let x_730 : vec3<f32> = u_xlat19;
  let x_732 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_728, x_728, x_728) * x_730) + vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_735 : f32 = u_xlat1;
  let x_737 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_735, x_735, x_735) * x_737);
  let x_739 : vec4<f32> = u_xlat6;
  let x_741 : vec3<f32> = u_xlat19;
  let x_742 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) * x_741);
  let x_743 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec4<f32> = u_xlat4;
  let x_747 : vec4<f32> = u_xlat5;
  let x_750 : vec4<f32> = u_xlat6;
  let x_752 : vec3<f32> = ((vec3<f32>(x_745.x, x_745.y, x_745.z) * vec3<f32>(x_747.x, x_747.y, x_747.z)) + vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_756 : f32 = u_xlat3.x;
  let x_758 : f32 = x_391.unity_LightData.z;
  u_xlat36 = (x_756 * x_758);
  let x_760 : vec4<f32> = u_xlat2;
  let x_763 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_760.x, x_760.y, x_760.z), vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : f32 = u_xlat1;
  u_xlat1 = clamp(x_766, 0.0f, 1.0f);
  let x_768 : f32 = u_xlat36;
  let x_769 : f32 = u_xlat1;
  u_xlat36 = (x_768 * x_769);
  let x_771 : f32 = u_xlat36;
  let x_774 : vec4<f32> = x_29.x_MainLightColor;
  let x_776 : vec3<f32> = (vec3<f32>(x_771, x_771, x_771) * vec3<f32>(x_774.x, x_774.y, x_774.z));
  let x_777 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_779 : vec3<f32> = u_xlat13;
  let x_781 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat19 = (x_779 + vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_784 : vec3<f32> = u_xlat19;
  let x_785 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_784, x_785);
  let x_787 : f32 = u_xlat36;
  u_xlat36 = max(x_787, 1.17549435e-38f);
  let x_790 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_790);
  let x_792 : f32 = u_xlat36;
  let x_794 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_792, x_792, x_792) * x_794);
  let x_796 : vec4<f32> = u_xlat2;
  let x_798 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(vec3<f32>(x_796.x, x_796.y, x_796.z), x_798);
  let x_800 : f32 = u_xlat36;
  u_xlat36 = clamp(x_800, 0.0f, 1.0f);
  let x_803 : vec4<f32> = x_29.x_MainLightPosition;
  let x_805 : vec3<f32> = u_xlat19;
  u_xlat1 = dot(vec3<f32>(x_803.x, x_803.y, x_803.z), x_805);
  let x_807 : f32 = u_xlat1;
  u_xlat1 = clamp(x_807, 0.0f, 1.0f);
  let x_809 : f32 = u_xlat36;
  let x_810 : f32 = u_xlat36;
  u_xlat36 = (x_809 * x_810);
  let x_812 : f32 = u_xlat36;
  let x_814 : f32 = u_xlat7.x;
  u_xlat36 = ((x_812 * x_814) + 1.00001001358032226562f);
  let x_818 : f32 = u_xlat1;
  let x_819 : f32 = u_xlat1;
  u_xlat1 = (x_818 * x_819);
  let x_821 : f32 = u_xlat36;
  let x_822 : f32 = u_xlat36;
  u_xlat36 = (x_821 * x_822);
  let x_824 : f32 = u_xlat1;
  u_xlat1 = max(x_824, 0.10000000149011611938f);
  let x_827 : f32 = u_xlat36;
  let x_828 : f32 = u_xlat1;
  u_xlat36 = (x_827 * x_828);
  let x_830 : f32 = u_xlat40;
  let x_831 : f32 = u_xlat36;
  u_xlat36 = (x_830 * x_831);
  let x_833 : f32 = u_xlat41;
  let x_834 : f32 = u_xlat36;
  u_xlat36 = (x_833 / x_834);
  let x_836 : vec4<f32> = u_xlat0;
  let x_838 : f32 = u_xlat36;
  let x_841 : vec4<f32> = u_xlat5;
  u_xlat19 = ((vec3<f32>(x_836.x, x_836.y, x_836.z) * vec3<f32>(x_838, x_838, x_838)) + vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_845 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_847 : f32 = x_391.unity_LightData.y;
  u_xlat36 = min(x_845, x_847);
  let x_850 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_850));
  let x_854 : f32 = u_xlat15.x;
  let x_857 : f32 = x_162.x_AdditionalShadowFadeParams.x;
  let x_860 : f32 = x_162.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_854 * x_857) + x_860);
  let x_862 : f32 = u_xlat1;
  u_xlat1 = clamp(x_862, 0.0f, 1.0f);
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_874 : u32 = u_xlatu_loop_1;
    let x_875 : u32 = u_xlatu36;
    if ((x_874 < x_875)) {
    } else {
      break;
    }
    let x_878 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_878 >> 2u);
    let x_881 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_881 & 3u));
    let x_884 : u32 = u_xlatu42;
    let x_887 : vec4<f32> = x_391.unity_LightIndices[bitcast<i32>(x_884)];
    let x_897 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_902 : vec4<u32> = indexable[x_897];
    u_xlat42 = dot(x_887, bitcast<vec4<f32>>(x_902));
    let x_906 : f32 = u_xlat42;
    u_xlati42 = i32(x_906);
    let x_909 : vec3<f32> = vs_TEXCOORD7;
    let x_920 : i32 = u_xlati42;
    let x_922 : vec4<f32> = x_919.x_AdditionalLightsPosition[x_920];
    let x_925 : i32 = u_xlati42;
    let x_927 : vec4<f32> = x_919.x_AdditionalLightsPosition[x_925];
    u_xlat8 = ((-(x_909) * vec3<f32>(x_922.w, x_922.w, x_922.w)) + vec3<f32>(x_927.x, x_927.y, x_927.z));
    let x_931 : vec3<f32> = u_xlat8;
    let x_932 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_931, x_932);
    let x_934 : f32 = u_xlat44;
    u_xlat44 = max(x_934, 0.00006103515625f);
    let x_938 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_938);
    let x_941 : vec3<f32> = u_xlat8;
    let x_942 : f32 = u_xlat9;
    u_xlat21 = (x_941 * vec3<f32>(x_942, x_942, x_942));
    let x_946 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_946);
    let x_949 : f32 = u_xlat44;
    let x_950 : i32 = u_xlati42;
    let x_952 : f32 = x_919.x_AdditionalLightsAttenuation[x_950].x;
    u_xlat44 = (x_949 * x_952);
    let x_954 : f32 = u_xlat44;
    let x_956 : f32 = u_xlat44;
    u_xlat44 = ((-(x_954) * x_956) + 1.0f);
    let x_959 : f32 = u_xlat44;
    u_xlat44 = max(x_959, 0.0f);
    let x_961 : f32 = u_xlat44;
    let x_962 : f32 = u_xlat44;
    u_xlat44 = (x_961 * x_962);
    let x_964 : f32 = u_xlat44;
    let x_966 : f32 = u_xlat10.x;
    u_xlat44 = (x_964 * x_966);
    let x_968 : i32 = u_xlati42;
    let x_970 : vec4<f32> = x_919.x_AdditionalLightsSpotDir[x_968];
    let x_972 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_970.x, x_970.y, x_970.z), x_972);
    let x_976 : f32 = u_xlat10.x;
    let x_977 : i32 = u_xlati42;
    let x_979 : f32 = x_919.x_AdditionalLightsAttenuation[x_977].z;
    let x_981 : i32 = u_xlati42;
    let x_983 : f32 = x_919.x_AdditionalLightsAttenuation[x_981].w;
    u_xlat10.x = ((x_976 * x_979) + x_983);
    let x_987 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_987, 0.0f, 1.0f);
    let x_991 : f32 = u_xlat10.x;
    let x_993 : f32 = u_xlat10.x;
    u_xlat10.x = (x_991 * x_993);
    let x_996 : f32 = u_xlat44;
    let x_998 : f32 = u_xlat10.x;
    u_xlat44 = (x_996 * x_998);
    let x_1002 : i32 = u_xlati42;
    let x_1004 : f32 = x_162.x_AdditionalShadowParams[x_1002].w;
    u_xlati10 = i32(x_1004);
    let x_1009 : i32 = u_xlati10;
    u_xlatb22.x = (x_1009 >= 0i);
    let x_1013 : bool = u_xlatb22.x;
    if (x_1013) {
      let x_1017 : i32 = u_xlati42;
      let x_1019 : f32 = x_162.x_AdditionalShadowParams[x_1017].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1019, x_1019, x_1019, x_1019))));
      let x_1025 : bool = u_xlatb22.x;
      if (x_1025) {
        let x_1028 : vec3<f32> = u_xlat21;
        let x_1031 : vec3<f32> = u_xlat21;
        let x_1034 : vec4<bool> = (abs(vec4<f32>(x_1028.z, x_1028.z, x_1028.y, x_1028.y)) >= abs(vec4<f32>(x_1031.x, x_1031.y, x_1031.x, x_1031.x)));
        u_xlatb22 = vec3<bool>(x_1034.x, x_1034.y, x_1034.z);
        let x_1037 : bool = u_xlatb22.y;
        let x_1039 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1037 & x_1039);
        let x_1043 : vec3<f32> = u_xlat21;
        let x_1046 : vec4<bool> = (-(vec4<f32>(x_1043.z, x_1043.y, x_1043.x, x_1043.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1046.x, x_1046.y, x_1046.z);
        let x_1050 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1050);
        let x_1055 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1055);
        let x_1060 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1060);
        let x_1063 : bool = u_xlatb22.z;
        if (x_1063) {
          let x_1068 : f32 = u_xlat11.y;
          x_1064 = x_1068;
        } else {
          let x_1070 : f32 = u_xlat34;
          x_1064 = x_1070;
        }
        let x_1071 : f32 = x_1064;
        u_xlat34 = x_1071;
        let x_1074 : bool = u_xlatb22.x;
        if (x_1074) {
          let x_1079 : f32 = u_xlat11.x;
          x_1075 = x_1079;
        } else {
          let x_1081 : f32 = u_xlat34;
          x_1075 = x_1081;
        }
        let x_1082 : f32 = x_1075;
        u_xlat22 = x_1082;
        let x_1083 : i32 = u_xlati42;
        let x_1085 : f32 = x_162.x_AdditionalShadowParams[x_1083].w;
        u_xlat34 = trunc(x_1085);
        let x_1087 : f32 = u_xlat22;
        let x_1088 : f32 = u_xlat34;
        u_xlat22 = (x_1087 + x_1088);
        let x_1090 : f32 = u_xlat22;
        u_xlati10 = i32(x_1090);
      }
      let x_1092 : i32 = u_xlati10;
      u_xlati10 = (x_1092 << bitcast<u32>(2i));
      let x_1094 : vec3<f32> = vs_TEXCOORD7;
      let x_1097 : i32 = u_xlati10;
      let x_1100 : i32 = u_xlati10;
      let x_1104 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_1097 + 1i) / 4i)][((x_1100 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1094.y, x_1094.y, x_1094.y, x_1094.y) * x_1104);
      let x_1106 : i32 = u_xlati10;
      let x_1108 : i32 = u_xlati10;
      let x_1111 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[(x_1106 / 4i)][(x_1108 % 4i)];
      let x_1112 : vec3<f32> = vs_TEXCOORD7;
      let x_1115 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1111 * vec4<f32>(x_1112.x, x_1112.x, x_1112.x, x_1112.x)) + x_1115);
      let x_1117 : i32 = u_xlati10;
      let x_1120 : i32 = u_xlati10;
      let x_1124 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_1117 + 2i) / 4i)][((x_1120 + 2i) % 4i)];
      let x_1125 : vec3<f32> = vs_TEXCOORD7;
      let x_1128 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1124 * vec4<f32>(x_1125.z, x_1125.z, x_1125.z, x_1125.z)) + x_1128);
      let x_1130 : vec4<f32> = u_xlat11;
      let x_1131 : i32 = u_xlati10;
      let x_1134 : i32 = u_xlati10;
      let x_1138 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_1131 + 3i) / 4i)][((x_1134 + 3i) % 4i)];
      u_xlat10 = (x_1130 + x_1138);
      let x_1140 : vec4<f32> = u_xlat10;
      let x_1142 : vec4<f32> = u_xlat10;
      let x_1144 : vec3<f32> = (vec3<f32>(x_1140.x, x_1140.y, x_1140.z) / vec3<f32>(x_1142.w, x_1142.w, x_1142.w));
      let x_1145 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
      let x_1148 : vec4<f32> = u_xlat10;
      let x_1149 : vec2<f32> = vec2<f32>(x_1148.x, x_1148.y);
      let x_1151 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1149.x, x_1149.y, x_1151);
      let x_1159 : vec3<f32> = txVec1;
      let x_1161 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1159.xy, x_1159.z);
      u_xlat10.x = x_1161;
      let x_1163 : i32 = u_xlati42;
      let x_1165 : f32 = x_162.x_AdditionalShadowParams[x_1163].x;
      u_xlat22 = (1.0f + -(x_1165));
      let x_1169 : f32 = u_xlat10.x;
      let x_1170 : i32 = u_xlati42;
      let x_1172 : f32 = x_162.x_AdditionalShadowParams[x_1170].x;
      let x_1174 : f32 = u_xlat22;
      u_xlat10.x = ((x_1169 * x_1172) + x_1174);
      let x_1178 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1178);
      let x_1183 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1183 >= 1.0f);
      let x_1185 : bool = u_xlatb34;
      let x_1187 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1185 | x_1187);
      let x_1191 : bool = u_xlatb22.x;
      if (x_1191) {
        x_1192 = 1.0f;
      } else {
        let x_1197 : f32 = u_xlat10.x;
        x_1192 = x_1197;
      }
      let x_1198 : f32 = x_1192;
      u_xlat10.x = x_1198;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1203 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1203) + 1.0f);
    let x_1206 : f32 = u_xlat1;
    let x_1207 : f32 = u_xlat22;
    let x_1210 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1206 * x_1207) + x_1210);
    let x_1213 : f32 = u_xlat44;
    let x_1215 : f32 = u_xlat10.x;
    u_xlat44 = (x_1213 * x_1215);
    let x_1217 : vec4<f32> = u_xlat2;
    let x_1219 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1217.x, x_1217.y, x_1217.z), x_1219);
    let x_1223 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1223, 0.0f, 1.0f);
    let x_1226 : f32 = u_xlat44;
    let x_1228 : f32 = u_xlat10.x;
    u_xlat44 = (x_1226 * x_1228);
    let x_1230 : f32 = u_xlat44;
    let x_1232 : i32 = u_xlati42;
    let x_1234 : vec4<f32> = x_919.x_AdditionalLightsColor[x_1232];
    let x_1236 : vec3<f32> = (vec3<f32>(x_1230, x_1230, x_1230) * vec3<f32>(x_1234.x, x_1234.y, x_1234.z));
    let x_1237 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
    let x_1239 : vec3<f32> = u_xlat8;
    let x_1240 : f32 = u_xlat9;
    let x_1243 : vec3<f32> = u_xlat13;
    u_xlat8 = ((x_1239 * vec3<f32>(x_1240, x_1240, x_1240)) + x_1243);
    let x_1245 : vec3<f32> = u_xlat8;
    let x_1246 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1245, x_1246);
    let x_1248 : f32 = u_xlat42;
    u_xlat42 = max(x_1248, 1.17549435e-38f);
    let x_1250 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1250);
    let x_1252 : f32 = u_xlat42;
    let x_1254 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1252, x_1252, x_1252) * x_1254);
    let x_1256 : vec4<f32> = u_xlat2;
    let x_1258 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_1256.x, x_1256.y, x_1256.z), x_1258);
    let x_1260 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1260, 0.0f, 1.0f);
    let x_1262 : vec3<f32> = u_xlat21;
    let x_1263 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1262, x_1263);
    let x_1267 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1267, 0.0f, 1.0f);
    let x_1270 : f32 = u_xlat42;
    let x_1271 : f32 = u_xlat42;
    u_xlat42 = (x_1270 * x_1271);
    let x_1273 : f32 = u_xlat42;
    let x_1275 : f32 = u_xlat7.x;
    u_xlat42 = ((x_1273 * x_1275) + 1.00001001358032226562f);
    let x_1279 : f32 = u_xlat8.x;
    let x_1281 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1279 * x_1281);
    let x_1284 : f32 = u_xlat42;
    let x_1285 : f32 = u_xlat42;
    u_xlat42 = (x_1284 * x_1285);
    let x_1288 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1288, 0.10000000149011611938f);
    let x_1291 : f32 = u_xlat42;
    let x_1293 : f32 = u_xlat8.x;
    u_xlat42 = (x_1291 * x_1293);
    let x_1295 : f32 = u_xlat40;
    let x_1296 : f32 = u_xlat42;
    u_xlat42 = (x_1295 * x_1296);
    let x_1298 : f32 = u_xlat41;
    let x_1299 : f32 = u_xlat42;
    u_xlat42 = (x_1298 / x_1299);
    let x_1301 : vec4<f32> = u_xlat0;
    let x_1303 : f32 = u_xlat42;
    let x_1306 : vec4<f32> = u_xlat5;
    u_xlat8 = ((vec3<f32>(x_1301.x, x_1301.y, x_1301.z) * vec3<f32>(x_1303, x_1303, x_1303)) + vec3<f32>(x_1306.x, x_1306.y, x_1306.z));
    let x_1309 : vec3<f32> = u_xlat8;
    let x_1310 : vec4<f32> = u_xlat10;
    let x_1313 : vec4<f32> = u_xlat3;
    let x_1315 : vec3<f32> = ((x_1309 * vec3<f32>(x_1310.x, x_1310.y, x_1310.z)) + vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
    let x_1316 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);

    continuing {
      let x_1318 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1318 + bitcast<u32>(1i));
    }
  }
  let x_1320 : vec3<f32> = u_xlat19;
  let x_1321 : vec4<f32> = u_xlat6;
  let x_1324 : vec4<f32> = u_xlat4;
  let x_1326 : vec3<f32> = ((x_1320 * vec3<f32>(x_1321.x, x_1321.y, x_1321.z)) + vec3<f32>(x_1324.x, x_1324.y, x_1324.z));
  let x_1327 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
  let x_1329 : vec4<f32> = u_xlat3;
  let x_1331 : vec4<f32> = u_xlat0;
  let x_1333 : vec3<f32> = (vec3<f32>(x_1329.x, x_1329.y, x_1329.z) + vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
  let x_1334 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
  let x_1336 : f32 = u_xlat39;
  let x_1337 : f32 = u_xlat39;
  u_xlat36 = (x_1336 * -(x_1337));
  let x_1340 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1340);
  let x_1342 : vec4<f32> = u_xlat0;
  let x_1345 : vec4<f32> = x_29.unity_FogColor;
  let x_1348 : vec3<f32> = (vec3<f32>(x_1342.x, x_1342.y, x_1342.z) + -(vec3<f32>(x_1345.x, x_1345.y, x_1345.z)));
  let x_1349 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
  let x_1353 : f32 = u_xlat36;
  let x_1355 : vec4<f32> = u_xlat0;
  let x_1359 : vec4<f32> = x_29.unity_FogColor;
  let x_1361 : vec3<f32> = ((vec3<f32>(x_1353, x_1353, x_1353) * vec3<f32>(x_1355.x, x_1355.y, x_1355.z)) + vec3<f32>(x_1359.x, x_1359.y, x_1359.z));
  let x_1362 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1361.x, x_1361.y, x_1361.z, x_1362.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


