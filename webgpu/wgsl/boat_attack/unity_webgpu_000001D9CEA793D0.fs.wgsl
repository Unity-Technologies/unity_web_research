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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(4) var x_MRLL : texture_2d<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_54 : UnityPerMaterial;

var<private> u_xlat23 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_BumpMap : texture_2d<f32>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlatb12 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_270 : UnityPerDraw;

var<private> u_xlat12 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb11 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat22 : f32;

@group(1) @binding(3) var<uniform> x_422 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu11 : u32;

var<private> u_xlati11 : i32;

var<private> u_xlat35 : f32;

var<private> u_xlat33 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb23 : bool;

var<private> u_xlatb34 : bool;

var<private> u_xlat34 : f32;

var<private> u_xlat36 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu37 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlat37 : f32;

var<private> u_xlati37 : i32;

@group(1) @binding(1) var<uniform> x_1172 : AdditionalLights;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlati40 : i32;

var<private> u_xlatb41 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat41 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb42 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatb37 : bool;

fn main_1() {
  var x_379 : f32;
  var x_391 : f32;
  var x_403 : f32;
  var txVec0 : vec3<f32>;
  var x_769 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1308 : f32;
  var x_1318 : f32;
  var txVec1 : vec3<f32>;
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
  u_xlat23 = (x_74 + x_77);
  let x_79 : f32 = u_xlat23;
  u_xlat23 = clamp(x_79, 0.0f, 1.0f);
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
  let x_172 : f32 = u_xlat23;
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
  u_xlat11 = ((vec2<f32>(x_220.x, x_220.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_228 : vec2<f32> = u_xlat11;
  let x_229 : vec2<f32> = u_xlat11;
  u_xlat23 = dot(x_228, x_229);
  let x_231 : f32 = u_xlat23;
  u_xlat23 = min(x_231, 1.0f);
  let x_233 : f32 = u_xlat23;
  u_xlat23 = (-(x_233) + 1.0f);
  let x_236 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_236);
  let x_238 : f32 = u_xlat23;
  u_xlat23 = max(x_238, 0.0000000000000001f);
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
  u_xlatb12.x = (0.0f < x_264);
  let x_272 : f32 = x_270.unity_WorldTransformParams.w;
  u_xlatb12.z = (x_272 >= 0.0f);
  let x_277 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_277);
  let x_281 : bool = u_xlatb12.z;
  u_xlat12.z = select(-1.0f, 1.0f, x_281);
  let x_285 : f32 = u_xlat12.z;
  let x_287 : f32 = u_xlat12.x;
  u_xlat12.x = (x_285 * x_287);
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
  let x_310 : vec3<f32> = u_xlat12;
  let x_312 : vec4<f32> = u_xlat3;
  let x_314 : vec3<f32> = (vec3<f32>(x_310.x, x_310.x, x_310.x) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec2<f32> = u_xlat11;
  let x_319 : vec4<f32> = u_xlat3;
  let x_321 : vec3<f32> = (vec3<f32>(x_317.y, x_317.y, x_317.y) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec2<f32> = u_xlat11;
  let x_326 : vec4<f32> = vs_INTERP4;
  let x_329 : vec4<f32> = u_xlat3;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.x, x_324.x) * vec3<f32>(x_326.x, x_326.y, x_326.z)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : f32 = u_xlat23;
  let x_336 : vec3<f32> = vs_INTERP8;
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat12 = ((vec3<f32>(x_334, x_334, x_334) * x_336) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec3<f32> = u_xlat12;
  let x_342 : vec3<f32> = u_xlat12;
  u_xlat11.x = dot(x_341, x_342);
  let x_346 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_346);
  let x_349 : vec2<f32> = u_xlat11;
  let x_351 : vec3<f32> = u_xlat12;
  let x_352 : vec3<f32> = (vec3<f32>(x_349.x, x_349.x, x_349.x) * x_351);
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_358 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb11 = (x_358 == 0.0f);
  let x_361 : vec3<f32> = vs_INTERP7;
  let x_365 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat12 = (-(x_361) + x_365);
  let x_368 : vec3<f32> = u_xlat12;
  let x_369 : vec3<f32> = u_xlat12;
  u_xlat22 = dot(x_368, x_369);
  let x_371 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_371);
  let x_373 : f32 = u_xlat22;
  let x_375 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_373, x_373, x_373) * x_375);
  let x_377 : bool = u_xlatb11;
  if (x_377) {
    let x_383 : f32 = u_xlat12.x;
    x_379 = x_383;
  } else {
    let x_387 : f32 = x_29.unity_MatrixV[0i].z;
    x_379 = x_387;
  }
  let x_388 : f32 = x_379;
  u_xlat4.x = x_388;
  let x_390 : bool = u_xlatb11;
  if (x_390) {
    let x_395 : f32 = u_xlat12.y;
    x_391 = x_395;
  } else {
    let x_399 : f32 = x_29.unity_MatrixV[1i].z;
    x_391 = x_399;
  }
  let x_400 : f32 = x_391;
  u_xlat4.y = x_400;
  let x_402 : bool = u_xlatb11;
  if (x_402) {
    let x_407 : f32 = u_xlat12.z;
    x_403 = x_407;
  } else {
    let x_411 : f32 = x_29.unity_MatrixV[2i].z;
    x_403 = x_411;
  }
  let x_412 : f32 = x_403;
  u_xlat4.z = x_412;
  let x_414 : vec3<f32> = vs_INTERP7;
  let x_424 : vec4<f32> = x_422.x_CascadeShadowSplitSpheres0;
  u_xlat12 = (x_414 + -(vec3<f32>(x_424.x, x_424.y, x_424.z)));
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
  let x_453 : vec3<f32> = u_xlat12;
  let x_454 : vec3<f32> = u_xlat12;
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
  u_xlat12.x = select(-0.0f, -1.0f, x_496);
  let x_501 : bool = u_xlatb5.y;
  u_xlat12.y = select(-0.0f, -1.0f, x_501);
  let x_505 : bool = u_xlatb5.z;
  u_xlat12.z = select(-0.0f, -1.0f, x_505);
  let x_508 : vec3<f32> = u_xlat12;
  let x_509 : vec4<f32> = u_xlat6;
  u_xlat12 = (x_508 + vec3<f32>(x_509.y, x_509.z, x_509.w));
  let x_512 : vec3<f32> = u_xlat12;
  let x_514 : vec3<f32> = max(x_512, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_515 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_515.x, x_514.x, x_514.y, x_514.z);
  let x_517 : vec4<f32> = u_xlat6;
  u_xlat11.x = dot(x_517, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_524 : f32 = u_xlat11.x;
  u_xlat11.x = (-(x_524) + 4.0f);
  let x_531 : f32 = u_xlat11.x;
  u_xlatu11 = u32(x_531);
  let x_535 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_535) << bitcast<u32>(2i));
  let x_538 : vec3<f32> = vs_INTERP7;
  let x_540 : i32 = u_xlati11;
  let x_543 : i32 = u_xlati11;
  let x_547 : vec4<f32> = x_422.x_MainLightWorldToShadow[((x_540 + 1i) / 4i)][((x_543 + 1i) % 4i)];
  u_xlat12 = (vec3<f32>(x_538.y, x_538.y, x_538.y) * vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_550 : i32 = u_xlati11;
  let x_552 : i32 = u_xlati11;
  let x_555 : vec4<f32> = x_422.x_MainLightWorldToShadow[(x_550 / 4i)][(x_552 % 4i)];
  let x_557 : vec3<f32> = vs_INTERP7;
  let x_560 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_555.x, x_555.y, x_555.z) * vec3<f32>(x_557.x, x_557.x, x_557.x)) + x_560);
  let x_562 : i32 = u_xlati11;
  let x_565 : i32 = u_xlati11;
  let x_569 : vec4<f32> = x_422.x_MainLightWorldToShadow[((x_562 + 2i) / 4i)][((x_565 + 2i) % 4i)];
  let x_571 : vec3<f32> = vs_INTERP7;
  let x_574 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_571.z, x_571.z, x_571.z)) + x_574);
  let x_576 : vec3<f32> = u_xlat12;
  let x_577 : i32 = u_xlati11;
  let x_580 : i32 = u_xlati11;
  let x_584 : vec4<f32> = x_422.x_MainLightWorldToShadow[((x_577 + 3i) / 4i)][((x_580 + 3i) % 4i)];
  u_xlat12 = (x_576 + vec3<f32>(x_584.x, x_584.y, x_584.z));
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
  u_xlat11.x = (x_630 * x_632);
  let x_636 : f32 = u_xlat3.x;
  let x_638 : f32 = u_xlat3.x;
  let x_641 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_636 * x_638) + -(x_641));
  let x_647 : vec4<f32> = x_270.unity_SHC;
  let x_649 : vec2<f32> = u_xlat11;
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
  u_xlat11.x = ((-(x_664) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_671 : f32 = u_xlat11.x;
  u_xlat22 = (-(x_671) + 1.0f);
  let x_674 : vec2<f32> = u_xlat11;
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
  u_xlat11.x = (x_697 * x_699);
  let x_704 : f32 = u_xlat11.x;
  let x_706 : f32 = u_xlat11.x;
  u_xlat35 = (x_704 * x_706);
  let x_708 : f32 = u_xlat22;
  let x_710 : f32 = u_xlat1.x;
  u_xlat22 = (x_708 + x_710);
  let x_712 : f32 = u_xlat22;
  u_xlat22 = min(x_712, 1.0f);
  let x_715 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_715 * 4.0f) + 2.0f);
  let x_721 : f32 = u_xlat0.w;
  u_xlat33 = min(x_721, 1.0f);
  let x_725 : vec3<f32> = u_xlat12;
  let x_726 : vec2<f32> = vec2<f32>(x_725.x, x_725.y);
  let x_728 : f32 = u_xlat12.z;
  txVec0 = vec3<f32>(x_726.x, x_726.y, x_728);
  let x_740 : vec3<f32> = txVec0;
  let x_742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_740.xy, x_740.z);
  u_xlat12.x = x_742;
  let x_746 : f32 = x_422.x_MainLightShadowParams.x;
  u_xlat23 = (-(x_746) + 1.0f);
  let x_750 : f32 = u_xlat12.x;
  let x_752 : f32 = x_422.x_MainLightShadowParams.x;
  let x_754 : f32 = u_xlat23;
  u_xlat12.x = ((x_750 * x_752) + x_754);
  let x_759 : f32 = u_xlat12.z;
  u_xlatb23 = (0.0f >= x_759);
  let x_763 : f32 = u_xlat12.z;
  u_xlatb34 = (x_763 >= 1.0f);
  let x_765 : bool = u_xlatb34;
  let x_766 : bool = u_xlatb23;
  u_xlatb23 = (x_765 | x_766);
  let x_768 : bool = u_xlatb23;
  if (x_768) {
    x_769 = 1.0f;
  } else {
    let x_774 : f32 = u_xlat12.x;
    x_769 = x_774;
  }
  let x_775 : f32 = x_769;
  u_xlat12.x = x_775;
  let x_777 : vec3<f32> = vs_INTERP7;
  let x_779 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_781 : vec3<f32> = (x_777 + -(x_779));
  let x_782 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec4<f32> = u_xlat7;
  let x_786 : vec4<f32> = u_xlat7;
  u_xlat23 = dot(vec3<f32>(x_784.x, x_784.y, x_784.z), vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_790 : f32 = u_xlat23;
  let x_792 : f32 = x_422.x_MainLightShadowParams.z;
  let x_795 : f32 = x_422.x_MainLightShadowParams.w;
  u_xlat34 = ((x_790 * x_792) + x_795);
  let x_797 : f32 = u_xlat34;
  u_xlat34 = clamp(x_797, 0.0f, 1.0f);
  let x_801 : f32 = u_xlat12.x;
  u_xlat36 = (-(x_801) + 1.0f);
  let x_804 : f32 = u_xlat34;
  let x_805 : f32 = u_xlat36;
  let x_808 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_804 * x_805) + x_808);
  let x_811 : vec3<f32> = u_xlat4;
  let x_813 : vec4<f32> = u_xlat3;
  u_xlat34 = dot(-(x_811), vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : f32 = u_xlat34;
  let x_817 : f32 = u_xlat34;
  u_xlat34 = (x_816 + x_817);
  let x_819 : vec4<f32> = u_xlat3;
  let x_821 : f32 = u_xlat34;
  let x_825 : vec3<f32> = u_xlat4;
  let x_827 : vec3<f32> = ((vec3<f32>(x_819.x, x_819.y, x_819.z) * -(vec3<f32>(x_821, x_821, x_821))) + -(x_825));
  let x_828 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat3;
  let x_832 : vec3<f32> = u_xlat4;
  u_xlat34 = dot(vec3<f32>(x_830.x, x_830.y, x_830.z), x_832);
  let x_834 : f32 = u_xlat34;
  u_xlat34 = clamp(x_834, 0.0f, 1.0f);
  let x_836 : f32 = u_xlat34;
  u_xlat34 = (-(x_836) + 1.0f);
  let x_839 : f32 = u_xlat34;
  let x_840 : f32 = u_xlat34;
  u_xlat34 = (x_839 * x_840);
  let x_842 : f32 = u_xlat34;
  let x_843 : f32 = u_xlat34;
  u_xlat34 = (x_842 * x_843);
  let x_846 : f32 = u_xlat0.x;
  u_xlat36 = ((-(x_846) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_853 : f32 = u_xlat0.x;
  let x_854 : f32 = u_xlat36;
  u_xlat0.x = (x_853 * x_854);
  let x_858 : f32 = u_xlat0.x;
  u_xlat0.x = (x_858 * 6.0f);
  let x_870 : vec4<f32> = u_xlat7;
  let x_873 : f32 = u_xlat0.x;
  let x_874 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_870.x, x_870.y, x_870.z), x_873);
  u_xlat7 = x_874;
  let x_876 : f32 = u_xlat7.w;
  u_xlat0.x = (x_876 + -1.0f);
  let x_880 : f32 = x_270.unity_SpecCube0_HDR.w;
  let x_882 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_880 * x_882) + 1.0f);
  let x_887 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_887, 0.0f);
  let x_891 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_891);
  let x_895 : f32 = u_xlat0.x;
  let x_897 : f32 = x_270.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_895 * x_897);
  let x_901 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_901);
  let x_905 : f32 = u_xlat0.x;
  let x_907 : f32 = x_270.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_905 * x_907);
  let x_910 : vec4<f32> = u_xlat7;
  let x_912 : vec4<f32> = u_xlat0;
  let x_914 : vec3<f32> = (vec3<f32>(x_910.x, x_910.y, x_910.z) * vec3<f32>(x_912.x, x_912.x, x_912.x));
  let x_915 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : vec2<f32> = u_xlat11;
  let x_919 : vec2<f32> = u_xlat11;
  let x_923 : vec2<f32> = ((vec2<f32>(x_917.x, x_917.x) * vec2<f32>(x_919.x, x_919.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_924 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_923.x, x_923.y, x_924.z, x_924.w);
  let x_927 : f32 = u_xlat0.y;
  u_xlat11.x = (1.0f / x_927);
  let x_930 : vec3<f32> = u_xlat2;
  let x_932 : f32 = u_xlat22;
  let x_934 : vec3<f32> = (-(x_930) + vec3<f32>(x_932, x_932, x_932));
  let x_935 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_937 : f32 = u_xlat34;
  let x_939 : vec4<f32> = u_xlat8;
  let x_942 : vec3<f32> = u_xlat2;
  let x_943 : vec3<f32> = ((vec3<f32>(x_937, x_937, x_937) * vec3<f32>(x_939.x, x_939.y, x_939.z)) + x_942);
  let x_944 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : vec2<f32> = u_xlat11;
  let x_948 : vec4<f32> = u_xlat8;
  let x_950 : vec3<f32> = (vec3<f32>(x_946.x, x_946.x, x_946.x) * vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_951 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : vec4<f32> = u_xlat7;
  let x_955 : vec4<f32> = u_xlat8;
  let x_957 : vec3<f32> = (vec3<f32>(x_953.x, x_953.y, x_953.z) * vec3<f32>(x_955.x, x_955.y, x_955.z));
  let x_958 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
  let x_960 : vec3<f32> = u_xlat5;
  let x_961 : vec4<f32> = u_xlat6;
  let x_964 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_960 * vec3<f32>(x_961.x, x_961.y, x_961.z)) + vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_968 : f32 = u_xlat12.x;
  let x_970 : f32 = x_270.unity_LightData.z;
  u_xlat11.x = (x_968 * x_970);
  let x_973 : vec4<f32> = u_xlat3;
  let x_976 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat22 = dot(vec3<f32>(x_973.x, x_973.y, x_973.z), vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_979 : f32 = u_xlat22;
  u_xlat22 = clamp(x_979, 0.0f, 1.0f);
  let x_981 : f32 = u_xlat22;
  let x_983 : f32 = u_xlat11.x;
  u_xlat11.x = (x_981 * x_983);
  let x_986 : vec2<f32> = u_xlat11;
  let x_989 : vec4<f32> = x_29.x_MainLightColor;
  let x_991 : vec3<f32> = (vec3<f32>(x_986.x, x_986.x, x_986.x) * vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : vec3<f32> = u_xlat4;
  let x_996 : vec4<f32> = x_29.x_MainLightPosition;
  let x_998 : vec3<f32> = (x_994 + vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_999 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec4<f32> = u_xlat8;
  let x_1003 : vec4<f32> = u_xlat8;
  u_xlat11.x = dot(vec3<f32>(x_1001.x, x_1001.y, x_1001.z), vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1008 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_1008, 1.17549435e-38f);
  let x_1013 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_1013);
  let x_1016 : vec2<f32> = u_xlat11;
  let x_1018 : vec4<f32> = u_xlat8;
  let x_1020 : vec3<f32> = (vec3<f32>(x_1016.x, x_1016.x, x_1016.x) * vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1021 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1023 : vec4<f32> = u_xlat3;
  let x_1025 : vec4<f32> = u_xlat8;
  u_xlat11.x = dot(vec3<f32>(x_1023.x, x_1023.y, x_1023.z), vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1030 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1030, 0.0f, 1.0f);
  let x_1034 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1036 : vec4<f32> = u_xlat8;
  u_xlat11.y = dot(vec3<f32>(x_1034.x, x_1034.y, x_1034.z), vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
  let x_1041 : f32 = u_xlat11.y;
  u_xlat11.y = clamp(x_1041, 0.0f, 1.0f);
  let x_1044 : vec2<f32> = u_xlat11;
  let x_1045 : vec2<f32> = u_xlat11;
  u_xlat11 = (x_1044 * x_1045);
  let x_1048 : f32 = u_xlat11.x;
  let x_1050 : f32 = u_xlat0.x;
  u_xlat11.x = ((x_1048 * x_1050) + 1.00001001358032226562f);
  let x_1056 : f32 = u_xlat11.x;
  let x_1058 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1056 * x_1058);
  let x_1062 : f32 = u_xlat11.y;
  u_xlat22 = max(x_1062, 0.10000000149011611938f);
  let x_1065 : f32 = u_xlat22;
  let x_1067 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1065 * x_1067);
  let x_1071 : f32 = u_xlat1.x;
  let x_1073 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1071 * x_1073);
  let x_1076 : f32 = u_xlat35;
  let x_1078 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1076 / x_1078);
  let x_1081 : vec3<f32> = u_xlat2;
  let x_1082 : vec2<f32> = u_xlat11;
  let x_1085 : vec4<f32> = u_xlat6;
  let x_1087 : vec3<f32> = ((x_1081 * vec3<f32>(x_1082.x, x_1082.x, x_1082.x)) + vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
  let x_1088 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1090 : vec4<f32> = u_xlat7;
  let x_1092 : vec4<f32> = u_xlat8;
  let x_1094 : vec3<f32> = (vec3<f32>(x_1090.x, x_1090.y, x_1090.z) * vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1095 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  let x_1098 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1100 : f32 = x_270.unity_LightData.y;
  u_xlat11.x = min(x_1098, x_1100);
  let x_1104 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_1104));
  let x_1107 : f32 = u_xlat23;
  let x_1110 : f32 = x_422.x_AdditionalShadowFadeParams.x;
  let x_1113 : f32 = x_422.x_AdditionalShadowFadeParams.y;
  u_xlat22 = ((x_1107 * x_1110) + x_1113);
  let x_1115 : f32 = u_xlat22;
  u_xlat22 = clamp(x_1115, 0.0f, 1.0f);
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1127 : u32 = u_xlatu_loop_1;
    let x_1128 : u32 = u_xlatu11;
    if ((x_1127 < x_1128)) {
    } else {
      break;
    }
    let x_1131 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_1131 >> 2u);
    let x_1134 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_1134 & 3u));
    let x_1138 : u32 = u_xlatu37;
    let x_1141 : vec4<f32> = x_270.unity_LightIndices[bitcast<i32>(x_1138)];
    let x_1151 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1156 : vec4<u32> = indexable[x_1151];
    u_xlat37 = dot(x_1141, bitcast<vec4<f32>>(x_1156));
    let x_1160 : f32 = u_xlat37;
    u_xlati37 = i32(x_1160);
    let x_1162 : vec3<f32> = vs_INTERP7;
    let x_1173 : i32 = u_xlati37;
    let x_1175 : vec4<f32> = x_1172.x_AdditionalLightsPosition[x_1173];
    let x_1178 : i32 = u_xlati37;
    let x_1180 : vec4<f32> = x_1172.x_AdditionalLightsPosition[x_1178];
    let x_1182 : vec3<f32> = ((-(x_1162) * vec3<f32>(x_1175.w, x_1175.w, x_1175.w)) + vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
    let x_1183 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
    let x_1186 : vec4<f32> = u_xlat8;
    let x_1188 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1186.x, x_1186.y, x_1186.z), vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
    let x_1191 : f32 = u_xlat38;
    u_xlat38 = max(x_1191, 0.00006103515625f);
    let x_1195 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_1195);
    let x_1198 : f32 = u_xlat39;
    let x_1200 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1198, x_1198, x_1198) * vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
    let x_1204 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_1204);
    let x_1206 : f32 = u_xlat38;
    let x_1207 : i32 = u_xlati37;
    let x_1209 : f32 = x_1172.x_AdditionalLightsAttenuation[x_1207].x;
    u_xlat38 = (x_1206 * x_1209);
    let x_1211 : f32 = u_xlat38;
    let x_1213 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1211) * x_1213) + 1.0f);
    let x_1216 : f32 = u_xlat38;
    u_xlat38 = max(x_1216, 0.0f);
    let x_1218 : f32 = u_xlat38;
    let x_1219 : f32 = u_xlat38;
    u_xlat38 = (x_1218 * x_1219);
    let x_1221 : f32 = u_xlat38;
    let x_1222 : f32 = u_xlat40;
    u_xlat38 = (x_1221 * x_1222);
    let x_1224 : i32 = u_xlati37;
    let x_1226 : vec4<f32> = x_1172.x_AdditionalLightsSpotDir[x_1224];
    let x_1228 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1226.x, x_1226.y, x_1226.z), x_1228);
    let x_1230 : f32 = u_xlat40;
    let x_1231 : i32 = u_xlati37;
    let x_1233 : f32 = x_1172.x_AdditionalLightsAttenuation[x_1231].z;
    let x_1235 : i32 = u_xlati37;
    let x_1237 : f32 = x_1172.x_AdditionalLightsAttenuation[x_1235].w;
    u_xlat40 = ((x_1230 * x_1233) + x_1237);
    let x_1239 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1239, 0.0f, 1.0f);
    let x_1241 : f32 = u_xlat40;
    let x_1242 : f32 = u_xlat40;
    u_xlat40 = (x_1241 * x_1242);
    let x_1244 : f32 = u_xlat38;
    let x_1245 : f32 = u_xlat40;
    u_xlat38 = (x_1244 * x_1245);
    let x_1249 : i32 = u_xlati37;
    let x_1251 : f32 = x_422.x_AdditionalShadowParams[x_1249].w;
    u_xlati40 = i32(x_1251);
    let x_1254 : i32 = u_xlati40;
    u_xlatb41 = (x_1254 >= 0i);
    let x_1256 : bool = u_xlatb41;
    if (x_1256) {
      let x_1260 : i32 = u_xlati37;
      let x_1262 : f32 = x_422.x_AdditionalShadowParams[x_1260].z;
      u_xlatb41 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1262, x_1262, x_1262, x_1262))));
      let x_1266 : bool = u_xlatb41;
      if (x_1266) {
        let x_1270 : vec3<f32> = u_xlat9;
        let x_1273 : vec3<f32> = u_xlat9;
        let x_1276 : vec4<bool> = (abs(vec4<f32>(x_1270.z, x_1270.z, x_1270.y, x_1270.z)) >= abs(vec4<f32>(x_1273.x, x_1273.y, x_1273.x, x_1273.x)));
        let x_1277 : vec3<bool> = vec3<bool>(x_1276.x, x_1276.y, x_1276.z);
        let x_1278 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
        let x_1281 : bool = u_xlatb10.y;
        let x_1283 : bool = u_xlatb10.x;
        u_xlatb41 = (x_1281 & x_1283);
        let x_1285 : vec3<f32> = u_xlat9;
        let x_1288 : vec4<bool> = (-(vec4<f32>(x_1285.z, x_1285.y, x_1285.z, x_1285.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1289 : vec3<bool> = vec3<bool>(x_1288.x, x_1288.y, x_1288.w);
        let x_1290 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1289.x, x_1289.y, x_1290.z, x_1289.z);
        let x_1294 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1294);
        let x_1299 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1299);
        let x_1304 : bool = u_xlatb10.w;
        u_xlat42 = select(0.0f, 1.0f, x_1304);
        let x_1307 : bool = u_xlatb10.z;
        if (x_1307) {
          let x_1312 : f32 = u_xlat10.y;
          x_1308 = x_1312;
        } else {
          let x_1314 : f32 = u_xlat42;
          x_1308 = x_1314;
        }
        let x_1315 : f32 = x_1308;
        u_xlat42 = x_1315;
        let x_1317 : bool = u_xlatb41;
        if (x_1317) {
          let x_1322 : f32 = u_xlat10.x;
          x_1318 = x_1322;
        } else {
          let x_1324 : f32 = u_xlat42;
          x_1318 = x_1324;
        }
        let x_1325 : f32 = x_1318;
        u_xlat41 = x_1325;
        let x_1326 : i32 = u_xlati37;
        let x_1328 : f32 = x_422.x_AdditionalShadowParams[x_1326].w;
        u_xlat42 = trunc(x_1328);
        let x_1330 : f32 = u_xlat41;
        let x_1331 : f32 = u_xlat42;
        u_xlat41 = (x_1330 + x_1331);
        let x_1333 : f32 = u_xlat41;
        u_xlati40 = i32(x_1333);
      }
      let x_1335 : i32 = u_xlati40;
      u_xlati40 = (x_1335 << bitcast<u32>(2i));
      let x_1337 : vec3<f32> = vs_INTERP7;
      let x_1340 : i32 = u_xlati40;
      let x_1343 : i32 = u_xlati40;
      let x_1347 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[((x_1340 + 1i) / 4i)][((x_1343 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1337.y, x_1337.y, x_1337.y, x_1337.y) * x_1347);
      let x_1349 : i32 = u_xlati40;
      let x_1351 : i32 = u_xlati40;
      let x_1354 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[(x_1349 / 4i)][(x_1351 % 4i)];
      let x_1355 : vec3<f32> = vs_INTERP7;
      let x_1358 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1354 * vec4<f32>(x_1355.x, x_1355.x, x_1355.x, x_1355.x)) + x_1358);
      let x_1360 : i32 = u_xlati40;
      let x_1363 : i32 = u_xlati40;
      let x_1367 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[((x_1360 + 2i) / 4i)][((x_1363 + 2i) % 4i)];
      let x_1368 : vec3<f32> = vs_INTERP7;
      let x_1371 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1367 * vec4<f32>(x_1368.z, x_1368.z, x_1368.z, x_1368.z)) + x_1371);
      let x_1373 : vec4<f32> = u_xlat10;
      let x_1374 : i32 = u_xlati40;
      let x_1377 : i32 = u_xlati40;
      let x_1381 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[((x_1374 + 3i) / 4i)][((x_1377 + 3i) % 4i)];
      u_xlat10 = (x_1373 + x_1381);
      let x_1383 : vec4<f32> = u_xlat10;
      let x_1385 : vec4<f32> = u_xlat10;
      let x_1387 : vec3<f32> = (vec3<f32>(x_1383.x, x_1383.y, x_1383.z) / vec3<f32>(x_1385.w, x_1385.w, x_1385.w));
      let x_1388 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1387.x, x_1387.y, x_1387.z, x_1388.w);
      let x_1391 : vec4<f32> = u_xlat10;
      let x_1392 : vec2<f32> = vec2<f32>(x_1391.x, x_1391.y);
      let x_1394 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
      let x_1402 : vec3<f32> = txVec1;
      let x_1404 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1402.xy, x_1402.z);
      u_xlat40 = x_1404;
      let x_1405 : i32 = u_xlati37;
      let x_1407 : f32 = x_422.x_AdditionalShadowParams[x_1405].x;
      u_xlat41 = (1.0f + -(x_1407));
      let x_1410 : f32 = u_xlat40;
      let x_1411 : i32 = u_xlati37;
      let x_1413 : f32 = x_422.x_AdditionalShadowParams[x_1411].x;
      let x_1415 : f32 = u_xlat41;
      u_xlat40 = ((x_1410 * x_1413) + x_1415);
      let x_1418 : f32 = u_xlat10.z;
      u_xlatb41 = (0.0f >= x_1418);
      let x_1422 : f32 = u_xlat10.z;
      u_xlatb42 = (x_1422 >= 1.0f);
      let x_1424 : bool = u_xlatb41;
      let x_1425 : bool = u_xlatb42;
      u_xlatb41 = (x_1424 | x_1425);
      let x_1427 : bool = u_xlatb41;
      let x_1428 : f32 = u_xlat40;
      u_xlat40 = select(x_1428, 1.0f, x_1427);
    } else {
      u_xlat40 = 1.0f;
    }
    let x_1431 : f32 = u_xlat40;
    u_xlat41 = (-(x_1431) + 1.0f);
    let x_1434 : f32 = u_xlat22;
    let x_1435 : f32 = u_xlat41;
    let x_1437 : f32 = u_xlat40;
    u_xlat40 = ((x_1434 * x_1435) + x_1437);
    let x_1439 : f32 = u_xlat38;
    let x_1440 : f32 = u_xlat40;
    u_xlat38 = (x_1439 * x_1440);
    let x_1442 : vec4<f32> = u_xlat3;
    let x_1444 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1442.x, x_1442.y, x_1442.z), x_1444);
    let x_1446 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1446, 0.0f, 1.0f);
    let x_1448 : f32 = u_xlat38;
    let x_1449 : f32 = u_xlat40;
    u_xlat38 = (x_1448 * x_1449);
    let x_1451 : f32 = u_xlat38;
    let x_1453 : i32 = u_xlati37;
    let x_1455 : vec4<f32> = x_1172.x_AdditionalLightsColor[x_1453];
    let x_1457 : vec3<f32> = (vec3<f32>(x_1451, x_1451, x_1451) * vec3<f32>(x_1455.x, x_1455.y, x_1455.z));
    let x_1458 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
    let x_1460 : vec4<f32> = u_xlat8;
    let x_1462 : f32 = u_xlat39;
    let x_1465 : vec3<f32> = u_xlat4;
    let x_1466 : vec3<f32> = ((vec3<f32>(x_1460.x, x_1460.y, x_1460.z) * vec3<f32>(x_1462, x_1462, x_1462)) + x_1465);
    let x_1467 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1467.w);
    let x_1469 : vec4<f32> = u_xlat8;
    let x_1471 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1469.x, x_1469.y, x_1469.z), vec3<f32>(x_1471.x, x_1471.y, x_1471.z));
    let x_1474 : f32 = u_xlat37;
    u_xlat37 = max(x_1474, 1.17549435e-38f);
    let x_1476 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1476);
    let x_1478 : f32 = u_xlat37;
    let x_1480 : vec4<f32> = u_xlat8;
    let x_1482 : vec3<f32> = (vec3<f32>(x_1478, x_1478, x_1478) * vec3<f32>(x_1480.x, x_1480.y, x_1480.z));
    let x_1483 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1482.x, x_1482.y, x_1482.z, x_1483.w);
    let x_1485 : vec4<f32> = u_xlat3;
    let x_1487 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1485.x, x_1485.y, x_1485.z), vec3<f32>(x_1487.x, x_1487.y, x_1487.z));
    let x_1490 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1490, 0.0f, 1.0f);
    let x_1492 : vec3<f32> = u_xlat9;
    let x_1493 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1492, vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
    let x_1496 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1496, 0.0f, 1.0f);
    let x_1498 : f32 = u_xlat37;
    let x_1499 : f32 = u_xlat37;
    u_xlat37 = (x_1498 * x_1499);
    let x_1501 : f32 = u_xlat37;
    let x_1503 : f32 = u_xlat0.x;
    u_xlat37 = ((x_1501 * x_1503) + 1.00001001358032226562f);
    let x_1506 : f32 = u_xlat38;
    let x_1507 : f32 = u_xlat38;
    u_xlat38 = (x_1506 * x_1507);
    let x_1509 : f32 = u_xlat37;
    let x_1510 : f32 = u_xlat37;
    u_xlat37 = (x_1509 * x_1510);
    let x_1512 : f32 = u_xlat38;
    u_xlat38 = max(x_1512, 0.10000000149011611938f);
    let x_1514 : f32 = u_xlat37;
    let x_1515 : f32 = u_xlat38;
    u_xlat37 = (x_1514 * x_1515);
    let x_1518 : f32 = u_xlat1.x;
    let x_1519 : f32 = u_xlat37;
    u_xlat37 = (x_1518 * x_1519);
    let x_1521 : f32 = u_xlat35;
    let x_1522 : f32 = u_xlat37;
    u_xlat37 = (x_1521 / x_1522);
    let x_1524 : vec3<f32> = u_xlat2;
    let x_1525 : f32 = u_xlat37;
    let x_1528 : vec4<f32> = u_xlat6;
    let x_1530 : vec3<f32> = ((x_1524 * vec3<f32>(x_1525, x_1525, x_1525)) + vec3<f32>(x_1528.x, x_1528.y, x_1528.z));
    let x_1531 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1531.w);
    let x_1533 : vec4<f32> = u_xlat8;
    let x_1535 : vec4<f32> = u_xlat10;
    let x_1538 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_1533.x, x_1533.y, x_1533.z) * vec3<f32>(x_1535.x, x_1535.y, x_1535.z)) + x_1538);

    continuing {
      let x_1540 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1540 + bitcast<u32>(1i));
    }
  }
  let x_1542 : vec3<f32> = u_xlat5;
  let x_1543 : f32 = u_xlat33;
  let x_1546 : vec4<f32> = u_xlat7;
  let x_1548 : vec3<f32> = ((x_1542 * vec3<f32>(x_1543, x_1543, x_1543)) + vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
  let x_1549 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1548.x, x_1548.y, x_1548.z, x_1549.w);
  let x_1553 : vec3<f32> = u_xlat12;
  let x_1554 : vec4<f32> = u_xlat0;
  let x_1556 : vec3<f32> = (x_1553 + vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
  let x_1557 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
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


