diagnostic(off, derivative_uniformity);

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

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ScreenParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_C30C7CA3 : vec4<f32>,
  /* @offset(32) */
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb12 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_83 : UnityPerDraw;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(0) var<uniform> x_149 : PGlobals;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_269 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_376 : LightShadows;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb37 : bool;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatu14 : vec3<u32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlati26 : i32;

var<private> u_xlatu26 : u32;

var<private> u_xlati14 : i32;

var<private> u_xlat26 : f32;

var<private> u_xlatb14 : bool;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat19 : vec2<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlati6 : i32;

var<private> u_xlati28 : i32;

@group(1) @binding(1) var<uniform> x_1385 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu4 : u32;

var<private> u_xlatb28 : bool;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var x_176 : f32;
  var x_189 : f32;
  var x_201 : f32;
  var txVec0 : vec3<f32>;
  var x_610 : f32;
  var x_652 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_788 : f32;
  var x_814 : f32;
  var x_861 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1545 : f32;
  var x_1555 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_48 : vec3<f32> = vs_INTERP9;
  let x_49 : vec3<f32> = vs_INTERP9;
  u_xlat0.x = dot(x_48, x_49);
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_55);
  let x_60 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_60);
  let x_74 : f32 = vs_INTERP4.w;
  u_xlatb12.x = (0.0f < x_74);
  let x_87 : f32 = x_83.unity_WorldTransformParams.w;
  u_xlatb12.y = (x_87 >= 0.0f);
  let x_93 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_93);
  let x_98 : bool = u_xlatb12.y;
  u_xlat12.y = select(-1.0f, 1.0f, x_98);
  let x_102 : f32 = u_xlat12.y;
  let x_104 : f32 = u_xlat12.x;
  u_xlat12.x = (x_102 * x_104);
  let x_108 : vec4<f32> = vs_INTERP4;
  let x_110 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_108.y, x_108.z, x_108.x) * vec3<f32>(x_110.z, x_110.x, x_110.y));
  let x_113 : vec3<f32> = vs_INTERP9;
  let x_115 : vec4<f32> = vs_INTERP4;
  let x_118 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_113.y, x_113.z, x_113.x) * vec3<f32>(x_115.z, x_115.x, x_115.y)) + -(x_118));
  let x_121 : vec3<f32> = u_xlat12;
  let x_123 : vec3<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_121.x, x_121.x, x_121.x) * x_123);
  let x_125 : vec3<f32> = u_xlat0;
  let x_127 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_125.x, x_125.x, x_125.x) * x_127);
  let x_131 : vec3<f32> = u_xlat0;
  let x_133 : vec4<f32> = vs_INTERP4;
  let x_135 : vec3<f32> = (vec3<f32>(x_131.x, x_131.x, x_131.x) * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec3<f32> = u_xlat12;
  let x_140 : vec3<f32> = u_xlat0;
  let x_142 : vec3<f32> = (x_139 * vec3<f32>(x_140.x, x_140.x, x_140.x));
  let x_143 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_152 : f32 = x_149.unity_OrthoParams.w;
  u_xlatb0 = (x_152 == 0.0f);
  let x_156 : vec3<f32> = vs_INTERP8;
  let x_161 : vec3<f32> = x_149.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_156) + x_161);
  let x_164 : vec3<f32> = u_xlat4;
  let x_165 : vec3<f32> = u_xlat4;
  u_xlat37 = dot(x_164, x_165);
  let x_167 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_167);
  let x_169 : f32 = u_xlat37;
  let x_171 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_169, x_169, x_169) * x_171);
  let x_174 : bool = u_xlatb0;
  if (x_174) {
    let x_180 : f32 = u_xlat4.x;
    x_176 = x_180;
  } else {
    let x_185 : f32 = x_149.unity_MatrixV[0i].z;
    x_176 = x_185;
  }
  let x_186 : f32 = x_176;
  u_xlat5.x = x_186;
  let x_188 : bool = u_xlatb0;
  if (x_188) {
    let x_193 : f32 = u_xlat4.y;
    x_189 = x_193;
  } else {
    let x_197 : f32 = x_149.unity_MatrixV[1i].z;
    x_189 = x_197;
  }
  let x_198 : f32 = x_189;
  u_xlat5.y = x_198;
  let x_200 : bool = u_xlatb0;
  if (x_200) {
    let x_205 : f32 = u_xlat4.z;
    x_201 = x_205;
  } else {
    let x_209 : f32 = x_149.unity_MatrixV[2i].z;
    x_201 = x_209;
  }
  let x_210 : f32 = x_201;
  u_xlat5.z = x_210;
  let x_212 : vec3<f32> = u_xlat5;
  let x_216 : vec4<f32> = x_83.unity_WorldToObject[1i];
  u_xlat4 = (vec3<f32>(x_212.y, x_212.y, x_212.y) * vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_220 : vec4<f32> = x_83.unity_WorldToObject[0i];
  let x_222 : vec3<f32> = u_xlat5;
  let x_225 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_220.x, x_220.y, x_220.z) * vec3<f32>(x_222.x, x_222.x, x_222.x)) + x_225);
  let x_228 : vec4<f32> = x_83.unity_WorldToObject[2i];
  let x_230 : vec3<f32> = u_xlat5;
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_228.x, x_228.y, x_228.z) * vec3<f32>(x_230.z, x_230.z, x_230.z)) + x_233);
  let x_235 : vec3<f32> = u_xlat4;
  let x_236 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_235, x_236);
  let x_240 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_240);
  let x_243 : vec3<f32> = u_xlat0;
  let x_245 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_243.x, x_243.x, x_243.x) * x_245);
  let x_259 : vec4<f32> = vs_INTERP5;
  let x_262 : f32 = x_149.x_GlobalMipBias.x;
  let x_263 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_259.x, x_259.y), x_262);
  u_xlat6 = x_263;
  let x_265 : vec4<f32> = u_xlat6;
  let x_271 : vec4<f32> = x_269.Color_C30C7CA3;
  let x_273 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_282 : vec4<f32> = vs_INTERP5;
  let x_285 : f32 = x_149.x_GlobalMipBias.x;
  let x_286 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_282.x, x_282.y), x_285);
  u_xlat8 = vec4<f32>(x_286.w, x_286.x, x_286.y, x_286.z);
  let x_289 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_289.y, x_289.z, x_289.w, x_289.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_296 : vec4<f32> = u_xlat9;
  let x_297 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_296, x_297);
  let x_301 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_301);
  let x_305 : vec3<f32> = u_xlat0;
  let x_307 : vec4<f32> = u_xlat9;
  u_xlat20 = (vec3<f32>(x_305.x, x_305.x, x_305.x) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_312 : f32 = vs_INTERP6.y;
  u_xlat0.x = (x_312 * 200.0f);
  let x_317 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_317, 1.0f);
  let x_320 : vec3<f32> = u_xlat0;
  let x_322 : vec4<f32> = u_xlat6;
  let x_324 : vec3<f32> = (vec3<f32>(x_320.x, x_320.x, x_320.x) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat3;
  let x_329 : vec3<f32> = u_xlat20;
  let x_331 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.y, x_329.y, x_329.y));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec3<f32> = u_xlat20;
  let x_336 : vec4<f32> = u_xlat2;
  let x_339 : vec4<f32> = u_xlat3;
  let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.x, x_334.x) * vec3<f32>(x_336.x, x_336.y, x_336.z)) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec3<f32> = u_xlat20;
  let x_346 : vec3<f32> = u_xlat1;
  let x_348 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_344.z, x_344.z, x_344.z) * x_346) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec3<f32> = u_xlat1;
  let x_352 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_351, x_352);
  let x_356 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_356, 1.17549435e-38f);
  let x_361 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_361);
  let x_364 : vec3<f32> = u_xlat0;
  let x_366 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_364.x, x_364.x, x_364.x) * x_366);
  let x_368 : vec3<f32> = vs_INTERP8;
  let x_378 : vec4<f32> = x_376.x_CascadeShadowSplitSpheres0;
  let x_381 : vec3<f32> = (x_368 + -(vec3<f32>(x_378.x, x_378.y, x_378.z)));
  let x_382 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec3<f32> = vs_INTERP8;
  let x_386 : vec4<f32> = x_376.x_CascadeShadowSplitSpheres1;
  let x_389 : vec3<f32> = (x_384 + -(vec3<f32>(x_386.x, x_386.y, x_386.z)));
  let x_390 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec3<f32> = vs_INTERP8;
  let x_394 : vec4<f32> = x_376.x_CascadeShadowSplitSpheres2;
  let x_397 : vec3<f32> = (x_392 + -(vec3<f32>(x_394.x, x_394.y, x_394.z)));
  let x_398 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_401 : vec3<f32> = vs_INTERP8;
  let x_404 : vec4<f32> = x_376.x_CascadeShadowSplitSpheres3;
  let x_407 : vec3<f32> = (x_401 + -(vec3<f32>(x_404.x, x_404.y, x_404.z)));
  let x_408 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_410 : vec4<f32> = u_xlat2;
  let x_412 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_410.x, x_410.y, x_410.z), vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_416 : vec4<f32> = u_xlat3;
  let x_418 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_416.x, x_416.y, x_416.z), vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_422 : vec4<f32> = u_xlat9;
  let x_424 : vec4<f32> = u_xlat9;
  u_xlat2.z = dot(vec3<f32>(x_422.x, x_422.y, x_422.z), vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_428 : vec4<f32> = u_xlat10;
  let x_430 : vec4<f32> = u_xlat10;
  u_xlat2.w = dot(vec3<f32>(x_428.x, x_428.y, x_428.z), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_437 : vec4<f32> = u_xlat2;
  let x_439 : vec4<f32> = x_376.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_437 < x_439);
  let x_442 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_442);
  let x_446 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_446);
  let x_450 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_450);
  let x_454 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_454);
  let x_458 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_458);
  let x_463 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_463);
  let x_467 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_467);
  let x_470 : vec4<f32> = u_xlat2;
  let x_472 : vec4<f32> = u_xlat3;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) + vec3<f32>(x_472.y, x_472.z, x_472.w));
  let x_475 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat2;
  let x_480 : vec3<f32> = max(vec3<f32>(x_477.x, x_477.y, x_477.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_481 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_481.x, x_480.x, x_480.y, x_480.z);
  let x_483 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_483, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_490 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_490) + 4.0f);
  let x_497 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_497);
  let x_501 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_501) << bitcast<u32>(2i));
  let x_504 : vec3<f32> = vs_INTERP8;
  let x_506 : i32 = u_xlati0;
  let x_509 : i32 = u_xlati0;
  let x_513 : vec4<f32> = x_376.x_MainLightWorldToShadow[((x_506 + 1i) / 4i)][((x_509 + 1i) % 4i)];
  let x_515 : vec3<f32> = (vec3<f32>(x_504.y, x_504.y, x_504.y) * vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : i32 = u_xlati0;
  let x_520 : i32 = u_xlati0;
  let x_523 : vec4<f32> = x_376.x_MainLightWorldToShadow[(x_518 / 4i)][(x_520 % 4i)];
  let x_525 : vec3<f32> = vs_INTERP8;
  let x_528 : vec4<f32> = u_xlat2;
  let x_530 : vec3<f32> = ((vec3<f32>(x_523.x, x_523.y, x_523.z) * vec3<f32>(x_525.x, x_525.x, x_525.x)) + vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : i32 = u_xlati0;
  let x_536 : i32 = u_xlati0;
  let x_540 : vec4<f32> = x_376.x_MainLightWorldToShadow[((x_533 + 2i) / 4i)][((x_536 + 2i) % 4i)];
  let x_542 : vec3<f32> = vs_INTERP8;
  let x_545 : vec4<f32> = u_xlat2;
  let x_547 : vec3<f32> = ((vec3<f32>(x_540.x, x_540.y, x_540.z) * vec3<f32>(x_542.z, x_542.z, x_542.z)) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_550 : vec4<f32> = u_xlat2;
  let x_552 : i32 = u_xlati0;
  let x_555 : i32 = u_xlati0;
  let x_559 : vec4<f32> = x_376.x_MainLightWorldToShadow[((x_552 + 3i) / 4i)][((x_555 + 3i) % 4i)];
  let x_561 : vec3<f32> = (vec3<f32>(x_550.x, x_550.y, x_550.z) + vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_566 : vec4<f32> = u_xlat2;
  let x_567 : vec2<f32> = vec2<f32>(x_566.x, x_566.y);
  let x_569 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_567.x, x_567.y, x_569);
  let x_581 : vec3<f32> = txVec0;
  let x_583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_581.xy, x_581.z);
  u_xlat0.x = x_583;
  let x_586 : f32 = x_376.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_586) + 1.0f);
  let x_590 : f32 = u_xlat0.x;
  let x_592 : f32 = x_376.x_MainLightShadowParams.x;
  let x_594 : f32 = u_xlat37;
  u_xlat0.x = ((x_590 * x_592) + x_594);
  let x_599 : f32 = u_xlat2.z;
  u_xlatb37 = (0.0f >= x_599);
  let x_602 : f32 = u_xlat2.z;
  u_xlatb2.x = (x_602 >= 1.0f);
  let x_605 : bool = u_xlatb37;
  let x_607 : bool = u_xlatb2.x;
  u_xlatb37 = (x_605 | x_607);
  let x_609 : bool = u_xlatb37;
  if (x_609) {
    x_610 = 1.0f;
  } else {
    let x_615 : f32 = u_xlat0.x;
    x_610 = x_615;
  }
  let x_616 : f32 = x_610;
  u_xlat0.x = x_616;
  let x_618 : vec3<f32> = u_xlat1;
  let x_620 : vec4<f32> = x_149.x_MainLightPosition;
  u_xlat1.x = dot(x_618, -(vec3<f32>(x_620.x, x_620.y, x_620.z)));
  let x_626 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_626, 0.0f, 1.0f);
  let x_630 : vec3<f32> = u_xlat0;
  let x_633 : vec4<f32> = x_149.x_MainLightColor;
  u_xlat13 = (vec3<f32>(x_630.x, x_630.x, x_630.x) * vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec3<f32> = u_xlat13;
  let x_637 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_636 * vec3<f32>(x_637.x, x_637.x, x_637.x));
  let x_640 : vec3<f32> = u_xlat1;
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_640 * vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_645 : f32 = x_83.unity_LODFade.x;
  u_xlatb37 = (x_645 < 0.0f);
  let x_648 : f32 = x_83.unity_LODFade.x;
  u_xlat2.x = (x_648 + 1.0f);
  let x_651 : bool = u_xlatb37;
  if (x_651) {
    let x_656 : f32 = u_xlat2.x;
    x_652 = x_656;
  } else {
    let x_659 : f32 = x_83.unity_LODFade.x;
    x_652 = x_659;
  }
  let x_660 : f32 = x_652;
  u_xlat37 = x_660;
  let x_662 : f32 = u_xlat37;
  u_xlatb2.x = (0.5f >= x_662);
  let x_666 : vec3<f32> = u_xlat4;
  let x_670 : vec4<f32> = x_149.x_ScreenParams;
  u_xlat14 = (abs(x_666) * vec3<f32>(x_670.x, x_670.y, x_670.x));
  let x_676 : vec3<f32> = u_xlat14;
  u_xlatu14 = vec3<u32>(x_676);
  let x_680 : u32 = u_xlatu14.z;
  u_xlatu38 = (x_680 * 1025u);
  let x_684 : u32 = u_xlatu38;
  u_xlatu3 = (x_684 >> 6u);
  let x_688 : u32 = u_xlatu38;
  let x_689 : u32 = u_xlatu3;
  u_xlati38 = bitcast<i32>((x_688 ^ x_689));
  let x_692 : i32 = u_xlati38;
  u_xlatu38 = (bitcast<u32>(x_692) * 9u);
  let x_696 : u32 = u_xlatu38;
  u_xlatu3 = (x_696 >> 11u);
  let x_699 : u32 = u_xlatu38;
  let x_700 : u32 = u_xlatu3;
  u_xlati38 = bitcast<i32>((x_699 ^ x_700));
  let x_703 : i32 = u_xlati38;
  u_xlati38 = (x_703 * 32769i);
  let x_707 : i32 = u_xlati38;
  let x_710 : u32 = u_xlatu14.y;
  u_xlati26 = bitcast<i32>((bitcast<u32>(x_707) ^ x_710));
  let x_714 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_714) * 1025u);
  let x_717 : u32 = u_xlatu26;
  u_xlatu38 = (x_717 >> 6u);
  let x_719 : u32 = u_xlatu38;
  let x_720 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_719 ^ x_720));
  let x_723 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_723) * 9u);
  let x_726 : u32 = u_xlatu26;
  u_xlatu38 = (x_726 >> 11u);
  let x_728 : u32 = u_xlatu38;
  let x_729 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_728 ^ x_729));
  let x_732 : i32 = u_xlati26;
  u_xlati26 = (x_732 * 32769i);
  let x_735 : i32 = u_xlati26;
  let x_738 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((bitcast<u32>(x_735) ^ x_738));
  let x_741 : i32 = u_xlati14;
  u_xlatu14.x = (bitcast<u32>(x_741) * 1025u);
  let x_746 : u32 = u_xlatu14.x;
  u_xlatu26 = (x_746 >> 6u);
  let x_748 : u32 = u_xlatu26;
  let x_750 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((x_748 ^ x_750));
  let x_753 : i32 = u_xlati14;
  u_xlatu14.x = (bitcast<u32>(x_753) * 9u);
  let x_758 : u32 = u_xlatu14.x;
  u_xlatu26 = (x_758 >> 11u);
  let x_760 : u32 = u_xlatu26;
  let x_762 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((x_760 ^ x_762));
  let x_765 : i32 = u_xlati14;
  u_xlati14 = (x_765 * 32769i);
  param = 1065353216i;
  let x_771 : i32 = u_xlati14;
  param_1 = x_771;
  param_2 = 0i;
  param_3 = 23i;
  let x_774 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat14.x = bitcast<f32>(x_774);
  let x_778 : f32 = u_xlat14.x;
  u_xlat14.x = (x_778 + -1.0f);
  let x_783 : f32 = u_xlat14.x;
  u_xlat26 = (-(x_783) + 1.0f);
  let x_787 : bool = u_xlatb2.x;
  if (x_787) {
    let x_792 : f32 = u_xlat14.x;
    x_788 = x_792;
  } else {
    let x_794 : f32 = u_xlat26;
    x_788 = x_794;
  }
  let x_795 : f32 = x_788;
  u_xlat2.x = x_795;
  let x_797 : f32 = u_xlat37;
  let x_800 : f32 = u_xlat2.x;
  u_xlat37 = ((x_797 * 2.0f) + -(x_800));
  let x_803 : f32 = u_xlat37;
  let x_805 : f32 = u_xlat6.w;
  u_xlat2.x = (x_803 * x_805);
  let x_810 : f32 = u_xlat2.x;
  u_xlatb14 = (x_810 >= 0.40000000596046447754f);
  let x_813 : bool = u_xlatb14;
  if (x_813) {
    let x_818 : f32 = u_xlat2.x;
    x_814 = x_818;
  } else {
    x_814 = 0.0f;
  }
  let x_820 : f32 = x_814;
  u_xlat14.x = x_820;
  let x_823 : f32 = u_xlat6.w;
  let x_824 : f32 = u_xlat37;
  u_xlat37 = ((x_823 * x_824) + -0.40000000596046447754f);
  let x_829 : f32 = u_xlat2.x;
  u_xlat26 = dpdxCoarse(x_829);
  let x_832 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_832);
  let x_836 : f32 = u_xlat2.x;
  let x_838 : f32 = u_xlat26;
  u_xlat2.x = (abs(x_836) + abs(x_838));
  let x_843 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_843, 0.00009999999747378752f);
  let x_847 : f32 = u_xlat37;
  let x_849 : f32 = u_xlat2.x;
  u_xlat37 = (x_847 / x_849);
  let x_851 : f32 = u_xlat37;
  u_xlat37 = (x_851 + 0.5f);
  let x_853 : f32 = u_xlat37;
  u_xlat37 = clamp(x_853, 0.0f, 1.0f);
  let x_856 : f32 = x_149.x_AlphaToMaskAvailable;
  u_xlatb2.x = !((x_856 == 0.0f));
  let x_860 : bool = u_xlatb2.x;
  if (x_860) {
    let x_864 : f32 = u_xlat37;
    x_861 = x_864;
  } else {
    let x_867 : f32 = u_xlat14.x;
    x_861 = x_867;
  }
  let x_868 : f32 = x_861;
  u_xlat37 = x_868;
  let x_869 : f32 = u_xlat37;
  u_xlat14.x = (x_869 + -0.00009999999747378752f);
  let x_874 : f32 = u_xlat14.x;
  u_xlatb14 = (x_874 < 0.0f);
  let x_876 : bool = u_xlatb14;
  if (((select(0i, 1i, x_876) * -1i) != 0i)) {
    discard;
  }
  let x_884 : vec3<f32> = u_xlat12;
  let x_885 : vec3<f32> = u_xlat20;
  u_xlat12 = (x_884 * vec3<f32>(x_885.y, x_885.y, x_885.y));
  let x_888 : vec3<f32> = u_xlat20;
  let x_890 : vec4<f32> = vs_INTERP4;
  let x_893 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_888.x, x_888.x, x_888.x) * vec3<f32>(x_890.x, x_890.y, x_890.z)) + x_893);
  let x_895 : vec3<f32> = u_xlat20;
  let x_897 : vec3<f32> = vs_INTERP9;
  let x_899 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_895.z, x_895.z, x_895.z) * x_897) + x_899);
  let x_901 : vec3<f32> = u_xlat12;
  let x_902 : vec3<f32> = u_xlat12;
  u_xlat14.x = dot(x_901, x_902);
  let x_906 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_906);
  let x_909 : vec3<f32> = u_xlat12;
  let x_910 : vec3<f32> = u_xlat14;
  u_xlat12 = (x_909 * vec3<f32>(x_910.x, x_910.x, x_910.x));
  let x_920 : vec2<f32> = vs_INTERP0;
  let x_922 : f32 = x_149.x_GlobalMipBias.x;
  let x_923 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_920, x_922);
  u_xlat3 = x_923;
  let x_928 : vec2<f32> = vs_INTERP0;
  let x_930 : f32 = x_149.x_GlobalMipBias.x;
  let x_931 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_928, x_930);
  u_xlat14 = vec3<f32>(x_931.x, x_931.y, x_931.z);
  let x_933 : vec4<f32> = u_xlat3;
  let x_937 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_938 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec3<f32> = u_xlat12;
  let x_941 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_940, vec3<f32>(x_941.x, x_941.y, x_941.z));
  let x_946 : f32 = u_xlat3.x;
  u_xlat3.x = (x_946 + 0.5f);
  let x_949 : vec3<f32> = u_xlat14;
  let x_950 : vec4<f32> = u_xlat3;
  u_xlat14 = (x_949 * vec3<f32>(x_950.x, x_950.x, x_950.x));
  let x_954 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_954, 0.00009999999747378752f);
  let x_957 : vec3<f32> = u_xlat14;
  let x_958 : vec4<f32> = u_xlat3;
  u_xlat14 = (x_957 / vec3<f32>(x_958.x, x_958.x, x_958.x));
  let x_962 : f32 = u_xlat8.x;
  u_xlat8.x = x_962;
  let x_965 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_965, 0.0f, 1.0f);
  let x_968 : f32 = u_xlat37;
  u_xlat37 = x_968;
  let x_969 : f32 = u_xlat37;
  u_xlat37 = clamp(x_969, 0.0f, 1.0f);
  let x_971 : vec4<f32> = u_xlat7;
  let x_975 : vec3<f32> = (vec3<f32>(x_971.x, x_971.y, x_971.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_976 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_980 : f32 = u_xlat8.x;
  u_xlat39 = (-(x_980) + 1.0f);
  let x_983 : f32 = u_xlat39;
  let x_984 : f32 = u_xlat39;
  u_xlat4.x = (x_983 * x_984);
  let x_988 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_988, 0.0078125f);
  let x_994 : f32 = u_xlat4.x;
  let x_996 : f32 = u_xlat4.x;
  u_xlat16 = (x_994 * x_996);
  let x_1000 : f32 = u_xlat8.x;
  u_xlat28 = (x_1000 + 0.04000002145767211914f);
  let x_1003 : f32 = u_xlat28;
  u_xlat28 = min(x_1003, 1.0f);
  let x_1007 : f32 = u_xlat4.x;
  u_xlat40 = ((x_1007 * 4.0f) + 2.0f);
  let x_1012 : f32 = vs_INTERP6.w;
  u_xlat41 = min(x_1012, 1.0f);
  let x_1014 : vec3<f32> = vs_INTERP8;
  let x_1016 : vec3<f32> = x_149.x_WorldSpaceCameraPos;
  let x_1018 : vec3<f32> = (x_1014 + -(x_1016));
  let x_1019 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec4<f32> = u_xlat6;
  let x_1023 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1021.x, x_1021.y, x_1021.z), vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
  let x_1029 : f32 = u_xlat6.x;
  let x_1031 : f32 = x_376.x_MainLightShadowParams.z;
  let x_1034 : f32 = x_376.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_1029 * x_1031) + x_1034);
  let x_1038 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_1038, 0.0f, 1.0f);
  let x_1043 : f32 = u_xlat0.x;
  u_xlat30 = (-(x_1043) + 1.0f);
  let x_1047 : f32 = u_xlat18.x;
  let x_1048 : f32 = u_xlat30;
  let x_1051 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1047 * x_1048) + x_1051);
  let x_1054 : vec3<f32> = u_xlat5;
  let x_1056 : vec3<f32> = u_xlat12;
  u_xlat18.x = dot(-(x_1054), x_1056);
  let x_1060 : f32 = u_xlat18.x;
  let x_1062 : f32 = u_xlat18.x;
  u_xlat18.x = (x_1060 + x_1062);
  let x_1065 : vec3<f32> = u_xlat12;
  let x_1066 : vec3<f32> = u_xlat18;
  let x_1070 : vec3<f32> = u_xlat5;
  u_xlat18 = ((x_1065 * -(vec3<f32>(x_1066.x, x_1066.x, x_1066.x))) + -(x_1070));
  let x_1073 : vec3<f32> = u_xlat12;
  let x_1074 : vec3<f32> = u_xlat5;
  u_xlat7.x = dot(x_1073, x_1074);
  let x_1078 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_1078, 0.0f, 1.0f);
  let x_1082 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_1082) + 1.0f);
  let x_1087 : f32 = u_xlat7.x;
  let x_1089 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1087 * x_1089);
  let x_1093 : f32 = u_xlat7.x;
  let x_1095 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1093 * x_1095);
  let x_1100 : f32 = u_xlat39;
  u_xlat19.x = ((-(x_1100) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1107 : f32 = u_xlat39;
  let x_1109 : f32 = u_xlat19.x;
  u_xlat39 = (x_1107 * x_1109);
  let x_1111 : f32 = u_xlat39;
  u_xlat39 = (x_1111 * 6.0f);
  let x_1122 : vec3<f32> = u_xlat18;
  let x_1123 : f32 = u_xlat39;
  let x_1124 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1122, x_1123);
  u_xlat8 = x_1124;
  let x_1126 : f32 = u_xlat8.w;
  u_xlat39 = (x_1126 + -1.0f);
  let x_1129 : f32 = x_83.unity_SpecCube0_HDR.w;
  let x_1130 : f32 = u_xlat39;
  u_xlat39 = ((x_1129 * x_1130) + 1.0f);
  let x_1133 : f32 = u_xlat39;
  u_xlat39 = max(x_1133, 0.0f);
  let x_1135 : f32 = u_xlat39;
  u_xlat39 = log2(x_1135);
  let x_1137 : f32 = u_xlat39;
  let x_1139 : f32 = x_83.unity_SpecCube0_HDR.y;
  u_xlat39 = (x_1137 * x_1139);
  let x_1141 : f32 = u_xlat39;
  u_xlat39 = exp2(x_1141);
  let x_1143 : f32 = u_xlat39;
  let x_1145 : f32 = x_83.unity_SpecCube0_HDR.x;
  u_xlat39 = (x_1143 * x_1145);
  let x_1147 : vec4<f32> = u_xlat8;
  let x_1149 : f32 = u_xlat39;
  u_xlat18 = (vec3<f32>(x_1147.x, x_1147.y, x_1147.z) * vec3<f32>(x_1149, x_1149, x_1149));
  let x_1152 : vec3<f32> = u_xlat4;
  let x_1154 : vec3<f32> = u_xlat4;
  u_xlat19 = ((vec2<f32>(x_1152.x, x_1152.x) * vec2<f32>(x_1154.x, x_1154.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1160 : f32 = u_xlat19.y;
  u_xlat39 = (1.0f / x_1160);
  let x_1162 : f32 = u_xlat28;
  u_xlat4.x = (x_1162 + -0.03999999910593032837f);
  let x_1167 : f32 = u_xlat7.x;
  let x_1169 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1167 * x_1169) + 0.03999999910593032837f);
  let x_1174 : f32 = u_xlat39;
  let x_1176 : f32 = u_xlat4.x;
  u_xlat39 = (x_1174 * x_1176);
  let x_1178 : f32 = u_xlat39;
  let x_1180 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_1178, x_1178, x_1178) * x_1180);
  let x_1182 : vec3<f32> = u_xlat14;
  let x_1183 : vec4<f32> = u_xlat3;
  let x_1186 : vec3<f32> = u_xlat18;
  u_xlat14 = ((x_1182 * vec3<f32>(x_1183.x, x_1183.y, x_1183.z)) + x_1186);
  let x_1189 : f32 = u_xlat0.x;
  let x_1191 : f32 = x_83.unity_LightData.z;
  u_xlat0.x = (x_1189 * x_1191);
  let x_1194 : vec3<f32> = u_xlat12;
  let x_1196 : vec4<f32> = x_149.x_MainLightPosition;
  u_xlat39 = dot(x_1194, vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1199, 0.0f, 1.0f);
  let x_1202 : f32 = u_xlat0.x;
  let x_1203 : f32 = u_xlat39;
  u_xlat0.x = (x_1202 * x_1203);
  let x_1206 : vec3<f32> = u_xlat0;
  let x_1209 : vec4<f32> = x_149.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_1206.x, x_1206.x, x_1206.x) * vec3<f32>(x_1209.x, x_1209.y, x_1209.z));
  let x_1212 : vec3<f32> = u_xlat5;
  let x_1214 : vec4<f32> = x_149.x_MainLightPosition;
  let x_1216 : vec3<f32> = (x_1212 + vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1217 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1216.x, x_1217.y, x_1216.y, x_1216.z);
  let x_1219 : vec4<f32> = u_xlat7;
  let x_1221 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1219.x, x_1219.z, x_1219.w), vec3<f32>(x_1221.x, x_1221.z, x_1221.w));
  let x_1226 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1226, 1.17549435e-38f);
  let x_1230 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1230);
  let x_1233 : vec3<f32> = u_xlat0;
  let x_1235 : vec4<f32> = u_xlat7;
  let x_1237 : vec3<f32> = (vec3<f32>(x_1233.x, x_1233.x, x_1233.x) * vec3<f32>(x_1235.x, x_1235.z, x_1235.w));
  let x_1238 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1237.x, x_1238.y, x_1237.y, x_1237.z);
  let x_1240 : vec3<f32> = u_xlat12;
  let x_1241 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1240, vec3<f32>(x_1241.x, x_1241.z, x_1241.w));
  let x_1246 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1246, 0.0f, 1.0f);
  let x_1250 : vec4<f32> = x_149.x_MainLightPosition;
  let x_1252 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_1250.x, x_1250.y, x_1250.z), vec3<f32>(x_1252.x, x_1252.z, x_1252.w));
  let x_1255 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1255, 0.0f, 1.0f);
  let x_1258 : f32 = u_xlat0.x;
  let x_1260 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1258 * x_1260);
  let x_1264 : f32 = u_xlat0.x;
  let x_1266 : f32 = u_xlat19.x;
  u_xlat0.x = ((x_1264 * x_1266) + 1.00001001358032226562f);
  let x_1271 : f32 = u_xlat39;
  let x_1272 : f32 = u_xlat39;
  u_xlat39 = (x_1271 * x_1272);
  let x_1275 : f32 = u_xlat0.x;
  let x_1277 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1275 * x_1277);
  let x_1280 : f32 = u_xlat39;
  u_xlat39 = max(x_1280, 0.10000000149011611938f);
  let x_1284 : f32 = u_xlat0.x;
  let x_1285 : f32 = u_xlat39;
  u_xlat0.x = (x_1284 * x_1285);
  let x_1288 : f32 = u_xlat40;
  let x_1290 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1288 * x_1290);
  let x_1293 : f32 = u_xlat16;
  let x_1295 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1293 / x_1295);
  let x_1298 : vec3<f32> = u_xlat0;
  let x_1302 : vec4<f32> = u_xlat3;
  let x_1304 : vec3<f32> = ((vec3<f32>(x_1298.x, x_1298.x, x_1298.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1302.x, x_1302.y, x_1302.z));
  let x_1305 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1304.x, x_1305.y, x_1304.y, x_1304.z);
  let x_1307 : vec3<f32> = u_xlat18;
  let x_1308 : vec4<f32> = u_xlat7;
  u_xlat18 = (x_1307 * vec3<f32>(x_1308.x, x_1308.z, x_1308.w));
  let x_1312 : f32 = x_149.x_AdditionalLightsCount.x;
  let x_1314 : f32 = x_83.unity_LightData.y;
  u_xlat0.x = min(x_1312, x_1314);
  let x_1318 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1318));
  let x_1322 : f32 = u_xlat6.x;
  let x_1325 : f32 = x_376.x_AdditionalShadowFadeParams.x;
  let x_1328 : f32 = x_376.x_AdditionalShadowFadeParams.y;
  u_xlat39 = ((x_1322 * x_1325) + x_1328);
  let x_1330 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1330, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlat7.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1341 : u32 = u_xlatu_loop_1;
    let x_1342 : u32 = u_xlatu0;
    if ((x_1341 < x_1342)) {
    } else {
      break;
    }
    let x_1345 : u32 = u_xlatu_loop_1;
    u_xlatu28 = (x_1345 >> 2u);
    let x_1348 : u32 = u_xlatu_loop_1;
    u_xlati6 = bitcast<i32>((x_1348 & 3u));
    let x_1351 : u32 = u_xlatu28;
    let x_1354 : vec4<f32> = x_83.unity_LightIndices[bitcast<i32>(x_1351)];
    let x_1364 : i32 = u_xlati6;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1369 : vec4<u32> = indexable[x_1364];
    u_xlat28 = dot(x_1354, bitcast<vec4<f32>>(x_1369));
    let x_1373 : f32 = u_xlat28;
    u_xlati28 = i32(x_1373);
    let x_1375 : vec3<f32> = vs_INTERP8;
    let x_1386 : i32 = u_xlati28;
    let x_1388 : vec4<f32> = x_1385.x_AdditionalLightsPosition[x_1386];
    let x_1391 : i32 = u_xlati28;
    let x_1393 : vec4<f32> = x_1385.x_AdditionalLightsPosition[x_1391];
    let x_1395 : vec3<f32> = ((-(x_1375) * vec3<f32>(x_1388.w, x_1388.w, x_1388.w)) + vec3<f32>(x_1393.x, x_1393.y, x_1393.z));
    let x_1396 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
    let x_1398 : vec4<f32> = u_xlat8;
    let x_1400 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1398.x, x_1398.y, x_1398.z), vec3<f32>(x_1400.x, x_1400.y, x_1400.z));
    let x_1405 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1405, 0.00006103515625f);
    let x_1411 : f32 = u_xlat6.x;
    u_xlat44 = inverseSqrt(x_1411);
    let x_1413 : f32 = u_xlat44;
    let x_1415 : vec4<f32> = u_xlat8;
    let x_1417 : vec3<f32> = (vec3<f32>(x_1413, x_1413, x_1413) * vec3<f32>(x_1415.x, x_1415.y, x_1415.z));
    let x_1418 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
    let x_1422 : f32 = u_xlat6.x;
    u_xlat45 = (1.0f / x_1422);
    let x_1425 : f32 = u_xlat6.x;
    let x_1426 : i32 = u_xlati28;
    let x_1428 : f32 = x_1385.x_AdditionalLightsAttenuation[x_1426].x;
    u_xlat6.x = (x_1425 * x_1428);
    let x_1432 : f32 = u_xlat6.x;
    let x_1435 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1432) * x_1435) + 1.0f);
    let x_1440 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1440, 0.0f);
    let x_1444 : f32 = u_xlat6.x;
    let x_1446 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1444 * x_1446);
    let x_1450 : f32 = u_xlat6.x;
    let x_1451 : f32 = u_xlat45;
    u_xlat6.x = (x_1450 * x_1451);
    let x_1454 : i32 = u_xlati28;
    let x_1456 : vec4<f32> = x_1385.x_AdditionalLightsSpotDir[x_1454];
    let x_1458 : vec4<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1456.x, x_1456.y, x_1456.z), vec3<f32>(x_1458.x, x_1458.y, x_1458.z));
    let x_1461 : f32 = u_xlat45;
    let x_1462 : i32 = u_xlati28;
    let x_1464 : f32 = x_1385.x_AdditionalLightsAttenuation[x_1462].z;
    let x_1466 : i32 = u_xlati28;
    let x_1468 : f32 = x_1385.x_AdditionalLightsAttenuation[x_1466].w;
    u_xlat45 = ((x_1461 * x_1464) + x_1468);
    let x_1470 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1470, 0.0f, 1.0f);
    let x_1472 : f32 = u_xlat45;
    let x_1473 : f32 = u_xlat45;
    u_xlat45 = (x_1472 * x_1473);
    let x_1476 : f32 = u_xlat6.x;
    let x_1477 : f32 = u_xlat45;
    u_xlat6.x = (x_1476 * x_1477);
    let x_1482 : i32 = u_xlati28;
    let x_1484 : f32 = x_376.x_AdditionalShadowParams[x_1482].w;
    u_xlati45 = i32(x_1484);
    let x_1489 : i32 = u_xlati45;
    u_xlatb10.x = (x_1489 >= 0i);
    let x_1493 : bool = u_xlatb10.x;
    if (x_1493) {
      let x_1497 : i32 = u_xlati28;
      let x_1499 : f32 = x_376.x_AdditionalShadowParams[x_1497].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1499, x_1499, x_1499, x_1499))));
      let x_1505 : bool = u_xlatb10.x;
      if (x_1505) {
        let x_1508 : vec4<f32> = u_xlat9;
        let x_1511 : vec4<f32> = u_xlat9;
        let x_1514 : vec4<bool> = (abs(vec4<f32>(x_1508.z, x_1508.z, x_1508.y, x_1508.z)) >= abs(vec4<f32>(x_1511.x, x_1511.y, x_1511.x, x_1511.x)));
        u_xlatb10 = vec3<bool>(x_1514.x, x_1514.y, x_1514.z);
        let x_1517 : bool = u_xlatb10.y;
        let x_1519 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1517 & x_1519);
        let x_1523 : vec4<f32> = u_xlat9;
        let x_1526 : vec4<bool> = (-(vec4<f32>(x_1523.z, x_1523.y, x_1523.x, x_1523.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1526.x, x_1526.y, x_1526.z);
        let x_1530 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1530);
        let x_1535 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1535);
        let x_1540 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1540);
        let x_1544 : bool = u_xlatb10.z;
        if (x_1544) {
          let x_1549 : f32 = u_xlat22.z;
          x_1545 = x_1549;
        } else {
          let x_1551 : f32 = u_xlat11;
          x_1545 = x_1551;
        }
        let x_1552 : f32 = x_1545;
        u_xlat34 = x_1552;
        let x_1554 : bool = u_xlatb10.x;
        if (x_1554) {
          let x_1559 : f32 = u_xlat22.x;
          x_1555 = x_1559;
        } else {
          let x_1561 : f32 = u_xlat34;
          x_1555 = x_1561;
        }
        let x_1562 : f32 = x_1555;
        u_xlat10.x = x_1562;
        let x_1564 : i32 = u_xlati28;
        let x_1566 : f32 = x_376.x_AdditionalShadowParams[x_1564].w;
        u_xlat22.x = trunc(x_1566);
        let x_1570 : f32 = u_xlat10.x;
        let x_1572 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1570 + x_1572);
        let x_1576 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1576);
      }
      let x_1578 : i32 = u_xlati45;
      u_xlati45 = (x_1578 << bitcast<u32>(2i));
      let x_1580 : vec3<f32> = vs_INTERP8;
      let x_1583 : i32 = u_xlati45;
      let x_1586 : i32 = u_xlati45;
      let x_1590 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[((x_1583 + 1i) / 4i)][((x_1586 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1580.y, x_1580.y, x_1580.y, x_1580.y) * x_1590);
      let x_1592 : i32 = u_xlati45;
      let x_1594 : i32 = u_xlati45;
      let x_1597 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[(x_1592 / 4i)][(x_1594 % 4i)];
      let x_1598 : vec3<f32> = vs_INTERP8;
      let x_1601 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1597 * vec4<f32>(x_1598.x, x_1598.x, x_1598.x, x_1598.x)) + x_1601);
      let x_1603 : i32 = u_xlati45;
      let x_1606 : i32 = u_xlati45;
      let x_1610 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[((x_1603 + 2i) / 4i)][((x_1606 + 2i) % 4i)];
      let x_1611 : vec3<f32> = vs_INTERP8;
      let x_1614 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1610 * vec4<f32>(x_1611.z, x_1611.z, x_1611.z, x_1611.z)) + x_1614);
      let x_1616 : vec4<f32> = u_xlat10;
      let x_1617 : i32 = u_xlati45;
      let x_1620 : i32 = u_xlati45;
      let x_1624 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[((x_1617 + 3i) / 4i)][((x_1620 + 3i) % 4i)];
      u_xlat10 = (x_1616 + x_1624);
      let x_1626 : vec4<f32> = u_xlat10;
      let x_1628 : vec4<f32> = u_xlat10;
      let x_1630 : vec3<f32> = (vec3<f32>(x_1626.x, x_1626.y, x_1626.z) / vec3<f32>(x_1628.w, x_1628.w, x_1628.w));
      let x_1631 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1631.w);
      let x_1634 : vec4<f32> = u_xlat10;
      let x_1635 : vec2<f32> = vec2<f32>(x_1634.x, x_1634.y);
      let x_1637 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
      let x_1645 : vec3<f32> = txVec1;
      let x_1647 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1645.xy, x_1645.z);
      u_xlat45 = x_1647;
      let x_1648 : i32 = u_xlati28;
      let x_1650 : f32 = x_376.x_AdditionalShadowParams[x_1648].x;
      u_xlat10.x = (1.0f + -(x_1650));
      let x_1654 : f32 = u_xlat45;
      let x_1655 : i32 = u_xlati28;
      let x_1657 : f32 = x_376.x_AdditionalShadowParams[x_1655].x;
      let x_1660 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1654 * x_1657) + x_1660);
      let x_1663 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1663);
      let x_1668 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1668 >= 1.0f);
      let x_1670 : bool = u_xlatb22;
      let x_1672 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1670 | x_1672);
      let x_1676 : bool = u_xlatb10.x;
      let x_1677 : f32 = u_xlat45;
      u_xlat45 = select(x_1677, 1.0f, x_1676);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1680 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1680) + 1.0f);
    let x_1684 : f32 = u_xlat39;
    let x_1686 : f32 = u_xlat10.x;
    let x_1688 : f32 = u_xlat45;
    u_xlat45 = ((x_1684 * x_1686) + x_1688);
    let x_1691 : f32 = u_xlat6.x;
    let x_1692 : f32 = u_xlat45;
    u_xlat6.x = (x_1691 * x_1692);
    let x_1695 : vec3<f32> = u_xlat12;
    let x_1696 : vec4<f32> = u_xlat9;
    u_xlat45 = dot(x_1695, vec3<f32>(x_1696.x, x_1696.y, x_1696.z));
    let x_1699 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1699, 0.0f, 1.0f);
    let x_1702 : f32 = u_xlat6.x;
    let x_1703 : f32 = u_xlat45;
    u_xlat6.x = (x_1702 * x_1703);
    let x_1706 : vec4<f32> = u_xlat6;
    let x_1708 : i32 = u_xlati28;
    let x_1710 : vec4<f32> = x_1385.x_AdditionalLightsColor[x_1708];
    let x_1712 : vec3<f32> = (vec3<f32>(x_1706.x, x_1706.x, x_1706.x) * vec3<f32>(x_1710.x, x_1710.y, x_1710.z));
    let x_1713 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1713.w);
    let x_1715 : vec4<f32> = u_xlat8;
    let x_1717 : f32 = u_xlat44;
    let x_1720 : vec3<f32> = u_xlat5;
    let x_1721 : vec3<f32> = ((vec3<f32>(x_1715.x, x_1715.y, x_1715.z) * vec3<f32>(x_1717, x_1717, x_1717)) + x_1720);
    let x_1722 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1721.x, x_1721.y, x_1721.z, x_1722.w);
    let x_1724 : vec4<f32> = u_xlat8;
    let x_1726 : vec4<f32> = u_xlat8;
    u_xlat28 = dot(vec3<f32>(x_1724.x, x_1724.y, x_1724.z), vec3<f32>(x_1726.x, x_1726.y, x_1726.z));
    let x_1729 : f32 = u_xlat28;
    u_xlat28 = max(x_1729, 1.17549435e-38f);
    let x_1731 : f32 = u_xlat28;
    u_xlat28 = inverseSqrt(x_1731);
    let x_1733 : f32 = u_xlat28;
    let x_1735 : vec4<f32> = u_xlat8;
    let x_1737 : vec3<f32> = (vec3<f32>(x_1733, x_1733, x_1733) * vec3<f32>(x_1735.x, x_1735.y, x_1735.z));
    let x_1738 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1737.x, x_1737.y, x_1737.z, x_1738.w);
    let x_1740 : vec3<f32> = u_xlat12;
    let x_1741 : vec4<f32> = u_xlat8;
    u_xlat28 = dot(x_1740, vec3<f32>(x_1741.x, x_1741.y, x_1741.z));
    let x_1744 : f32 = u_xlat28;
    u_xlat28 = clamp(x_1744, 0.0f, 1.0f);
    let x_1746 : vec4<f32> = u_xlat9;
    let x_1748 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1746.x, x_1746.y, x_1746.z), vec3<f32>(x_1748.x, x_1748.y, x_1748.z));
    let x_1753 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1753, 0.0f, 1.0f);
    let x_1756 : f32 = u_xlat28;
    let x_1757 : f32 = u_xlat28;
    u_xlat28 = (x_1756 * x_1757);
    let x_1759 : f32 = u_xlat28;
    let x_1761 : f32 = u_xlat19.x;
    u_xlat28 = ((x_1759 * x_1761) + 1.00001001358032226562f);
    let x_1765 : f32 = u_xlat6.x;
    let x_1767 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1765 * x_1767);
    let x_1770 : f32 = u_xlat28;
    let x_1771 : f32 = u_xlat28;
    u_xlat28 = (x_1770 * x_1771);
    let x_1774 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1774, 0.10000000149011611938f);
    let x_1777 : f32 = u_xlat28;
    let x_1779 : f32 = u_xlat6.x;
    u_xlat28 = (x_1777 * x_1779);
    let x_1781 : f32 = u_xlat40;
    let x_1782 : f32 = u_xlat28;
    u_xlat28 = (x_1781 * x_1782);
    let x_1784 : f32 = u_xlat16;
    let x_1785 : f32 = u_xlat28;
    u_xlat28 = (x_1784 / x_1785);
    let x_1787 : f32 = u_xlat28;
    let x_1790 : vec4<f32> = u_xlat3;
    let x_1792 : vec3<f32> = ((vec3<f32>(x_1787, x_1787, x_1787) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
    let x_1793 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1793.w);
    let x_1795 : vec4<f32> = u_xlat8;
    let x_1797 : vec4<f32> = u_xlat10;
    let x_1800 : vec4<f32> = u_xlat7;
    let x_1802 : vec3<f32> = ((vec3<f32>(x_1795.x, x_1795.y, x_1795.z) * vec3<f32>(x_1797.x, x_1797.y, x_1797.z)) + vec3<f32>(x_1800.x, x_1800.z, x_1800.w));
    let x_1803 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1802.x, x_1803.y, x_1802.y, x_1802.z);

    continuing {
      let x_1805 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1805 + bitcast<u32>(1i));
    }
  }
  let x_1807 : vec3<f32> = u_xlat14;
  let x_1808 : f32 = u_xlat41;
  let x_1811 : vec3<f32> = u_xlat18;
  u_xlat0 = ((x_1807 * vec3<f32>(x_1808, x_1808, x_1808)) + x_1811);
  let x_1813 : vec4<f32> = u_xlat7;
  let x_1815 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1813.x, x_1813.z, x_1813.w) + x_1815);
  let x_1819 : vec4<f32> = vs_INTERP6;
  let x_1821 : vec3<f32> = u_xlat1;
  let x_1823 : vec3<f32> = u_xlat0;
  let x_1824 : vec3<f32> = ((vec3<f32>(x_1819.w, x_1819.w, x_1819.w) * x_1821) + x_1823);
  let x_1825 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1824.x, x_1824.y, x_1824.z, x_1825.w);
  let x_1828 : bool = u_xlatb2.x;
  let x_1829 : f32 = u_xlat37;
  SV_Target0.w = select(1.0f, x_1829, x_1828);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


