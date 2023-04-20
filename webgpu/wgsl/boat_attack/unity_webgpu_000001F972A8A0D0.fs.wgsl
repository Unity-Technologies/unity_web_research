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

var<private> u_xlat1 : f32;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_162 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu3 : u32;

var<private> u_xlati3 : i32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat45 : f32;

@group(1) @binding(2) var<uniform> x_391 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

@group(1) @binding(4) var<uniform> x_626 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatu31 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati31 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1072 : AdditionalLights;

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

fn main_1() {
  var x_130 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_576 : f32;
  var x_711 : f32;
  var x_722 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1204 : f32;
  var x_1215 : f32;
  var txVec1 : vec3<f32>;
  var x_1661 : f32;
  var x_1674 : f32;
  var x_1732 : f32;
  var x_1743 : vec3<f32>;
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
  u_xlatb15 = (x_83 == 0.0f);
  let x_88 : vec3<f32> = vs_TEXCOORD7;
  let x_93 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_94 : vec3<f32> = (-(x_88) + x_93);
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_103);
  let x_105 : f32 = u_xlat29;
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
  let x_128 : bool = u_xlatb15;
  if (x_128) {
    let x_133 : vec4<f32> = u_xlat2;
    x_130 = vec3<f32>(x_133.x, x_133.y, x_133.z);
  } else {
    let x_136 : vec4<f32> = u_xlat3;
    x_130 = vec3<f32>(x_136.x, x_136.y, x_136.z);
  }
  let x_138 : vec3<f32> = x_130;
  u_xlat15 = x_138;
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
  u_xlat17 = (vec3<f32>(x_298.y, x_298.y, x_298.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : i32 = u_xlati3;
  let x_312 : i32 = u_xlati3;
  let x_315 : vec4<f32> = x_162.x_MainLightWorldToShadow[(x_310 / 4i)][(x_312 % 4i)];
  let x_317 : vec3<f32> = vs_TEXCOORD7;
  let x_320 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.x, x_317.x)) + x_320);
  let x_322 : i32 = u_xlati3;
  let x_325 : i32 = u_xlati3;
  let x_329 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_322 + 2i) / 4i)][((x_325 + 2i) % 4i)];
  let x_331 : vec3<f32> = vs_TEXCOORD7;
  let x_334 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331.z, x_331.z, x_331.z)) + x_334);
  let x_336 : vec3<f32> = u_xlat17;
  let x_337 : i32 = u_xlati3;
  let x_340 : i32 = u_xlati3;
  let x_344 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_337 + 3i) / 4i)][((x_340 + 3i) % 4i)];
  let x_346 : vec3<f32> = (x_336 + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_352 : f32 = vs_TEXCOORD7.y;
  let x_354 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat45 = (x_352 * x_354);
  let x_357 : f32 = x_29.unity_MatrixV[0i].z;
  let x_359 : f32 = vs_TEXCOORD7.x;
  let x_361 : f32 = u_xlat45;
  u_xlat45 = ((x_357 * x_359) + x_361);
  let x_364 : f32 = x_29.unity_MatrixV[2i].z;
  let x_366 : f32 = vs_TEXCOORD7.z;
  let x_368 : f32 = u_xlat45;
  u_xlat45 = ((x_364 * x_366) + x_368);
  let x_370 : f32 = u_xlat45;
  let x_372 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat45 = (x_370 + x_372);
  let x_374 : f32 = u_xlat45;
  let x_377 : f32 = x_29.x_ProjectionParams.y;
  u_xlat45 = (-(x_374) + -(x_377));
  let x_380 : f32 = u_xlat45;
  u_xlat45 = max(x_380, 0.0f);
  let x_382 : f32 = u_xlat45;
  let x_385 : f32 = x_29.unity_FogParams.x;
  u_xlat45 = (x_382 * x_385);
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
  u_xlat44 = (x_435 * x_437);
  let x_440 : f32 = u_xlat2.x;
  let x_442 : f32 = u_xlat2.x;
  let x_444 : f32 = u_xlat44;
  u_xlat44 = ((x_440 * x_442) + -(x_444));
  let x_449 : vec4<f32> = x_391.unity_SHC;
  let x_451 : f32 = u_xlat44;
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
  u_xlat44 = ((-(x_471) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_477 : f32 = u_xlat44;
  u_xlat46 = (-(x_477) + 1.0f);
  let x_480 : vec4<f32> = u_xlat0;
  let x_482 : f32 = u_xlat44;
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
  u_xlat44 = (x_508 * x_509);
  let x_511 : f32 = u_xlat44;
  u_xlat44 = max(x_511, 0.0078125f);
  let x_515 : f32 = u_xlat44;
  let x_516 : f32 = u_xlat44;
  u_xlat47 = (x_515 * x_516);
  let x_520 : f32 = u_xlat0.w;
  let x_521 : f32 = u_xlat46;
  u_xlat42 = (x_520 + x_521);
  let x_523 : f32 = u_xlat42;
  u_xlat42 = clamp(x_523, 0.0f, 1.0f);
  let x_525 : f32 = u_xlat44;
  u_xlat46 = ((x_525 * 4.0f) + 2.0f);
  let x_529 : vec4<f32> = u_xlat3;
  let x_530 : vec2<f32> = vec2<f32>(x_529.x, x_529.y);
  let x_532 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_530.x, x_530.y, x_532);
  let x_544 : vec3<f32> = txVec0;
  let x_546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_544.xy, x_544.z);
  u_xlat3.x = x_546;
  let x_550 : f32 = x_162.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_550) + 1.0f);
  let x_555 : f32 = u_xlat3.x;
  let x_557 : f32 = x_162.x_MainLightShadowParams.x;
  let x_560 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_555 * x_557) + x_560);
  let x_565 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_565);
  let x_569 : f32 = u_xlat3.z;
  u_xlatb31 = (x_569 >= 1.0f);
  let x_571 : bool = u_xlatb31;
  let x_572 : bool = u_xlatb17;
  u_xlatb17 = (x_571 | x_572);
  let x_574 : bool = u_xlatb17;
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
  u_xlat17.x = dot(vec3<f32>(x_591.x, x_591.y, x_591.z), vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_599 : f32 = u_xlat17.x;
  let x_601 : f32 = x_162.x_MainLightShadowParams.z;
  let x_604 : f32 = x_162.x_MainLightShadowParams.w;
  u_xlat31 = ((x_599 * x_601) + x_604);
  let x_606 : f32 = u_xlat31;
  u_xlat31 = clamp(x_606, 0.0f, 1.0f);
  let x_609 : f32 = u_xlat3.x;
  u_xlat6.x = (-(x_609) + 1.0f);
  let x_613 : f32 = u_xlat31;
  let x_615 : f32 = u_xlat6.x;
  let x_618 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_613 * x_615) + x_618);
  let x_628 : f32 = x_626.x_MainLightCookieTextureFormat;
  u_xlatb31 = !((x_628 == -1.0f));
  let x_630 : bool = u_xlatb31;
  if (x_630) {
    let x_633 : vec3<f32> = vs_TEXCOORD7;
    let x_636 : vec4<f32> = x_626.x_MainLightWorldToLight[1i];
    let x_638 : vec2<f32> = (vec2<f32>(x_633.y, x_633.y) * vec2<f32>(x_636.x, x_636.y));
    let x_639 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
    let x_642 : vec4<f32> = x_626.x_MainLightWorldToLight[0i];
    let x_644 : vec3<f32> = vs_TEXCOORD7;
    let x_647 : vec4<f32> = u_xlat6;
    let x_649 : vec2<f32> = ((vec2<f32>(x_642.x, x_642.y) * vec2<f32>(x_644.x, x_644.x)) + vec2<f32>(x_647.x, x_647.y));
    let x_650 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_649.x, x_649.y, x_650.z, x_650.w);
    let x_653 : vec4<f32> = x_626.x_MainLightWorldToLight[2i];
    let x_655 : vec3<f32> = vs_TEXCOORD7;
    let x_658 : vec4<f32> = u_xlat6;
    let x_660 : vec2<f32> = ((vec2<f32>(x_653.x, x_653.y) * vec2<f32>(x_655.z, x_655.z)) + vec2<f32>(x_658.x, x_658.y));
    let x_661 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_660.x, x_660.y, x_661.z, x_661.w);
    let x_663 : vec4<f32> = u_xlat6;
    let x_666 : vec4<f32> = x_626.x_MainLightWorldToLight[3i];
    let x_668 : vec2<f32> = (vec2<f32>(x_663.x, x_663.y) + vec2<f32>(x_666.x, x_666.y));
    let x_669 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
    let x_671 : vec4<f32> = u_xlat6;
    let x_676 : vec2<f32> = ((vec2<f32>(x_671.x, x_671.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_677 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
    let x_684 : vec4<f32> = u_xlat6;
    let x_687 : f32 = x_29.x_GlobalMipBias.x;
    let x_688 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_684.x, x_684.y), x_687);
    u_xlat6 = x_688;
    let x_693 : f32 = x_626.x_MainLightCookieTextureFormat;
    let x_695 : f32 = x_626.x_MainLightCookieTextureFormat;
    let x_697 : f32 = x_626.x_MainLightCookieTextureFormat;
    let x_699 : f32 = x_626.x_MainLightCookieTextureFormat;
    let x_700 : vec4<f32> = vec4<f32>(x_693, x_695, x_697, x_699);
    let x_707 : vec4<bool> = (vec4<f32>(x_700.x, x_700.y, x_700.z, x_700.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_707.x, x_707.y);
    let x_710 : bool = u_xlatb7.y;
    if (x_710) {
      let x_715 : f32 = u_xlat6.w;
      x_711 = x_715;
    } else {
      let x_718 : f32 = u_xlat6.x;
      x_711 = x_718;
    }
    let x_719 : f32 = x_711;
    u_xlat31 = x_719;
    let x_721 : bool = u_xlatb7.x;
    if (x_721) {
      let x_725 : vec4<f32> = u_xlat6;
      x_722 = vec3<f32>(x_725.x, x_725.y, x_725.z);
    } else {
      let x_728 : f32 = u_xlat31;
      x_722 = vec3<f32>(x_728, x_728, x_728);
    }
    let x_730 : vec3<f32> = x_722;
    let x_731 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_737 : vec4<f32> = u_xlat6;
  let x_740 : vec4<f32> = x_29.x_MainLightColor;
  let x_742 : vec3<f32> = (vec3<f32>(x_737.x, x_737.y, x_737.z) * vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec3<f32> = u_xlat15;
  let x_747 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(-(x_745), vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : f32 = u_xlat31;
  let x_751 : f32 = u_xlat31;
  u_xlat31 = (x_750 + x_751);
  let x_754 : vec4<f32> = u_xlat2;
  let x_756 : f32 = u_xlat31;
  let x_760 : vec3<f32> = u_xlat15;
  let x_762 : vec3<f32> = ((vec3<f32>(x_754.x, x_754.y, x_754.z) * -(vec3<f32>(x_756, x_756, x_756))) + -(x_760));
  let x_763 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : vec4<f32> = u_xlat2;
  let x_767 : vec3<f32> = u_xlat15;
  u_xlat31 = dot(vec3<f32>(x_765.x, x_765.y, x_765.z), x_767);
  let x_769 : f32 = u_xlat31;
  u_xlat31 = clamp(x_769, 0.0f, 1.0f);
  let x_771 : f32 = u_xlat31;
  u_xlat31 = (-(x_771) + 1.0f);
  let x_774 : f32 = u_xlat31;
  let x_775 : f32 = u_xlat31;
  u_xlat31 = (x_774 * x_775);
  let x_777 : f32 = u_xlat31;
  let x_778 : f32 = u_xlat31;
  u_xlat31 = (x_777 * x_778);
  let x_781 : f32 = u_xlat1;
  u_xlat48 = ((-(x_781) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_787 : f32 = u_xlat1;
  let x_788 : f32 = u_xlat48;
  u_xlat1 = (x_787 * x_788);
  let x_790 : f32 = u_xlat1;
  u_xlat1 = (x_790 * 6.0f);
  let x_801 : vec4<f32> = u_xlat7;
  let x_803 : f32 = u_xlat1;
  let x_804 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_801.x, x_801.y, x_801.z), x_803);
  u_xlat7 = x_804;
  let x_806 : f32 = u_xlat7.w;
  u_xlat1 = (x_806 + -1.0f);
  let x_809 : f32 = x_391.unity_SpecCube0_HDR.w;
  let x_810 : f32 = u_xlat1;
  u_xlat1 = ((x_809 * x_810) + 1.0f);
  let x_813 : f32 = u_xlat1;
  u_xlat1 = max(x_813, 0.0f);
  let x_815 : f32 = u_xlat1;
  u_xlat1 = log2(x_815);
  let x_817 : f32 = u_xlat1;
  let x_819 : f32 = x_391.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_817 * x_819);
  let x_821 : f32 = u_xlat1;
  u_xlat1 = exp2(x_821);
  let x_823 : f32 = u_xlat1;
  let x_825 : f32 = x_391.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_823 * x_825);
  let x_827 : vec4<f32> = u_xlat7;
  let x_829 : f32 = u_xlat1;
  let x_831 : vec3<f32> = (vec3<f32>(x_827.x, x_827.y, x_827.z) * vec3<f32>(x_829, x_829, x_829));
  let x_832 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_836 : f32 = u_xlat44;
  let x_838 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_836, x_836) * vec2<f32>(x_838, x_838)) + vec2<f32>(-1.0f, 1.0f));
  let x_844 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_844);
  let x_847 : vec4<f32> = u_xlat0;
  let x_850 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_847.x, x_847.y, x_847.z)) + vec3<f32>(x_850, x_850, x_850));
  let x_853 : f32 = u_xlat31;
  let x_855 : vec3<f32> = u_xlat22;
  let x_857 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_853, x_853, x_853) * x_855) + vec3<f32>(x_857.x, x_857.y, x_857.z));
  let x_860 : f32 = u_xlat1;
  let x_862 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_860, x_860, x_860) * x_862);
  let x_864 : vec4<f32> = u_xlat7;
  let x_866 : vec3<f32> = u_xlat22;
  let x_867 : vec3<f32> = (vec3<f32>(x_864.x, x_864.y, x_864.z) * x_866);
  let x_868 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec4<f32> = u_xlat4;
  let x_872 : vec4<f32> = u_xlat5;
  let x_875 : vec4<f32> = u_xlat7;
  let x_877 : vec3<f32> = ((vec3<f32>(x_870.x, x_870.y, x_870.z) * vec3<f32>(x_872.x, x_872.y, x_872.z)) + vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_878 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_881 : f32 = u_xlat3.x;
  let x_883 : f32 = x_391.unity_LightData.z;
  u_xlat42 = (x_881 * x_883);
  let x_885 : vec4<f32> = u_xlat2;
  let x_888 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_885.x, x_885.y, x_885.z), vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : f32 = u_xlat1;
  u_xlat1 = clamp(x_891, 0.0f, 1.0f);
  let x_893 : f32 = u_xlat42;
  let x_894 : f32 = u_xlat1;
  u_xlat42 = (x_893 * x_894);
  let x_896 : f32 = u_xlat42;
  let x_898 : vec4<f32> = u_xlat6;
  let x_900 : vec3<f32> = (vec3<f32>(x_896, x_896, x_896) * vec3<f32>(x_898.x, x_898.y, x_898.z));
  let x_901 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  let x_903 : vec3<f32> = u_xlat15;
  let x_905 : vec4<f32> = x_29.x_MainLightPosition;
  let x_907 : vec3<f32> = (x_903 + vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_908 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : vec4<f32> = u_xlat7;
  let x_912 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_910.x, x_910.y, x_910.z), vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_915 : f32 = u_xlat42;
  u_xlat42 = max(x_915, 1.17549435e-38f);
  let x_918 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_918);
  let x_920 : f32 = u_xlat42;
  let x_922 : vec4<f32> = u_xlat7;
  let x_924 : vec3<f32> = (vec3<f32>(x_920, x_920, x_920) * vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_925 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
  let x_927 : vec4<f32> = u_xlat2;
  let x_929 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_927.x, x_927.y, x_927.z), vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : f32 = u_xlat42;
  u_xlat42 = clamp(x_932, 0.0f, 1.0f);
  let x_935 : vec4<f32> = x_29.x_MainLightPosition;
  let x_937 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_935.x, x_935.y, x_935.z), vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_940 : f32 = u_xlat1;
  u_xlat1 = clamp(x_940, 0.0f, 1.0f);
  let x_942 : f32 = u_xlat42;
  let x_943 : f32 = u_xlat42;
  u_xlat42 = (x_942 * x_943);
  let x_945 : f32 = u_xlat42;
  let x_947 : f32 = u_xlat8.x;
  u_xlat42 = ((x_945 * x_947) + 1.00001001358032226562f);
  let x_951 : f32 = u_xlat1;
  let x_952 : f32 = u_xlat1;
  u_xlat1 = (x_951 * x_952);
  let x_954 : f32 = u_xlat42;
  let x_955 : f32 = u_xlat42;
  u_xlat42 = (x_954 * x_955);
  let x_957 : f32 = u_xlat1;
  u_xlat1 = max(x_957, 0.10000000149011611938f);
  let x_960 : f32 = u_xlat42;
  let x_961 : f32 = u_xlat1;
  u_xlat42 = (x_960 * x_961);
  let x_963 : f32 = u_xlat46;
  let x_964 : f32 = u_xlat42;
  u_xlat42 = (x_963 * x_964);
  let x_966 : f32 = u_xlat47;
  let x_967 : f32 = u_xlat42;
  u_xlat42 = (x_966 / x_967);
  let x_969 : vec4<f32> = u_xlat0;
  let x_971 : f32 = u_xlat42;
  let x_974 : vec4<f32> = u_xlat5;
  let x_976 : vec3<f32> = ((vec3<f32>(x_969.x, x_969.y, x_969.z) * vec3<f32>(x_971, x_971, x_971)) + vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_980 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_982 : f32 = x_391.unity_LightData.y;
  u_xlat42 = min(x_980, x_982);
  let x_985 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_985));
  let x_989 : f32 = u_xlat17.x;
  let x_992 : f32 = x_162.x_AdditionalShadowFadeParams.x;
  let x_995 : f32 = x_162.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_989 * x_992) + x_995);
  let x_997 : f32 = u_xlat1;
  u_xlat1 = clamp(x_997, 0.0f, 1.0f);
  let x_1000 : f32 = x_626.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1002 : f32 = x_626.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1004 : f32 = x_626.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1006 : f32 = x_626.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1007 : vec4<f32> = vec4<f32>(x_1000, x_1002, x_1004, x_1006);
  let x_1013 : vec4<bool> = (vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1007.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_1014 : vec2<bool> = vec2<bool>(x_1013.x, x_1013.y);
  let x_1015 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1014.x, x_1014.y, x_1015.z, x_1015.w);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1027 : u32 = u_xlatu_loop_1;
    let x_1028 : u32 = u_xlatu42;
    if ((x_1027 < x_1028)) {
    } else {
      break;
    }
    let x_1031 : u32 = u_xlatu_loop_1;
    u_xlatu31 = (x_1031 >> 2u);
    let x_1034 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1034 & 3u));
    let x_1037 : u32 = u_xlatu31;
    let x_1040 : vec4<f32> = x_391.unity_LightIndices[bitcast<i32>(x_1037)];
    let x_1050 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1055 : vec4<u32> = indexable[x_1050];
    u_xlat31 = dot(x_1040, bitcast<vec4<f32>>(x_1055));
    let x_1059 : f32 = u_xlat31;
    u_xlati31 = i32(x_1059);
    let x_1062 : vec3<f32> = vs_TEXCOORD7;
    let x_1073 : i32 = u_xlati31;
    let x_1075 : vec4<f32> = x_1072.x_AdditionalLightsPosition[x_1073];
    let x_1078 : i32 = u_xlati31;
    let x_1080 : vec4<f32> = x_1072.x_AdditionalLightsPosition[x_1078];
    u_xlat9 = ((-(x_1062) * vec3<f32>(x_1075.w, x_1075.w, x_1075.w)) + vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
    let x_1083 : vec3<f32> = u_xlat9;
    let x_1084 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1083, x_1084);
    let x_1086 : f32 = u_xlat48;
    u_xlat48 = max(x_1086, 0.00006103515625f);
    let x_1090 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1090);
    let x_1093 : f32 = u_xlat49;
    let x_1095 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1093, x_1093, x_1093) * x_1095);
    let x_1098 : f32 = u_xlat48;
    u_xlat51 = (1.0f / x_1098);
    let x_1100 : f32 = u_xlat48;
    let x_1101 : i32 = u_xlati31;
    let x_1103 : f32 = x_1072.x_AdditionalLightsAttenuation[x_1101].x;
    u_xlat48 = (x_1100 * x_1103);
    let x_1105 : f32 = u_xlat48;
    let x_1107 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1105) * x_1107) + 1.0f);
    let x_1110 : f32 = u_xlat48;
    u_xlat48 = max(x_1110, 0.0f);
    let x_1112 : f32 = u_xlat48;
    let x_1113 : f32 = u_xlat48;
    u_xlat48 = (x_1112 * x_1113);
    let x_1115 : f32 = u_xlat48;
    let x_1116 : f32 = u_xlat51;
    u_xlat48 = (x_1115 * x_1116);
    let x_1118 : i32 = u_xlati31;
    let x_1120 : vec4<f32> = x_1072.x_AdditionalLightsSpotDir[x_1118];
    let x_1122 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1120.x, x_1120.y, x_1120.z), x_1122);
    let x_1124 : f32 = u_xlat51;
    let x_1125 : i32 = u_xlati31;
    let x_1127 : f32 = x_1072.x_AdditionalLightsAttenuation[x_1125].z;
    let x_1129 : i32 = u_xlati31;
    let x_1131 : f32 = x_1072.x_AdditionalLightsAttenuation[x_1129].w;
    u_xlat51 = ((x_1124 * x_1127) + x_1131);
    let x_1133 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1133, 0.0f, 1.0f);
    let x_1135 : f32 = u_xlat51;
    let x_1136 : f32 = u_xlat51;
    u_xlat51 = (x_1135 * x_1136);
    let x_1138 : f32 = u_xlat48;
    let x_1139 : f32 = u_xlat51;
    u_xlat48 = (x_1138 * x_1139);
    let x_1143 : i32 = u_xlati31;
    let x_1145 : f32 = x_162.x_AdditionalShadowParams[x_1143].w;
    u_xlati51 = i32(x_1145);
    let x_1148 : i32 = u_xlati51;
    u_xlatb52 = (x_1148 >= 0i);
    let x_1150 : bool = u_xlatb52;
    if (x_1150) {
      let x_1154 : i32 = u_xlati31;
      let x_1156 : f32 = x_162.x_AdditionalShadowParams[x_1154].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1156, x_1156, x_1156, x_1156))));
      let x_1160 : bool = u_xlatb52;
      if (x_1160) {
        let x_1164 : vec3<f32> = u_xlat10;
        let x_1167 : vec3<f32> = u_xlat10;
        let x_1170 : vec4<bool> = (abs(vec4<f32>(x_1164.z, x_1164.z, x_1164.y, x_1164.z)) >= abs(vec4<f32>(x_1167.x, x_1167.y, x_1167.x, x_1167.x)));
        let x_1172 : vec3<bool> = vec3<bool>(x_1170.x, x_1170.y, x_1170.z);
        let x_1173 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
        let x_1176 : bool = u_xlatb11.y;
        let x_1178 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1176 & x_1178);
        let x_1180 : vec3<f32> = u_xlat10;
        let x_1183 : vec4<bool> = (-(vec4<f32>(x_1180.z, x_1180.y, x_1180.z, x_1180.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1184 : vec3<bool> = vec3<bool>(x_1183.x, x_1183.y, x_1183.w);
        let x_1185 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1184.x, x_1184.y, x_1185.z, x_1184.z);
        let x_1189 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1189);
        let x_1194 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1194);
        let x_1199 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1199);
        let x_1203 : bool = u_xlatb11.z;
        if (x_1203) {
          let x_1208 : f32 = u_xlat11.y;
          x_1204 = x_1208;
        } else {
          let x_1210 : f32 = u_xlat53;
          x_1204 = x_1210;
        }
        let x_1211 : f32 = x_1204;
        u_xlat25.x = x_1211;
        let x_1214 : bool = u_xlatb52;
        if (x_1214) {
          let x_1219 : f32 = u_xlat11.x;
          x_1215 = x_1219;
        } else {
          let x_1222 : f32 = u_xlat25.x;
          x_1215 = x_1222;
        }
        let x_1223 : f32 = x_1215;
        u_xlat52 = x_1223;
        let x_1224 : i32 = u_xlati31;
        let x_1226 : f32 = x_162.x_AdditionalShadowParams[x_1224].w;
        u_xlat11.x = trunc(x_1226);
        let x_1229 : f32 = u_xlat52;
        let x_1231 : f32 = u_xlat11.x;
        u_xlat52 = (x_1229 + x_1231);
        let x_1233 : f32 = u_xlat52;
        u_xlati51 = i32(x_1233);
      }
      let x_1235 : i32 = u_xlati51;
      u_xlati51 = (x_1235 << bitcast<u32>(2i));
      let x_1237 : vec3<f32> = vs_TEXCOORD7;
      let x_1240 : i32 = u_xlati51;
      let x_1243 : i32 = u_xlati51;
      let x_1247 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_1240 + 1i) / 4i)][((x_1243 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1237.y, x_1237.y, x_1237.y, x_1237.y) * x_1247);
      let x_1249 : i32 = u_xlati51;
      let x_1251 : i32 = u_xlati51;
      let x_1254 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[(x_1249 / 4i)][(x_1251 % 4i)];
      let x_1255 : vec3<f32> = vs_TEXCOORD7;
      let x_1258 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1254 * vec4<f32>(x_1255.x, x_1255.x, x_1255.x, x_1255.x)) + x_1258);
      let x_1260 : i32 = u_xlati51;
      let x_1263 : i32 = u_xlati51;
      let x_1267 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_1260 + 2i) / 4i)][((x_1263 + 2i) % 4i)];
      let x_1268 : vec3<f32> = vs_TEXCOORD7;
      let x_1271 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1267 * vec4<f32>(x_1268.z, x_1268.z, x_1268.z, x_1268.z)) + x_1271);
      let x_1273 : vec4<f32> = u_xlat11;
      let x_1274 : i32 = u_xlati51;
      let x_1277 : i32 = u_xlati51;
      let x_1281 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_1274 + 3i) / 4i)][((x_1277 + 3i) % 4i)];
      u_xlat11 = (x_1273 + x_1281);
      let x_1283 : vec4<f32> = u_xlat11;
      let x_1285 : vec4<f32> = u_xlat11;
      let x_1287 : vec3<f32> = (vec3<f32>(x_1283.x, x_1283.y, x_1283.z) / vec3<f32>(x_1285.w, x_1285.w, x_1285.w));
      let x_1288 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
      let x_1291 : vec4<f32> = u_xlat11;
      let x_1292 : vec2<f32> = vec2<f32>(x_1291.x, x_1291.y);
      let x_1294 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1292.x, x_1292.y, x_1294);
      let x_1302 : vec3<f32> = txVec1;
      let x_1304 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1302.xy, x_1302.z);
      u_xlat51 = x_1304;
      let x_1305 : i32 = u_xlati31;
      let x_1307 : f32 = x_162.x_AdditionalShadowParams[x_1305].x;
      u_xlat52 = (1.0f + -(x_1307));
      let x_1310 : f32 = u_xlat51;
      let x_1311 : i32 = u_xlati31;
      let x_1313 : f32 = x_162.x_AdditionalShadowParams[x_1311].x;
      let x_1315 : f32 = u_xlat52;
      u_xlat51 = ((x_1310 * x_1313) + x_1315);
      let x_1318 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1318);
      let x_1321 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1321 >= 1.0f);
      let x_1324 : bool = u_xlatb52;
      let x_1326 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1324 | x_1326);
      let x_1328 : bool = u_xlatb52;
      let x_1329 : f32 = u_xlat51;
      u_xlat51 = select(x_1329, 1.0f, x_1328);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1332 : f32 = u_xlat51;
    u_xlat52 = (-(x_1332) + 1.0f);
    let x_1335 : f32 = u_xlat1;
    let x_1336 : f32 = u_xlat52;
    let x_1338 : f32 = u_xlat51;
    u_xlat51 = ((x_1335 * x_1336) + x_1338);
    let x_1341 : i32 = u_xlati31;
    u_xlati52 = (1i << bitcast<u32>((x_1341 & 31i)));
    let x_1345 : i32 = u_xlati52;
    let x_1348 : f32 = x_626.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1345) & bitcast<u32>(x_1348)));
    let x_1352 : i32 = u_xlati52;
    if ((x_1352 != 0i)) {
      let x_1356 : i32 = u_xlati31;
      let x_1358 : f32 = x_626.x_AdditionalLightsLightTypes[x_1356].el;
      u_xlati52 = i32(x_1358);
      let x_1361 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1361 != 0i));
      let x_1365 : i32 = u_xlati31;
      u_xlati25 = (x_1365 << bitcast<u32>(2i));
      let x_1367 : i32 = u_xlati11;
      if ((x_1367 != 0i)) {
        let x_1371 : vec3<f32> = vs_TEXCOORD7;
        let x_1373 : i32 = u_xlati25;
        let x_1376 : i32 = u_xlati25;
        let x_1380 : vec4<f32> = x_626.x_AdditionalLightsWorldToLights[((x_1373 + 1i) / 4i)][((x_1376 + 1i) % 4i)];
        let x_1382 : vec3<f32> = (vec3<f32>(x_1371.y, x_1371.y, x_1371.y) * vec3<f32>(x_1380.x, x_1380.y, x_1380.w));
        let x_1383 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1382.x, x_1383.y, x_1382.y, x_1382.z);
        let x_1385 : i32 = u_xlati25;
        let x_1387 : i32 = u_xlati25;
        let x_1390 : vec4<f32> = x_626.x_AdditionalLightsWorldToLights[(x_1385 / 4i)][(x_1387 % 4i)];
        let x_1392 : vec3<f32> = vs_TEXCOORD7;
        let x_1395 : vec4<f32> = u_xlat11;
        let x_1397 : vec3<f32> = ((vec3<f32>(x_1390.x, x_1390.y, x_1390.w) * vec3<f32>(x_1392.x, x_1392.x, x_1392.x)) + vec3<f32>(x_1395.x, x_1395.z, x_1395.w));
        let x_1398 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1397.x, x_1398.y, x_1397.y, x_1397.z);
        let x_1400 : i32 = u_xlati25;
        let x_1403 : i32 = u_xlati25;
        let x_1407 : vec4<f32> = x_626.x_AdditionalLightsWorldToLights[((x_1400 + 2i) / 4i)][((x_1403 + 2i) % 4i)];
        let x_1409 : vec3<f32> = vs_TEXCOORD7;
        let x_1412 : vec4<f32> = u_xlat11;
        let x_1414 : vec3<f32> = ((vec3<f32>(x_1407.x, x_1407.y, x_1407.w) * vec3<f32>(x_1409.z, x_1409.z, x_1409.z)) + vec3<f32>(x_1412.x, x_1412.z, x_1412.w));
        let x_1415 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1414.x, x_1415.y, x_1414.y, x_1414.z);
        let x_1417 : vec4<f32> = u_xlat11;
        let x_1419 : i32 = u_xlati25;
        let x_1422 : i32 = u_xlati25;
        let x_1426 : vec4<f32> = x_626.x_AdditionalLightsWorldToLights[((x_1419 + 3i) / 4i)][((x_1422 + 3i) % 4i)];
        let x_1428 : vec3<f32> = (vec3<f32>(x_1417.x, x_1417.z, x_1417.w) + vec3<f32>(x_1426.x, x_1426.y, x_1426.w));
        let x_1429 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1428.x, x_1429.y, x_1428.y, x_1428.z);
        let x_1431 : vec4<f32> = u_xlat11;
        let x_1433 : vec4<f32> = u_xlat11;
        let x_1435 : vec2<f32> = (vec2<f32>(x_1431.x, x_1431.z) / vec2<f32>(x_1433.w, x_1433.w));
        let x_1436 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1435.x, x_1436.y, x_1435.y, x_1436.w);
        let x_1438 : vec4<f32> = u_xlat11;
        let x_1441 : vec2<f32> = ((vec2<f32>(x_1438.x, x_1438.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1442 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1441.x, x_1442.y, x_1441.y, x_1442.w);
        let x_1444 : vec4<f32> = u_xlat11;
        let x_1448 : vec2<f32> = clamp(vec2<f32>(x_1444.x, x_1444.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1449 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1448.x, x_1449.y, x_1448.y, x_1449.w);
        let x_1451 : i32 = u_xlati31;
        let x_1453 : vec4<f32> = x_626.x_AdditionalLightsCookieAtlasUVRects[x_1451];
        let x_1455 : vec4<f32> = u_xlat11;
        let x_1458 : i32 = u_xlati31;
        let x_1460 : vec4<f32> = x_626.x_AdditionalLightsCookieAtlasUVRects[x_1458];
        let x_1462 : vec2<f32> = ((vec2<f32>(x_1453.x, x_1453.y) * vec2<f32>(x_1455.x, x_1455.z)) + vec2<f32>(x_1460.z, x_1460.w));
        let x_1463 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1462.x, x_1463.y, x_1462.y, x_1463.w);
      } else {
        let x_1466 : i32 = u_xlati52;
        u_xlatb52 = (x_1466 == 1i);
        let x_1468 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1468);
        let x_1470 : i32 = u_xlati52;
        if ((x_1470 != 0i)) {
          let x_1475 : vec3<f32> = vs_TEXCOORD7;
          let x_1477 : i32 = u_xlati25;
          let x_1480 : i32 = u_xlati25;
          let x_1484 : vec4<f32> = x_626.x_AdditionalLightsWorldToLights[((x_1477 + 1i) / 4i)][((x_1480 + 1i) % 4i)];
          let x_1486 : vec2<f32> = (vec2<f32>(x_1475.y, x_1475.y) * vec2<f32>(x_1484.x, x_1484.y));
          let x_1487 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1486.x, x_1486.y, x_1487.z, x_1487.w);
          let x_1489 : i32 = u_xlati25;
          let x_1491 : i32 = u_xlati25;
          let x_1494 : vec4<f32> = x_626.x_AdditionalLightsWorldToLights[(x_1489 / 4i)][(x_1491 % 4i)];
          let x_1496 : vec3<f32> = vs_TEXCOORD7;
          let x_1499 : vec4<f32> = u_xlat12;
          let x_1501 : vec2<f32> = ((vec2<f32>(x_1494.x, x_1494.y) * vec2<f32>(x_1496.x, x_1496.x)) + vec2<f32>(x_1499.x, x_1499.y));
          let x_1502 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1501.x, x_1501.y, x_1502.z, x_1502.w);
          let x_1504 : i32 = u_xlati25;
          let x_1507 : i32 = u_xlati25;
          let x_1511 : vec4<f32> = x_626.x_AdditionalLightsWorldToLights[((x_1504 + 2i) / 4i)][((x_1507 + 2i) % 4i)];
          let x_1513 : vec3<f32> = vs_TEXCOORD7;
          let x_1516 : vec4<f32> = u_xlat12;
          let x_1518 : vec2<f32> = ((vec2<f32>(x_1511.x, x_1511.y) * vec2<f32>(x_1513.z, x_1513.z)) + vec2<f32>(x_1516.x, x_1516.y));
          let x_1519 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1518.x, x_1518.y, x_1519.z, x_1519.w);
          let x_1521 : vec4<f32> = u_xlat12;
          let x_1523 : i32 = u_xlati25;
          let x_1526 : i32 = u_xlati25;
          let x_1530 : vec4<f32> = x_626.x_AdditionalLightsWorldToLights[((x_1523 + 3i) / 4i)][((x_1526 + 3i) % 4i)];
          let x_1532 : vec2<f32> = (vec2<f32>(x_1521.x, x_1521.y) + vec2<f32>(x_1530.x, x_1530.y));
          let x_1533 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1532.x, x_1532.y, x_1533.z, x_1533.w);
          let x_1535 : vec4<f32> = u_xlat12;
          let x_1538 : vec2<f32> = ((vec2<f32>(x_1535.x, x_1535.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1539 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1538.x, x_1538.y, x_1539.z, x_1539.w);
          let x_1541 : vec4<f32> = u_xlat12;
          let x_1543 : vec2<f32> = fract(vec2<f32>(x_1541.x, x_1541.y));
          let x_1544 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1543.x, x_1543.y, x_1544.z, x_1544.w);
          let x_1546 : i32 = u_xlati31;
          let x_1548 : vec4<f32> = x_626.x_AdditionalLightsCookieAtlasUVRects[x_1546];
          let x_1550 : vec4<f32> = u_xlat12;
          let x_1553 : i32 = u_xlati31;
          let x_1555 : vec4<f32> = x_626.x_AdditionalLightsCookieAtlasUVRects[x_1553];
          let x_1557 : vec2<f32> = ((vec2<f32>(x_1548.x, x_1548.y) * vec2<f32>(x_1550.x, x_1550.y)) + vec2<f32>(x_1555.z, x_1555.w));
          let x_1558 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1557.x, x_1558.y, x_1557.y, x_1558.w);
        } else {
          let x_1561 : vec3<f32> = vs_TEXCOORD7;
          let x_1563 : i32 = u_xlati25;
          let x_1566 : i32 = u_xlati25;
          let x_1570 : vec4<f32> = x_626.x_AdditionalLightsWorldToLights[((x_1563 + 1i) / 4i)][((x_1566 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1561.y, x_1561.y, x_1561.y, x_1561.y) * x_1570);
          let x_1572 : i32 = u_xlati25;
          let x_1574 : i32 = u_xlati25;
          let x_1577 : vec4<f32> = x_626.x_AdditionalLightsWorldToLights[(x_1572 / 4i)][(x_1574 % 4i)];
          let x_1578 : vec3<f32> = vs_TEXCOORD7;
          let x_1581 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1577 * vec4<f32>(x_1578.x, x_1578.x, x_1578.x, x_1578.x)) + x_1581);
          let x_1583 : i32 = u_xlati25;
          let x_1586 : i32 = u_xlati25;
          let x_1590 : vec4<f32> = x_626.x_AdditionalLightsWorldToLights[((x_1583 + 2i) / 4i)][((x_1586 + 2i) % 4i)];
          let x_1591 : vec3<f32> = vs_TEXCOORD7;
          let x_1594 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1590 * vec4<f32>(x_1591.z, x_1591.z, x_1591.z, x_1591.z)) + x_1594);
          let x_1596 : vec4<f32> = u_xlat12;
          let x_1597 : i32 = u_xlati25;
          let x_1600 : i32 = u_xlati25;
          let x_1604 : vec4<f32> = x_626.x_AdditionalLightsWorldToLights[((x_1597 + 3i) / 4i)][((x_1600 + 3i) % 4i)];
          u_xlat12 = (x_1596 + x_1604);
          let x_1606 : vec4<f32> = u_xlat12;
          let x_1608 : vec4<f32> = u_xlat12;
          let x_1610 : vec3<f32> = (vec3<f32>(x_1606.x, x_1606.y, x_1606.z) / vec3<f32>(x_1608.w, x_1608.w, x_1608.w));
          let x_1611 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1610.x, x_1610.y, x_1610.z, x_1611.w);
          let x_1613 : vec4<f32> = u_xlat12;
          let x_1615 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1613.x, x_1613.y, x_1613.z), vec3<f32>(x_1615.x, x_1615.y, x_1615.z));
          let x_1618 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1618);
          let x_1620 : f32 = u_xlat52;
          let x_1622 : vec4<f32> = u_xlat12;
          let x_1624 : vec3<f32> = (vec3<f32>(x_1620, x_1620, x_1620) * vec3<f32>(x_1622.x, x_1622.y, x_1622.z));
          let x_1625 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1624.x, x_1624.y, x_1624.z, x_1625.w);
          let x_1627 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1627.x, x_1627.y, x_1627.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1632 : f32 = u_xlat52;
          u_xlat52 = max(x_1632, 0.00000099999999747524f);
          let x_1635 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1635);
          let x_1638 : f32 = u_xlat52;
          let x_1640 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1638, x_1638, x_1638) * vec3<f32>(x_1640.z, x_1640.x, x_1640.y));
          let x_1644 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1644);
          let x_1648 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1648, 0.0f, 1.0f);
          let x_1653 : vec3<f32> = u_xlat13;
          let x_1655 : vec4<bool> = (vec4<f32>(x_1653.y, x_1653.y, x_1653.z, x_1653.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1656 : vec2<bool> = vec2<bool>(x_1655.x, x_1655.z);
          let x_1657 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1656.x, x_1657.y, x_1656.y);
          let x_1660 : bool = u_xlatb25.x;
          if (x_1660) {
            let x_1665 : f32 = u_xlat13.x;
            x_1661 = x_1665;
          } else {
            let x_1668 : f32 = u_xlat13.x;
            x_1661 = -(x_1668);
          }
          let x_1670 : f32 = x_1661;
          u_xlat25.x = x_1670;
          let x_1673 : bool = u_xlatb25.z;
          if (x_1673) {
            let x_1678 : f32 = u_xlat13.x;
            x_1674 = x_1678;
          } else {
            let x_1681 : f32 = u_xlat13.x;
            x_1674 = -(x_1681);
          }
          let x_1683 : f32 = x_1674;
          u_xlat25.z = x_1683;
          let x_1685 : vec4<f32> = u_xlat12;
          let x_1687 : f32 = u_xlat52;
          let x_1690 : vec3<f32> = u_xlat25;
          let x_1692 : vec2<f32> = ((vec2<f32>(x_1685.x, x_1685.y) * vec2<f32>(x_1687, x_1687)) + vec2<f32>(x_1690.x, x_1690.z));
          let x_1693 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1692.x, x_1693.y, x_1692.y);
          let x_1695 : vec3<f32> = u_xlat25;
          let x_1698 : vec2<f32> = ((vec2<f32>(x_1695.x, x_1695.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1699 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1698.x, x_1699.y, x_1698.y);
          let x_1701 : vec3<f32> = u_xlat25;
          let x_1705 : vec2<f32> = clamp(vec2<f32>(x_1701.x, x_1701.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1706 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1705.x, x_1706.y, x_1705.y);
          let x_1708 : i32 = u_xlati31;
          let x_1710 : vec4<f32> = x_626.x_AdditionalLightsCookieAtlasUVRects[x_1708];
          let x_1712 : vec3<f32> = u_xlat25;
          let x_1715 : i32 = u_xlati31;
          let x_1717 : vec4<f32> = x_626.x_AdditionalLightsCookieAtlasUVRects[x_1715];
          let x_1719 : vec2<f32> = ((vec2<f32>(x_1710.x, x_1710.y) * vec2<f32>(x_1712.x, x_1712.z)) + vec2<f32>(x_1717.z, x_1717.w));
          let x_1720 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1719.x, x_1720.y, x_1719.y, x_1720.w);
        }
      }
      let x_1727 : vec4<f32> = u_xlat11;
      let x_1729 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1727.x, x_1727.z), 0.0f);
      u_xlat11 = x_1729;
      let x_1731 : bool = u_xlatb3.y;
      if (x_1731) {
        let x_1736 : f32 = u_xlat11.w;
        x_1732 = x_1736;
      } else {
        let x_1739 : f32 = u_xlat11.x;
        x_1732 = x_1739;
      }
      let x_1740 : f32 = x_1732;
      u_xlat52 = x_1740;
      let x_1742 : bool = u_xlatb3.x;
      if (x_1742) {
        let x_1746 : vec4<f32> = u_xlat11;
        x_1743 = vec3<f32>(x_1746.x, x_1746.y, x_1746.z);
      } else {
        let x_1749 : f32 = u_xlat52;
        x_1743 = vec3<f32>(x_1749, x_1749, x_1749);
      }
      let x_1751 : vec3<f32> = x_1743;
      let x_1752 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1752.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1758 : vec4<f32> = u_xlat11;
    let x_1760 : i32 = u_xlati31;
    let x_1762 : vec4<f32> = x_1072.x_AdditionalLightsColor[x_1760];
    let x_1764 : vec3<f32> = (vec3<f32>(x_1758.x, x_1758.y, x_1758.z) * vec3<f32>(x_1762.x, x_1762.y, x_1762.z));
    let x_1765 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
    let x_1767 : f32 = u_xlat48;
    let x_1768 : f32 = u_xlat51;
    u_xlat31 = (x_1767 * x_1768);
    let x_1770 : vec4<f32> = u_xlat2;
    let x_1772 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1770.x, x_1770.y, x_1770.z), x_1772);
    let x_1774 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1774, 0.0f, 1.0f);
    let x_1776 : f32 = u_xlat31;
    let x_1777 : f32 = u_xlat48;
    u_xlat31 = (x_1776 * x_1777);
    let x_1779 : f32 = u_xlat31;
    let x_1781 : vec4<f32> = u_xlat11;
    let x_1783 : vec3<f32> = (vec3<f32>(x_1779, x_1779, x_1779) * vec3<f32>(x_1781.x, x_1781.y, x_1781.z));
    let x_1784 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1784.w);
    let x_1786 : vec3<f32> = u_xlat9;
    let x_1787 : f32 = u_xlat49;
    let x_1790 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1786 * vec3<f32>(x_1787, x_1787, x_1787)) + x_1790);
    let x_1792 : vec3<f32> = u_xlat9;
    let x_1793 : vec3<f32> = u_xlat9;
    u_xlat31 = dot(x_1792, x_1793);
    let x_1795 : f32 = u_xlat31;
    u_xlat31 = max(x_1795, 1.17549435e-38f);
    let x_1797 : f32 = u_xlat31;
    u_xlat31 = inverseSqrt(x_1797);
    let x_1799 : f32 = u_xlat31;
    let x_1801 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1799, x_1799, x_1799) * x_1801);
    let x_1803 : vec4<f32> = u_xlat2;
    let x_1805 : vec3<f32> = u_xlat9;
    u_xlat31 = dot(vec3<f32>(x_1803.x, x_1803.y, x_1803.z), x_1805);
    let x_1807 : f32 = u_xlat31;
    u_xlat31 = clamp(x_1807, 0.0f, 1.0f);
    let x_1809 : vec3<f32> = u_xlat10;
    let x_1810 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1809, x_1810);
    let x_1812 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1812, 0.0f, 1.0f);
    let x_1814 : f32 = u_xlat31;
    let x_1815 : f32 = u_xlat31;
    u_xlat31 = (x_1814 * x_1815);
    let x_1817 : f32 = u_xlat31;
    let x_1819 : f32 = u_xlat8.x;
    u_xlat31 = ((x_1817 * x_1819) + 1.00001001358032226562f);
    let x_1822 : f32 = u_xlat48;
    let x_1823 : f32 = u_xlat48;
    u_xlat48 = (x_1822 * x_1823);
    let x_1825 : f32 = u_xlat31;
    let x_1826 : f32 = u_xlat31;
    u_xlat31 = (x_1825 * x_1826);
    let x_1828 : f32 = u_xlat48;
    u_xlat48 = max(x_1828, 0.10000000149011611938f);
    let x_1830 : f32 = u_xlat31;
    let x_1831 : f32 = u_xlat48;
    u_xlat31 = (x_1830 * x_1831);
    let x_1833 : f32 = u_xlat46;
    let x_1834 : f32 = u_xlat31;
    u_xlat31 = (x_1833 * x_1834);
    let x_1836 : f32 = u_xlat47;
    let x_1837 : f32 = u_xlat31;
    u_xlat31 = (x_1836 / x_1837);
    let x_1839 : vec4<f32> = u_xlat0;
    let x_1841 : f32 = u_xlat31;
    let x_1844 : vec4<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1839.x, x_1839.y, x_1839.z) * vec3<f32>(x_1841, x_1841, x_1841)) + vec3<f32>(x_1844.x, x_1844.y, x_1844.z));
    let x_1847 : vec3<f32> = u_xlat9;
    let x_1848 : vec4<f32> = u_xlat11;
    let x_1851 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1847 * vec3<f32>(x_1848.x, x_1848.y, x_1848.z)) + x_1851);

    continuing {
      let x_1853 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1853 + bitcast<u32>(1i));
    }
  }
  let x_1855 : vec4<f32> = u_xlat7;
  let x_1857 : vec4<f32> = u_xlat6;
  let x_1860 : vec4<f32> = u_xlat4;
  let x_1862 : vec3<f32> = ((vec3<f32>(x_1855.x, x_1855.y, x_1855.z) * vec3<f32>(x_1857.x, x_1857.y, x_1857.z)) + vec3<f32>(x_1860.x, x_1860.y, x_1860.z));
  let x_1863 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
  let x_1865 : vec3<f32> = u_xlat22;
  let x_1866 : vec4<f32> = u_xlat0;
  let x_1868 : vec3<f32> = (x_1865 + vec3<f32>(x_1866.x, x_1866.y, x_1866.z));
  let x_1869 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1868.x, x_1868.y, x_1868.z, x_1869.w);
  let x_1871 : f32 = u_xlat45;
  let x_1872 : f32 = u_xlat45;
  u_xlat42 = (x_1871 * -(x_1872));
  let x_1875 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1875);
  let x_1877 : vec4<f32> = u_xlat0;
  let x_1880 : vec4<f32> = x_29.unity_FogColor;
  let x_1883 : vec3<f32> = (vec3<f32>(x_1877.x, x_1877.y, x_1877.z) + -(vec3<f32>(x_1880.x, x_1880.y, x_1880.z)));
  let x_1884 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1883.x, x_1883.y, x_1883.z, x_1884.w);
  let x_1888 : f32 = u_xlat42;
  let x_1890 : vec4<f32> = u_xlat0;
  let x_1894 : vec4<f32> = x_29.unity_FogColor;
  let x_1896 : vec3<f32> = ((vec3<f32>(x_1888, x_1888, x_1888) * vec3<f32>(x_1890.x, x_1890.y, x_1890.z)) + vec3<f32>(x_1894.x, x_1894.y, x_1894.z));
  let x_1897 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1896.x, x_1896.y, x_1896.z, x_1897.w);
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


