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

@group(1) @binding(2) var<uniform> x_271 : UnityPerDraw;

var<private> u_xlat12 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb11 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat33 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat37 : f32;

@group(1) @binding(3) var<uniform> x_579 : LightShadows;

var<private> u_xlatb37 : bool;

var<private> u_xlatb38 : bool;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu11 : u32;

var<private> u_xlatu37 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_978 : AdditionalLights;

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

fn main_1() {
  var x_380 : f32;
  var x_392 : f32;
  var x_404 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1109 : f32;
  var x_1119 : f32;
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
  let x_173 : f32 = u_xlat23;
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
  u_xlat11 = ((vec2<f32>(x_221.x, x_221.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_229 : vec2<f32> = u_xlat11;
  let x_230 : vec2<f32> = u_xlat11;
  u_xlat23 = dot(x_229, x_230);
  let x_232 : f32 = u_xlat23;
  u_xlat23 = min(x_232, 1.0f);
  let x_234 : f32 = u_xlat23;
  u_xlat23 = (-(x_234) + 1.0f);
  let x_237 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_237);
  let x_239 : f32 = u_xlat23;
  u_xlat23 = max(x_239, 0.0000000000000001f);
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
  u_xlatb12.x = (0.0f < x_265);
  let x_273 : f32 = x_271.unity_WorldTransformParams.w;
  u_xlatb12.z = (x_273 >= 0.0f);
  let x_278 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_278);
  let x_282 : bool = u_xlatb12.z;
  u_xlat12.z = select(-1.0f, 1.0f, x_282);
  let x_286 : f32 = u_xlat12.z;
  let x_288 : f32 = u_xlat12.x;
  u_xlat12.x = (x_286 * x_288);
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
  let x_311 : vec3<f32> = u_xlat12;
  let x_313 : vec4<f32> = u_xlat3;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.x, x_311.x) * vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec2<f32> = u_xlat11;
  let x_320 : vec4<f32> = u_xlat3;
  let x_322 : vec3<f32> = (vec3<f32>(x_318.y, x_318.y, x_318.y) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec2<f32> = u_xlat11;
  let x_327 : vec4<f32> = vs_INTERP4;
  let x_330 : vec4<f32> = u_xlat3;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.x, x_325.x) * vec3<f32>(x_327.x, x_327.y, x_327.z)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : f32 = u_xlat23;
  let x_337 : vec3<f32> = vs_INTERP8;
  let x_339 : vec4<f32> = u_xlat3;
  u_xlat12 = ((vec3<f32>(x_335, x_335, x_335) * x_337) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec3<f32> = u_xlat12;
  let x_343 : vec3<f32> = u_xlat12;
  u_xlat11.x = dot(x_342, x_343);
  let x_347 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_347);
  let x_350 : vec2<f32> = u_xlat11;
  let x_352 : vec3<f32> = u_xlat12;
  let x_353 : vec3<f32> = (vec3<f32>(x_350.x, x_350.x, x_350.x) * x_352);
  let x_354 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_359 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb11 = (x_359 == 0.0f);
  let x_362 : vec3<f32> = vs_INTERP7;
  let x_366 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat12 = (-(x_362) + x_366);
  let x_369 : vec3<f32> = u_xlat12;
  let x_370 : vec3<f32> = u_xlat12;
  u_xlat22 = dot(x_369, x_370);
  let x_372 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_372);
  let x_374 : f32 = u_xlat22;
  let x_376 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_374, x_374, x_374) * x_376);
  let x_378 : bool = u_xlatb11;
  if (x_378) {
    let x_384 : f32 = u_xlat12.x;
    x_380 = x_384;
  } else {
    let x_388 : f32 = x_29.unity_MatrixV[0i].z;
    x_380 = x_388;
  }
  let x_389 : f32 = x_380;
  u_xlat4.x = x_389;
  let x_391 : bool = u_xlatb11;
  if (x_391) {
    let x_396 : f32 = u_xlat12.y;
    x_392 = x_396;
  } else {
    let x_400 : f32 = x_29.unity_MatrixV[1i].z;
    x_392 = x_400;
  }
  let x_401 : f32 = x_392;
  u_xlat4.y = x_401;
  let x_403 : bool = u_xlatb11;
  if (x_403) {
    let x_408 : f32 = u_xlat12.z;
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
  u_xlat11.x = (x_460 * x_462);
  let x_466 : f32 = u_xlat3.x;
  let x_468 : f32 = u_xlat3.x;
  let x_471 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_466 * x_468) + -(x_471));
  let x_477 : vec4<f32> = x_271.unity_SHC;
  let x_479 : vec2<f32> = u_xlat11;
  let x_482 : vec3<f32> = u_xlat7;
  u_xlat12 = ((vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(x_479.x, x_479.x, x_479.x)) + x_482);
  let x_484 : vec3<f32> = u_xlat12;
  let x_485 : vec3<f32> = u_xlat5;
  u_xlat12 = (x_484 + x_485);
  let x_487 : vec3<f32> = u_xlat12;
  u_xlat12 = max(x_487, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_491 : f32 = u_xlat0.x;
  u_xlat11.x = ((-(x_491) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_498 : f32 = u_xlat11.x;
  let x_501 : f32 = u_xlat1.x;
  u_xlat22 = (-(x_498) + x_501);
  let x_503 : vec2<f32> = u_xlat11;
  let x_505 : vec3<f32> = u_xlat2;
  u_xlat5 = (vec3<f32>(x_503.x, x_503.x, x_503.x) * x_505);
  let x_507 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_507 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_511 : vec4<f32> = u_xlat0;
  let x_513 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_511.x, x_511.x, x_511.x) * x_513) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_519 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_519) + 1.0f);
  let x_524 : f32 = u_xlat0.x;
  let x_526 : f32 = u_xlat0.x;
  u_xlat11.x = (x_524 * x_526);
  let x_530 : f32 = u_xlat11.x;
  let x_532 : f32 = u_xlat11.x;
  u_xlat1.x = (x_530 * x_532);
  let x_535 : f32 = u_xlat22;
  u_xlat22 = (x_535 + 1.0f);
  let x_537 : f32 = u_xlat22;
  u_xlat22 = min(x_537, 1.0f);
  let x_541 : f32 = u_xlat11.x;
  u_xlat35 = ((x_541 * 4.0f) + 2.0f);
  let x_547 : f32 = u_xlat0.w;
  u_xlat33 = min(x_547, 1.0f);
  let x_552 : vec4<f32> = vs_INTERP3;
  let x_553 : vec2<f32> = vec2<f32>(x_552.x, x_552.y);
  let x_555 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_553.x, x_553.y, x_555);
  let x_568 : vec3<f32> = txVec0;
  let x_570 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_568.xy, x_568.z);
  u_xlat36 = x_570;
  let x_582 : f32 = x_579.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_582) + 1.0f);
  let x_585 : f32 = u_xlat36;
  let x_587 : f32 = x_579.x_MainLightShadowParams.x;
  let x_589 : f32 = u_xlat37;
  u_xlat36 = ((x_585 * x_587) + x_589);
  let x_593 : f32 = vs_INTERP3.z;
  u_xlatb37 = (0.0f >= x_593);
  let x_597 : f32 = vs_INTERP3.z;
  u_xlatb38 = (x_597 >= 1.0f);
  let x_599 : bool = u_xlatb37;
  let x_600 : bool = u_xlatb38;
  u_xlatb37 = (x_599 | x_600);
  let x_602 : bool = u_xlatb37;
  let x_603 : f32 = u_xlat36;
  u_xlat36 = select(x_603, 1.0f, x_602);
  let x_605 : vec3<f32> = vs_INTERP7;
  let x_607 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_609 : vec3<f32> = (x_605 + -(x_607));
  let x_610 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec4<f32> = u_xlat6;
  let x_614 : vec4<f32> = u_xlat6;
  u_xlat37 = dot(vec3<f32>(x_612.x, x_612.y, x_612.z), vec3<f32>(x_614.x, x_614.y, x_614.z));
  let x_618 : f32 = u_xlat37;
  let x_620 : f32 = x_579.x_MainLightShadowParams.z;
  let x_623 : f32 = x_579.x_MainLightShadowParams.w;
  u_xlat38 = ((x_618 * x_620) + x_623);
  let x_625 : f32 = u_xlat38;
  u_xlat38 = clamp(x_625, 0.0f, 1.0f);
  let x_627 : f32 = u_xlat36;
  u_xlat6.x = (-(x_627) + 1.0f);
  let x_631 : f32 = u_xlat38;
  let x_633 : f32 = u_xlat6.x;
  let x_635 : f32 = u_xlat36;
  u_xlat36 = ((x_631 * x_633) + x_635);
  let x_637 : vec3<f32> = u_xlat4;
  let x_639 : vec4<f32> = u_xlat3;
  u_xlat38 = dot(-(x_637), vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_642 : f32 = u_xlat38;
  let x_643 : f32 = u_xlat38;
  u_xlat38 = (x_642 + x_643);
  let x_645 : vec4<f32> = u_xlat3;
  let x_647 : f32 = u_xlat38;
  let x_651 : vec3<f32> = u_xlat4;
  let x_653 : vec3<f32> = ((vec3<f32>(x_645.x, x_645.y, x_645.z) * -(vec3<f32>(x_647, x_647, x_647))) + -(x_651));
  let x_654 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_656 : vec4<f32> = u_xlat3;
  let x_658 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(vec3<f32>(x_656.x, x_656.y, x_656.z), x_658);
  let x_660 : f32 = u_xlat38;
  u_xlat38 = clamp(x_660, 0.0f, 1.0f);
  let x_662 : f32 = u_xlat38;
  u_xlat38 = (-(x_662) + 1.0f);
  let x_665 : f32 = u_xlat38;
  let x_666 : f32 = u_xlat38;
  u_xlat38 = (x_665 * x_666);
  let x_668 : f32 = u_xlat38;
  let x_669 : f32 = u_xlat38;
  u_xlat38 = (x_668 * x_669);
  let x_673 : f32 = u_xlat0.x;
  u_xlat39 = ((-(x_673) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_680 : f32 = u_xlat0.x;
  let x_681 : f32 = u_xlat39;
  u_xlat0.x = (x_680 * x_681);
  let x_685 : f32 = u_xlat0.x;
  u_xlat0.x = (x_685 * 6.0f);
  let x_697 : vec4<f32> = u_xlat6;
  let x_700 : f32 = u_xlat0.x;
  let x_701 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_697.x, x_697.y, x_697.z), x_700);
  u_xlat6 = x_701;
  let x_703 : f32 = u_xlat6.w;
  u_xlat0.x = (x_703 + -1.0f);
  let x_707 : f32 = x_271.unity_SpecCube0_HDR.w;
  let x_709 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_707 * x_709) + 1.0f);
  let x_714 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_714, 0.0f);
  let x_718 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_718);
  let x_722 : f32 = u_xlat0.x;
  let x_724 : f32 = x_271.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_722 * x_724);
  let x_728 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_728);
  let x_732 : f32 = u_xlat0.x;
  let x_734 : f32 = x_271.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_732 * x_734);
  let x_737 : vec4<f32> = u_xlat6;
  let x_739 : vec4<f32> = u_xlat0;
  let x_741 : vec3<f32> = (vec3<f32>(x_737.x, x_737.y, x_737.z) * vec3<f32>(x_739.x, x_739.x, x_739.x));
  let x_742 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : vec2<f32> = u_xlat11;
  let x_746 : vec2<f32> = u_xlat11;
  let x_750 : vec2<f32> = ((vec2<f32>(x_744.x, x_744.x) * vec2<f32>(x_746.x, x_746.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_751 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
  let x_754 : f32 = u_xlat0.y;
  u_xlat11.x = (1.0f / x_754);
  let x_757 : vec3<f32> = u_xlat2;
  let x_759 : f32 = u_xlat22;
  u_xlat7 = (-(x_757) + vec3<f32>(x_759, x_759, x_759));
  let x_762 : f32 = u_xlat38;
  let x_764 : vec3<f32> = u_xlat7;
  let x_766 : vec3<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_762, x_762, x_762) * x_764) + x_766);
  let x_768 : vec2<f32> = u_xlat11;
  let x_770 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_768.x, x_768.x, x_768.x) * x_770);
  let x_772 : vec4<f32> = u_xlat6;
  let x_774 : vec3<f32> = u_xlat7;
  let x_775 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) * x_774);
  let x_776 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec3<f32> = u_xlat12;
  let x_779 : vec3<f32> = u_xlat5;
  let x_781 : vec4<f32> = u_xlat6;
  u_xlat12 = ((x_778 * x_779) + vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_784 : f32 = u_xlat36;
  let x_786 : f32 = x_271.unity_LightData.z;
  u_xlat11.x = (x_784 * x_786);
  let x_789 : vec4<f32> = u_xlat3;
  let x_792 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat22 = dot(vec3<f32>(x_789.x, x_789.y, x_789.z), vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : f32 = u_xlat22;
  u_xlat22 = clamp(x_795, 0.0f, 1.0f);
  let x_797 : f32 = u_xlat22;
  let x_799 : f32 = u_xlat11.x;
  u_xlat11.x = (x_797 * x_799);
  let x_802 : vec2<f32> = u_xlat11;
  let x_805 : vec4<f32> = x_29.x_MainLightColor;
  let x_807 : vec3<f32> = (vec3<f32>(x_802.x, x_802.x, x_802.x) * vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec3<f32> = u_xlat4;
  let x_812 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat7 = (x_810 + vec3<f32>(x_812.x, x_812.y, x_812.z));
  let x_815 : vec3<f32> = u_xlat7;
  let x_816 : vec3<f32> = u_xlat7;
  u_xlat11.x = dot(x_815, x_816);
  let x_820 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_820, 1.17549435e-38f);
  let x_825 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_825);
  let x_828 : vec2<f32> = u_xlat11;
  let x_830 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_828.x, x_828.x, x_828.x) * x_830);
  let x_832 : vec4<f32> = u_xlat3;
  let x_834 : vec3<f32> = u_xlat7;
  u_xlat11.x = dot(vec3<f32>(x_832.x, x_832.y, x_832.z), x_834);
  let x_838 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_838, 0.0f, 1.0f);
  let x_842 : vec4<f32> = x_29.x_MainLightPosition;
  let x_844 : vec3<f32> = u_xlat7;
  u_xlat11.y = dot(vec3<f32>(x_842.x, x_842.y, x_842.z), x_844);
  let x_848 : f32 = u_xlat11.y;
  u_xlat11.y = clamp(x_848, 0.0f, 1.0f);
  let x_851 : vec2<f32> = u_xlat11;
  let x_852 : vec2<f32> = u_xlat11;
  u_xlat11 = (x_851 * x_852);
  let x_855 : f32 = u_xlat11.x;
  let x_857 : f32 = u_xlat0.x;
  u_xlat11.x = ((x_855 * x_857) + 1.00001001358032226562f);
  let x_863 : f32 = u_xlat11.x;
  let x_865 : f32 = u_xlat11.x;
  u_xlat11.x = (x_863 * x_865);
  let x_869 : f32 = u_xlat11.y;
  u_xlat22 = max(x_869, 0.10000000149011611938f);
  let x_872 : f32 = u_xlat22;
  let x_874 : f32 = u_xlat11.x;
  u_xlat11.x = (x_872 * x_874);
  let x_877 : f32 = u_xlat35;
  let x_879 : f32 = u_xlat11.x;
  u_xlat11.x = (x_877 * x_879);
  let x_883 : f32 = u_xlat1.x;
  let x_885 : f32 = u_xlat11.x;
  u_xlat11.x = (x_883 / x_885);
  let x_888 : vec3<f32> = u_xlat2;
  let x_889 : vec2<f32> = u_xlat11;
  let x_892 : vec3<f32> = u_xlat5;
  u_xlat7 = ((x_888 * vec3<f32>(x_889.x, x_889.x, x_889.x)) + x_892);
  let x_894 : vec4<f32> = u_xlat6;
  let x_896 : vec3<f32> = u_xlat7;
  let x_897 : vec3<f32> = (vec3<f32>(x_894.x, x_894.y, x_894.z) * x_896);
  let x_898 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_901 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_903 : f32 = x_271.unity_LightData.y;
  u_xlat11.x = min(x_901, x_903);
  let x_909 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_909));
  let x_912 : f32 = u_xlat37;
  let x_915 : f32 = x_579.x_AdditionalShadowFadeParams.x;
  let x_918 : f32 = x_579.x_AdditionalShadowFadeParams.y;
  u_xlat22 = ((x_912 * x_915) + x_918);
  let x_920 : f32 = u_xlat22;
  u_xlat22 = clamp(x_920, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_932 : u32 = u_xlatu_loop_1;
    let x_933 : u32 = u_xlatu11;
    if ((x_932 < x_933)) {
    } else {
      break;
    }
    let x_936 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_936 >> 2u);
    let x_940 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_940 & 3u));
    let x_943 : u32 = u_xlatu37;
    let x_946 : vec4<f32> = x_271.unity_LightIndices[bitcast<i32>(x_943)];
    let x_956 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_961 : vec4<u32> = indexable[x_956];
    u_xlat37 = dot(x_946, bitcast<vec4<f32>>(x_961));
    let x_965 : f32 = u_xlat37;
    u_xlati37 = i32(x_965);
    let x_968 : vec3<f32> = vs_INTERP7;
    let x_979 : i32 = u_xlati37;
    let x_981 : vec4<f32> = x_978.x_AdditionalLightsPosition[x_979];
    let x_984 : i32 = u_xlati37;
    let x_986 : vec4<f32> = x_978.x_AdditionalLightsPosition[x_984];
    u_xlat8 = ((-(x_968) * vec3<f32>(x_981.w, x_981.w, x_981.w)) + vec3<f32>(x_986.x, x_986.y, x_986.z));
    let x_989 : vec3<f32> = u_xlat8;
    let x_990 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_989, x_990);
    let x_992 : f32 = u_xlat38;
    u_xlat38 = max(x_992, 0.00006103515625f);
    let x_995 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_995);
    let x_998 : f32 = u_xlat39;
    let x_1000 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_998, x_998, x_998) * x_1000);
    let x_1003 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_1003);
    let x_1005 : f32 = u_xlat38;
    let x_1006 : i32 = u_xlati37;
    let x_1008 : f32 = x_978.x_AdditionalLightsAttenuation[x_1006].x;
    u_xlat38 = (x_1005 * x_1008);
    let x_1010 : f32 = u_xlat38;
    let x_1012 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1010) * x_1012) + 1.0f);
    let x_1015 : f32 = u_xlat38;
    u_xlat38 = max(x_1015, 0.0f);
    let x_1017 : f32 = u_xlat38;
    let x_1018 : f32 = u_xlat38;
    u_xlat38 = (x_1017 * x_1018);
    let x_1020 : f32 = u_xlat38;
    let x_1021 : f32 = u_xlat40;
    u_xlat38 = (x_1020 * x_1021);
    let x_1023 : i32 = u_xlati37;
    let x_1025 : vec4<f32> = x_978.x_AdditionalLightsSpotDir[x_1023];
    let x_1027 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1025.x, x_1025.y, x_1025.z), x_1027);
    let x_1029 : f32 = u_xlat40;
    let x_1030 : i32 = u_xlati37;
    let x_1032 : f32 = x_978.x_AdditionalLightsAttenuation[x_1030].z;
    let x_1034 : i32 = u_xlati37;
    let x_1036 : f32 = x_978.x_AdditionalLightsAttenuation[x_1034].w;
    u_xlat40 = ((x_1029 * x_1032) + x_1036);
    let x_1038 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1038, 0.0f, 1.0f);
    let x_1040 : f32 = u_xlat40;
    let x_1041 : f32 = u_xlat40;
    u_xlat40 = (x_1040 * x_1041);
    let x_1043 : f32 = u_xlat38;
    let x_1044 : f32 = u_xlat40;
    u_xlat38 = (x_1043 * x_1044);
    let x_1048 : i32 = u_xlati37;
    let x_1050 : f32 = x_579.x_AdditionalShadowParams[x_1048].w;
    u_xlati40 = i32(x_1050);
    let x_1053 : i32 = u_xlati40;
    u_xlatb41 = (x_1053 >= 0i);
    let x_1055 : bool = u_xlatb41;
    if (x_1055) {
      let x_1059 : i32 = u_xlati37;
      let x_1061 : f32 = x_579.x_AdditionalShadowParams[x_1059].z;
      u_xlatb41 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1061, x_1061, x_1061, x_1061))));
      let x_1065 : bool = u_xlatb41;
      if (x_1065) {
        let x_1070 : vec3<f32> = u_xlat9;
        let x_1073 : vec3<f32> = u_xlat9;
        let x_1076 : vec4<bool> = (abs(vec4<f32>(x_1070.z, x_1070.z, x_1070.y, x_1070.z)) >= abs(vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.x)));
        let x_1077 : vec3<bool> = vec3<bool>(x_1076.x, x_1076.y, x_1076.z);
        let x_1078 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
        let x_1081 : bool = u_xlatb10.y;
        let x_1083 : bool = u_xlatb10.x;
        u_xlatb41 = (x_1081 & x_1083);
        let x_1085 : vec3<f32> = u_xlat9;
        let x_1088 : vec4<bool> = (-(vec4<f32>(x_1085.z, x_1085.y, x_1085.z, x_1085.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1089 : vec3<bool> = vec3<bool>(x_1088.x, x_1088.y, x_1088.w);
        let x_1090 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1089.x, x_1089.y, x_1090.z, x_1089.z);
        let x_1094 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1094);
        let x_1099 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1099);
        let x_1105 : bool = u_xlatb10.w;
        u_xlat42 = select(0.0f, 1.0f, x_1105);
        let x_1108 : bool = u_xlatb10.z;
        if (x_1108) {
          let x_1113 : f32 = u_xlat10.y;
          x_1109 = x_1113;
        } else {
          let x_1115 : f32 = u_xlat42;
          x_1109 = x_1115;
        }
        let x_1116 : f32 = x_1109;
        u_xlat42 = x_1116;
        let x_1118 : bool = u_xlatb41;
        if (x_1118) {
          let x_1123 : f32 = u_xlat10.x;
          x_1119 = x_1123;
        } else {
          let x_1125 : f32 = u_xlat42;
          x_1119 = x_1125;
        }
        let x_1126 : f32 = x_1119;
        u_xlat41 = x_1126;
        let x_1127 : i32 = u_xlati37;
        let x_1129 : f32 = x_579.x_AdditionalShadowParams[x_1127].w;
        u_xlat42 = trunc(x_1129);
        let x_1131 : f32 = u_xlat41;
        let x_1132 : f32 = u_xlat42;
        u_xlat41 = (x_1131 + x_1132);
        let x_1134 : f32 = u_xlat41;
        u_xlati40 = i32(x_1134);
      }
      let x_1136 : i32 = u_xlati40;
      u_xlati40 = (x_1136 << bitcast<u32>(2i));
      let x_1138 : vec3<f32> = vs_INTERP7;
      let x_1141 : i32 = u_xlati40;
      let x_1144 : i32 = u_xlati40;
      let x_1148 : vec4<f32> = x_579.x_AdditionalLightsWorldToShadow[((x_1141 + 1i) / 4i)][((x_1144 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1138.y, x_1138.y, x_1138.y, x_1138.y) * x_1148);
      let x_1150 : i32 = u_xlati40;
      let x_1152 : i32 = u_xlati40;
      let x_1155 : vec4<f32> = x_579.x_AdditionalLightsWorldToShadow[(x_1150 / 4i)][(x_1152 % 4i)];
      let x_1156 : vec3<f32> = vs_INTERP7;
      let x_1159 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1155 * vec4<f32>(x_1156.x, x_1156.x, x_1156.x, x_1156.x)) + x_1159);
      let x_1161 : i32 = u_xlati40;
      let x_1164 : i32 = u_xlati40;
      let x_1168 : vec4<f32> = x_579.x_AdditionalLightsWorldToShadow[((x_1161 + 2i) / 4i)][((x_1164 + 2i) % 4i)];
      let x_1169 : vec3<f32> = vs_INTERP7;
      let x_1172 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1168 * vec4<f32>(x_1169.z, x_1169.z, x_1169.z, x_1169.z)) + x_1172);
      let x_1174 : vec4<f32> = u_xlat10;
      let x_1175 : i32 = u_xlati40;
      let x_1178 : i32 = u_xlati40;
      let x_1182 : vec4<f32> = x_579.x_AdditionalLightsWorldToShadow[((x_1175 + 3i) / 4i)][((x_1178 + 3i) % 4i)];
      u_xlat10 = (x_1174 + x_1182);
      let x_1184 : vec4<f32> = u_xlat10;
      let x_1186 : vec4<f32> = u_xlat10;
      let x_1188 : vec3<f32> = (vec3<f32>(x_1184.x, x_1184.y, x_1184.z) / vec3<f32>(x_1186.w, x_1186.w, x_1186.w));
      let x_1189 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
      let x_1192 : vec4<f32> = u_xlat10;
      let x_1193 : vec2<f32> = vec2<f32>(x_1192.x, x_1192.y);
      let x_1195 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1193.x, x_1193.y, x_1195);
      let x_1203 : vec3<f32> = txVec1;
      let x_1205 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1203.xy, x_1203.z);
      u_xlat40 = x_1205;
      let x_1206 : i32 = u_xlati37;
      let x_1208 : f32 = x_579.x_AdditionalShadowParams[x_1206].x;
      u_xlat41 = (1.0f + -(x_1208));
      let x_1211 : f32 = u_xlat40;
      let x_1212 : i32 = u_xlati37;
      let x_1214 : f32 = x_579.x_AdditionalShadowParams[x_1212].x;
      let x_1216 : f32 = u_xlat41;
      u_xlat40 = ((x_1211 * x_1214) + x_1216);
      let x_1219 : f32 = u_xlat10.z;
      u_xlatb41 = (0.0f >= x_1219);
      let x_1223 : f32 = u_xlat10.z;
      u_xlatb42 = (x_1223 >= 1.0f);
      let x_1225 : bool = u_xlatb41;
      let x_1226 : bool = u_xlatb42;
      u_xlatb41 = (x_1225 | x_1226);
      let x_1228 : bool = u_xlatb41;
      let x_1229 : f32 = u_xlat40;
      u_xlat40 = select(x_1229, 1.0f, x_1228);
    } else {
      u_xlat40 = 1.0f;
    }
    let x_1232 : f32 = u_xlat40;
    u_xlat41 = (-(x_1232) + 1.0f);
    let x_1235 : f32 = u_xlat22;
    let x_1236 : f32 = u_xlat41;
    let x_1238 : f32 = u_xlat40;
    u_xlat40 = ((x_1235 * x_1236) + x_1238);
    let x_1240 : f32 = u_xlat38;
    let x_1241 : f32 = u_xlat40;
    u_xlat38 = (x_1240 * x_1241);
    let x_1243 : vec4<f32> = u_xlat3;
    let x_1245 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1243.x, x_1243.y, x_1243.z), x_1245);
    let x_1247 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1247, 0.0f, 1.0f);
    let x_1249 : f32 = u_xlat38;
    let x_1250 : f32 = u_xlat40;
    u_xlat38 = (x_1249 * x_1250);
    let x_1252 : f32 = u_xlat38;
    let x_1254 : i32 = u_xlati37;
    let x_1256 : vec4<f32> = x_978.x_AdditionalLightsColor[x_1254];
    let x_1258 : vec3<f32> = (vec3<f32>(x_1252, x_1252, x_1252) * vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
    let x_1259 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
    let x_1261 : vec3<f32> = u_xlat8;
    let x_1262 : f32 = u_xlat39;
    let x_1265 : vec3<f32> = u_xlat4;
    u_xlat8 = ((x_1261 * vec3<f32>(x_1262, x_1262, x_1262)) + x_1265);
    let x_1267 : vec3<f32> = u_xlat8;
    let x_1268 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1267, x_1268);
    let x_1270 : f32 = u_xlat37;
    u_xlat37 = max(x_1270, 1.17549435e-38f);
    let x_1272 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1272);
    let x_1274 : f32 = u_xlat37;
    let x_1276 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1274, x_1274, x_1274) * x_1276);
    let x_1278 : vec4<f32> = u_xlat3;
    let x_1280 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1278.x, x_1278.y, x_1278.z), x_1280);
    let x_1282 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1282, 0.0f, 1.0f);
    let x_1284 : vec3<f32> = u_xlat9;
    let x_1285 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1284, x_1285);
    let x_1287 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1287, 0.0f, 1.0f);
    let x_1289 : f32 = u_xlat37;
    let x_1290 : f32 = u_xlat37;
    u_xlat37 = (x_1289 * x_1290);
    let x_1292 : f32 = u_xlat37;
    let x_1294 : f32 = u_xlat0.x;
    u_xlat37 = ((x_1292 * x_1294) + 1.00001001358032226562f);
    let x_1297 : f32 = u_xlat38;
    let x_1298 : f32 = u_xlat38;
    u_xlat38 = (x_1297 * x_1298);
    let x_1300 : f32 = u_xlat37;
    let x_1301 : f32 = u_xlat37;
    u_xlat37 = (x_1300 * x_1301);
    let x_1303 : f32 = u_xlat38;
    u_xlat38 = max(x_1303, 0.10000000149011611938f);
    let x_1305 : f32 = u_xlat37;
    let x_1306 : f32 = u_xlat38;
    u_xlat37 = (x_1305 * x_1306);
    let x_1308 : f32 = u_xlat35;
    let x_1309 : f32 = u_xlat37;
    u_xlat37 = (x_1308 * x_1309);
    let x_1312 : f32 = u_xlat1.x;
    let x_1313 : f32 = u_xlat37;
    u_xlat37 = (x_1312 / x_1313);
    let x_1315 : vec3<f32> = u_xlat2;
    let x_1316 : f32 = u_xlat37;
    let x_1319 : vec3<f32> = u_xlat5;
    u_xlat8 = ((x_1315 * vec3<f32>(x_1316, x_1316, x_1316)) + x_1319);
    let x_1321 : vec3<f32> = u_xlat8;
    let x_1322 : vec4<f32> = u_xlat10;
    let x_1325 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1321 * vec3<f32>(x_1322.x, x_1322.y, x_1322.z)) + x_1325);

    continuing {
      let x_1327 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1327 + bitcast<u32>(1i));
    }
  }
  let x_1329 : vec3<f32> = u_xlat12;
  let x_1330 : f32 = u_xlat33;
  let x_1333 : vec4<f32> = u_xlat6;
  let x_1335 : vec3<f32> = ((x_1329 * vec3<f32>(x_1330, x_1330, x_1330)) + vec3<f32>(x_1333.x, x_1333.y, x_1333.z));
  let x_1336 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1336.w);
  let x_1340 : vec3<f32> = u_xlat7;
  let x_1341 : vec4<f32> = u_xlat0;
  let x_1343 : vec3<f32> = (x_1340 + vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
  let x_1344 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
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


