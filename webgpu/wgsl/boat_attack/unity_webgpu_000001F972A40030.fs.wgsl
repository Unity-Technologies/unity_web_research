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

alias Arr_4 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_111 : LightShadows;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu15 : u32;

var<private> u_xlati15 : i32;

@group(1) @binding(2) var<uniform> x_344 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat42 : f32;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat29 : f32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb43 : bool;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat43 : f32;

@group(1) @binding(4) var<uniform> x_572 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb19 : vec2<bool>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu48 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati48 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1035 : AdditionalLights;

var<private> u_xlat35 : f32;

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

var<private> u_xlatb48 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_526 : f32;
  var x_657 : f32;
  var x_668 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1168 : f32;
  var x_1179 : f32;
  var txVec1 : vec3<f32>;
  var x_1625 : f32;
  var x_1638 : f32;
  var x_1696 : f32;
  var x_1707 : vec3<f32>;
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
  u_xlat15.x = dot(vec3<f32>(x_83.x, x_83.y, x_83.z), vec3<f32>(x_85.x, x_85.y, x_85.z));
  let x_90 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_90);
  let x_94 : vec3<f32> = u_xlat15;
  let x_96 : vec4<f32> = vs_TEXCOORD3;
  let x_98 : vec3<f32> = (vec3<f32>(x_94.x, x_94.x, x_94.x) * vec3<f32>(x_96.x, x_96.y, x_96.z));
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_98.x, x_98.y, x_98.z, x_99.w);
  let x_103 : vec3<f32> = vs_TEXCOORD7;
  let x_114 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres0;
  u_xlat15 = (x_103 + -(vec3<f32>(x_114.x, x_114.y, x_114.z)));
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
  let x_147 : vec3<f32> = u_xlat15;
  let x_148 : vec3<f32> = u_xlat15;
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
  u_xlat15.x = select(-0.0f, -1.0f, x_196);
  let x_202 : bool = u_xlatb3.y;
  u_xlat15.y = select(-0.0f, -1.0f, x_202);
  let x_206 : bool = u_xlatb3.z;
  u_xlat15.z = select(-0.0f, -1.0f, x_206);
  let x_209 : vec3<f32> = u_xlat15;
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat15 = (x_209 + vec3<f32>(x_210.y, x_210.z, x_210.w));
  let x_213 : vec3<f32> = u_xlat15;
  let x_215 : vec3<f32> = max(x_213, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_216 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_216.x, x_215.x, x_215.y, x_215.z);
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat15.x = dot(x_218, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_226 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_226) + 4.0f);
  let x_233 : f32 = u_xlat15.x;
  u_xlatu15 = u32(x_233);
  let x_237 : u32 = u_xlatu15;
  u_xlati15 = (bitcast<i32>(x_237) << bitcast<u32>(2i));
  let x_240 : vec3<f32> = vs_TEXCOORD7;
  let x_242 : i32 = u_xlati15;
  let x_245 : i32 = u_xlati15;
  let x_249 : vec4<f32> = x_111.x_MainLightWorldToShadow[((x_242 + 1i) / 4i)][((x_245 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_240.y, x_240.y, x_240.y) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : i32 = u_xlati15;
  let x_254 : i32 = u_xlati15;
  let x_257 : vec4<f32> = x_111.x_MainLightWorldToShadow[(x_252 / 4i)][(x_254 % 4i)];
  let x_259 : vec3<f32> = vs_TEXCOORD7;
  let x_262 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.x, x_259.x, x_259.x)) + x_262);
  let x_264 : i32 = u_xlati15;
  let x_267 : i32 = u_xlati15;
  let x_271 : vec4<f32> = x_111.x_MainLightWorldToShadow[((x_264 + 2i) / 4i)][((x_267 + 2i) % 4i)];
  let x_273 : vec3<f32> = vs_TEXCOORD7;
  let x_276 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(x_273.z, x_273.z, x_273.z)) + x_276);
  let x_278 : vec3<f32> = u_xlat3;
  let x_279 : i32 = u_xlati15;
  let x_282 : i32 = u_xlati15;
  let x_286 : vec4<f32> = x_111.x_MainLightWorldToShadow[((x_279 + 3i) / 4i)][((x_282 + 3i) % 4i)];
  u_xlat15 = (x_278 + vec3<f32>(x_286.x, x_286.y, x_286.z));
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
  u_xlat44 = (x_388 * x_390);
  let x_393 : f32 = u_xlat2.x;
  let x_395 : f32 = u_xlat2.x;
  let x_397 : f32 = u_xlat44;
  u_xlat44 = ((x_393 * x_395) + -(x_397));
  let x_403 : vec4<f32> = x_344.unity_SHC;
  let x_405 : f32 = u_xlat44;
  let x_408 : vec4<f32> = u_xlat6;
  u_xlat17 = ((vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(x_405, x_405, x_405)) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec3<f32> = u_xlat17;
  let x_412 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_411 + vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec3<f32> = u_xlat17;
  u_xlat17 = max(x_415, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_418 : f32 = u_xlat1.x;
  u_xlat44 = ((-(x_418) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_423 : f32 = u_xlat44;
  u_xlat4.x = (-(x_423) + 1.0f);
  let x_428 : vec4<f32> = u_xlat0;
  let x_430 : f32 = u_xlat44;
  u_xlat18 = (vec3<f32>(x_428.x, x_428.y, x_428.z) * vec3<f32>(x_430, x_430, x_430));
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
  u_xlat44 = (x_456 * x_458);
  let x_460 : f32 = u_xlat44;
  u_xlat44 = max(x_460, 0.0078125f);
  let x_463 : f32 = u_xlat44;
  let x_464 : f32 = u_xlat44;
  u_xlat5.x = (x_463 * x_464);
  let x_469 : f32 = u_xlat0.w;
  let x_471 : f32 = u_xlat4.x;
  u_xlat42 = (x_469 + x_471);
  let x_473 : f32 = u_xlat42;
  u_xlat42 = clamp(x_473, 0.0f, 1.0f);
  let x_475 : f32 = u_xlat44;
  u_xlat4.x = ((x_475 * 4.0f) + 2.0f);
  let x_481 : vec3<f32> = u_xlat15;
  let x_482 : vec2<f32> = vec2<f32>(x_481.x, x_481.y);
  let x_484 : f32 = u_xlat15.z;
  txVec0 = vec3<f32>(x_482.x, x_482.y, x_484);
  let x_496 : vec3<f32> = txVec0;
  let x_498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_496.xy, x_496.z);
  u_xlat15.x = x_498;
  let x_502 : f32 = x_111.x_MainLightShadowParams.x;
  u_xlat29 = (-(x_502) + 1.0f);
  let x_506 : f32 = u_xlat15.x;
  let x_508 : f32 = x_111.x_MainLightShadowParams.x;
  let x_510 : f32 = u_xlat29;
  u_xlat15.x = ((x_506 * x_508) + x_510);
  let x_515 : f32 = u_xlat15.z;
  u_xlatb29 = (0.0f >= x_515);
  let x_519 : f32 = u_xlat15.z;
  u_xlatb43 = (x_519 >= 1.0f);
  let x_521 : bool = u_xlatb43;
  let x_522 : bool = u_xlatb29;
  u_xlatb29 = (x_521 | x_522);
  let x_524 : bool = u_xlatb29;
  if (x_524) {
    x_526 = 1.0f;
  } else {
    let x_531 : f32 = u_xlat15.x;
    x_526 = x_531;
  }
  let x_532 : f32 = x_526;
  u_xlat15.x = x_532;
  let x_535 : vec3<f32> = vs_TEXCOORD7;
  let x_538 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat19 = (x_535 + -(x_538));
  let x_541 : vec3<f32> = u_xlat19;
  let x_542 : vec3<f32> = u_xlat19;
  u_xlat29 = dot(x_541, x_542);
  let x_545 : f32 = u_xlat29;
  let x_547 : f32 = x_111.x_MainLightShadowParams.z;
  let x_550 : f32 = x_111.x_MainLightShadowParams.w;
  u_xlat43 = ((x_545 * x_547) + x_550);
  let x_552 : f32 = u_xlat43;
  u_xlat43 = clamp(x_552, 0.0f, 1.0f);
  let x_555 : f32 = u_xlat15.x;
  u_xlat19.x = (-(x_555) + 1.0f);
  let x_559 : f32 = u_xlat43;
  let x_561 : f32 = u_xlat19.x;
  let x_564 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_559 * x_561) + x_564);
  let x_574 : f32 = x_572.x_MainLightCookieTextureFormat;
  u_xlatb43 = !((x_574 == -1.0f));
  let x_576 : bool = u_xlatb43;
  if (x_576) {
    let x_579 : vec3<f32> = vs_TEXCOORD7;
    let x_582 : vec4<f32> = x_572.x_MainLightWorldToLight[1i];
    let x_584 : vec2<f32> = (vec2<f32>(x_579.y, x_579.y) * vec2<f32>(x_582.x, x_582.y));
    let x_585 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_584.x, x_584.y, x_585.z);
    let x_588 : vec4<f32> = x_572.x_MainLightWorldToLight[0i];
    let x_590 : vec3<f32> = vs_TEXCOORD7;
    let x_593 : vec3<f32> = u_xlat19;
    let x_595 : vec2<f32> = ((vec2<f32>(x_588.x, x_588.y) * vec2<f32>(x_590.x, x_590.x)) + vec2<f32>(x_593.x, x_593.y));
    let x_596 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_595.x, x_595.y, x_596.z);
    let x_599 : vec4<f32> = x_572.x_MainLightWorldToLight[2i];
    let x_601 : vec3<f32> = vs_TEXCOORD7;
    let x_604 : vec3<f32> = u_xlat19;
    let x_606 : vec2<f32> = ((vec2<f32>(x_599.x, x_599.y) * vec2<f32>(x_601.z, x_601.z)) + vec2<f32>(x_604.x, x_604.y));
    let x_607 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_606.x, x_606.y, x_607.z);
    let x_609 : vec3<f32> = u_xlat19;
    let x_612 : vec4<f32> = x_572.x_MainLightWorldToLight[3i];
    let x_614 : vec2<f32> = (vec2<f32>(x_609.x, x_609.y) + vec2<f32>(x_612.x, x_612.y));
    let x_615 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_614.x, x_614.y, x_615.z);
    let x_617 : vec3<f32> = u_xlat19;
    let x_622 : vec2<f32> = ((vec2<f32>(x_617.x, x_617.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_623 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_622.x, x_622.y, x_623.z);
    let x_630 : vec3<f32> = u_xlat19;
    let x_633 : f32 = x_29.x_GlobalMipBias.x;
    let x_634 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_630.x, x_630.y), x_633);
    u_xlat6 = x_634;
    let x_639 : f32 = x_572.x_MainLightCookieTextureFormat;
    let x_641 : f32 = x_572.x_MainLightCookieTextureFormat;
    let x_643 : f32 = x_572.x_MainLightCookieTextureFormat;
    let x_645 : f32 = x_572.x_MainLightCookieTextureFormat;
    let x_646 : vec4<f32> = vec4<f32>(x_639, x_641, x_643, x_645);
    let x_653 : vec4<bool> = (vec4<f32>(x_646.x, x_646.y, x_646.z, x_646.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_653.x, x_653.y);
    let x_656 : bool = u_xlatb19.y;
    if (x_656) {
      let x_661 : f32 = u_xlat6.w;
      x_657 = x_661;
    } else {
      let x_664 : f32 = u_xlat6.x;
      x_657 = x_664;
    }
    let x_665 : f32 = x_657;
    u_xlat43 = x_665;
    let x_667 : bool = u_xlatb19.x;
    if (x_667) {
      let x_671 : vec4<f32> = u_xlat6;
      x_668 = vec3<f32>(x_671.x, x_671.y, x_671.z);
    } else {
      let x_674 : f32 = u_xlat43;
      x_668 = vec3<f32>(x_674, x_674, x_674);
    }
    let x_676 : vec3<f32> = x_668;
    u_xlat19 = x_676;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_681 : vec3<f32> = u_xlat19;
  let x_683 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat19 = (x_681 * vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_687 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_687;
  let x_691 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_691;
  let x_695 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_695;
  let x_697 : vec4<f32> = u_xlat6;
  let x_700 : vec4<f32> = u_xlat2;
  u_xlat43 = dot(-(vec3<f32>(x_697.x, x_697.y, x_697.z)), vec3<f32>(x_700.x, x_700.y, x_700.z));
  let x_703 : f32 = u_xlat43;
  let x_704 : f32 = u_xlat43;
  u_xlat43 = (x_703 + x_704);
  let x_707 : vec4<f32> = u_xlat2;
  let x_709 : f32 = u_xlat43;
  let x_713 : vec4<f32> = u_xlat6;
  let x_716 : vec3<f32> = ((vec3<f32>(x_707.x, x_707.y, x_707.z) * -(vec3<f32>(x_709, x_709, x_709))) + -(vec3<f32>(x_713.x, x_713.y, x_713.z)));
  let x_717 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : vec4<f32> = u_xlat2;
  let x_721 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_719.x, x_719.y, x_719.z), vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : f32 = u_xlat43;
  u_xlat43 = clamp(x_724, 0.0f, 1.0f);
  let x_726 : f32 = u_xlat43;
  u_xlat43 = (-(x_726) + 1.0f);
  let x_729 : f32 = u_xlat43;
  let x_730 : f32 = u_xlat43;
  u_xlat43 = (x_729 * x_730);
  let x_732 : f32 = u_xlat43;
  let x_733 : f32 = u_xlat43;
  u_xlat43 = (x_732 * x_733);
  let x_737 : f32 = u_xlat1.x;
  u_xlat48 = ((-(x_737) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_744 : f32 = u_xlat1.x;
  let x_745 : f32 = u_xlat48;
  u_xlat1.x = (x_744 * x_745);
  let x_749 : f32 = u_xlat1.x;
  u_xlat1.x = (x_749 * 6.0f);
  let x_761 : vec4<f32> = u_xlat7;
  let x_764 : f32 = u_xlat1.x;
  let x_765 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_761.x, x_761.y, x_761.z), x_764);
  u_xlat7 = x_765;
  let x_767 : f32 = u_xlat7.w;
  u_xlat1.x = (x_767 + -1.0f);
  let x_771 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_773 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_771 * x_773) + 1.0f);
  let x_778 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_778, 0.0f);
  let x_782 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_782);
  let x_786 : f32 = u_xlat1.x;
  let x_788 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_786 * x_788);
  let x_792 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_792);
  let x_796 : f32 = u_xlat1.x;
  let x_798 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_796 * x_798);
  let x_801 : vec4<f32> = u_xlat7;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = (vec3<f32>(x_801.x, x_801.y, x_801.z) * vec3<f32>(x_803.x, x_803.x, x_803.x));
  let x_806 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_810 : f32 = u_xlat44;
  let x_812 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_810, x_810) * vec2<f32>(x_812, x_812)) + vec2<f32>(-1.0f, 1.0f));
  let x_818 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_818);
  let x_822 : vec4<f32> = u_xlat0;
  let x_825 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_822.x, x_822.y, x_822.z)) + vec3<f32>(x_825, x_825, x_825));
  let x_828 : f32 = u_xlat43;
  let x_830 : vec3<f32> = u_xlat22;
  let x_832 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_828, x_828, x_828) * x_830) + vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : vec4<f32> = u_xlat1;
  let x_837 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_835.x, x_835.x, x_835.x) * x_837);
  let x_839 : vec4<f32> = u_xlat7;
  let x_841 : vec3<f32> = u_xlat22;
  let x_842 : vec3<f32> = (vec3<f32>(x_839.x, x_839.y, x_839.z) * x_841);
  let x_843 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec3<f32> = u_xlat17;
  let x_846 : vec3<f32> = u_xlat18;
  let x_848 : vec4<f32> = u_xlat7;
  u_xlat17 = ((x_845 * x_846) + vec3<f32>(x_848.x, x_848.y, x_848.z));
  let x_852 : f32 = u_xlat15.x;
  let x_854 : f32 = x_344.unity_LightData.z;
  u_xlat42 = (x_852 * x_854);
  let x_856 : vec4<f32> = u_xlat2;
  let x_859 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_856.x, x_856.y, x_856.z), vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_864 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_864, 0.0f, 1.0f);
  let x_867 : f32 = u_xlat42;
  let x_869 : f32 = u_xlat1.x;
  u_xlat42 = (x_867 * x_869);
  let x_871 : f32 = u_xlat42;
  let x_873 : vec3<f32> = u_xlat19;
  let x_874 : vec3<f32> = (vec3<f32>(x_871, x_871, x_871) * x_873);
  let x_875 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_874.x, x_874.y, x_875.z, x_874.z);
  let x_877 : vec4<f32> = u_xlat6;
  let x_880 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat19 = (vec3<f32>(x_877.x, x_877.y, x_877.z) + vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : vec3<f32> = u_xlat19;
  let x_884 : vec3<f32> = u_xlat19;
  u_xlat42 = dot(x_883, x_884);
  let x_886 : f32 = u_xlat42;
  u_xlat42 = max(x_886, 1.17549435e-38f);
  let x_889 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_889);
  let x_891 : f32 = u_xlat42;
  let x_893 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_891, x_891, x_891) * x_893);
  let x_895 : vec4<f32> = u_xlat2;
  let x_897 : vec3<f32> = u_xlat19;
  u_xlat42 = dot(vec3<f32>(x_895.x, x_895.y, x_895.z), x_897);
  let x_899 : f32 = u_xlat42;
  u_xlat42 = clamp(x_899, 0.0f, 1.0f);
  let x_902 : vec4<f32> = x_29.x_MainLightPosition;
  let x_904 : vec3<f32> = u_xlat19;
  u_xlat44 = dot(vec3<f32>(x_902.x, x_902.y, x_902.z), x_904);
  let x_906 : f32 = u_xlat44;
  u_xlat44 = clamp(x_906, 0.0f, 1.0f);
  let x_908 : f32 = u_xlat42;
  let x_909 : f32 = u_xlat42;
  u_xlat42 = (x_908 * x_909);
  let x_911 : f32 = u_xlat42;
  let x_913 : f32 = u_xlat8.x;
  u_xlat42 = ((x_911 * x_913) + 1.00001001358032226562f);
  let x_917 : f32 = u_xlat44;
  let x_918 : f32 = u_xlat44;
  u_xlat44 = (x_917 * x_918);
  let x_920 : f32 = u_xlat42;
  let x_921 : f32 = u_xlat42;
  u_xlat42 = (x_920 * x_921);
  let x_923 : f32 = u_xlat44;
  u_xlat44 = max(x_923, 0.10000000149011611938f);
  let x_926 : f32 = u_xlat42;
  let x_927 : f32 = u_xlat44;
  u_xlat42 = (x_926 * x_927);
  let x_930 : f32 = u_xlat4.x;
  let x_931 : f32 = u_xlat42;
  u_xlat42 = (x_930 * x_931);
  let x_934 : f32 = u_xlat5.x;
  let x_935 : f32 = u_xlat42;
  u_xlat42 = (x_934 / x_935);
  let x_937 : vec4<f32> = u_xlat0;
  let x_939 : f32 = u_xlat42;
  let x_942 : vec3<f32> = u_xlat18;
  u_xlat19 = ((vec3<f32>(x_937.x, x_937.y, x_937.z) * vec3<f32>(x_939, x_939, x_939)) + x_942);
  let x_945 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_947 : f32 = x_344.unity_LightData.y;
  u_xlat42 = min(x_945, x_947);
  let x_950 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_950));
  let x_953 : f32 = u_xlat29;
  let x_956 : f32 = x_111.x_AdditionalShadowFadeParams.x;
  let x_959 : f32 = x_111.x_AdditionalShadowFadeParams.y;
  u_xlat29 = ((x_953 * x_956) + x_959);
  let x_961 : f32 = u_xlat29;
  u_xlat29 = clamp(x_961, 0.0f, 1.0f);
  let x_965 : f32 = x_572.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_967 : f32 = x_572.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_969 : f32 = x_572.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_971 : f32 = x_572.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_972 : vec4<f32> = vec4<f32>(x_965, x_967, x_969, x_971);
  let x_978 : vec4<bool> = (vec4<f32>(x_972.x, x_972.y, x_972.z, x_972.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_978.x, x_978.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_990 : u32 = u_xlatu_loop_1;
    let x_991 : u32 = u_xlatu42;
    if ((x_990 < x_991)) {
    } else {
      break;
    }
    let x_994 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_994 >> 2u);
    let x_997 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_997 & 3u));
    let x_1000 : u32 = u_xlatu48;
    let x_1003 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_1000)];
    let x_1013 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1018 : vec4<u32> = indexable[x_1013];
    u_xlat48 = dot(x_1003, bitcast<vec4<f32>>(x_1018));
    let x_1022 : f32 = u_xlat48;
    u_xlati48 = i32(x_1022);
    let x_1025 : vec3<f32> = vs_TEXCOORD7;
    let x_1036 : i32 = u_xlati48;
    let x_1038 : vec4<f32> = x_1035.x_AdditionalLightsPosition[x_1036];
    let x_1041 : i32 = u_xlati48;
    let x_1043 : vec4<f32> = x_1035.x_AdditionalLightsPosition[x_1041];
    u_xlat9 = ((-(x_1025) * vec3<f32>(x_1038.w, x_1038.w, x_1038.w)) + vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
    let x_1047 : vec3<f32> = u_xlat9;
    let x_1048 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1047, x_1048);
    let x_1050 : f32 = u_xlat35;
    u_xlat35 = max(x_1050, 0.00006103515625f);
    let x_1054 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1054);
    let x_1057 : f32 = u_xlat49;
    let x_1059 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1057, x_1057, x_1057) * x_1059);
    let x_1062 : f32 = u_xlat35;
    u_xlat51 = (1.0f / x_1062);
    let x_1064 : f32 = u_xlat35;
    let x_1065 : i32 = u_xlati48;
    let x_1067 : f32 = x_1035.x_AdditionalLightsAttenuation[x_1065].x;
    u_xlat35 = (x_1064 * x_1067);
    let x_1069 : f32 = u_xlat35;
    let x_1071 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1069) * x_1071) + 1.0f);
    let x_1074 : f32 = u_xlat35;
    u_xlat35 = max(x_1074, 0.0f);
    let x_1076 : f32 = u_xlat35;
    let x_1077 : f32 = u_xlat35;
    u_xlat35 = (x_1076 * x_1077);
    let x_1079 : f32 = u_xlat35;
    let x_1080 : f32 = u_xlat51;
    u_xlat35 = (x_1079 * x_1080);
    let x_1082 : i32 = u_xlati48;
    let x_1084 : vec4<f32> = x_1035.x_AdditionalLightsSpotDir[x_1082];
    let x_1086 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1084.x, x_1084.y, x_1084.z), x_1086);
    let x_1088 : f32 = u_xlat51;
    let x_1089 : i32 = u_xlati48;
    let x_1091 : f32 = x_1035.x_AdditionalLightsAttenuation[x_1089].z;
    let x_1093 : i32 = u_xlati48;
    let x_1095 : f32 = x_1035.x_AdditionalLightsAttenuation[x_1093].w;
    u_xlat51 = ((x_1088 * x_1091) + x_1095);
    let x_1097 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1097, 0.0f, 1.0f);
    let x_1099 : f32 = u_xlat51;
    let x_1100 : f32 = u_xlat51;
    u_xlat51 = (x_1099 * x_1100);
    let x_1102 : f32 = u_xlat35;
    let x_1103 : f32 = u_xlat51;
    u_xlat35 = (x_1102 * x_1103);
    let x_1107 : i32 = u_xlati48;
    let x_1109 : f32 = x_111.x_AdditionalShadowParams[x_1107].w;
    u_xlati51 = i32(x_1109);
    let x_1112 : i32 = u_xlati51;
    u_xlatb52 = (x_1112 >= 0i);
    let x_1114 : bool = u_xlatb52;
    if (x_1114) {
      let x_1118 : i32 = u_xlati48;
      let x_1120 : f32 = x_111.x_AdditionalShadowParams[x_1118].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1120, x_1120, x_1120, x_1120))));
      let x_1124 : bool = u_xlatb52;
      if (x_1124) {
        let x_1128 : vec3<f32> = u_xlat10;
        let x_1131 : vec3<f32> = u_xlat10;
        let x_1134 : vec4<bool> = (abs(vec4<f32>(x_1128.z, x_1128.z, x_1128.y, x_1128.z)) >= abs(vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.x)));
        let x_1136 : vec3<bool> = vec3<bool>(x_1134.x, x_1134.y, x_1134.z);
        let x_1137 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
        let x_1140 : bool = u_xlatb11.y;
        let x_1142 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1140 & x_1142);
        let x_1144 : vec3<f32> = u_xlat10;
        let x_1147 : vec4<bool> = (-(vec4<f32>(x_1144.z, x_1144.y, x_1144.z, x_1144.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1148 : vec3<bool> = vec3<bool>(x_1147.x, x_1147.y, x_1147.w);
        let x_1149 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1148.x, x_1148.y, x_1149.z, x_1148.z);
        let x_1153 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1153);
        let x_1158 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1158);
        let x_1163 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1163);
        let x_1167 : bool = u_xlatb11.z;
        if (x_1167) {
          let x_1172 : f32 = u_xlat11.y;
          x_1168 = x_1172;
        } else {
          let x_1174 : f32 = u_xlat53;
          x_1168 = x_1174;
        }
        let x_1175 : f32 = x_1168;
        u_xlat25.x = x_1175;
        let x_1178 : bool = u_xlatb52;
        if (x_1178) {
          let x_1183 : f32 = u_xlat11.x;
          x_1179 = x_1183;
        } else {
          let x_1186 : f32 = u_xlat25.x;
          x_1179 = x_1186;
        }
        let x_1187 : f32 = x_1179;
        u_xlat52 = x_1187;
        let x_1188 : i32 = u_xlati48;
        let x_1190 : f32 = x_111.x_AdditionalShadowParams[x_1188].w;
        u_xlat11.x = trunc(x_1190);
        let x_1193 : f32 = u_xlat52;
        let x_1195 : f32 = u_xlat11.x;
        u_xlat52 = (x_1193 + x_1195);
        let x_1197 : f32 = u_xlat52;
        u_xlati51 = i32(x_1197);
      }
      let x_1199 : i32 = u_xlati51;
      u_xlati51 = (x_1199 << bitcast<u32>(2i));
      let x_1201 : vec3<f32> = vs_TEXCOORD7;
      let x_1204 : i32 = u_xlati51;
      let x_1207 : i32 = u_xlati51;
      let x_1211 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_1204 + 1i) / 4i)][((x_1207 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1201.y, x_1201.y, x_1201.y, x_1201.y) * x_1211);
      let x_1213 : i32 = u_xlati51;
      let x_1215 : i32 = u_xlati51;
      let x_1218 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[(x_1213 / 4i)][(x_1215 % 4i)];
      let x_1219 : vec3<f32> = vs_TEXCOORD7;
      let x_1222 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1218 * vec4<f32>(x_1219.x, x_1219.x, x_1219.x, x_1219.x)) + x_1222);
      let x_1224 : i32 = u_xlati51;
      let x_1227 : i32 = u_xlati51;
      let x_1231 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_1224 + 2i) / 4i)][((x_1227 + 2i) % 4i)];
      let x_1232 : vec3<f32> = vs_TEXCOORD7;
      let x_1235 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1231 * vec4<f32>(x_1232.z, x_1232.z, x_1232.z, x_1232.z)) + x_1235);
      let x_1237 : vec4<f32> = u_xlat11;
      let x_1238 : i32 = u_xlati51;
      let x_1241 : i32 = u_xlati51;
      let x_1245 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_1238 + 3i) / 4i)][((x_1241 + 3i) % 4i)];
      u_xlat11 = (x_1237 + x_1245);
      let x_1247 : vec4<f32> = u_xlat11;
      let x_1249 : vec4<f32> = u_xlat11;
      let x_1251 : vec3<f32> = (vec3<f32>(x_1247.x, x_1247.y, x_1247.z) / vec3<f32>(x_1249.w, x_1249.w, x_1249.w));
      let x_1252 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
      let x_1255 : vec4<f32> = u_xlat11;
      let x_1256 : vec2<f32> = vec2<f32>(x_1255.x, x_1255.y);
      let x_1258 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
      let x_1266 : vec3<f32> = txVec1;
      let x_1268 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1266.xy, x_1266.z);
      u_xlat51 = x_1268;
      let x_1269 : i32 = u_xlati48;
      let x_1271 : f32 = x_111.x_AdditionalShadowParams[x_1269].x;
      u_xlat52 = (1.0f + -(x_1271));
      let x_1274 : f32 = u_xlat51;
      let x_1275 : i32 = u_xlati48;
      let x_1277 : f32 = x_111.x_AdditionalShadowParams[x_1275].x;
      let x_1279 : f32 = u_xlat52;
      u_xlat51 = ((x_1274 * x_1277) + x_1279);
      let x_1282 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1282);
      let x_1285 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1285 >= 1.0f);
      let x_1288 : bool = u_xlatb52;
      let x_1290 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1288 | x_1290);
      let x_1292 : bool = u_xlatb52;
      let x_1293 : f32 = u_xlat51;
      u_xlat51 = select(x_1293, 1.0f, x_1292);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1296 : f32 = u_xlat51;
    u_xlat52 = (-(x_1296) + 1.0f);
    let x_1299 : f32 = u_xlat29;
    let x_1300 : f32 = u_xlat52;
    let x_1302 : f32 = u_xlat51;
    u_xlat51 = ((x_1299 * x_1300) + x_1302);
    let x_1305 : i32 = u_xlati48;
    u_xlati52 = (1i << bitcast<u32>((x_1305 & 31i)));
    let x_1309 : i32 = u_xlati52;
    let x_1312 : f32 = x_572.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1309) & bitcast<u32>(x_1312)));
    let x_1316 : i32 = u_xlati52;
    if ((x_1316 != 0i)) {
      let x_1320 : i32 = u_xlati48;
      let x_1322 : f32 = x_572.x_AdditionalLightsLightTypes[x_1320].el;
      u_xlati52 = i32(x_1322);
      let x_1325 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1325 != 0i));
      let x_1329 : i32 = u_xlati48;
      u_xlati25 = (x_1329 << bitcast<u32>(2i));
      let x_1331 : i32 = u_xlati11;
      if ((x_1331 != 0i)) {
        let x_1335 : vec3<f32> = vs_TEXCOORD7;
        let x_1337 : i32 = u_xlati25;
        let x_1340 : i32 = u_xlati25;
        let x_1344 : vec4<f32> = x_572.x_AdditionalLightsWorldToLights[((x_1337 + 1i) / 4i)][((x_1340 + 1i) % 4i)];
        let x_1346 : vec3<f32> = (vec3<f32>(x_1335.y, x_1335.y, x_1335.y) * vec3<f32>(x_1344.x, x_1344.y, x_1344.w));
        let x_1347 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1346.x, x_1347.y, x_1346.y, x_1346.z);
        let x_1349 : i32 = u_xlati25;
        let x_1351 : i32 = u_xlati25;
        let x_1354 : vec4<f32> = x_572.x_AdditionalLightsWorldToLights[(x_1349 / 4i)][(x_1351 % 4i)];
        let x_1356 : vec3<f32> = vs_TEXCOORD7;
        let x_1359 : vec4<f32> = u_xlat11;
        let x_1361 : vec3<f32> = ((vec3<f32>(x_1354.x, x_1354.y, x_1354.w) * vec3<f32>(x_1356.x, x_1356.x, x_1356.x)) + vec3<f32>(x_1359.x, x_1359.z, x_1359.w));
        let x_1362 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1361.x, x_1362.y, x_1361.y, x_1361.z);
        let x_1364 : i32 = u_xlati25;
        let x_1367 : i32 = u_xlati25;
        let x_1371 : vec4<f32> = x_572.x_AdditionalLightsWorldToLights[((x_1364 + 2i) / 4i)][((x_1367 + 2i) % 4i)];
        let x_1373 : vec3<f32> = vs_TEXCOORD7;
        let x_1376 : vec4<f32> = u_xlat11;
        let x_1378 : vec3<f32> = ((vec3<f32>(x_1371.x, x_1371.y, x_1371.w) * vec3<f32>(x_1373.z, x_1373.z, x_1373.z)) + vec3<f32>(x_1376.x, x_1376.z, x_1376.w));
        let x_1379 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1378.x, x_1379.y, x_1378.y, x_1378.z);
        let x_1381 : vec4<f32> = u_xlat11;
        let x_1383 : i32 = u_xlati25;
        let x_1386 : i32 = u_xlati25;
        let x_1390 : vec4<f32> = x_572.x_AdditionalLightsWorldToLights[((x_1383 + 3i) / 4i)][((x_1386 + 3i) % 4i)];
        let x_1392 : vec3<f32> = (vec3<f32>(x_1381.x, x_1381.z, x_1381.w) + vec3<f32>(x_1390.x, x_1390.y, x_1390.w));
        let x_1393 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1392.x, x_1393.y, x_1392.y, x_1392.z);
        let x_1395 : vec4<f32> = u_xlat11;
        let x_1397 : vec4<f32> = u_xlat11;
        let x_1399 : vec2<f32> = (vec2<f32>(x_1395.x, x_1395.z) / vec2<f32>(x_1397.w, x_1397.w));
        let x_1400 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1399.x, x_1400.y, x_1399.y, x_1400.w);
        let x_1402 : vec4<f32> = u_xlat11;
        let x_1405 : vec2<f32> = ((vec2<f32>(x_1402.x, x_1402.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1406 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1405.x, x_1406.y, x_1405.y, x_1406.w);
        let x_1408 : vec4<f32> = u_xlat11;
        let x_1412 : vec2<f32> = clamp(vec2<f32>(x_1408.x, x_1408.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1413 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1412.x, x_1413.y, x_1412.y, x_1413.w);
        let x_1415 : i32 = u_xlati48;
        let x_1417 : vec4<f32> = x_572.x_AdditionalLightsCookieAtlasUVRects[x_1415];
        let x_1419 : vec4<f32> = u_xlat11;
        let x_1422 : i32 = u_xlati48;
        let x_1424 : vec4<f32> = x_572.x_AdditionalLightsCookieAtlasUVRects[x_1422];
        let x_1426 : vec2<f32> = ((vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(x_1419.x, x_1419.z)) + vec2<f32>(x_1424.z, x_1424.w));
        let x_1427 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1426.x, x_1427.y, x_1426.y, x_1427.w);
      } else {
        let x_1430 : i32 = u_xlati52;
        u_xlatb52 = (x_1430 == 1i);
        let x_1432 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1432);
        let x_1434 : i32 = u_xlati52;
        if ((x_1434 != 0i)) {
          let x_1439 : vec3<f32> = vs_TEXCOORD7;
          let x_1441 : i32 = u_xlati25;
          let x_1444 : i32 = u_xlati25;
          let x_1448 : vec4<f32> = x_572.x_AdditionalLightsWorldToLights[((x_1441 + 1i) / 4i)][((x_1444 + 1i) % 4i)];
          let x_1450 : vec2<f32> = (vec2<f32>(x_1439.y, x_1439.y) * vec2<f32>(x_1448.x, x_1448.y));
          let x_1451 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1450.x, x_1450.y, x_1451.z, x_1451.w);
          let x_1453 : i32 = u_xlati25;
          let x_1455 : i32 = u_xlati25;
          let x_1458 : vec4<f32> = x_572.x_AdditionalLightsWorldToLights[(x_1453 / 4i)][(x_1455 % 4i)];
          let x_1460 : vec3<f32> = vs_TEXCOORD7;
          let x_1463 : vec4<f32> = u_xlat12;
          let x_1465 : vec2<f32> = ((vec2<f32>(x_1458.x, x_1458.y) * vec2<f32>(x_1460.x, x_1460.x)) + vec2<f32>(x_1463.x, x_1463.y));
          let x_1466 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1465.x, x_1465.y, x_1466.z, x_1466.w);
          let x_1468 : i32 = u_xlati25;
          let x_1471 : i32 = u_xlati25;
          let x_1475 : vec4<f32> = x_572.x_AdditionalLightsWorldToLights[((x_1468 + 2i) / 4i)][((x_1471 + 2i) % 4i)];
          let x_1477 : vec3<f32> = vs_TEXCOORD7;
          let x_1480 : vec4<f32> = u_xlat12;
          let x_1482 : vec2<f32> = ((vec2<f32>(x_1475.x, x_1475.y) * vec2<f32>(x_1477.z, x_1477.z)) + vec2<f32>(x_1480.x, x_1480.y));
          let x_1483 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1482.x, x_1482.y, x_1483.z, x_1483.w);
          let x_1485 : vec4<f32> = u_xlat12;
          let x_1487 : i32 = u_xlati25;
          let x_1490 : i32 = u_xlati25;
          let x_1494 : vec4<f32> = x_572.x_AdditionalLightsWorldToLights[((x_1487 + 3i) / 4i)][((x_1490 + 3i) % 4i)];
          let x_1496 : vec2<f32> = (vec2<f32>(x_1485.x, x_1485.y) + vec2<f32>(x_1494.x, x_1494.y));
          let x_1497 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1496.x, x_1496.y, x_1497.z, x_1497.w);
          let x_1499 : vec4<f32> = u_xlat12;
          let x_1502 : vec2<f32> = ((vec2<f32>(x_1499.x, x_1499.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1503 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1502.x, x_1502.y, x_1503.z, x_1503.w);
          let x_1505 : vec4<f32> = u_xlat12;
          let x_1507 : vec2<f32> = fract(vec2<f32>(x_1505.x, x_1505.y));
          let x_1508 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1507.x, x_1507.y, x_1508.z, x_1508.w);
          let x_1510 : i32 = u_xlati48;
          let x_1512 : vec4<f32> = x_572.x_AdditionalLightsCookieAtlasUVRects[x_1510];
          let x_1514 : vec4<f32> = u_xlat12;
          let x_1517 : i32 = u_xlati48;
          let x_1519 : vec4<f32> = x_572.x_AdditionalLightsCookieAtlasUVRects[x_1517];
          let x_1521 : vec2<f32> = ((vec2<f32>(x_1512.x, x_1512.y) * vec2<f32>(x_1514.x, x_1514.y)) + vec2<f32>(x_1519.z, x_1519.w));
          let x_1522 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1521.x, x_1522.y, x_1521.y, x_1522.w);
        } else {
          let x_1525 : vec3<f32> = vs_TEXCOORD7;
          let x_1527 : i32 = u_xlati25;
          let x_1530 : i32 = u_xlati25;
          let x_1534 : vec4<f32> = x_572.x_AdditionalLightsWorldToLights[((x_1527 + 1i) / 4i)][((x_1530 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1525.y, x_1525.y, x_1525.y, x_1525.y) * x_1534);
          let x_1536 : i32 = u_xlati25;
          let x_1538 : i32 = u_xlati25;
          let x_1541 : vec4<f32> = x_572.x_AdditionalLightsWorldToLights[(x_1536 / 4i)][(x_1538 % 4i)];
          let x_1542 : vec3<f32> = vs_TEXCOORD7;
          let x_1545 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1541 * vec4<f32>(x_1542.x, x_1542.x, x_1542.x, x_1542.x)) + x_1545);
          let x_1547 : i32 = u_xlati25;
          let x_1550 : i32 = u_xlati25;
          let x_1554 : vec4<f32> = x_572.x_AdditionalLightsWorldToLights[((x_1547 + 2i) / 4i)][((x_1550 + 2i) % 4i)];
          let x_1555 : vec3<f32> = vs_TEXCOORD7;
          let x_1558 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1554 * vec4<f32>(x_1555.z, x_1555.z, x_1555.z, x_1555.z)) + x_1558);
          let x_1560 : vec4<f32> = u_xlat12;
          let x_1561 : i32 = u_xlati25;
          let x_1564 : i32 = u_xlati25;
          let x_1568 : vec4<f32> = x_572.x_AdditionalLightsWorldToLights[((x_1561 + 3i) / 4i)][((x_1564 + 3i) % 4i)];
          u_xlat12 = (x_1560 + x_1568);
          let x_1570 : vec4<f32> = u_xlat12;
          let x_1572 : vec4<f32> = u_xlat12;
          let x_1574 : vec3<f32> = (vec3<f32>(x_1570.x, x_1570.y, x_1570.z) / vec3<f32>(x_1572.w, x_1572.w, x_1572.w));
          let x_1575 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1574.x, x_1574.y, x_1574.z, x_1575.w);
          let x_1577 : vec4<f32> = u_xlat12;
          let x_1579 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1577.x, x_1577.y, x_1577.z), vec3<f32>(x_1579.x, x_1579.y, x_1579.z));
          let x_1582 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1582);
          let x_1584 : f32 = u_xlat52;
          let x_1586 : vec4<f32> = u_xlat12;
          let x_1588 : vec3<f32> = (vec3<f32>(x_1584, x_1584, x_1584) * vec3<f32>(x_1586.x, x_1586.y, x_1586.z));
          let x_1589 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1588.x, x_1588.y, x_1588.z, x_1589.w);
          let x_1591 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1591.x, x_1591.y, x_1591.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1596 : f32 = u_xlat52;
          u_xlat52 = max(x_1596, 0.00000099999999747524f);
          let x_1599 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1599);
          let x_1602 : f32 = u_xlat52;
          let x_1604 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1602, x_1602, x_1602) * vec3<f32>(x_1604.z, x_1604.x, x_1604.y));
          let x_1608 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1608);
          let x_1612 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1612, 0.0f, 1.0f);
          let x_1617 : vec3<f32> = u_xlat13;
          let x_1619 : vec4<bool> = (vec4<f32>(x_1617.y, x_1617.y, x_1617.z, x_1617.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1620 : vec2<bool> = vec2<bool>(x_1619.x, x_1619.z);
          let x_1621 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1620.x, x_1621.y, x_1620.y);
          let x_1624 : bool = u_xlatb25.x;
          if (x_1624) {
            let x_1629 : f32 = u_xlat13.x;
            x_1625 = x_1629;
          } else {
            let x_1632 : f32 = u_xlat13.x;
            x_1625 = -(x_1632);
          }
          let x_1634 : f32 = x_1625;
          u_xlat25.x = x_1634;
          let x_1637 : bool = u_xlatb25.z;
          if (x_1637) {
            let x_1642 : f32 = u_xlat13.x;
            x_1638 = x_1642;
          } else {
            let x_1645 : f32 = u_xlat13.x;
            x_1638 = -(x_1645);
          }
          let x_1647 : f32 = x_1638;
          u_xlat25.z = x_1647;
          let x_1649 : vec4<f32> = u_xlat12;
          let x_1651 : f32 = u_xlat52;
          let x_1654 : vec3<f32> = u_xlat25;
          let x_1656 : vec2<f32> = ((vec2<f32>(x_1649.x, x_1649.y) * vec2<f32>(x_1651, x_1651)) + vec2<f32>(x_1654.x, x_1654.z));
          let x_1657 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1656.x, x_1657.y, x_1656.y);
          let x_1659 : vec3<f32> = u_xlat25;
          let x_1662 : vec2<f32> = ((vec2<f32>(x_1659.x, x_1659.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1663 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1662.x, x_1663.y, x_1662.y);
          let x_1665 : vec3<f32> = u_xlat25;
          let x_1669 : vec2<f32> = clamp(vec2<f32>(x_1665.x, x_1665.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1670 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1669.x, x_1670.y, x_1669.y);
          let x_1672 : i32 = u_xlati48;
          let x_1674 : vec4<f32> = x_572.x_AdditionalLightsCookieAtlasUVRects[x_1672];
          let x_1676 : vec3<f32> = u_xlat25;
          let x_1679 : i32 = u_xlati48;
          let x_1681 : vec4<f32> = x_572.x_AdditionalLightsCookieAtlasUVRects[x_1679];
          let x_1683 : vec2<f32> = ((vec2<f32>(x_1674.x, x_1674.y) * vec2<f32>(x_1676.x, x_1676.z)) + vec2<f32>(x_1681.z, x_1681.w));
          let x_1684 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1683.x, x_1684.y, x_1683.y, x_1684.w);
        }
      }
      let x_1691 : vec4<f32> = u_xlat11;
      let x_1693 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1691.x, x_1691.z), 0.0f);
      u_xlat11 = x_1693;
      let x_1695 : bool = u_xlatb7.y;
      if (x_1695) {
        let x_1700 : f32 = u_xlat11.w;
        x_1696 = x_1700;
      } else {
        let x_1703 : f32 = u_xlat11.x;
        x_1696 = x_1703;
      }
      let x_1704 : f32 = x_1696;
      u_xlat52 = x_1704;
      let x_1706 : bool = u_xlatb7.x;
      if (x_1706) {
        let x_1710 : vec4<f32> = u_xlat11;
        x_1707 = vec3<f32>(x_1710.x, x_1710.y, x_1710.z);
      } else {
        let x_1713 : f32 = u_xlat52;
        x_1707 = vec3<f32>(x_1713, x_1713, x_1713);
      }
      let x_1715 : vec3<f32> = x_1707;
      let x_1716 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1715.x, x_1715.y, x_1715.z, x_1716.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1722 : vec4<f32> = u_xlat11;
    let x_1724 : i32 = u_xlati48;
    let x_1726 : vec4<f32> = x_1035.x_AdditionalLightsColor[x_1724];
    let x_1728 : vec3<f32> = (vec3<f32>(x_1722.x, x_1722.y, x_1722.z) * vec3<f32>(x_1726.x, x_1726.y, x_1726.z));
    let x_1729 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1728.x, x_1728.y, x_1728.z, x_1729.w);
    let x_1731 : f32 = u_xlat35;
    let x_1732 : f32 = u_xlat51;
    u_xlat48 = (x_1731 * x_1732);
    let x_1734 : vec4<f32> = u_xlat2;
    let x_1736 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_1734.x, x_1734.y, x_1734.z), x_1736);
    let x_1738 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1738, 0.0f, 1.0f);
    let x_1740 : f32 = u_xlat48;
    let x_1741 : f32 = u_xlat35;
    u_xlat48 = (x_1740 * x_1741);
    let x_1743 : f32 = u_xlat48;
    let x_1745 : vec4<f32> = u_xlat11;
    let x_1747 : vec3<f32> = (vec3<f32>(x_1743, x_1743, x_1743) * vec3<f32>(x_1745.x, x_1745.y, x_1745.z));
    let x_1748 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1748.w);
    let x_1750 : vec3<f32> = u_xlat9;
    let x_1751 : f32 = u_xlat49;
    let x_1754 : vec4<f32> = u_xlat6;
    u_xlat9 = ((x_1750 * vec3<f32>(x_1751, x_1751, x_1751)) + vec3<f32>(x_1754.x, x_1754.y, x_1754.z));
    let x_1757 : vec3<f32> = u_xlat9;
    let x_1758 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1757, x_1758);
    let x_1760 : f32 = u_xlat48;
    u_xlat48 = max(x_1760, 1.17549435e-38f);
    let x_1762 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1762);
    let x_1764 : f32 = u_xlat48;
    let x_1766 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1764, x_1764, x_1764) * x_1766);
    let x_1768 : vec4<f32> = u_xlat2;
    let x_1770 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1768.x, x_1768.y, x_1768.z), x_1770);
    let x_1772 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1772, 0.0f, 1.0f);
    let x_1774 : vec3<f32> = u_xlat10;
    let x_1775 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1774, x_1775);
    let x_1777 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1777, 0.0f, 1.0f);
    let x_1779 : f32 = u_xlat48;
    let x_1780 : f32 = u_xlat48;
    u_xlat48 = (x_1779 * x_1780);
    let x_1782 : f32 = u_xlat48;
    let x_1784 : f32 = u_xlat8.x;
    u_xlat48 = ((x_1782 * x_1784) + 1.00001001358032226562f);
    let x_1787 : f32 = u_xlat35;
    let x_1788 : f32 = u_xlat35;
    u_xlat35 = (x_1787 * x_1788);
    let x_1790 : f32 = u_xlat48;
    let x_1791 : f32 = u_xlat48;
    u_xlat48 = (x_1790 * x_1791);
    let x_1793 : f32 = u_xlat35;
    u_xlat35 = max(x_1793, 0.10000000149011611938f);
    let x_1795 : f32 = u_xlat48;
    let x_1796 : f32 = u_xlat35;
    u_xlat48 = (x_1795 * x_1796);
    let x_1799 : f32 = u_xlat4.x;
    let x_1800 : f32 = u_xlat48;
    u_xlat48 = (x_1799 * x_1800);
    let x_1803 : f32 = u_xlat5.x;
    let x_1804 : f32 = u_xlat48;
    u_xlat48 = (x_1803 / x_1804);
    let x_1806 : vec4<f32> = u_xlat0;
    let x_1808 : f32 = u_xlat48;
    let x_1811 : vec3<f32> = u_xlat18;
    u_xlat9 = ((vec3<f32>(x_1806.x, x_1806.y, x_1806.z) * vec3<f32>(x_1808, x_1808, x_1808)) + x_1811);
    let x_1813 : vec3<f32> = u_xlat9;
    let x_1814 : vec4<f32> = u_xlat11;
    let x_1817 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1813 * vec3<f32>(x_1814.x, x_1814.y, x_1814.z)) + x_1817);

    continuing {
      let x_1819 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1819 + bitcast<u32>(1i));
    }
  }
  let x_1821 : vec3<f32> = u_xlat19;
  let x_1822 : vec4<f32> = u_xlat1;
  let x_1825 : vec3<f32> = u_xlat17;
  let x_1826 : vec3<f32> = ((x_1821 * vec3<f32>(x_1822.x, x_1822.y, x_1822.w)) + x_1825);
  let x_1827 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1827.w);
  let x_1829 : vec3<f32> = u_xlat22;
  let x_1830 : vec4<f32> = u_xlat0;
  let x_1832 : vec3<f32> = (x_1829 + vec3<f32>(x_1830.x, x_1830.y, x_1830.z));
  let x_1833 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1832.x, x_1832.y, x_1832.z, x_1833.w);
  let x_1836 : f32 = u_xlat3.x;
  let x_1838 : f32 = u_xlat3.x;
  u_xlat42 = (x_1836 * -(x_1838));
  let x_1841 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1841);
  let x_1843 : vec4<f32> = u_xlat0;
  let x_1847 : vec4<f32> = x_29.unity_FogColor;
  let x_1850 : vec3<f32> = (vec3<f32>(x_1843.x, x_1843.y, x_1843.z) + -(vec3<f32>(x_1847.x, x_1847.y, x_1847.z)));
  let x_1851 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1851.w);
  let x_1855 : f32 = u_xlat42;
  let x_1857 : vec4<f32> = u_xlat0;
  let x_1861 : vec4<f32> = x_29.unity_FogColor;
  let x_1863 : vec3<f32> = ((vec3<f32>(x_1855, x_1855, x_1855) * vec3<f32>(x_1857.x, x_1857.y, x_1857.z)) + vec3<f32>(x_1861.x, x_1861.y, x_1861.z));
  let x_1864 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
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


