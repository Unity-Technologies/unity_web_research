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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_MainTex_TexelSize : vec4<f32>,
  /* @offset(16) */
  x_MRLL_TexelSize : vec4<f32>,
  /* @offset(32) */
  x_BumpMap_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Color1 : vec4<f32>,
  /* @offset(64) */
  x_Color2 : vec4<f32>,
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

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(5) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(6) var x_MRLL : texture_2d<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_54 : UnityPerMaterial;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(7) var x_BumpMap : texture_2d<f32>;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlatb15 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_270 : UnityPerDraw;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb14 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat28 : f32;

@group(1) @binding(3) var<uniform> x_422 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu14 : u32;

var<private> u_xlati14 : i32;

var<private> u_xlat44 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb29 : bool;

var<private> u_xlatb43 : bool;

var<private> u_xlat43 : f32;

var<private> u_xlat45 : f32;

@group(1) @binding(4) var<uniform> x_816 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatu45 : u32;

var<private> u_xlati46 : i32;

var<private> u_xlati45 : i32;

@group(1) @binding(1) var<uniform> x_1303 : AdditionalLights;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb50 : bool;

var<private> u_xlati49 : i32;

var<private> u_xlati50 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu43 : u32;

var<private> u_xlatb45 : bool;

fn main_1() {
  var x_379 : f32;
  var x_391 : f32;
  var x_403 : f32;
  var txVec0 : vec3<f32>;
  var x_769 : f32;
  var x_900 : f32;
  var x_911 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1434 : f32;
  var x_1444 : f32;
  var txVec1 : vec3<f32>;
  var x_1865 : f32;
  var x_1878 : f32;
  var x_1926 : f32;
  var x_1937 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_43 : vec4<f32> = vs_INTERP5;
  let x_46 : f32 = x_29.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_MRLL, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_43.x, x_43.y), x_46);
  u_xlat1 = x_47;
  let x_50 : vec4<f32> = u_xlat1;
  let x_58 : vec4<f32> = x_54.x_Color2;
  u_xlat2 = (vec3<f32>(x_50.w, x_50.w, x_50.w) * vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_63 : vec4<f32> = x_54.x_Color1;
  let x_65 : vec4<f32> = u_xlat1;
  let x_68 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_63.x, x_63.y, x_63.z) * vec3<f32>(x_65.z, x_65.z, x_65.z)) + x_68);
  let x_74 : f32 = u_xlat1.w;
  let x_77 : f32 = u_xlat1.z;
  u_xlat29 = (x_74 + x_77);
  let x_79 : f32 = u_xlat29;
  u_xlat29 = clamp(x_79, 0.0f, 1.0f);
  let x_84 : vec4<f32> = u_xlat0;
  let x_88 : vec3<f32> = (-(vec3<f32>(x_84.x, x_84.y, x_84.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_89 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_91 : vec4<f32> = u_xlat3;
  let x_93 : vec4<f32> = u_xlat3;
  let x_95 : vec3<f32> = (vec3<f32>(x_91.x, x_91.y, x_91.z) + vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_96 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_99 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_99) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_102 : vec4<f32> = u_xlat3;
  let x_105 : vec3<f32> = u_xlat4;
  let x_107 : vec3<f32> = ((-(vec3<f32>(x_102.x, x_102.y, x_102.z)) * x_105) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_110 : vec4<f32> = u_xlat0;
  let x_112 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_110.x, x_110.y, x_110.z) * x_112);
  let x_114 : vec3<f32> = u_xlat2;
  let x_115 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_114 + x_115);
  let x_123 : vec4<f32> = u_xlat0;
  let x_126 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_123.x, x_123.y, x_123.z, x_123.x));
  u_xlatb4 = vec3<bool>(x_126.x, x_126.y, x_126.z);
  let x_131 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_131);
  let x_136 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_136);
  let x_140 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_140);
  let x_144 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_144);
  let x_148 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_148);
  let x_152 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_152);
  let x_155 : vec4<f32> = u_xlat3;
  let x_157 : vec3<f32> = u_xlat4;
  let x_158 : vec3<f32> = (vec3<f32>(x_155.x, x_155.y, x_155.z) * x_157);
  let x_159 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec3<f32> = u_xlat2;
  let x_162 : vec3<f32> = u_xlat5;
  let x_164 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_161 * x_162) + vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec4<f32> = u_xlat0;
  let x_170 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_167.x, x_167.y, x_167.z)) + x_170);
  let x_172 : f32 = u_xlat29;
  let x_174 : vec3<f32> = u_xlat2;
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_172, x_172, x_172) * x_174) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : f32 = u_xlat0.x;
  u_xlat0.x = (x_180 + -0.15000000596046447754f);
  let x_185 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_185);
  let x_189 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_189) + 1.0f);
  let x_193 : vec4<f32> = u_xlat0;
  let x_198 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_193.x, x_193.x, x_193.x) * vec3<f32>(0.40000000596046447754f, 0.40000000596046447754f, 0.40000000596046447754f)) + x_198);
  let x_204 : vec4<f32> = vs_INTERP5;
  let x_207 : f32 = x_29.x_GlobalMipBias.x;
  let x_208 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_204.x, x_204.y), x_207);
  let x_209 : vec3<f32> = vec3<f32>(x_208.x, x_208.y, x_208.w);
  let x_210 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_213 : f32 = u_xlat3.x;
  let x_215 : f32 = u_xlat3.z;
  u_xlat3.x = (x_213 * x_215);
  let x_220 : vec4<f32> = u_xlat3;
  u_xlat14 = ((vec2<f32>(x_220.x, x_220.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_228 : vec2<f32> = u_xlat14;
  let x_229 : vec2<f32> = u_xlat14;
  u_xlat29 = dot(x_228, x_229);
  let x_231 : f32 = u_xlat29;
  u_xlat29 = min(x_231, 1.0f);
  let x_233 : f32 = u_xlat29;
  u_xlat29 = (-(x_233) + 1.0f);
  let x_236 : f32 = u_xlat29;
  u_xlat29 = sqrt(x_236);
  let x_238 : f32 = u_xlat29;
  u_xlat29 = max(x_238, 0.0000000000000001f);
  let x_242 : f32 = u_xlat1.x;
  let x_244 : f32 = u_xlat0.x;
  u_xlat0.x = (x_242 + x_244);
  let x_248 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_248, 0.0f, 1.0f);
  let x_252 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_252, 0.0f);
  let x_256 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_256, 0.85000002384185791016f);
  let x_264 : f32 = vs_INTERP4.w;
  u_xlatb15.x = (0.0f < x_264);
  let x_272 : f32 = x_270.unity_WorldTransformParams.w;
  u_xlatb15.z = (x_272 >= 0.0f);
  let x_277 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_277);
  let x_281 : bool = u_xlatb15.z;
  u_xlat15.z = select(-1.0f, 1.0f, x_281);
  let x_285 : f32 = u_xlat15.z;
  let x_287 : f32 = u_xlat15.x;
  u_xlat15.x = (x_285 * x_287);
  let x_290 : vec4<f32> = vs_INTERP4;
  let x_294 : vec3<f32> = vs_INTERP8;
  let x_296 : vec3<f32> = (vec3<f32>(x_290.y, x_290.z, x_290.x) * vec3<f32>(x_294.z, x_294.x, x_294.y));
  let x_297 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_299 : vec3<f32> = vs_INTERP8;
  let x_301 : vec4<f32> = vs_INTERP4;
  let x_304 : vec4<f32> = u_xlat3;
  let x_307 : vec3<f32> = ((vec3<f32>(x_299.y, x_299.z, x_299.x) * vec3<f32>(x_301.z, x_301.x, x_301.y)) + -(vec3<f32>(x_304.x, x_304.y, x_304.z)));
  let x_308 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec3<f32> = u_xlat15;
  let x_312 : vec4<f32> = u_xlat3;
  let x_314 : vec3<f32> = (vec3<f32>(x_310.x, x_310.x, x_310.x) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec2<f32> = u_xlat14;
  let x_319 : vec4<f32> = u_xlat3;
  let x_321 : vec3<f32> = (vec3<f32>(x_317.y, x_317.y, x_317.y) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec2<f32> = u_xlat14;
  let x_326 : vec4<f32> = vs_INTERP4;
  let x_329 : vec4<f32> = u_xlat3;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.x, x_324.x) * vec3<f32>(x_326.x, x_326.y, x_326.z)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : f32 = u_xlat29;
  let x_336 : vec3<f32> = vs_INTERP8;
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat15 = ((vec3<f32>(x_334, x_334, x_334) * x_336) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec3<f32> = u_xlat15;
  let x_342 : vec3<f32> = u_xlat15;
  u_xlat14.x = dot(x_341, x_342);
  let x_346 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_346);
  let x_349 : vec2<f32> = u_xlat14;
  let x_351 : vec3<f32> = u_xlat15;
  let x_352 : vec3<f32> = (vec3<f32>(x_349.x, x_349.x, x_349.x) * x_351);
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_358 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb14 = (x_358 == 0.0f);
  let x_361 : vec3<f32> = vs_INTERP7;
  let x_365 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_361) + x_365);
  let x_368 : vec3<f32> = u_xlat15;
  let x_369 : vec3<f32> = u_xlat15;
  u_xlat28 = dot(x_368, x_369);
  let x_371 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_371);
  let x_373 : f32 = u_xlat28;
  let x_375 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_373, x_373, x_373) * x_375);
  let x_377 : bool = u_xlatb14;
  if (x_377) {
    let x_383 : f32 = u_xlat15.x;
    x_379 = x_383;
  } else {
    let x_387 : f32 = x_29.unity_MatrixV[0i].z;
    x_379 = x_387;
  }
  let x_388 : f32 = x_379;
  u_xlat4.x = x_388;
  let x_390 : bool = u_xlatb14;
  if (x_390) {
    let x_395 : f32 = u_xlat15.y;
    x_391 = x_395;
  } else {
    let x_399 : f32 = x_29.unity_MatrixV[1i].z;
    x_391 = x_399;
  }
  let x_400 : f32 = x_391;
  u_xlat4.y = x_400;
  let x_402 : bool = u_xlatb14;
  if (x_402) {
    let x_407 : f32 = u_xlat15.z;
    x_403 = x_407;
  } else {
    let x_411 : f32 = x_29.unity_MatrixV[2i].z;
    x_403 = x_411;
  }
  let x_412 : f32 = x_403;
  u_xlat4.z = x_412;
  let x_414 : vec3<f32> = vs_INTERP7;
  let x_424 : vec4<f32> = x_422.x_CascadeShadowSplitSpheres0;
  u_xlat15 = (x_414 + -(vec3<f32>(x_424.x, x_424.y, x_424.z)));
  let x_428 : vec3<f32> = vs_INTERP7;
  let x_430 : vec4<f32> = x_422.x_CascadeShadowSplitSpheres1;
  u_xlat5 = (x_428 + -(vec3<f32>(x_430.x, x_430.y, x_430.z)));
  let x_435 : vec3<f32> = vs_INTERP7;
  let x_437 : vec4<f32> = x_422.x_CascadeShadowSplitSpheres2;
  let x_440 : vec3<f32> = (x_435 + -(vec3<f32>(x_437.x, x_437.y, x_437.z)));
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_444 : vec3<f32> = vs_INTERP7;
  let x_446 : vec4<f32> = x_422.x_CascadeShadowSplitSpheres3;
  let x_449 : vec3<f32> = (x_444 + -(vec3<f32>(x_446.x, x_446.y, x_446.z)));
  let x_450 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_453 : vec3<f32> = u_xlat15;
  let x_454 : vec3<f32> = u_xlat15;
  u_xlat8.x = dot(x_453, x_454);
  let x_457 : vec3<f32> = u_xlat5;
  let x_458 : vec3<f32> = u_xlat5;
  u_xlat8.y = dot(x_457, x_458);
  let x_461 : vec4<f32> = u_xlat6;
  let x_463 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_461.x, x_461.y, x_461.z), vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_467 : vec4<f32> = u_xlat7;
  let x_469 : vec4<f32> = u_xlat7;
  u_xlat8.w = dot(vec3<f32>(x_467.x, x_467.y, x_467.z), vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_475 : vec4<f32> = u_xlat8;
  let x_477 : vec4<f32> = x_422.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_475 < x_477);
  let x_480 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_480);
  let x_484 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_484);
  let x_488 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_488);
  let x_492 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_492);
  let x_496 : bool = u_xlatb5.x;
  u_xlat15.x = select(-0.0f, -1.0f, x_496);
  let x_501 : bool = u_xlatb5.y;
  u_xlat15.y = select(-0.0f, -1.0f, x_501);
  let x_505 : bool = u_xlatb5.z;
  u_xlat15.z = select(-0.0f, -1.0f, x_505);
  let x_508 : vec3<f32> = u_xlat15;
  let x_509 : vec4<f32> = u_xlat6;
  u_xlat15 = (x_508 + vec3<f32>(x_509.y, x_509.z, x_509.w));
  let x_512 : vec3<f32> = u_xlat15;
  let x_514 : vec3<f32> = max(x_512, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_515 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_515.x, x_514.x, x_514.y, x_514.z);
  let x_517 : vec4<f32> = u_xlat6;
  u_xlat14.x = dot(x_517, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_524 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_524) + 4.0f);
  let x_531 : f32 = u_xlat14.x;
  u_xlatu14 = u32(x_531);
  let x_535 : u32 = u_xlatu14;
  u_xlati14 = (bitcast<i32>(x_535) << bitcast<u32>(2i));
  let x_538 : vec3<f32> = vs_INTERP7;
  let x_540 : i32 = u_xlati14;
  let x_543 : i32 = u_xlati14;
  let x_547 : vec4<f32> = x_422.x_MainLightWorldToShadow[((x_540 + 1i) / 4i)][((x_543 + 1i) % 4i)];
  u_xlat15 = (vec3<f32>(x_538.y, x_538.y, x_538.y) * vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_550 : i32 = u_xlati14;
  let x_552 : i32 = u_xlati14;
  let x_555 : vec4<f32> = x_422.x_MainLightWorldToShadow[(x_550 / 4i)][(x_552 % 4i)];
  let x_557 : vec3<f32> = vs_INTERP7;
  let x_560 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_555.x, x_555.y, x_555.z) * vec3<f32>(x_557.x, x_557.x, x_557.x)) + x_560);
  let x_562 : i32 = u_xlati14;
  let x_565 : i32 = u_xlati14;
  let x_569 : vec4<f32> = x_422.x_MainLightWorldToShadow[((x_562 + 2i) / 4i)][((x_565 + 2i) % 4i)];
  let x_571 : vec3<f32> = vs_INTERP7;
  let x_574 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_571.z, x_571.z, x_571.z)) + x_574);
  let x_576 : vec3<f32> = u_xlat15;
  let x_577 : i32 = u_xlati14;
  let x_580 : i32 = u_xlati14;
  let x_584 : vec4<f32> = x_422.x_MainLightWorldToShadow[((x_577 + 3i) / 4i)][((x_580 + 3i) % 4i)];
  u_xlat15 = (x_576 + vec3<f32>(x_584.x, x_584.y, x_584.z));
  u_xlat3.w = 1.0f;
  let x_590 : vec4<f32> = x_270.unity_SHAr;
  let x_591 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_590, x_591);
  let x_596 : vec4<f32> = x_270.unity_SHAg;
  let x_597 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_596, x_597);
  let x_602 : vec4<f32> = x_270.unity_SHAb;
  let x_603 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_602, x_603);
  let x_606 : vec4<f32> = u_xlat3;
  let x_608 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_606.y, x_606.z, x_606.z, x_606.x) * vec4<f32>(x_608.x, x_608.y, x_608.z, x_608.z));
  let x_613 : vec4<f32> = x_270.unity_SHBr;
  let x_614 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_613, x_614);
  let x_619 : vec4<f32> = x_270.unity_SHBg;
  let x_620 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_619, x_620);
  let x_625 : vec4<f32> = x_270.unity_SHBb;
  let x_626 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_625, x_626);
  let x_630 : f32 = u_xlat3.y;
  let x_632 : f32 = u_xlat3.y;
  u_xlat14.x = (x_630 * x_632);
  let x_636 : f32 = u_xlat3.x;
  let x_638 : f32 = u_xlat3.x;
  let x_641 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_636 * x_638) + -(x_641));
  let x_647 : vec4<f32> = x_270.unity_SHC;
  let x_649 : vec2<f32> = u_xlat14;
  let x_652 : vec4<f32> = u_xlat7;
  let x_654 : vec3<f32> = ((vec3<f32>(x_647.x, x_647.y, x_647.z) * vec3<f32>(x_649.x, x_649.x, x_649.x)) + vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec3<f32> = u_xlat5;
  let x_658 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_657 + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_661, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_664 : f32 = u_xlat0.x;
  u_xlat14.x = ((-(x_664) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_671 : f32 = u_xlat14.x;
  u_xlat28 = (-(x_671) + 1.0f);
  let x_674 : vec2<f32> = u_xlat14;
  let x_676 : vec3<f32> = u_xlat2;
  let x_677 : vec3<f32> = (vec3<f32>(x_674.x, x_674.x, x_674.x) * x_676);
  let x_678 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_680 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_684 : vec4<f32> = u_xlat0;
  let x_686 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_684.x, x_684.x, x_684.x) * x_686) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_692 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_692) + 1.0f);
  let x_697 : f32 = u_xlat0.x;
  let x_699 : f32 = u_xlat0.x;
  u_xlat14.x = (x_697 * x_699);
  let x_704 : f32 = u_xlat14.x;
  let x_706 : f32 = u_xlat14.x;
  u_xlat44 = (x_704 * x_706);
  let x_708 : f32 = u_xlat28;
  let x_710 : f32 = u_xlat1.x;
  u_xlat28 = (x_708 + x_710);
  let x_712 : f32 = u_xlat28;
  u_xlat28 = min(x_712, 1.0f);
  let x_715 : f32 = u_xlat14.x;
  u_xlat1.x = ((x_715 * 4.0f) + 2.0f);
  let x_721 : f32 = u_xlat0.w;
  u_xlat42 = min(x_721, 1.0f);
  let x_725 : vec3<f32> = u_xlat15;
  let x_726 : vec2<f32> = vec2<f32>(x_725.x, x_725.y);
  let x_728 : f32 = u_xlat15.z;
  txVec0 = vec3<f32>(x_726.x, x_726.y, x_728);
  let x_740 : vec3<f32> = txVec0;
  let x_742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_740.xy, x_740.z);
  u_xlat15.x = x_742;
  let x_746 : f32 = x_422.x_MainLightShadowParams.x;
  u_xlat29 = (-(x_746) + 1.0f);
  let x_750 : f32 = u_xlat15.x;
  let x_752 : f32 = x_422.x_MainLightShadowParams.x;
  let x_754 : f32 = u_xlat29;
  u_xlat15.x = ((x_750 * x_752) + x_754);
  let x_759 : f32 = u_xlat15.z;
  u_xlatb29 = (0.0f >= x_759);
  let x_763 : f32 = u_xlat15.z;
  u_xlatb43 = (x_763 >= 1.0f);
  let x_765 : bool = u_xlatb43;
  let x_766 : bool = u_xlatb29;
  u_xlatb29 = (x_765 | x_766);
  let x_768 : bool = u_xlatb29;
  if (x_768) {
    x_769 = 1.0f;
  } else {
    let x_774 : f32 = u_xlat15.x;
    x_769 = x_774;
  }
  let x_775 : f32 = x_769;
  u_xlat15.x = x_775;
  let x_777 : vec3<f32> = vs_INTERP7;
  let x_779 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_781 : vec3<f32> = (x_777 + -(x_779));
  let x_782 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec4<f32> = u_xlat7;
  let x_786 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_784.x, x_784.y, x_784.z), vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_790 : f32 = u_xlat29;
  let x_792 : f32 = x_422.x_MainLightShadowParams.z;
  let x_795 : f32 = x_422.x_MainLightShadowParams.w;
  u_xlat43 = ((x_790 * x_792) + x_795);
  let x_797 : f32 = u_xlat43;
  u_xlat43 = clamp(x_797, 0.0f, 1.0f);
  let x_801 : f32 = u_xlat15.x;
  u_xlat45 = (-(x_801) + 1.0f);
  let x_804 : f32 = u_xlat43;
  let x_805 : f32 = u_xlat45;
  let x_808 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_804 * x_805) + x_808);
  let x_818 : f32 = x_816.x_MainLightCookieTextureFormat;
  u_xlatb43 = !((x_818 == -1.0f));
  let x_820 : bool = u_xlatb43;
  if (x_820) {
    let x_823 : vec3<f32> = vs_INTERP7;
    let x_826 : vec4<f32> = x_816.x_MainLightWorldToLight[1i];
    let x_828 : vec2<f32> = (vec2<f32>(x_823.y, x_823.y) * vec2<f32>(x_826.x, x_826.y));
    let x_829 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_828.x, x_828.y, x_829.z, x_829.w);
    let x_832 : vec4<f32> = x_816.x_MainLightWorldToLight[0i];
    let x_834 : vec3<f32> = vs_INTERP7;
    let x_837 : vec4<f32> = u_xlat7;
    let x_839 : vec2<f32> = ((vec2<f32>(x_832.x, x_832.y) * vec2<f32>(x_834.x, x_834.x)) + vec2<f32>(x_837.x, x_837.y));
    let x_840 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_839.x, x_839.y, x_840.z, x_840.w);
    let x_843 : vec4<f32> = x_816.x_MainLightWorldToLight[2i];
    let x_845 : vec3<f32> = vs_INTERP7;
    let x_848 : vec4<f32> = u_xlat7;
    let x_850 : vec2<f32> = ((vec2<f32>(x_843.x, x_843.y) * vec2<f32>(x_845.z, x_845.z)) + vec2<f32>(x_848.x, x_848.y));
    let x_851 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_850.x, x_850.y, x_851.z, x_851.w);
    let x_853 : vec4<f32> = u_xlat7;
    let x_856 : vec4<f32> = x_816.x_MainLightWorldToLight[3i];
    let x_858 : vec2<f32> = (vec2<f32>(x_853.x, x_853.y) + vec2<f32>(x_856.x, x_856.y));
    let x_859 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_858.x, x_858.y, x_859.z, x_859.w);
    let x_861 : vec4<f32> = u_xlat7;
    let x_865 : vec2<f32> = ((vec2<f32>(x_861.x, x_861.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_866 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_865.x, x_865.y, x_866.z, x_866.w);
    let x_873 : vec4<f32> = u_xlat7;
    let x_876 : f32 = x_29.x_GlobalMipBias.x;
    let x_877 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_873.x, x_873.y), x_876);
    u_xlat7 = x_877;
    let x_882 : f32 = x_816.x_MainLightCookieTextureFormat;
    let x_884 : f32 = x_816.x_MainLightCookieTextureFormat;
    let x_886 : f32 = x_816.x_MainLightCookieTextureFormat;
    let x_888 : f32 = x_816.x_MainLightCookieTextureFormat;
    let x_889 : vec4<f32> = vec4<f32>(x_882, x_884, x_886, x_888);
    let x_896 : vec4<bool> = (vec4<f32>(x_889.x, x_889.y, x_889.z, x_889.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_896.x, x_896.y);
    let x_899 : bool = u_xlatb8.y;
    if (x_899) {
      let x_904 : f32 = u_xlat7.w;
      x_900 = x_904;
    } else {
      let x_907 : f32 = u_xlat7.x;
      x_900 = x_907;
    }
    let x_908 : f32 = x_900;
    u_xlat43 = x_908;
    let x_910 : bool = u_xlatb8.x;
    if (x_910) {
      let x_914 : vec4<f32> = u_xlat7;
      x_911 = vec3<f32>(x_914.x, x_914.y, x_914.z);
    } else {
      let x_917 : f32 = u_xlat43;
      x_911 = vec3<f32>(x_917, x_917, x_917);
    }
    let x_919 : vec3<f32> = x_911;
    let x_920 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_926 : vec4<f32> = u_xlat7;
  let x_929 : vec4<f32> = x_29.x_MainLightColor;
  let x_931 : vec3<f32> = (vec3<f32>(x_926.x, x_926.y, x_926.z) * vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_934 : vec3<f32> = u_xlat4;
  let x_936 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(-(x_934), vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : f32 = u_xlat43;
  let x_940 : f32 = u_xlat43;
  u_xlat43 = (x_939 + x_940);
  let x_942 : vec4<f32> = u_xlat3;
  let x_944 : f32 = u_xlat43;
  let x_948 : vec3<f32> = u_xlat4;
  let x_950 : vec3<f32> = ((vec3<f32>(x_942.x, x_942.y, x_942.z) * -(vec3<f32>(x_944, x_944, x_944))) + -(x_948));
  let x_951 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : vec4<f32> = u_xlat3;
  let x_955 : vec3<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_953.x, x_953.y, x_953.z), x_955);
  let x_957 : f32 = u_xlat43;
  u_xlat43 = clamp(x_957, 0.0f, 1.0f);
  let x_959 : f32 = u_xlat43;
  u_xlat43 = (-(x_959) + 1.0f);
  let x_962 : f32 = u_xlat43;
  let x_963 : f32 = u_xlat43;
  u_xlat43 = (x_962 * x_963);
  let x_965 : f32 = u_xlat43;
  let x_966 : f32 = u_xlat43;
  u_xlat43 = (x_965 * x_966);
  let x_969 : f32 = u_xlat0.x;
  u_xlat45 = ((-(x_969) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_976 : f32 = u_xlat0.x;
  let x_977 : f32 = u_xlat45;
  u_xlat0.x = (x_976 * x_977);
  let x_981 : f32 = u_xlat0.x;
  u_xlat0.x = (x_981 * 6.0f);
  let x_993 : vec4<f32> = u_xlat8;
  let x_996 : f32 = u_xlat0.x;
  let x_997 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_993.x, x_993.y, x_993.z), x_996);
  u_xlat8 = x_997;
  let x_999 : f32 = u_xlat8.w;
  u_xlat0.x = (x_999 + -1.0f);
  let x_1003 : f32 = x_270.unity_SpecCube0_HDR.w;
  let x_1005 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1003 * x_1005) + 1.0f);
  let x_1010 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1010, 0.0f);
  let x_1014 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1014);
  let x_1018 : f32 = u_xlat0.x;
  let x_1020 : f32 = x_270.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1018 * x_1020);
  let x_1024 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1024);
  let x_1028 : f32 = u_xlat0.x;
  let x_1030 : f32 = x_270.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1028 * x_1030);
  let x_1033 : vec4<f32> = u_xlat8;
  let x_1035 : vec4<f32> = u_xlat0;
  let x_1037 : vec3<f32> = (vec3<f32>(x_1033.x, x_1033.y, x_1033.z) * vec3<f32>(x_1035.x, x_1035.x, x_1035.x));
  let x_1038 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
  let x_1040 : vec2<f32> = u_xlat14;
  let x_1042 : vec2<f32> = u_xlat14;
  let x_1046 : vec2<f32> = ((vec2<f32>(x_1040.x, x_1040.x) * vec2<f32>(x_1042.x, x_1042.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1047 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1046.x, x_1046.y, x_1047.z, x_1047.w);
  let x_1050 : f32 = u_xlat0.y;
  u_xlat14.x = (1.0f / x_1050);
  let x_1054 : vec3<f32> = u_xlat2;
  let x_1056 : f32 = u_xlat28;
  u_xlat9 = (-(x_1054) + vec3<f32>(x_1056, x_1056, x_1056));
  let x_1059 : f32 = u_xlat43;
  let x_1061 : vec3<f32> = u_xlat9;
  let x_1063 : vec3<f32> = u_xlat2;
  u_xlat9 = ((vec3<f32>(x_1059, x_1059, x_1059) * x_1061) + x_1063);
  let x_1065 : vec2<f32> = u_xlat14;
  let x_1067 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_1065.x, x_1065.x, x_1065.x) * x_1067);
  let x_1069 : vec4<f32> = u_xlat8;
  let x_1071 : vec3<f32> = u_xlat9;
  let x_1072 : vec3<f32> = (vec3<f32>(x_1069.x, x_1069.y, x_1069.z) * x_1071);
  let x_1073 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
  let x_1075 : vec3<f32> = u_xlat5;
  let x_1076 : vec4<f32> = u_xlat6;
  let x_1079 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_1075 * vec3<f32>(x_1076.x, x_1076.y, x_1076.z)) + vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
  let x_1083 : f32 = u_xlat15.x;
  let x_1085 : f32 = x_270.unity_LightData.z;
  u_xlat14.x = (x_1083 * x_1085);
  let x_1088 : vec4<f32> = u_xlat3;
  let x_1091 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1088.x, x_1088.y, x_1088.z), vec3<f32>(x_1091.x, x_1091.y, x_1091.z));
  let x_1094 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1094, 0.0f, 1.0f);
  let x_1096 : f32 = u_xlat28;
  let x_1098 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1096 * x_1098);
  let x_1101 : vec2<f32> = u_xlat14;
  let x_1103 : vec4<f32> = u_xlat7;
  let x_1105 : vec3<f32> = (vec3<f32>(x_1101.x, x_1101.x, x_1101.x) * vec3<f32>(x_1103.x, x_1103.y, x_1103.z));
  let x_1106 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
  let x_1108 : vec3<f32> = u_xlat4;
  let x_1110 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1112 : vec3<f32> = (x_1108 + vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1115 : vec4<f32> = u_xlat8;
  let x_1117 : vec4<f32> = u_xlat8;
  u_xlat14.x = dot(vec3<f32>(x_1115.x, x_1115.y, x_1115.z), vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1122 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_1122, 1.17549435e-38f);
  let x_1127 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_1127);
  let x_1130 : vec2<f32> = u_xlat14;
  let x_1132 : vec4<f32> = u_xlat8;
  let x_1134 : vec3<f32> = (vec3<f32>(x_1130.x, x_1130.x, x_1130.x) * vec3<f32>(x_1132.x, x_1132.y, x_1132.z));
  let x_1135 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
  let x_1137 : vec4<f32> = u_xlat3;
  let x_1139 : vec4<f32> = u_xlat8;
  u_xlat14.x = dot(vec3<f32>(x_1137.x, x_1137.y, x_1137.z), vec3<f32>(x_1139.x, x_1139.y, x_1139.z));
  let x_1144 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_1144, 0.0f, 1.0f);
  let x_1148 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1150 : vec4<f32> = u_xlat8;
  u_xlat14.y = dot(vec3<f32>(x_1148.x, x_1148.y, x_1148.z), vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
  let x_1155 : f32 = u_xlat14.y;
  u_xlat14.y = clamp(x_1155, 0.0f, 1.0f);
  let x_1158 : vec2<f32> = u_xlat14;
  let x_1159 : vec2<f32> = u_xlat14;
  u_xlat14 = (x_1158 * x_1159);
  let x_1162 : f32 = u_xlat14.x;
  let x_1164 : f32 = u_xlat0.x;
  u_xlat14.x = ((x_1162 * x_1164) + 1.00001001358032226562f);
  let x_1170 : f32 = u_xlat14.x;
  let x_1172 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1170 * x_1172);
  let x_1176 : f32 = u_xlat14.y;
  u_xlat28 = max(x_1176, 0.10000000149011611938f);
  let x_1179 : f32 = u_xlat28;
  let x_1181 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1179 * x_1181);
  let x_1185 : f32 = u_xlat1.x;
  let x_1187 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1185 * x_1187);
  let x_1190 : f32 = u_xlat44;
  let x_1192 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1190 / x_1192);
  let x_1195 : vec3<f32> = u_xlat2;
  let x_1196 : vec2<f32> = u_xlat14;
  let x_1199 : vec4<f32> = u_xlat6;
  let x_1201 : vec3<f32> = ((x_1195 * vec3<f32>(x_1196.x, x_1196.x, x_1196.x)) + vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
  let x_1202 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
  let x_1204 : vec4<f32> = u_xlat7;
  let x_1206 : vec4<f32> = u_xlat8;
  let x_1208 : vec3<f32> = (vec3<f32>(x_1204.x, x_1204.y, x_1204.z) * vec3<f32>(x_1206.x, x_1206.y, x_1206.z));
  let x_1209 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
  let x_1212 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1214 : f32 = x_270.unity_LightData.y;
  u_xlat14.x = min(x_1212, x_1214);
  let x_1218 : f32 = u_xlat14.x;
  u_xlatu14 = bitcast<u32>(i32(x_1218));
  let x_1221 : f32 = u_xlat29;
  let x_1224 : f32 = x_422.x_AdditionalShadowFadeParams.x;
  let x_1227 : f32 = x_422.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1221 * x_1224) + x_1227);
  let x_1229 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1229, 0.0f, 1.0f);
  let x_1232 : f32 = x_816.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1234 : f32 = x_816.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1236 : f32 = x_816.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1238 : f32 = x_816.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1239 : vec4<f32> = vec4<f32>(x_1232, x_1234, x_1236, x_1238);
  let x_1245 : vec4<bool> = (vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1239.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_1246 : vec2<bool> = vec2<bool>(x_1245.x, x_1245.y);
  let x_1247 : vec3<bool> = u_xlatb15;
  u_xlatb15 = vec3<bool>(x_1246.x, x_1246.y, x_1247.z);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1259 : u32 = u_xlatu_loop_1;
    let x_1260 : u32 = u_xlatu14;
    if ((x_1259 < x_1260)) {
    } else {
      break;
    }
    let x_1263 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1263 >> 2u);
    let x_1266 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1266 & 3u));
    let x_1269 : u32 = u_xlatu45;
    let x_1272 : vec4<f32> = x_270.unity_LightIndices[bitcast<i32>(x_1269)];
    let x_1282 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1287 : vec4<u32> = indexable[x_1282];
    u_xlat45 = dot(x_1272, bitcast<vec4<f32>>(x_1287));
    let x_1291 : f32 = u_xlat45;
    u_xlati45 = i32(x_1291);
    let x_1293 : vec3<f32> = vs_INTERP7;
    let x_1304 : i32 = u_xlati45;
    let x_1306 : vec4<f32> = x_1303.x_AdditionalLightsPosition[x_1304];
    let x_1309 : i32 = u_xlati45;
    let x_1311 : vec4<f32> = x_1303.x_AdditionalLightsPosition[x_1309];
    u_xlat9 = ((-(x_1293) * vec3<f32>(x_1306.w, x_1306.w, x_1306.w)) + vec3<f32>(x_1311.x, x_1311.y, x_1311.z));
    let x_1315 : vec3<f32> = u_xlat9;
    let x_1316 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1315, x_1316);
    let x_1318 : f32 = u_xlat46;
    u_xlat46 = max(x_1318, 0.00006103515625f);
    let x_1322 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1322);
    let x_1325 : f32 = u_xlat47;
    let x_1327 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1325, x_1325, x_1325) * x_1327);
    let x_1330 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1330);
    let x_1332 : f32 = u_xlat46;
    let x_1333 : i32 = u_xlati45;
    let x_1335 : f32 = x_1303.x_AdditionalLightsAttenuation[x_1333].x;
    u_xlat46 = (x_1332 * x_1335);
    let x_1337 : f32 = u_xlat46;
    let x_1339 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1337) * x_1339) + 1.0f);
    let x_1342 : f32 = u_xlat46;
    u_xlat46 = max(x_1342, 0.0f);
    let x_1344 : f32 = u_xlat46;
    let x_1345 : f32 = u_xlat46;
    u_xlat46 = (x_1344 * x_1345);
    let x_1347 : f32 = u_xlat46;
    let x_1348 : f32 = u_xlat48;
    u_xlat46 = (x_1347 * x_1348);
    let x_1350 : i32 = u_xlati45;
    let x_1352 : vec4<f32> = x_1303.x_AdditionalLightsSpotDir[x_1350];
    let x_1354 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1352.x, x_1352.y, x_1352.z), x_1354);
    let x_1356 : f32 = u_xlat48;
    let x_1357 : i32 = u_xlati45;
    let x_1359 : f32 = x_1303.x_AdditionalLightsAttenuation[x_1357].z;
    let x_1361 : i32 = u_xlati45;
    let x_1363 : f32 = x_1303.x_AdditionalLightsAttenuation[x_1361].w;
    u_xlat48 = ((x_1356 * x_1359) + x_1363);
    let x_1365 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1365, 0.0f, 1.0f);
    let x_1367 : f32 = u_xlat48;
    let x_1368 : f32 = u_xlat48;
    u_xlat48 = (x_1367 * x_1368);
    let x_1370 : f32 = u_xlat46;
    let x_1371 : f32 = u_xlat48;
    u_xlat46 = (x_1370 * x_1371);
    let x_1375 : i32 = u_xlati45;
    let x_1377 : f32 = x_422.x_AdditionalShadowParams[x_1375].w;
    u_xlati48 = i32(x_1377);
    let x_1380 : i32 = u_xlati48;
    u_xlatb49 = (x_1380 >= 0i);
    let x_1382 : bool = u_xlatb49;
    if (x_1382) {
      let x_1386 : i32 = u_xlati45;
      let x_1388 : f32 = x_422.x_AdditionalShadowParams[x_1386].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1388, x_1388, x_1388, x_1388))));
      let x_1392 : bool = u_xlatb49;
      if (x_1392) {
        let x_1396 : vec3<f32> = u_xlat10;
        let x_1399 : vec3<f32> = u_xlat10;
        let x_1402 : vec4<bool> = (abs(vec4<f32>(x_1396.z, x_1396.z, x_1396.y, x_1396.z)) >= abs(vec4<f32>(x_1399.x, x_1399.y, x_1399.x, x_1399.x)));
        let x_1403 : vec3<bool> = vec3<bool>(x_1402.x, x_1402.y, x_1402.z);
        let x_1404 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1403.x, x_1403.y, x_1403.z, x_1404.w);
        let x_1407 : bool = u_xlatb11.y;
        let x_1409 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1407 & x_1409);
        let x_1411 : vec3<f32> = u_xlat10;
        let x_1414 : vec4<bool> = (-(vec4<f32>(x_1411.z, x_1411.y, x_1411.z, x_1411.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1415 : vec3<bool> = vec3<bool>(x_1414.x, x_1414.y, x_1414.w);
        let x_1416 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1415.x, x_1415.y, x_1416.z, x_1415.z);
        let x_1420 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1420);
        let x_1425 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1425);
        let x_1430 : bool = u_xlatb11.w;
        u_xlat50 = select(0.0f, 1.0f, x_1430);
        let x_1433 : bool = u_xlatb11.z;
        if (x_1433) {
          let x_1438 : f32 = u_xlat11.y;
          x_1434 = x_1438;
        } else {
          let x_1440 : f32 = u_xlat50;
          x_1434 = x_1440;
        }
        let x_1441 : f32 = x_1434;
        u_xlat50 = x_1441;
        let x_1443 : bool = u_xlatb49;
        if (x_1443) {
          let x_1448 : f32 = u_xlat11.x;
          x_1444 = x_1448;
        } else {
          let x_1450 : f32 = u_xlat50;
          x_1444 = x_1450;
        }
        let x_1451 : f32 = x_1444;
        u_xlat49 = x_1451;
        let x_1452 : i32 = u_xlati45;
        let x_1454 : f32 = x_422.x_AdditionalShadowParams[x_1452].w;
        u_xlat50 = trunc(x_1454);
        let x_1456 : f32 = u_xlat49;
        let x_1457 : f32 = u_xlat50;
        u_xlat49 = (x_1456 + x_1457);
        let x_1459 : f32 = u_xlat49;
        u_xlati48 = i32(x_1459);
      }
      let x_1461 : i32 = u_xlati48;
      u_xlati48 = (x_1461 << bitcast<u32>(2i));
      let x_1463 : vec3<f32> = vs_INTERP7;
      let x_1466 : i32 = u_xlati48;
      let x_1469 : i32 = u_xlati48;
      let x_1473 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[((x_1466 + 1i) / 4i)][((x_1469 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1463.y, x_1463.y, x_1463.y, x_1463.y) * x_1473);
      let x_1475 : i32 = u_xlati48;
      let x_1477 : i32 = u_xlati48;
      let x_1480 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[(x_1475 / 4i)][(x_1477 % 4i)];
      let x_1481 : vec3<f32> = vs_INTERP7;
      let x_1484 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1480 * vec4<f32>(x_1481.x, x_1481.x, x_1481.x, x_1481.x)) + x_1484);
      let x_1486 : i32 = u_xlati48;
      let x_1489 : i32 = u_xlati48;
      let x_1493 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[((x_1486 + 2i) / 4i)][((x_1489 + 2i) % 4i)];
      let x_1494 : vec3<f32> = vs_INTERP7;
      let x_1497 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1493 * vec4<f32>(x_1494.z, x_1494.z, x_1494.z, x_1494.z)) + x_1497);
      let x_1499 : vec4<f32> = u_xlat11;
      let x_1500 : i32 = u_xlati48;
      let x_1503 : i32 = u_xlati48;
      let x_1507 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[((x_1500 + 3i) / 4i)][((x_1503 + 3i) % 4i)];
      u_xlat11 = (x_1499 + x_1507);
      let x_1509 : vec4<f32> = u_xlat11;
      let x_1511 : vec4<f32> = u_xlat11;
      let x_1513 : vec3<f32> = (vec3<f32>(x_1509.x, x_1509.y, x_1509.z) / vec3<f32>(x_1511.w, x_1511.w, x_1511.w));
      let x_1514 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1514.w);
      let x_1517 : vec4<f32> = u_xlat11;
      let x_1518 : vec2<f32> = vec2<f32>(x_1517.x, x_1517.y);
      let x_1520 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
      let x_1528 : vec3<f32> = txVec1;
      let x_1530 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1528.xy, x_1528.z);
      u_xlat48 = x_1530;
      let x_1531 : i32 = u_xlati45;
      let x_1533 : f32 = x_422.x_AdditionalShadowParams[x_1531].x;
      u_xlat49 = (1.0f + -(x_1533));
      let x_1536 : f32 = u_xlat48;
      let x_1537 : i32 = u_xlati45;
      let x_1539 : f32 = x_422.x_AdditionalShadowParams[x_1537].x;
      let x_1541 : f32 = u_xlat49;
      u_xlat48 = ((x_1536 * x_1539) + x_1541);
      let x_1544 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_1544);
      let x_1548 : f32 = u_xlat11.z;
      u_xlatb50 = (x_1548 >= 1.0f);
      let x_1550 : bool = u_xlatb49;
      let x_1551 : bool = u_xlatb50;
      u_xlatb49 = (x_1550 | x_1551);
      let x_1553 : bool = u_xlatb49;
      let x_1554 : f32 = u_xlat48;
      u_xlat48 = select(x_1554, 1.0f, x_1553);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_1557 : f32 = u_xlat48;
    u_xlat49 = (-(x_1557) + 1.0f);
    let x_1560 : f32 = u_xlat28;
    let x_1561 : f32 = u_xlat49;
    let x_1563 : f32 = u_xlat48;
    u_xlat48 = ((x_1560 * x_1561) + x_1563);
    let x_1566 : i32 = u_xlati45;
    u_xlati49 = (1i << bitcast<u32>((x_1566 & 31i)));
    let x_1570 : i32 = u_xlati49;
    let x_1573 : f32 = x_816.x_AdditionalLightsCookieEnableBits;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1570) & bitcast<u32>(x_1573)));
    let x_1577 : i32 = u_xlati49;
    if ((x_1577 != 0i)) {
      let x_1581 : i32 = u_xlati45;
      let x_1583 : f32 = x_816.x_AdditionalLightsLightTypes[x_1581].el;
      u_xlati49 = i32(x_1583);
      let x_1586 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1586 != 0i));
      let x_1590 : i32 = u_xlati45;
      u_xlati51 = (x_1590 << bitcast<u32>(2i));
      let x_1592 : i32 = u_xlati50;
      if ((x_1592 != 0i)) {
        let x_1596 : vec3<f32> = vs_INTERP7;
        let x_1598 : i32 = u_xlati51;
        let x_1601 : i32 = u_xlati51;
        let x_1605 : vec4<f32> = x_816.x_AdditionalLightsWorldToLights[((x_1598 + 1i) / 4i)][((x_1601 + 1i) % 4i)];
        let x_1607 : vec3<f32> = (vec3<f32>(x_1596.y, x_1596.y, x_1596.y) * vec3<f32>(x_1605.x, x_1605.y, x_1605.w));
        let x_1608 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1607.x, x_1607.y, x_1607.z, x_1608.w);
        let x_1610 : i32 = u_xlati51;
        let x_1612 : i32 = u_xlati51;
        let x_1615 : vec4<f32> = x_816.x_AdditionalLightsWorldToLights[(x_1610 / 4i)][(x_1612 % 4i)];
        let x_1617 : vec3<f32> = vs_INTERP7;
        let x_1620 : vec4<f32> = u_xlat11;
        let x_1622 : vec3<f32> = ((vec3<f32>(x_1615.x, x_1615.y, x_1615.w) * vec3<f32>(x_1617.x, x_1617.x, x_1617.x)) + vec3<f32>(x_1620.x, x_1620.y, x_1620.z));
        let x_1623 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1622.x, x_1622.y, x_1622.z, x_1623.w);
        let x_1625 : i32 = u_xlati51;
        let x_1628 : i32 = u_xlati51;
        let x_1632 : vec4<f32> = x_816.x_AdditionalLightsWorldToLights[((x_1625 + 2i) / 4i)][((x_1628 + 2i) % 4i)];
        let x_1634 : vec3<f32> = vs_INTERP7;
        let x_1637 : vec4<f32> = u_xlat11;
        let x_1639 : vec3<f32> = ((vec3<f32>(x_1632.x, x_1632.y, x_1632.w) * vec3<f32>(x_1634.z, x_1634.z, x_1634.z)) + vec3<f32>(x_1637.x, x_1637.y, x_1637.z));
        let x_1640 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1639.x, x_1639.y, x_1639.z, x_1640.w);
        let x_1642 : vec4<f32> = u_xlat11;
        let x_1644 : i32 = u_xlati51;
        let x_1647 : i32 = u_xlati51;
        let x_1651 : vec4<f32> = x_816.x_AdditionalLightsWorldToLights[((x_1644 + 3i) / 4i)][((x_1647 + 3i) % 4i)];
        let x_1653 : vec3<f32> = (vec3<f32>(x_1642.x, x_1642.y, x_1642.z) + vec3<f32>(x_1651.x, x_1651.y, x_1651.w));
        let x_1654 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1653.x, x_1653.y, x_1653.z, x_1654.w);
        let x_1656 : vec4<f32> = u_xlat11;
        let x_1658 : vec4<f32> = u_xlat11;
        let x_1660 : vec2<f32> = (vec2<f32>(x_1656.x, x_1656.y) / vec2<f32>(x_1658.z, x_1658.z));
        let x_1661 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1660.x, x_1660.y, x_1661.z, x_1661.w);
        let x_1663 : vec4<f32> = u_xlat11;
        let x_1666 : vec2<f32> = ((vec2<f32>(x_1663.x, x_1663.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1667 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1666.x, x_1666.y, x_1667.z, x_1667.w);
        let x_1669 : vec4<f32> = u_xlat11;
        let x_1673 : vec2<f32> = clamp(vec2<f32>(x_1669.x, x_1669.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1674 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1673.x, x_1673.y, x_1674.z, x_1674.w);
        let x_1676 : i32 = u_xlati45;
        let x_1678 : vec4<f32> = x_816.x_AdditionalLightsCookieAtlasUVRects[x_1676];
        let x_1680 : vec4<f32> = u_xlat11;
        let x_1683 : i32 = u_xlati45;
        let x_1685 : vec4<f32> = x_816.x_AdditionalLightsCookieAtlasUVRects[x_1683];
        let x_1687 : vec2<f32> = ((vec2<f32>(x_1678.x, x_1678.y) * vec2<f32>(x_1680.x, x_1680.y)) + vec2<f32>(x_1685.z, x_1685.w));
        let x_1688 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1687.x, x_1687.y, x_1688.z, x_1688.w);
      } else {
        let x_1691 : i32 = u_xlati49;
        u_xlatb49 = (x_1691 == 1i);
        let x_1693 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1693);
        let x_1695 : i32 = u_xlati49;
        if ((x_1695 != 0i)) {
          let x_1700 : vec3<f32> = vs_INTERP7;
          let x_1702 : i32 = u_xlati51;
          let x_1705 : i32 = u_xlati51;
          let x_1709 : vec4<f32> = x_816.x_AdditionalLightsWorldToLights[((x_1702 + 1i) / 4i)][((x_1705 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1700.y, x_1700.y) * vec2<f32>(x_1709.x, x_1709.y));
          let x_1712 : i32 = u_xlati51;
          let x_1714 : i32 = u_xlati51;
          let x_1717 : vec4<f32> = x_816.x_AdditionalLightsWorldToLights[(x_1712 / 4i)][(x_1714 % 4i)];
          let x_1719 : vec3<f32> = vs_INTERP7;
          let x_1722 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1717.x, x_1717.y) * vec2<f32>(x_1719.x, x_1719.x)) + x_1722);
          let x_1724 : i32 = u_xlati51;
          let x_1727 : i32 = u_xlati51;
          let x_1731 : vec4<f32> = x_816.x_AdditionalLightsWorldToLights[((x_1724 + 2i) / 4i)][((x_1727 + 2i) % 4i)];
          let x_1733 : vec3<f32> = vs_INTERP7;
          let x_1736 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1731.x, x_1731.y) * vec2<f32>(x_1733.z, x_1733.z)) + x_1736);
          let x_1738 : vec2<f32> = u_xlat39;
          let x_1739 : i32 = u_xlati51;
          let x_1742 : i32 = u_xlati51;
          let x_1746 : vec4<f32> = x_816.x_AdditionalLightsWorldToLights[((x_1739 + 3i) / 4i)][((x_1742 + 3i) % 4i)];
          u_xlat39 = (x_1738 + vec2<f32>(x_1746.x, x_1746.y));
          let x_1749 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1749 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1752 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1752);
          let x_1754 : i32 = u_xlati45;
          let x_1756 : vec4<f32> = x_816.x_AdditionalLightsCookieAtlasUVRects[x_1754];
          let x_1758 : vec2<f32> = u_xlat39;
          let x_1760 : i32 = u_xlati45;
          let x_1762 : vec4<f32> = x_816.x_AdditionalLightsCookieAtlasUVRects[x_1760];
          let x_1764 : vec2<f32> = ((vec2<f32>(x_1756.x, x_1756.y) * x_1758) + vec2<f32>(x_1762.z, x_1762.w));
          let x_1765 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1764.x, x_1764.y, x_1765.z, x_1765.w);
        } else {
          let x_1769 : vec3<f32> = vs_INTERP7;
          let x_1771 : i32 = u_xlati51;
          let x_1774 : i32 = u_xlati51;
          let x_1778 : vec4<f32> = x_816.x_AdditionalLightsWorldToLights[((x_1771 + 1i) / 4i)][((x_1774 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1769.y, x_1769.y, x_1769.y, x_1769.y) * x_1778);
          let x_1780 : i32 = u_xlati51;
          let x_1782 : i32 = u_xlati51;
          let x_1785 : vec4<f32> = x_816.x_AdditionalLightsWorldToLights[(x_1780 / 4i)][(x_1782 % 4i)];
          let x_1786 : vec3<f32> = vs_INTERP7;
          let x_1789 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1785 * vec4<f32>(x_1786.x, x_1786.x, x_1786.x, x_1786.x)) + x_1789);
          let x_1791 : i32 = u_xlati51;
          let x_1794 : i32 = u_xlati51;
          let x_1798 : vec4<f32> = x_816.x_AdditionalLightsWorldToLights[((x_1791 + 2i) / 4i)][((x_1794 + 2i) % 4i)];
          let x_1799 : vec3<f32> = vs_INTERP7;
          let x_1802 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1798 * vec4<f32>(x_1799.z, x_1799.z, x_1799.z, x_1799.z)) + x_1802);
          let x_1804 : vec4<f32> = u_xlat12;
          let x_1805 : i32 = u_xlati51;
          let x_1808 : i32 = u_xlati51;
          let x_1812 : vec4<f32> = x_816.x_AdditionalLightsWorldToLights[((x_1805 + 3i) / 4i)][((x_1808 + 3i) % 4i)];
          u_xlat12 = (x_1804 + x_1812);
          let x_1814 : vec4<f32> = u_xlat12;
          let x_1816 : vec4<f32> = u_xlat12;
          let x_1818 : vec3<f32> = (vec3<f32>(x_1814.x, x_1814.y, x_1814.z) / vec3<f32>(x_1816.w, x_1816.w, x_1816.w));
          let x_1819 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1818.x, x_1818.y, x_1818.z, x_1819.w);
          let x_1821 : vec4<f32> = u_xlat12;
          let x_1823 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1821.x, x_1821.y, x_1821.z), vec3<f32>(x_1823.x, x_1823.y, x_1823.z));
          let x_1826 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1826);
          let x_1828 : f32 = u_xlat49;
          let x_1830 : vec4<f32> = u_xlat12;
          let x_1832 : vec3<f32> = (vec3<f32>(x_1828, x_1828, x_1828) * vec3<f32>(x_1830.x, x_1830.y, x_1830.z));
          let x_1833 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1832.x, x_1832.y, x_1832.z, x_1833.w);
          let x_1835 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1835.x, x_1835.y, x_1835.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1839 : f32 = u_xlat49;
          u_xlat49 = max(x_1839, 0.00000099999999747524f);
          let x_1842 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1842);
          let x_1845 : f32 = u_xlat49;
          let x_1847 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1845, x_1845, x_1845) * vec3<f32>(x_1847.z, x_1847.x, x_1847.y));
          let x_1851 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1851);
          let x_1855 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1855, 0.0f, 1.0f);
          let x_1859 : vec3<f32> = u_xlat13;
          let x_1861 : vec4<bool> = (vec4<f32>(x_1859.y, x_1859.z, x_1859.y, x_1859.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1861.x, x_1861.y);
          let x_1864 : bool = u_xlatb39.x;
          if (x_1864) {
            let x_1869 : f32 = u_xlat13.x;
            x_1865 = x_1869;
          } else {
            let x_1872 : f32 = u_xlat13.x;
            x_1865 = -(x_1872);
          }
          let x_1874 : f32 = x_1865;
          u_xlat39.x = x_1874;
          let x_1877 : bool = u_xlatb39.y;
          if (x_1877) {
            let x_1882 : f32 = u_xlat13.x;
            x_1878 = x_1882;
          } else {
            let x_1885 : f32 = u_xlat13.x;
            x_1878 = -(x_1885);
          }
          let x_1887 : f32 = x_1878;
          u_xlat39.y = x_1887;
          let x_1889 : vec4<f32> = u_xlat12;
          let x_1891 : f32 = u_xlat49;
          let x_1894 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1889.x, x_1889.y) * vec2<f32>(x_1891, x_1891)) + x_1894);
          let x_1896 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1896 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1899 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1899, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1903 : i32 = u_xlati45;
          let x_1905 : vec4<f32> = x_816.x_AdditionalLightsCookieAtlasUVRects[x_1903];
          let x_1907 : vec2<f32> = u_xlat39;
          let x_1909 : i32 = u_xlati45;
          let x_1911 : vec4<f32> = x_816.x_AdditionalLightsCookieAtlasUVRects[x_1909];
          let x_1913 : vec2<f32> = ((vec2<f32>(x_1905.x, x_1905.y) * x_1907) + vec2<f32>(x_1911.z, x_1911.w));
          let x_1914 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1913.x, x_1913.y, x_1914.z, x_1914.w);
        }
      }
      let x_1921 : vec4<f32> = u_xlat11;
      let x_1923 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1921.x, x_1921.y), 0.0f);
      u_xlat11 = x_1923;
      let x_1925 : bool = u_xlatb15.y;
      if (x_1925) {
        let x_1930 : f32 = u_xlat11.w;
        x_1926 = x_1930;
      } else {
        let x_1933 : f32 = u_xlat11.x;
        x_1926 = x_1933;
      }
      let x_1934 : f32 = x_1926;
      u_xlat49 = x_1934;
      let x_1936 : bool = u_xlatb15.x;
      if (x_1936) {
        let x_1940 : vec4<f32> = u_xlat11;
        x_1937 = vec3<f32>(x_1940.x, x_1940.y, x_1940.z);
      } else {
        let x_1943 : f32 = u_xlat49;
        x_1937 = vec3<f32>(x_1943, x_1943, x_1943);
      }
      let x_1945 : vec3<f32> = x_1937;
      let x_1946 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1945.x, x_1945.y, x_1945.z, x_1946.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1952 : vec4<f32> = u_xlat11;
    let x_1954 : i32 = u_xlati45;
    let x_1956 : vec4<f32> = x_1303.x_AdditionalLightsColor[x_1954];
    let x_1958 : vec3<f32> = (vec3<f32>(x_1952.x, x_1952.y, x_1952.z) * vec3<f32>(x_1956.x, x_1956.y, x_1956.z));
    let x_1959 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1958.x, x_1958.y, x_1958.z, x_1959.w);
    let x_1961 : f32 = u_xlat46;
    let x_1962 : f32 = u_xlat48;
    u_xlat45 = (x_1961 * x_1962);
    let x_1964 : vec4<f32> = u_xlat3;
    let x_1966 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_1964.x, x_1964.y, x_1964.z), x_1966);
    let x_1968 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1968, 0.0f, 1.0f);
    let x_1970 : f32 = u_xlat45;
    let x_1971 : f32 = u_xlat46;
    u_xlat45 = (x_1970 * x_1971);
    let x_1973 : f32 = u_xlat45;
    let x_1975 : vec4<f32> = u_xlat11;
    let x_1977 : vec3<f32> = (vec3<f32>(x_1973, x_1973, x_1973) * vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
    let x_1978 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);
    let x_1980 : vec3<f32> = u_xlat9;
    let x_1981 : f32 = u_xlat47;
    let x_1984 : vec3<f32> = u_xlat4;
    u_xlat9 = ((x_1980 * vec3<f32>(x_1981, x_1981, x_1981)) + x_1984);
    let x_1986 : vec3<f32> = u_xlat9;
    let x_1987 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1986, x_1987);
    let x_1989 : f32 = u_xlat45;
    u_xlat45 = max(x_1989, 1.17549435e-38f);
    let x_1991 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1991);
    let x_1993 : f32 = u_xlat45;
    let x_1995 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1993, x_1993, x_1993) * x_1995);
    let x_1997 : vec4<f32> = u_xlat3;
    let x_1999 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1997.x, x_1997.y, x_1997.z), x_1999);
    let x_2001 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2001, 0.0f, 1.0f);
    let x_2003 : vec3<f32> = u_xlat10;
    let x_2004 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_2003, x_2004);
    let x_2006 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2006, 0.0f, 1.0f);
    let x_2008 : f32 = u_xlat45;
    let x_2009 : f32 = u_xlat45;
    u_xlat45 = (x_2008 * x_2009);
    let x_2011 : f32 = u_xlat45;
    let x_2013 : f32 = u_xlat0.x;
    u_xlat45 = ((x_2011 * x_2013) + 1.00001001358032226562f);
    let x_2016 : f32 = u_xlat46;
    let x_2017 : f32 = u_xlat46;
    u_xlat46 = (x_2016 * x_2017);
    let x_2019 : f32 = u_xlat45;
    let x_2020 : f32 = u_xlat45;
    u_xlat45 = (x_2019 * x_2020);
    let x_2022 : f32 = u_xlat46;
    u_xlat46 = max(x_2022, 0.10000000149011611938f);
    let x_2024 : f32 = u_xlat45;
    let x_2025 : f32 = u_xlat46;
    u_xlat45 = (x_2024 * x_2025);
    let x_2028 : f32 = u_xlat1.x;
    let x_2029 : f32 = u_xlat45;
    u_xlat45 = (x_2028 * x_2029);
    let x_2031 : f32 = u_xlat44;
    let x_2032 : f32 = u_xlat45;
    u_xlat45 = (x_2031 / x_2032);
    let x_2034 : vec3<f32> = u_xlat2;
    let x_2035 : f32 = u_xlat45;
    let x_2038 : vec4<f32> = u_xlat6;
    u_xlat9 = ((x_2034 * vec3<f32>(x_2035, x_2035, x_2035)) + vec3<f32>(x_2038.x, x_2038.y, x_2038.z));
    let x_2041 : vec3<f32> = u_xlat9;
    let x_2042 : vec4<f32> = u_xlat11;
    let x_2045 : vec4<f32> = u_xlat8;
    let x_2047 : vec3<f32> = ((x_2041 * vec3<f32>(x_2042.x, x_2042.y, x_2042.z)) + vec3<f32>(x_2045.x, x_2045.y, x_2045.z));
    let x_2048 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2047.x, x_2047.y, x_2047.z, x_2048.w);

    continuing {
      let x_2050 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2050 + bitcast<u32>(1i));
    }
  }
  let x_2052 : vec3<f32> = u_xlat5;
  let x_2053 : f32 = u_xlat42;
  let x_2056 : vec4<f32> = u_xlat7;
  let x_2058 : vec3<f32> = ((x_2052 * vec3<f32>(x_2053, x_2053, x_2053)) + vec3<f32>(x_2056.x, x_2056.y, x_2056.z));
  let x_2059 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2058.x, x_2058.y, x_2058.z, x_2059.w);
  let x_2063 : vec4<f32> = u_xlat8;
  let x_2065 : vec4<f32> = u_xlat0;
  let x_2067 : vec3<f32> = (vec3<f32>(x_2063.x, x_2063.y, x_2063.z) + vec3<f32>(x_2065.x, x_2065.y, x_2065.z));
  let x_2068 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2067.x, x_2067.y, x_2067.z, x_2068.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_INTERP5_param : vec4<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


