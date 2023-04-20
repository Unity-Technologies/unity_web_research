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

@group(1) @binding(2) var<uniform> x_271 : UnityPerDraw;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb14 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat42 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat45 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat46 : f32;

@group(1) @binding(3) var<uniform> x_580 : LightShadows;

var<private> u_xlatb46 : bool;

var<private> u_xlatb47 : bool;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_643 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatu14 : u32;

var<private> u_xlatu46 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati46 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1130 : AdditionalLights;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

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

var<private> u_xlatu45 : u32;

fn main_1() {
  var x_380 : f32;
  var x_392 : f32;
  var x_404 : f32;
  var txVec0 : vec3<f32>;
  var x_727 : f32;
  var x_738 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1261 : f32;
  var x_1271 : f32;
  var txVec1 : vec3<f32>;
  var x_1692 : f32;
  var x_1705 : f32;
  var x_1753 : f32;
  var x_1764 : vec3<f32>;
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
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat4 = (vec3<f32>(x_110.x, x_110.y, x_110.z) + vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec3<f32> = u_xlat2;
  let x_116 : vec3<f32> = u_xlat4;
  u_xlat2 = (x_115 * x_116);
  let x_124 : vec4<f32> = u_xlat0;
  let x_127 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_124.x, x_124.y, x_124.z, x_124.x));
  u_xlatb4 = vec3<bool>(x_127.x, x_127.y, x_127.z);
  let x_132 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_132);
  let x_137 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_137);
  let x_141 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_141);
  let x_145 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_145);
  let x_149 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_149);
  let x_153 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_153);
  let x_156 : vec4<f32> = u_xlat3;
  let x_158 : vec3<f32> = u_xlat4;
  let x_159 : vec3<f32> = (vec3<f32>(x_156.x, x_156.y, x_156.z) * x_158);
  let x_160 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_162 : vec3<f32> = u_xlat2;
  let x_163 : vec3<f32> = u_xlat5;
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_162 * x_163) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat0;
  let x_171 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_168.x, x_168.y, x_168.z)) + x_171);
  let x_173 : f32 = u_xlat29;
  let x_175 : vec3<f32> = u_xlat2;
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_173, x_173, x_173) * x_175) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : f32 = u_xlat0.x;
  u_xlat0.x = (x_181 + -0.15000000596046447754f);
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_186);
  let x_190 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_190) + 1.0f);
  let x_194 : vec4<f32> = u_xlat0;
  let x_199 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_194.x, x_194.x, x_194.x) * vec3<f32>(0.40000000596046447754f, 0.40000000596046447754f, 0.40000000596046447754f)) + x_199);
  let x_205 : vec4<f32> = vs_INTERP5;
  let x_208 : f32 = x_29.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_205.x, x_205.y), x_208);
  let x_210 : vec3<f32> = vec3<f32>(x_209.x, x_209.y, x_209.w);
  let x_211 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_214 : f32 = u_xlat3.x;
  let x_216 : f32 = u_xlat3.z;
  u_xlat3.x = (x_214 * x_216);
  let x_221 : vec4<f32> = u_xlat3;
  u_xlat14 = ((vec2<f32>(x_221.x, x_221.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_229 : vec2<f32> = u_xlat14;
  let x_230 : vec2<f32> = u_xlat14;
  u_xlat29 = dot(x_229, x_230);
  let x_232 : f32 = u_xlat29;
  u_xlat29 = min(x_232, 1.0f);
  let x_234 : f32 = u_xlat29;
  u_xlat29 = (-(x_234) + 1.0f);
  let x_237 : f32 = u_xlat29;
  u_xlat29 = sqrt(x_237);
  let x_239 : f32 = u_xlat29;
  u_xlat29 = max(x_239, 0.0000000000000001f);
  let x_243 : f32 = u_xlat1.x;
  let x_245 : f32 = u_xlat0.x;
  u_xlat0.x = (x_243 + x_245);
  let x_249 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_249, 0.0f, 1.0f);
  let x_253 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_253, 0.0f);
  let x_257 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_257, 0.85000002384185791016f);
  let x_265 : f32 = vs_INTERP4.w;
  u_xlatb15.x = (0.0f < x_265);
  let x_273 : f32 = x_271.unity_WorldTransformParams.w;
  u_xlatb15.z = (x_273 >= 0.0f);
  let x_278 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_278);
  let x_282 : bool = u_xlatb15.z;
  u_xlat15.z = select(-1.0f, 1.0f, x_282);
  let x_286 : f32 = u_xlat15.z;
  let x_288 : f32 = u_xlat15.x;
  u_xlat15.x = (x_286 * x_288);
  let x_291 : vec4<f32> = vs_INTERP4;
  let x_295 : vec3<f32> = vs_INTERP8;
  let x_297 : vec3<f32> = (vec3<f32>(x_291.y, x_291.z, x_291.x) * vec3<f32>(x_295.z, x_295.x, x_295.y));
  let x_298 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec3<f32> = vs_INTERP8;
  let x_302 : vec4<f32> = vs_INTERP4;
  let x_305 : vec4<f32> = u_xlat3;
  let x_308 : vec3<f32> = ((vec3<f32>(x_300.y, x_300.z, x_300.x) * vec3<f32>(x_302.z, x_302.x, x_302.y)) + -(vec3<f32>(x_305.x, x_305.y, x_305.z)));
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec3<f32> = u_xlat15;
  let x_313 : vec4<f32> = u_xlat3;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.x, x_311.x) * vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec2<f32> = u_xlat14;
  let x_320 : vec4<f32> = u_xlat3;
  let x_322 : vec3<f32> = (vec3<f32>(x_318.y, x_318.y, x_318.y) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec2<f32> = u_xlat14;
  let x_327 : vec4<f32> = vs_INTERP4;
  let x_330 : vec4<f32> = u_xlat3;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.x, x_325.x) * vec3<f32>(x_327.x, x_327.y, x_327.z)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : f32 = u_xlat29;
  let x_337 : vec3<f32> = vs_INTERP8;
  let x_339 : vec4<f32> = u_xlat3;
  u_xlat15 = ((vec3<f32>(x_335, x_335, x_335) * x_337) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec3<f32> = u_xlat15;
  let x_343 : vec3<f32> = u_xlat15;
  u_xlat14.x = dot(x_342, x_343);
  let x_347 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_347);
  let x_350 : vec2<f32> = u_xlat14;
  let x_352 : vec3<f32> = u_xlat15;
  let x_353 : vec3<f32> = (vec3<f32>(x_350.x, x_350.x, x_350.x) * x_352);
  let x_354 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_359 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb14 = (x_359 == 0.0f);
  let x_362 : vec3<f32> = vs_INTERP7;
  let x_366 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_362) + x_366);
  let x_369 : vec3<f32> = u_xlat15;
  let x_370 : vec3<f32> = u_xlat15;
  u_xlat28 = dot(x_369, x_370);
  let x_372 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_372);
  let x_374 : f32 = u_xlat28;
  let x_376 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_374, x_374, x_374) * x_376);
  let x_378 : bool = u_xlatb14;
  if (x_378) {
    let x_384 : f32 = u_xlat15.x;
    x_380 = x_384;
  } else {
    let x_388 : f32 = x_29.unity_MatrixV[0i].z;
    x_380 = x_388;
  }
  let x_389 : f32 = x_380;
  u_xlat4.x = x_389;
  let x_391 : bool = u_xlatb14;
  if (x_391) {
    let x_396 : f32 = u_xlat15.y;
    x_392 = x_396;
  } else {
    let x_400 : f32 = x_29.unity_MatrixV[1i].z;
    x_392 = x_400;
  }
  let x_401 : f32 = x_392;
  u_xlat4.y = x_401;
  let x_403 : bool = u_xlatb14;
  if (x_403) {
    let x_408 : f32 = u_xlat15.z;
    x_404 = x_408;
  } else {
    let x_412 : f32 = x_29.unity_MatrixV[2i].z;
    x_404 = x_412;
  }
  let x_413 : f32 = x_404;
  u_xlat4.z = x_413;
  u_xlat3.w = 1.0f;
  let x_418 : vec4<f32> = x_271.unity_SHAr;
  let x_419 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_418, x_419);
  let x_424 : vec4<f32> = x_271.unity_SHAg;
  let x_425 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_424, x_425);
  let x_430 : vec4<f32> = x_271.unity_SHAb;
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_430, x_431);
  let x_435 : vec4<f32> = u_xlat3;
  let x_437 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_435.y, x_435.z, x_435.z, x_435.x) * vec4<f32>(x_437.x, x_437.y, x_437.z, x_437.z));
  let x_443 : vec4<f32> = x_271.unity_SHBr;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_443, x_444);
  let x_449 : vec4<f32> = x_271.unity_SHBg;
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_449, x_450);
  let x_455 : vec4<f32> = x_271.unity_SHBb;
  let x_456 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_455, x_456);
  let x_460 : f32 = u_xlat3.y;
  let x_462 : f32 = u_xlat3.y;
  u_xlat14.x = (x_460 * x_462);
  let x_466 : f32 = u_xlat3.x;
  let x_468 : f32 = u_xlat3.x;
  let x_471 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_466 * x_468) + -(x_471));
  let x_477 : vec4<f32> = x_271.unity_SHC;
  let x_479 : vec2<f32> = u_xlat14;
  let x_482 : vec4<f32> = u_xlat7;
  u_xlat15 = ((vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(x_479.x, x_479.x, x_479.x)) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec3<f32> = u_xlat15;
  let x_486 : vec3<f32> = u_xlat5;
  u_xlat15 = (x_485 + x_486);
  let x_488 : vec3<f32> = u_xlat15;
  u_xlat15 = max(x_488, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_492 : f32 = u_xlat0.x;
  u_xlat14.x = ((-(x_492) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_499 : f32 = u_xlat14.x;
  let x_502 : f32 = u_xlat1.x;
  u_xlat28 = (-(x_499) + x_502);
  let x_504 : vec2<f32> = u_xlat14;
  let x_506 : vec3<f32> = u_xlat2;
  u_xlat5 = (vec3<f32>(x_504.x, x_504.x, x_504.x) * x_506);
  let x_508 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_508 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_512 : vec4<f32> = u_xlat0;
  let x_514 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_512.x, x_512.x, x_512.x) * x_514) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_520 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_520) + 1.0f);
  let x_525 : f32 = u_xlat0.x;
  let x_527 : f32 = u_xlat0.x;
  u_xlat14.x = (x_525 * x_527);
  let x_531 : f32 = u_xlat14.x;
  let x_533 : f32 = u_xlat14.x;
  u_xlat1.x = (x_531 * x_533);
  let x_536 : f32 = u_xlat28;
  u_xlat28 = (x_536 + 1.0f);
  let x_538 : f32 = u_xlat28;
  u_xlat28 = min(x_538, 1.0f);
  let x_542 : f32 = u_xlat14.x;
  u_xlat44 = ((x_542 * 4.0f) + 2.0f);
  let x_548 : f32 = u_xlat0.w;
  u_xlat42 = min(x_548, 1.0f);
  let x_553 : vec4<f32> = vs_INTERP3;
  let x_554 : vec2<f32> = vec2<f32>(x_553.x, x_553.y);
  let x_556 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_554.x, x_554.y, x_556);
  let x_569 : vec3<f32> = txVec0;
  let x_571 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_569.xy, x_569.z);
  u_xlat45 = x_571;
  let x_583 : f32 = x_580.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_583) + 1.0f);
  let x_586 : f32 = u_xlat45;
  let x_588 : f32 = x_580.x_MainLightShadowParams.x;
  let x_590 : f32 = u_xlat46;
  u_xlat45 = ((x_586 * x_588) + x_590);
  let x_594 : f32 = vs_INTERP3.z;
  u_xlatb46 = (0.0f >= x_594);
  let x_598 : f32 = vs_INTERP3.z;
  u_xlatb47 = (x_598 >= 1.0f);
  let x_600 : bool = u_xlatb46;
  let x_601 : bool = u_xlatb47;
  u_xlatb46 = (x_600 | x_601);
  let x_603 : bool = u_xlatb46;
  let x_604 : f32 = u_xlat45;
  u_xlat45 = select(x_604, 1.0f, x_603);
  let x_606 : vec3<f32> = vs_INTERP7;
  let x_608 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_610 : vec3<f32> = (x_606 + -(x_608));
  let x_611 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat6;
  let x_615 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_613.x, x_613.y, x_613.z), vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_619 : f32 = u_xlat46;
  let x_621 : f32 = x_580.x_MainLightShadowParams.z;
  let x_624 : f32 = x_580.x_MainLightShadowParams.w;
  u_xlat47 = ((x_619 * x_621) + x_624);
  let x_626 : f32 = u_xlat47;
  u_xlat47 = clamp(x_626, 0.0f, 1.0f);
  let x_628 : f32 = u_xlat45;
  u_xlat6.x = (-(x_628) + 1.0f);
  let x_632 : f32 = u_xlat47;
  let x_634 : f32 = u_xlat6.x;
  let x_636 : f32 = u_xlat45;
  u_xlat45 = ((x_632 * x_634) + x_636);
  let x_645 : f32 = x_643.x_MainLightCookieTextureFormat;
  u_xlatb47 = !((x_645 == -1.0f));
  let x_647 : bool = u_xlatb47;
  if (x_647) {
    let x_650 : vec3<f32> = vs_INTERP7;
    let x_653 : vec4<f32> = x_643.x_MainLightWorldToLight[1i];
    let x_655 : vec2<f32> = (vec2<f32>(x_650.y, x_650.y) * vec2<f32>(x_653.x, x_653.y));
    let x_656 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
    let x_659 : vec4<f32> = x_643.x_MainLightWorldToLight[0i];
    let x_661 : vec3<f32> = vs_INTERP7;
    let x_664 : vec4<f32> = u_xlat6;
    let x_666 : vec2<f32> = ((vec2<f32>(x_659.x, x_659.y) * vec2<f32>(x_661.x, x_661.x)) + vec2<f32>(x_664.x, x_664.y));
    let x_667 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
    let x_670 : vec4<f32> = x_643.x_MainLightWorldToLight[2i];
    let x_672 : vec3<f32> = vs_INTERP7;
    let x_675 : vec4<f32> = u_xlat6;
    let x_677 : vec2<f32> = ((vec2<f32>(x_670.x, x_670.y) * vec2<f32>(x_672.z, x_672.z)) + vec2<f32>(x_675.x, x_675.y));
    let x_678 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_677.x, x_677.y, x_678.z, x_678.w);
    let x_680 : vec4<f32> = u_xlat6;
    let x_683 : vec4<f32> = x_643.x_MainLightWorldToLight[3i];
    let x_685 : vec2<f32> = (vec2<f32>(x_680.x, x_680.y) + vec2<f32>(x_683.x, x_683.y));
    let x_686 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_685.x, x_685.y, x_686.z, x_686.w);
    let x_688 : vec4<f32> = u_xlat6;
    let x_692 : vec2<f32> = ((vec2<f32>(x_688.x, x_688.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_693 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
    let x_700 : vec4<f32> = u_xlat6;
    let x_703 : f32 = x_29.x_GlobalMipBias.x;
    let x_704 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_700.x, x_700.y), x_703);
    u_xlat6 = x_704;
    let x_709 : f32 = x_643.x_MainLightCookieTextureFormat;
    let x_711 : f32 = x_643.x_MainLightCookieTextureFormat;
    let x_713 : f32 = x_643.x_MainLightCookieTextureFormat;
    let x_715 : f32 = x_643.x_MainLightCookieTextureFormat;
    let x_716 : vec4<f32> = vec4<f32>(x_709, x_711, x_713, x_715);
    let x_723 : vec4<bool> = (vec4<f32>(x_716.x, x_716.y, x_716.z, x_716.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_723.x, x_723.y);
    let x_726 : bool = u_xlatb7.y;
    if (x_726) {
      let x_731 : f32 = u_xlat6.w;
      x_727 = x_731;
    } else {
      let x_734 : f32 = u_xlat6.x;
      x_727 = x_734;
    }
    let x_735 : f32 = x_727;
    u_xlat47 = x_735;
    let x_737 : bool = u_xlatb7.x;
    if (x_737) {
      let x_741 : vec4<f32> = u_xlat6;
      x_738 = vec3<f32>(x_741.x, x_741.y, x_741.z);
    } else {
      let x_744 : f32 = u_xlat47;
      x_738 = vec3<f32>(x_744, x_744, x_744);
    }
    let x_746 : vec3<f32> = x_738;
    let x_747 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_753 : vec4<f32> = u_xlat6;
  let x_756 : vec4<f32> = x_29.x_MainLightColor;
  let x_758 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : vec3<f32> = u_xlat4;
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat47 = dot(-(x_761), vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : f32 = u_xlat47;
  let x_767 : f32 = u_xlat47;
  u_xlat47 = (x_766 + x_767);
  let x_769 : vec4<f32> = u_xlat3;
  let x_771 : f32 = u_xlat47;
  let x_775 : vec3<f32> = u_xlat4;
  let x_777 : vec3<f32> = ((vec3<f32>(x_769.x, x_769.y, x_769.z) * -(vec3<f32>(x_771, x_771, x_771))) + -(x_775));
  let x_778 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_780 : vec4<f32> = u_xlat3;
  let x_782 : vec3<f32> = u_xlat4;
  u_xlat47 = dot(vec3<f32>(x_780.x, x_780.y, x_780.z), x_782);
  let x_784 : f32 = u_xlat47;
  u_xlat47 = clamp(x_784, 0.0f, 1.0f);
  let x_786 : f32 = u_xlat47;
  u_xlat47 = (-(x_786) + 1.0f);
  let x_789 : f32 = u_xlat47;
  let x_790 : f32 = u_xlat47;
  u_xlat47 = (x_789 * x_790);
  let x_792 : f32 = u_xlat47;
  let x_793 : f32 = u_xlat47;
  u_xlat47 = (x_792 * x_793);
  let x_797 : f32 = u_xlat0.x;
  u_xlat48 = ((-(x_797) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_804 : f32 = u_xlat0.x;
  let x_805 : f32 = u_xlat48;
  u_xlat0.x = (x_804 * x_805);
  let x_809 : f32 = u_xlat0.x;
  u_xlat0.x = (x_809 * 6.0f);
  let x_821 : vec4<f32> = u_xlat7;
  let x_824 : f32 = u_xlat0.x;
  let x_825 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_821.x, x_821.y, x_821.z), x_824);
  u_xlat7 = x_825;
  let x_827 : f32 = u_xlat7.w;
  u_xlat0.x = (x_827 + -1.0f);
  let x_831 : f32 = x_271.unity_SpecCube0_HDR.w;
  let x_833 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_831 * x_833) + 1.0f);
  let x_838 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_838, 0.0f);
  let x_842 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_842);
  let x_846 : f32 = u_xlat0.x;
  let x_848 : f32 = x_271.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_846 * x_848);
  let x_852 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_852);
  let x_856 : f32 = u_xlat0.x;
  let x_858 : f32 = x_271.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_856 * x_858);
  let x_861 : vec4<f32> = u_xlat7;
  let x_863 : vec4<f32> = u_xlat0;
  let x_865 : vec3<f32> = (vec3<f32>(x_861.x, x_861.y, x_861.z) * vec3<f32>(x_863.x, x_863.x, x_863.x));
  let x_866 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec2<f32> = u_xlat14;
  let x_870 : vec2<f32> = u_xlat14;
  let x_874 : vec2<f32> = ((vec2<f32>(x_868.x, x_868.x) * vec2<f32>(x_870.x, x_870.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_875 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_874.x, x_874.y, x_875.z, x_875.w);
  let x_878 : f32 = u_xlat0.y;
  u_xlat14.x = (1.0f / x_878);
  let x_882 : vec3<f32> = u_xlat2;
  let x_884 : f32 = u_xlat28;
  u_xlat8 = (-(x_882) + vec3<f32>(x_884, x_884, x_884));
  let x_887 : f32 = u_xlat47;
  let x_889 : vec3<f32> = u_xlat8;
  let x_891 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_887, x_887, x_887) * x_889) + x_891);
  let x_893 : vec2<f32> = u_xlat14;
  let x_895 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_893.x, x_893.x, x_893.x) * x_895);
  let x_897 : vec4<f32> = u_xlat7;
  let x_899 : vec3<f32> = u_xlat8;
  let x_900 : vec3<f32> = (vec3<f32>(x_897.x, x_897.y, x_897.z) * x_899);
  let x_901 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  let x_903 : vec3<f32> = u_xlat15;
  let x_904 : vec3<f32> = u_xlat5;
  let x_906 : vec4<f32> = u_xlat7;
  u_xlat15 = ((x_903 * x_904) + vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : f32 = u_xlat45;
  let x_911 : f32 = x_271.unity_LightData.z;
  u_xlat14.x = (x_909 * x_911);
  let x_914 : vec4<f32> = u_xlat3;
  let x_917 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_914.x, x_914.y, x_914.z), vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_920 : f32 = u_xlat28;
  u_xlat28 = clamp(x_920, 0.0f, 1.0f);
  let x_922 : f32 = u_xlat28;
  let x_924 : f32 = u_xlat14.x;
  u_xlat14.x = (x_922 * x_924);
  let x_927 : vec2<f32> = u_xlat14;
  let x_929 : vec4<f32> = u_xlat6;
  let x_931 : vec3<f32> = (vec3<f32>(x_927.x, x_927.x, x_927.x) * vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_934 : vec3<f32> = u_xlat4;
  let x_936 : vec4<f32> = x_29.x_MainLightPosition;
  let x_938 : vec3<f32> = (x_934 + vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_941 : vec4<f32> = u_xlat7;
  let x_943 : vec4<f32> = u_xlat7;
  u_xlat14.x = dot(vec3<f32>(x_941.x, x_941.y, x_941.z), vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_948 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_948, 1.17549435e-38f);
  let x_953 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_953);
  let x_956 : vec2<f32> = u_xlat14;
  let x_958 : vec4<f32> = u_xlat7;
  let x_960 : vec3<f32> = (vec3<f32>(x_956.x, x_956.x, x_956.x) * vec3<f32>(x_958.x, x_958.y, x_958.z));
  let x_961 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
  let x_963 : vec4<f32> = u_xlat3;
  let x_965 : vec4<f32> = u_xlat7;
  u_xlat14.x = dot(vec3<f32>(x_963.x, x_963.y, x_963.z), vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_970 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_970, 0.0f, 1.0f);
  let x_974 : vec4<f32> = x_29.x_MainLightPosition;
  let x_976 : vec4<f32> = u_xlat7;
  u_xlat14.y = dot(vec3<f32>(x_974.x, x_974.y, x_974.z), vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_981 : f32 = u_xlat14.y;
  u_xlat14.y = clamp(x_981, 0.0f, 1.0f);
  let x_984 : vec2<f32> = u_xlat14;
  let x_985 : vec2<f32> = u_xlat14;
  u_xlat14 = (x_984 * x_985);
  let x_988 : f32 = u_xlat14.x;
  let x_990 : f32 = u_xlat0.x;
  u_xlat14.x = ((x_988 * x_990) + 1.00001001358032226562f);
  let x_996 : f32 = u_xlat14.x;
  let x_998 : f32 = u_xlat14.x;
  u_xlat14.x = (x_996 * x_998);
  let x_1002 : f32 = u_xlat14.y;
  u_xlat28 = max(x_1002, 0.10000000149011611938f);
  let x_1005 : f32 = u_xlat28;
  let x_1007 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1005 * x_1007);
  let x_1010 : f32 = u_xlat44;
  let x_1012 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1010 * x_1012);
  let x_1016 : f32 = u_xlat1.x;
  let x_1018 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1016 / x_1018);
  let x_1021 : vec3<f32> = u_xlat2;
  let x_1022 : vec2<f32> = u_xlat14;
  let x_1025 : vec3<f32> = u_xlat5;
  let x_1026 : vec3<f32> = ((x_1021 * vec3<f32>(x_1022.x, x_1022.x, x_1022.x)) + x_1025);
  let x_1027 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  let x_1029 : vec4<f32> = u_xlat6;
  let x_1031 : vec4<f32> = u_xlat7;
  let x_1033 : vec3<f32> = (vec3<f32>(x_1029.x, x_1029.y, x_1029.z) * vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
  let x_1034 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
  let x_1037 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1039 : f32 = x_271.unity_LightData.y;
  u_xlat14.x = min(x_1037, x_1039);
  let x_1045 : f32 = u_xlat14.x;
  u_xlatu14 = bitcast<u32>(i32(x_1045));
  let x_1048 : f32 = u_xlat46;
  let x_1051 : f32 = x_580.x_AdditionalShadowFadeParams.x;
  let x_1054 : f32 = x_580.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1048 * x_1051) + x_1054);
  let x_1056 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1056, 0.0f, 1.0f);
  let x_1059 : f32 = x_643.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1061 : f32 = x_643.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1063 : f32 = x_643.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1065 : f32 = x_643.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1066 : vec4<f32> = vec4<f32>(x_1059, x_1061, x_1063, x_1065);
  let x_1072 : vec4<bool> = (vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1066.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1072.x, x_1072.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1084 : u32 = u_xlatu_loop_1;
    let x_1085 : u32 = u_xlatu14;
    if ((x_1084 < x_1085)) {
    } else {
      break;
    }
    let x_1088 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1088 >> 2u);
    let x_1092 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1092 & 3u));
    let x_1095 : u32 = u_xlatu46;
    let x_1098 : vec4<f32> = x_271.unity_LightIndices[bitcast<i32>(x_1095)];
    let x_1108 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1113 : vec4<u32> = indexable[x_1108];
    u_xlat46 = dot(x_1098, bitcast<vec4<f32>>(x_1113));
    let x_1117 : f32 = u_xlat46;
    u_xlati46 = i32(x_1117);
    let x_1120 : vec3<f32> = vs_INTERP7;
    let x_1131 : i32 = u_xlati46;
    let x_1133 : vec4<f32> = x_1130.x_AdditionalLightsPosition[x_1131];
    let x_1136 : i32 = u_xlati46;
    let x_1138 : vec4<f32> = x_1130.x_AdditionalLightsPosition[x_1136];
    u_xlat9 = ((-(x_1120) * vec3<f32>(x_1133.w, x_1133.w, x_1133.w)) + vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
    let x_1141 : vec3<f32> = u_xlat9;
    let x_1142 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1141, x_1142);
    let x_1144 : f32 = u_xlat47;
    u_xlat47 = max(x_1144, 0.00006103515625f);
    let x_1147 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1147);
    let x_1150 : f32 = u_xlat48;
    let x_1152 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1150, x_1150, x_1150) * x_1152);
    let x_1155 : f32 = u_xlat47;
    u_xlat35 = (1.0f / x_1155);
    let x_1157 : f32 = u_xlat47;
    let x_1158 : i32 = u_xlati46;
    let x_1160 : f32 = x_1130.x_AdditionalLightsAttenuation[x_1158].x;
    u_xlat47 = (x_1157 * x_1160);
    let x_1162 : f32 = u_xlat47;
    let x_1164 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1162) * x_1164) + 1.0f);
    let x_1167 : f32 = u_xlat47;
    u_xlat47 = max(x_1167, 0.0f);
    let x_1169 : f32 = u_xlat47;
    let x_1170 : f32 = u_xlat47;
    u_xlat47 = (x_1169 * x_1170);
    let x_1172 : f32 = u_xlat47;
    let x_1173 : f32 = u_xlat35;
    u_xlat47 = (x_1172 * x_1173);
    let x_1175 : i32 = u_xlati46;
    let x_1177 : vec4<f32> = x_1130.x_AdditionalLightsSpotDir[x_1175];
    let x_1179 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_1177.x, x_1177.y, x_1177.z), x_1179);
    let x_1181 : f32 = u_xlat35;
    let x_1182 : i32 = u_xlati46;
    let x_1184 : f32 = x_1130.x_AdditionalLightsAttenuation[x_1182].z;
    let x_1186 : i32 = u_xlati46;
    let x_1188 : f32 = x_1130.x_AdditionalLightsAttenuation[x_1186].w;
    u_xlat35 = ((x_1181 * x_1184) + x_1188);
    let x_1190 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1190, 0.0f, 1.0f);
    let x_1192 : f32 = u_xlat35;
    let x_1193 : f32 = u_xlat35;
    u_xlat35 = (x_1192 * x_1193);
    let x_1195 : f32 = u_xlat47;
    let x_1196 : f32 = u_xlat35;
    u_xlat47 = (x_1195 * x_1196);
    let x_1200 : i32 = u_xlati46;
    let x_1202 : f32 = x_580.x_AdditionalShadowParams[x_1200].w;
    u_xlati35 = i32(x_1202);
    let x_1205 : i32 = u_xlati35;
    u_xlatb49 = (x_1205 >= 0i);
    let x_1207 : bool = u_xlatb49;
    if (x_1207) {
      let x_1211 : i32 = u_xlati46;
      let x_1213 : f32 = x_580.x_AdditionalShadowParams[x_1211].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1213, x_1213, x_1213, x_1213))));
      let x_1217 : bool = u_xlatb49;
      if (x_1217) {
        let x_1222 : vec3<f32> = u_xlat10;
        let x_1225 : vec3<f32> = u_xlat10;
        let x_1228 : vec4<bool> = (abs(vec4<f32>(x_1222.z, x_1222.z, x_1222.y, x_1222.z)) >= abs(vec4<f32>(x_1225.x, x_1225.y, x_1225.x, x_1225.x)));
        let x_1229 : vec3<bool> = vec3<bool>(x_1228.x, x_1228.y, x_1228.z);
        let x_1230 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
        let x_1233 : bool = u_xlatb11.y;
        let x_1235 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1233 & x_1235);
        let x_1237 : vec3<f32> = u_xlat10;
        let x_1240 : vec4<bool> = (-(vec4<f32>(x_1237.z, x_1237.y, x_1237.z, x_1237.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1241 : vec3<bool> = vec3<bool>(x_1240.x, x_1240.y, x_1240.w);
        let x_1242 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1241.x, x_1241.y, x_1242.z, x_1241.z);
        let x_1246 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1246);
        let x_1251 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1251);
        let x_1257 : bool = u_xlatb11.w;
        u_xlat50 = select(0.0f, 1.0f, x_1257);
        let x_1260 : bool = u_xlatb11.z;
        if (x_1260) {
          let x_1265 : f32 = u_xlat11.y;
          x_1261 = x_1265;
        } else {
          let x_1267 : f32 = u_xlat50;
          x_1261 = x_1267;
        }
        let x_1268 : f32 = x_1261;
        u_xlat50 = x_1268;
        let x_1270 : bool = u_xlatb49;
        if (x_1270) {
          let x_1275 : f32 = u_xlat11.x;
          x_1271 = x_1275;
        } else {
          let x_1277 : f32 = u_xlat50;
          x_1271 = x_1277;
        }
        let x_1278 : f32 = x_1271;
        u_xlat49 = x_1278;
        let x_1279 : i32 = u_xlati46;
        let x_1281 : f32 = x_580.x_AdditionalShadowParams[x_1279].w;
        u_xlat50 = trunc(x_1281);
        let x_1283 : f32 = u_xlat49;
        let x_1284 : f32 = u_xlat50;
        u_xlat49 = (x_1283 + x_1284);
        let x_1286 : f32 = u_xlat49;
        u_xlati35 = i32(x_1286);
      }
      let x_1288 : i32 = u_xlati35;
      u_xlati35 = (x_1288 << bitcast<u32>(2i));
      let x_1290 : vec3<f32> = vs_INTERP7;
      let x_1293 : i32 = u_xlati35;
      let x_1296 : i32 = u_xlati35;
      let x_1300 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[((x_1293 + 1i) / 4i)][((x_1296 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1290.y, x_1290.y, x_1290.y, x_1290.y) * x_1300);
      let x_1302 : i32 = u_xlati35;
      let x_1304 : i32 = u_xlati35;
      let x_1307 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[(x_1302 / 4i)][(x_1304 % 4i)];
      let x_1308 : vec3<f32> = vs_INTERP7;
      let x_1311 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1307 * vec4<f32>(x_1308.x, x_1308.x, x_1308.x, x_1308.x)) + x_1311);
      let x_1313 : i32 = u_xlati35;
      let x_1316 : i32 = u_xlati35;
      let x_1320 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[((x_1313 + 2i) / 4i)][((x_1316 + 2i) % 4i)];
      let x_1321 : vec3<f32> = vs_INTERP7;
      let x_1324 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1320 * vec4<f32>(x_1321.z, x_1321.z, x_1321.z, x_1321.z)) + x_1324);
      let x_1326 : vec4<f32> = u_xlat11;
      let x_1327 : i32 = u_xlati35;
      let x_1330 : i32 = u_xlati35;
      let x_1334 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[((x_1327 + 3i) / 4i)][((x_1330 + 3i) % 4i)];
      u_xlat11 = (x_1326 + x_1334);
      let x_1336 : vec4<f32> = u_xlat11;
      let x_1338 : vec4<f32> = u_xlat11;
      let x_1340 : vec3<f32> = (vec3<f32>(x_1336.x, x_1336.y, x_1336.z) / vec3<f32>(x_1338.w, x_1338.w, x_1338.w));
      let x_1341 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1341.w);
      let x_1344 : vec4<f32> = u_xlat11;
      let x_1345 : vec2<f32> = vec2<f32>(x_1344.x, x_1344.y);
      let x_1347 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
      let x_1355 : vec3<f32> = txVec1;
      let x_1357 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1355.xy, x_1355.z);
      u_xlat35 = x_1357;
      let x_1358 : i32 = u_xlati46;
      let x_1360 : f32 = x_580.x_AdditionalShadowParams[x_1358].x;
      u_xlat49 = (1.0f + -(x_1360));
      let x_1363 : f32 = u_xlat35;
      let x_1364 : i32 = u_xlati46;
      let x_1366 : f32 = x_580.x_AdditionalShadowParams[x_1364].x;
      let x_1368 : f32 = u_xlat49;
      u_xlat35 = ((x_1363 * x_1366) + x_1368);
      let x_1371 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_1371);
      let x_1375 : f32 = u_xlat11.z;
      u_xlatb50 = (x_1375 >= 1.0f);
      let x_1377 : bool = u_xlatb49;
      let x_1378 : bool = u_xlatb50;
      u_xlatb49 = (x_1377 | x_1378);
      let x_1380 : bool = u_xlatb49;
      let x_1381 : f32 = u_xlat35;
      u_xlat35 = select(x_1381, 1.0f, x_1380);
    } else {
      u_xlat35 = 1.0f;
    }
    let x_1384 : f32 = u_xlat35;
    u_xlat49 = (-(x_1384) + 1.0f);
    let x_1387 : f32 = u_xlat28;
    let x_1388 : f32 = u_xlat49;
    let x_1390 : f32 = u_xlat35;
    u_xlat35 = ((x_1387 * x_1388) + x_1390);
    let x_1393 : i32 = u_xlati46;
    u_xlati49 = (1i << bitcast<u32>((x_1393 & 31i)));
    let x_1397 : i32 = u_xlati49;
    let x_1400 : f32 = x_643.x_AdditionalLightsCookieEnableBits;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1397) & bitcast<u32>(x_1400)));
    let x_1404 : i32 = u_xlati49;
    if ((x_1404 != 0i)) {
      let x_1408 : i32 = u_xlati46;
      let x_1410 : f32 = x_643.x_AdditionalLightsLightTypes[x_1408].el;
      u_xlati49 = i32(x_1410);
      let x_1413 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1413 != 0i));
      let x_1417 : i32 = u_xlati46;
      u_xlati51 = (x_1417 << bitcast<u32>(2i));
      let x_1419 : i32 = u_xlati50;
      if ((x_1419 != 0i)) {
        let x_1423 : vec3<f32> = vs_INTERP7;
        let x_1425 : i32 = u_xlati51;
        let x_1428 : i32 = u_xlati51;
        let x_1432 : vec4<f32> = x_643.x_AdditionalLightsWorldToLights[((x_1425 + 1i) / 4i)][((x_1428 + 1i) % 4i)];
        let x_1434 : vec3<f32> = (vec3<f32>(x_1423.y, x_1423.y, x_1423.y) * vec3<f32>(x_1432.x, x_1432.y, x_1432.w));
        let x_1435 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1435.w);
        let x_1437 : i32 = u_xlati51;
        let x_1439 : i32 = u_xlati51;
        let x_1442 : vec4<f32> = x_643.x_AdditionalLightsWorldToLights[(x_1437 / 4i)][(x_1439 % 4i)];
        let x_1444 : vec3<f32> = vs_INTERP7;
        let x_1447 : vec4<f32> = u_xlat11;
        let x_1449 : vec3<f32> = ((vec3<f32>(x_1442.x, x_1442.y, x_1442.w) * vec3<f32>(x_1444.x, x_1444.x, x_1444.x)) + vec3<f32>(x_1447.x, x_1447.y, x_1447.z));
        let x_1450 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
        let x_1452 : i32 = u_xlati51;
        let x_1455 : i32 = u_xlati51;
        let x_1459 : vec4<f32> = x_643.x_AdditionalLightsWorldToLights[((x_1452 + 2i) / 4i)][((x_1455 + 2i) % 4i)];
        let x_1461 : vec3<f32> = vs_INTERP7;
        let x_1464 : vec4<f32> = u_xlat11;
        let x_1466 : vec3<f32> = ((vec3<f32>(x_1459.x, x_1459.y, x_1459.w) * vec3<f32>(x_1461.z, x_1461.z, x_1461.z)) + vec3<f32>(x_1464.x, x_1464.y, x_1464.z));
        let x_1467 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1467.w);
        let x_1469 : vec4<f32> = u_xlat11;
        let x_1471 : i32 = u_xlati51;
        let x_1474 : i32 = u_xlati51;
        let x_1478 : vec4<f32> = x_643.x_AdditionalLightsWorldToLights[((x_1471 + 3i) / 4i)][((x_1474 + 3i) % 4i)];
        let x_1480 : vec3<f32> = (vec3<f32>(x_1469.x, x_1469.y, x_1469.z) + vec3<f32>(x_1478.x, x_1478.y, x_1478.w));
        let x_1481 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1481.w);
        let x_1483 : vec4<f32> = u_xlat11;
        let x_1485 : vec4<f32> = u_xlat11;
        let x_1487 : vec2<f32> = (vec2<f32>(x_1483.x, x_1483.y) / vec2<f32>(x_1485.z, x_1485.z));
        let x_1488 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1487.x, x_1487.y, x_1488.z, x_1488.w);
        let x_1490 : vec4<f32> = u_xlat11;
        let x_1493 : vec2<f32> = ((vec2<f32>(x_1490.x, x_1490.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1494 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1493.x, x_1493.y, x_1494.z, x_1494.w);
        let x_1496 : vec4<f32> = u_xlat11;
        let x_1500 : vec2<f32> = clamp(vec2<f32>(x_1496.x, x_1496.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1501 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1500.x, x_1500.y, x_1501.z, x_1501.w);
        let x_1503 : i32 = u_xlati46;
        let x_1505 : vec4<f32> = x_643.x_AdditionalLightsCookieAtlasUVRects[x_1503];
        let x_1507 : vec4<f32> = u_xlat11;
        let x_1510 : i32 = u_xlati46;
        let x_1512 : vec4<f32> = x_643.x_AdditionalLightsCookieAtlasUVRects[x_1510];
        let x_1514 : vec2<f32> = ((vec2<f32>(x_1505.x, x_1505.y) * vec2<f32>(x_1507.x, x_1507.y)) + vec2<f32>(x_1512.z, x_1512.w));
        let x_1515 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1514.x, x_1514.y, x_1515.z, x_1515.w);
      } else {
        let x_1518 : i32 = u_xlati49;
        u_xlatb49 = (x_1518 == 1i);
        let x_1520 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1520);
        let x_1522 : i32 = u_xlati49;
        if ((x_1522 != 0i)) {
          let x_1527 : vec3<f32> = vs_INTERP7;
          let x_1529 : i32 = u_xlati51;
          let x_1532 : i32 = u_xlati51;
          let x_1536 : vec4<f32> = x_643.x_AdditionalLightsWorldToLights[((x_1529 + 1i) / 4i)][((x_1532 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1527.y, x_1527.y) * vec2<f32>(x_1536.x, x_1536.y));
          let x_1539 : i32 = u_xlati51;
          let x_1541 : i32 = u_xlati51;
          let x_1544 : vec4<f32> = x_643.x_AdditionalLightsWorldToLights[(x_1539 / 4i)][(x_1541 % 4i)];
          let x_1546 : vec3<f32> = vs_INTERP7;
          let x_1549 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1544.x, x_1544.y) * vec2<f32>(x_1546.x, x_1546.x)) + x_1549);
          let x_1551 : i32 = u_xlati51;
          let x_1554 : i32 = u_xlati51;
          let x_1558 : vec4<f32> = x_643.x_AdditionalLightsWorldToLights[((x_1551 + 2i) / 4i)][((x_1554 + 2i) % 4i)];
          let x_1560 : vec3<f32> = vs_INTERP7;
          let x_1563 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1558.x, x_1558.y) * vec2<f32>(x_1560.z, x_1560.z)) + x_1563);
          let x_1565 : vec2<f32> = u_xlat39;
          let x_1566 : i32 = u_xlati51;
          let x_1569 : i32 = u_xlati51;
          let x_1573 : vec4<f32> = x_643.x_AdditionalLightsWorldToLights[((x_1566 + 3i) / 4i)][((x_1569 + 3i) % 4i)];
          u_xlat39 = (x_1565 + vec2<f32>(x_1573.x, x_1573.y));
          let x_1576 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1576 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1579 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1579);
          let x_1581 : i32 = u_xlati46;
          let x_1583 : vec4<f32> = x_643.x_AdditionalLightsCookieAtlasUVRects[x_1581];
          let x_1585 : vec2<f32> = u_xlat39;
          let x_1587 : i32 = u_xlati46;
          let x_1589 : vec4<f32> = x_643.x_AdditionalLightsCookieAtlasUVRects[x_1587];
          let x_1591 : vec2<f32> = ((vec2<f32>(x_1583.x, x_1583.y) * x_1585) + vec2<f32>(x_1589.z, x_1589.w));
          let x_1592 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1591.x, x_1591.y, x_1592.z, x_1592.w);
        } else {
          let x_1596 : vec3<f32> = vs_INTERP7;
          let x_1598 : i32 = u_xlati51;
          let x_1601 : i32 = u_xlati51;
          let x_1605 : vec4<f32> = x_643.x_AdditionalLightsWorldToLights[((x_1598 + 1i) / 4i)][((x_1601 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1596.y, x_1596.y, x_1596.y, x_1596.y) * x_1605);
          let x_1607 : i32 = u_xlati51;
          let x_1609 : i32 = u_xlati51;
          let x_1612 : vec4<f32> = x_643.x_AdditionalLightsWorldToLights[(x_1607 / 4i)][(x_1609 % 4i)];
          let x_1613 : vec3<f32> = vs_INTERP7;
          let x_1616 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1612 * vec4<f32>(x_1613.x, x_1613.x, x_1613.x, x_1613.x)) + x_1616);
          let x_1618 : i32 = u_xlati51;
          let x_1621 : i32 = u_xlati51;
          let x_1625 : vec4<f32> = x_643.x_AdditionalLightsWorldToLights[((x_1618 + 2i) / 4i)][((x_1621 + 2i) % 4i)];
          let x_1626 : vec3<f32> = vs_INTERP7;
          let x_1629 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1625 * vec4<f32>(x_1626.z, x_1626.z, x_1626.z, x_1626.z)) + x_1629);
          let x_1631 : vec4<f32> = u_xlat12;
          let x_1632 : i32 = u_xlati51;
          let x_1635 : i32 = u_xlati51;
          let x_1639 : vec4<f32> = x_643.x_AdditionalLightsWorldToLights[((x_1632 + 3i) / 4i)][((x_1635 + 3i) % 4i)];
          u_xlat12 = (x_1631 + x_1639);
          let x_1641 : vec4<f32> = u_xlat12;
          let x_1643 : vec4<f32> = u_xlat12;
          let x_1645 : vec3<f32> = (vec3<f32>(x_1641.x, x_1641.y, x_1641.z) / vec3<f32>(x_1643.w, x_1643.w, x_1643.w));
          let x_1646 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1645.x, x_1645.y, x_1645.z, x_1646.w);
          let x_1648 : vec4<f32> = u_xlat12;
          let x_1650 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1648.x, x_1648.y, x_1648.z), vec3<f32>(x_1650.x, x_1650.y, x_1650.z));
          let x_1653 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1653);
          let x_1655 : f32 = u_xlat49;
          let x_1657 : vec4<f32> = u_xlat12;
          let x_1659 : vec3<f32> = (vec3<f32>(x_1655, x_1655, x_1655) * vec3<f32>(x_1657.x, x_1657.y, x_1657.z));
          let x_1660 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1659.x, x_1659.y, x_1659.z, x_1660.w);
          let x_1662 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1662.x, x_1662.y, x_1662.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1666 : f32 = u_xlat49;
          u_xlat49 = max(x_1666, 0.00000099999999747524f);
          let x_1669 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1669);
          let x_1672 : f32 = u_xlat49;
          let x_1674 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1672, x_1672, x_1672) * vec3<f32>(x_1674.z, x_1674.x, x_1674.y));
          let x_1678 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1678);
          let x_1682 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1682, 0.0f, 1.0f);
          let x_1686 : vec3<f32> = u_xlat13;
          let x_1688 : vec4<bool> = (vec4<f32>(x_1686.y, x_1686.z, x_1686.y, x_1686.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1688.x, x_1688.y);
          let x_1691 : bool = u_xlatb39.x;
          if (x_1691) {
            let x_1696 : f32 = u_xlat13.x;
            x_1692 = x_1696;
          } else {
            let x_1699 : f32 = u_xlat13.x;
            x_1692 = -(x_1699);
          }
          let x_1701 : f32 = x_1692;
          u_xlat39.x = x_1701;
          let x_1704 : bool = u_xlatb39.y;
          if (x_1704) {
            let x_1709 : f32 = u_xlat13.x;
            x_1705 = x_1709;
          } else {
            let x_1712 : f32 = u_xlat13.x;
            x_1705 = -(x_1712);
          }
          let x_1714 : f32 = x_1705;
          u_xlat39.y = x_1714;
          let x_1716 : vec4<f32> = u_xlat12;
          let x_1718 : f32 = u_xlat49;
          let x_1721 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1716.x, x_1716.y) * vec2<f32>(x_1718, x_1718)) + x_1721);
          let x_1723 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1723 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1726 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1726, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1730 : i32 = u_xlati46;
          let x_1732 : vec4<f32> = x_643.x_AdditionalLightsCookieAtlasUVRects[x_1730];
          let x_1734 : vec2<f32> = u_xlat39;
          let x_1736 : i32 = u_xlati46;
          let x_1738 : vec4<f32> = x_643.x_AdditionalLightsCookieAtlasUVRects[x_1736];
          let x_1740 : vec2<f32> = ((vec2<f32>(x_1732.x, x_1732.y) * x_1734) + vec2<f32>(x_1738.z, x_1738.w));
          let x_1741 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1740.x, x_1740.y, x_1741.z, x_1741.w);
        }
      }
      let x_1748 : vec4<f32> = u_xlat11;
      let x_1750 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1748.x, x_1748.y), 0.0f);
      u_xlat11 = x_1750;
      let x_1752 : bool = u_xlatb7.y;
      if (x_1752) {
        let x_1757 : f32 = u_xlat11.w;
        x_1753 = x_1757;
      } else {
        let x_1760 : f32 = u_xlat11.x;
        x_1753 = x_1760;
      }
      let x_1761 : f32 = x_1753;
      u_xlat49 = x_1761;
      let x_1763 : bool = u_xlatb7.x;
      if (x_1763) {
        let x_1767 : vec4<f32> = u_xlat11;
        x_1764 = vec3<f32>(x_1767.x, x_1767.y, x_1767.z);
      } else {
        let x_1770 : f32 = u_xlat49;
        x_1764 = vec3<f32>(x_1770, x_1770, x_1770);
      }
      let x_1772 : vec3<f32> = x_1764;
      let x_1773 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1773.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1779 : vec4<f32> = u_xlat11;
    let x_1781 : i32 = u_xlati46;
    let x_1783 : vec4<f32> = x_1130.x_AdditionalLightsColor[x_1781];
    let x_1785 : vec3<f32> = (vec3<f32>(x_1779.x, x_1779.y, x_1779.z) * vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
    let x_1786 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1785.x, x_1785.y, x_1785.z, x_1786.w);
    let x_1788 : f32 = u_xlat47;
    let x_1789 : f32 = u_xlat35;
    u_xlat46 = (x_1788 * x_1789);
    let x_1791 : vec4<f32> = u_xlat3;
    let x_1793 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1791.x, x_1791.y, x_1791.z), x_1793);
    let x_1795 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1795, 0.0f, 1.0f);
    let x_1797 : f32 = u_xlat46;
    let x_1798 : f32 = u_xlat47;
    u_xlat46 = (x_1797 * x_1798);
    let x_1800 : f32 = u_xlat46;
    let x_1802 : vec4<f32> = u_xlat11;
    let x_1804 : vec3<f32> = (vec3<f32>(x_1800, x_1800, x_1800) * vec3<f32>(x_1802.x, x_1802.y, x_1802.z));
    let x_1805 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1805.w);
    let x_1807 : vec3<f32> = u_xlat9;
    let x_1808 : f32 = u_xlat48;
    let x_1811 : vec3<f32> = u_xlat4;
    u_xlat9 = ((x_1807 * vec3<f32>(x_1808, x_1808, x_1808)) + x_1811);
    let x_1813 : vec3<f32> = u_xlat9;
    let x_1814 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1813, x_1814);
    let x_1816 : f32 = u_xlat46;
    u_xlat46 = max(x_1816, 1.17549435e-38f);
    let x_1818 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1818);
    let x_1820 : f32 = u_xlat46;
    let x_1822 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1820, x_1820, x_1820) * x_1822);
    let x_1824 : vec4<f32> = u_xlat3;
    let x_1826 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1824.x, x_1824.y, x_1824.z), x_1826);
    let x_1828 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1828, 0.0f, 1.0f);
    let x_1830 : vec3<f32> = u_xlat10;
    let x_1831 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1830, x_1831);
    let x_1833 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1833, 0.0f, 1.0f);
    let x_1835 : f32 = u_xlat46;
    let x_1836 : f32 = u_xlat46;
    u_xlat46 = (x_1835 * x_1836);
    let x_1838 : f32 = u_xlat46;
    let x_1840 : f32 = u_xlat0.x;
    u_xlat46 = ((x_1838 * x_1840) + 1.00001001358032226562f);
    let x_1843 : f32 = u_xlat47;
    let x_1844 : f32 = u_xlat47;
    u_xlat47 = (x_1843 * x_1844);
    let x_1846 : f32 = u_xlat46;
    let x_1847 : f32 = u_xlat46;
    u_xlat46 = (x_1846 * x_1847);
    let x_1849 : f32 = u_xlat47;
    u_xlat47 = max(x_1849, 0.10000000149011611938f);
    let x_1851 : f32 = u_xlat46;
    let x_1852 : f32 = u_xlat47;
    u_xlat46 = (x_1851 * x_1852);
    let x_1854 : f32 = u_xlat44;
    let x_1855 : f32 = u_xlat46;
    u_xlat46 = (x_1854 * x_1855);
    let x_1858 : f32 = u_xlat1.x;
    let x_1859 : f32 = u_xlat46;
    u_xlat46 = (x_1858 / x_1859);
    let x_1861 : vec3<f32> = u_xlat2;
    let x_1862 : f32 = u_xlat46;
    let x_1865 : vec3<f32> = u_xlat5;
    u_xlat9 = ((x_1861 * vec3<f32>(x_1862, x_1862, x_1862)) + x_1865);
    let x_1867 : vec3<f32> = u_xlat9;
    let x_1868 : vec4<f32> = u_xlat11;
    let x_1871 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1867 * vec3<f32>(x_1868.x, x_1868.y, x_1868.z)) + x_1871);

    continuing {
      let x_1873 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1873 + bitcast<u32>(1i));
    }
  }
  let x_1875 : vec3<f32> = u_xlat15;
  let x_1876 : f32 = u_xlat42;
  let x_1879 : vec4<f32> = u_xlat6;
  let x_1881 : vec3<f32> = ((x_1875 * vec3<f32>(x_1876, x_1876, x_1876)) + vec3<f32>(x_1879.x, x_1879.y, x_1879.z));
  let x_1882 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1881.x, x_1881.y, x_1881.z, x_1882.w);
  let x_1886 : vec3<f32> = u_xlat8;
  let x_1887 : vec4<f32> = u_xlat0;
  let x_1889 : vec3<f32> = (x_1886 + vec3<f32>(x_1887.x, x_1887.y, x_1887.z));
  let x_1890 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1890.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


