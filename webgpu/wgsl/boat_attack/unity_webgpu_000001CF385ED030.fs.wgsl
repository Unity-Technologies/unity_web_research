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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  x_ScreenParams : vec4<f32>,
  /* @offset(112) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(128) */
  unity_FogParams : vec4<f32>,
  /* @offset(144) */
  unity_FogColor : vec4<f32>,
  /* @offset(160) */
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

var<private> u_xlat0 : vec4<f32>;

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

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(7) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_253 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_360 : LightShadows;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat24 : vec2<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu43 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlat43 : f32;

var<private> u_xlati43 : i32;

@group(1) @binding(1) var<uniform> x_1450 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb22 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu40 : u32;

var<private> u_xlatb43 : bool;

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
  var x_189 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_594 : f32;
  var x_636 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_772 : f32;
  var x_798 : f32;
  var x_845 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1599 : f32;
  var x_1610 : f32;
  var txVec1 : vec3<f32>;
  var x_1727 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec3<f32> = vs_INTERP9;
  let x_50 : vec3<f32> = vs_INTERP9;
  u_xlat0.x = dot(x_49, x_50);
  let x_56 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_56);
  let x_61 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_61);
  let x_74 : f32 = vs_INTERP4.w;
  u_xlatb12.x = (0.0f < x_74);
  let x_87 : f32 = x_83.unity_WorldTransformParams.w;
  u_xlatb12.y = (x_87 >= 0.0f);
  let x_94 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_94);
  let x_99 : bool = u_xlatb12.y;
  u_xlat12.y = select(-1.0f, 1.0f, x_99);
  let x_103 : f32 = u_xlat12.y;
  let x_105 : f32 = u_xlat12.x;
  u_xlat12.x = (x_103 * x_105);
  let x_109 : vec4<f32> = vs_INTERP4;
  let x_111 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_109.y, x_109.z, x_109.x) * vec3<f32>(x_111.z, x_111.x, x_111.y));
  let x_114 : vec3<f32> = vs_INTERP9;
  let x_116 : vec4<f32> = vs_INTERP4;
  let x_119 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_114.y, x_114.z, x_114.x) * vec3<f32>(x_116.z, x_116.x, x_116.y)) + -(x_119));
  let x_122 : vec3<f32> = u_xlat12;
  let x_124 : vec3<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_122.x, x_122.x, x_122.x) * x_124);
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_126.x, x_126.x, x_126.x) * x_128);
  let x_131 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = vs_INTERP4;
  let x_135 : vec3<f32> = (vec3<f32>(x_131.x, x_131.x, x_131.x) * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec3<f32> = u_xlat12;
  let x_140 : vec4<f32> = u_xlat0;
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
  let x_177 : f32 = x_149.unity_MatrixV[0i].z;
  u_xlat5.x = x_177;
  let x_181 : f32 = x_149.unity_MatrixV[1i].z;
  u_xlat5.y = x_181;
  let x_185 : f32 = x_149.unity_MatrixV[2i].z;
  u_xlat5.z = x_185;
  let x_187 : bool = u_xlatb0;
  if (x_187) {
    let x_192 : vec3<f32> = u_xlat4;
    x_189 = x_192;
  } else {
    let x_194 : vec3<f32> = u_xlat5;
    x_189 = x_194;
  }
  let x_195 : vec3<f32> = x_189;
  u_xlat4 = x_195;
  let x_196 : vec3<f32> = u_xlat4;
  let x_200 : vec4<f32> = x_83.unity_WorldToObject[1i];
  u_xlat5 = (vec3<f32>(x_196.y, x_196.y, x_196.y) * vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_204 : vec4<f32> = x_83.unity_WorldToObject[0i];
  let x_206 : vec3<f32> = u_xlat4;
  let x_209 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(x_206.x, x_206.x, x_206.x)) + x_209);
  let x_212 : vec4<f32> = x_83.unity_WorldToObject[2i];
  let x_214 : vec3<f32> = u_xlat4;
  let x_217 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_212.x, x_212.y, x_212.z) * vec3<f32>(x_214.z, x_214.z, x_214.z)) + x_217);
  let x_219 : vec3<f32> = u_xlat5;
  let x_220 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_219, x_220);
  let x_224 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_224);
  let x_227 : vec4<f32> = u_xlat0;
  let x_229 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_227.x, x_227.x, x_227.x) * x_229);
  let x_243 : vec4<f32> = vs_INTERP5;
  let x_246 : f32 = x_149.x_GlobalMipBias.x;
  let x_247 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_243.x, x_243.y), x_246);
  u_xlat6 = x_247;
  let x_249 : vec4<f32> = u_xlat6;
  let x_255 : vec4<f32> = x_253.Color_C30C7CA3;
  let x_257 : vec3<f32> = (vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_266 : vec4<f32> = vs_INTERP5;
  let x_269 : f32 = x_149.x_GlobalMipBias.x;
  let x_270 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_266.x, x_266.y), x_269);
  u_xlat8 = vec4<f32>(x_270.w, x_270.x, x_270.y, x_270.z);
  let x_273 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_273.y, x_273.z, x_273.w, x_273.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_280 : vec4<f32> = u_xlat9;
  let x_281 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_280, x_281);
  let x_285 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_285);
  let x_289 : vec4<f32> = u_xlat0;
  let x_291 : vec4<f32> = u_xlat9;
  u_xlat20 = (vec3<f32>(x_289.x, x_289.x, x_289.x) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_296 : f32 = vs_INTERP6.y;
  u_xlat0.x = (x_296 * 200.0f);
  let x_301 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_301, 1.0f);
  let x_304 : vec4<f32> = u_xlat0;
  let x_306 : vec4<f32> = u_xlat6;
  let x_308 : vec3<f32> = (vec3<f32>(x_304.x, x_304.x, x_304.x) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat3;
  let x_313 : vec3<f32> = u_xlat20;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.y, x_313.y, x_313.y));
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec3<f32> = u_xlat20;
  let x_320 : vec4<f32> = u_xlat2;
  let x_323 : vec4<f32> = u_xlat3;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.x, x_318.x) * vec3<f32>(x_320.x, x_320.y, x_320.z)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec3<f32> = u_xlat20;
  let x_330 : vec3<f32> = u_xlat1;
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_328.z, x_328.z, x_328.z) * x_330) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec3<f32> = u_xlat1;
  let x_336 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_335, x_336);
  let x_340 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_340, 1.17549435e-38f);
  let x_345 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_345);
  let x_348 : vec4<f32> = u_xlat0;
  let x_350 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_348.x, x_348.x, x_348.x) * x_350);
  let x_352 : vec3<f32> = vs_INTERP8;
  let x_362 : vec4<f32> = x_360.x_CascadeShadowSplitSpheres0;
  let x_365 : vec3<f32> = (x_352 + -(vec3<f32>(x_362.x, x_362.y, x_362.z)));
  let x_366 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec3<f32> = vs_INTERP8;
  let x_370 : vec4<f32> = x_360.x_CascadeShadowSplitSpheres1;
  let x_373 : vec3<f32> = (x_368 + -(vec3<f32>(x_370.x, x_370.y, x_370.z)));
  let x_374 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_376 : vec3<f32> = vs_INTERP8;
  let x_378 : vec4<f32> = x_360.x_CascadeShadowSplitSpheres2;
  let x_381 : vec3<f32> = (x_376 + -(vec3<f32>(x_378.x, x_378.y, x_378.z)));
  let x_382 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_385 : vec3<f32> = vs_INTERP8;
  let x_388 : vec4<f32> = x_360.x_CascadeShadowSplitSpheres3;
  let x_391 : vec3<f32> = (x_385 + -(vec3<f32>(x_388.x, x_388.y, x_388.z)));
  let x_392 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat2;
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_394.x, x_394.y, x_394.z), vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_400 : vec4<f32> = u_xlat3;
  let x_402 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_400.x, x_400.y, x_400.z), vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_406 : vec4<f32> = u_xlat9;
  let x_408 : vec4<f32> = u_xlat9;
  u_xlat2.z = dot(vec3<f32>(x_406.x, x_406.y, x_406.z), vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_412 : vec4<f32> = u_xlat10;
  let x_414 : vec4<f32> = u_xlat10;
  u_xlat2.w = dot(vec3<f32>(x_412.x, x_412.y, x_412.z), vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_421 : vec4<f32> = u_xlat2;
  let x_423 : vec4<f32> = x_360.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_421 < x_423);
  let x_426 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_426);
  let x_430 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_430);
  let x_434 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_434);
  let x_438 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_438);
  let x_442 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_442);
  let x_447 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_447);
  let x_451 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_451);
  let x_454 : vec4<f32> = u_xlat2;
  let x_456 : vec4<f32> = u_xlat3;
  let x_458 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) + vec3<f32>(x_456.y, x_456.z, x_456.w));
  let x_459 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat2;
  let x_464 : vec3<f32> = max(vec3<f32>(x_461.x, x_461.y, x_461.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_465 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_465.x, x_464.x, x_464.y, x_464.z);
  let x_467 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_467, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_474 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_474) + 4.0f);
  let x_481 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_481);
  let x_485 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_485) << bitcast<u32>(2i));
  let x_488 : vec3<f32> = vs_INTERP8;
  let x_490 : i32 = u_xlati0;
  let x_493 : i32 = u_xlati0;
  let x_497 : vec4<f32> = x_360.x_MainLightWorldToShadow[((x_490 + 1i) / 4i)][((x_493 + 1i) % 4i)];
  let x_499 : vec3<f32> = (vec3<f32>(x_488.y, x_488.y, x_488.y) * vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : i32 = u_xlati0;
  let x_504 : i32 = u_xlati0;
  let x_507 : vec4<f32> = x_360.x_MainLightWorldToShadow[(x_502 / 4i)][(x_504 % 4i)];
  let x_509 : vec3<f32> = vs_INTERP8;
  let x_512 : vec4<f32> = u_xlat2;
  let x_514 : vec3<f32> = ((vec3<f32>(x_507.x, x_507.y, x_507.z) * vec3<f32>(x_509.x, x_509.x, x_509.x)) + vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_517 : i32 = u_xlati0;
  let x_520 : i32 = u_xlati0;
  let x_524 : vec4<f32> = x_360.x_MainLightWorldToShadow[((x_517 + 2i) / 4i)][((x_520 + 2i) % 4i)];
  let x_526 : vec3<f32> = vs_INTERP8;
  let x_529 : vec4<f32> = u_xlat2;
  let x_531 : vec3<f32> = ((vec3<f32>(x_524.x, x_524.y, x_524.z) * vec3<f32>(x_526.z, x_526.z, x_526.z)) + vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat2;
  let x_536 : i32 = u_xlati0;
  let x_539 : i32 = u_xlati0;
  let x_543 : vec4<f32> = x_360.x_MainLightWorldToShadow[((x_536 + 3i) / 4i)][((x_539 + 3i) % 4i)];
  let x_545 : vec3<f32> = (vec3<f32>(x_534.x, x_534.y, x_534.z) + vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_549 : vec4<f32> = u_xlat2;
  let x_550 : vec2<f32> = vec2<f32>(x_549.x, x_549.y);
  let x_552 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_550.x, x_550.y, x_552);
  let x_564 : vec3<f32> = txVec0;
  let x_566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_564.xy, x_564.z);
  u_xlat0.x = x_566;
  let x_569 : f32 = x_360.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_569) + 1.0f);
  let x_573 : f32 = u_xlat0.x;
  let x_575 : f32 = x_360.x_MainLightShadowParams.x;
  let x_577 : f32 = u_xlat37;
  u_xlat0.x = ((x_573 * x_575) + x_577);
  let x_582 : f32 = u_xlat2.z;
  u_xlatb37 = (0.0f >= x_582);
  let x_585 : f32 = u_xlat2.z;
  u_xlatb2.x = (x_585 >= 1.0f);
  let x_588 : bool = u_xlatb37;
  let x_590 : bool = u_xlatb2.x;
  u_xlatb37 = (x_588 | x_590);
  let x_592 : bool = u_xlatb37;
  if (x_592) {
    x_594 = 1.0f;
  } else {
    let x_599 : f32 = u_xlat0.x;
    x_594 = x_599;
  }
  let x_600 : f32 = x_594;
  u_xlat0.x = x_600;
  let x_602 : vec3<f32> = u_xlat1;
  let x_604 : vec4<f32> = x_149.x_MainLightPosition;
  u_xlat1.x = dot(x_602, -(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_610 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_610, 0.0f, 1.0f);
  let x_614 : vec4<f32> = u_xlat0;
  let x_617 : vec4<f32> = x_149.x_MainLightColor;
  u_xlat13 = (vec3<f32>(x_614.x, x_614.x, x_614.x) * vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : vec3<f32> = u_xlat13;
  let x_621 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_620 * vec3<f32>(x_621.x, x_621.x, x_621.x));
  let x_624 : vec3<f32> = u_xlat1;
  let x_625 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_624 * vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_629 : f32 = x_83.unity_LODFade.x;
  u_xlatb37 = (x_629 < 0.0f);
  let x_632 : f32 = x_83.unity_LODFade.x;
  u_xlat2.x = (x_632 + 1.0f);
  let x_635 : bool = u_xlatb37;
  if (x_635) {
    let x_640 : f32 = u_xlat2.x;
    x_636 = x_640;
  } else {
    let x_643 : f32 = x_83.unity_LODFade.x;
    x_636 = x_643;
  }
  let x_644 : f32 = x_636;
  u_xlat37 = x_644;
  let x_646 : f32 = u_xlat37;
  u_xlatb2.x = (0.5f >= x_646);
  let x_650 : vec3<f32> = u_xlat5;
  let x_654 : vec4<f32> = x_149.x_ScreenParams;
  u_xlat14 = (abs(x_650) * vec3<f32>(x_654.x, x_654.y, x_654.x));
  let x_660 : vec3<f32> = u_xlat14;
  u_xlatu14 = vec3<u32>(x_660);
  let x_664 : u32 = u_xlatu14.z;
  u_xlatu38 = (x_664 * 1025u);
  let x_668 : u32 = u_xlatu38;
  u_xlatu3 = (x_668 >> 6u);
  let x_672 : u32 = u_xlatu38;
  let x_673 : u32 = u_xlatu3;
  u_xlati38 = bitcast<i32>((x_672 ^ x_673));
  let x_676 : i32 = u_xlati38;
  u_xlatu38 = (bitcast<u32>(x_676) * 9u);
  let x_680 : u32 = u_xlatu38;
  u_xlatu3 = (x_680 >> 11u);
  let x_683 : u32 = u_xlatu38;
  let x_684 : u32 = u_xlatu3;
  u_xlati38 = bitcast<i32>((x_683 ^ x_684));
  let x_687 : i32 = u_xlati38;
  u_xlati38 = (x_687 * 32769i);
  let x_691 : i32 = u_xlati38;
  let x_694 : u32 = u_xlatu14.y;
  u_xlati26 = bitcast<i32>((bitcast<u32>(x_691) ^ x_694));
  let x_698 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_698) * 1025u);
  let x_701 : u32 = u_xlatu26;
  u_xlatu38 = (x_701 >> 6u);
  let x_703 : u32 = u_xlatu38;
  let x_704 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_703 ^ x_704));
  let x_707 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_707) * 9u);
  let x_710 : u32 = u_xlatu26;
  u_xlatu38 = (x_710 >> 11u);
  let x_712 : u32 = u_xlatu38;
  let x_713 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_712 ^ x_713));
  let x_716 : i32 = u_xlati26;
  u_xlati26 = (x_716 * 32769i);
  let x_719 : i32 = u_xlati26;
  let x_722 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((bitcast<u32>(x_719) ^ x_722));
  let x_725 : i32 = u_xlati14;
  u_xlatu14.x = (bitcast<u32>(x_725) * 1025u);
  let x_730 : u32 = u_xlatu14.x;
  u_xlatu26 = (x_730 >> 6u);
  let x_732 : u32 = u_xlatu26;
  let x_734 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((x_732 ^ x_734));
  let x_737 : i32 = u_xlati14;
  u_xlatu14.x = (bitcast<u32>(x_737) * 9u);
  let x_742 : u32 = u_xlatu14.x;
  u_xlatu26 = (x_742 >> 11u);
  let x_744 : u32 = u_xlatu26;
  let x_746 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((x_744 ^ x_746));
  let x_749 : i32 = u_xlati14;
  u_xlati14 = (x_749 * 32769i);
  param = 1065353216i;
  let x_755 : i32 = u_xlati14;
  param_1 = x_755;
  param_2 = 0i;
  param_3 = 23i;
  let x_758 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat14.x = bitcast<f32>(x_758);
  let x_762 : f32 = u_xlat14.x;
  u_xlat14.x = (x_762 + -1.0f);
  let x_767 : f32 = u_xlat14.x;
  u_xlat26 = (-(x_767) + 1.0f);
  let x_771 : bool = u_xlatb2.x;
  if (x_771) {
    let x_776 : f32 = u_xlat14.x;
    x_772 = x_776;
  } else {
    let x_778 : f32 = u_xlat26;
    x_772 = x_778;
  }
  let x_779 : f32 = x_772;
  u_xlat2.x = x_779;
  let x_781 : f32 = u_xlat37;
  let x_784 : f32 = u_xlat2.x;
  u_xlat37 = ((x_781 * 2.0f) + -(x_784));
  let x_787 : f32 = u_xlat37;
  let x_789 : f32 = u_xlat6.w;
  u_xlat2.x = (x_787 * x_789);
  let x_794 : f32 = u_xlat2.x;
  u_xlatb14 = (x_794 >= 0.40000000596046447754f);
  let x_797 : bool = u_xlatb14;
  if (x_797) {
    let x_802 : f32 = u_xlat2.x;
    x_798 = x_802;
  } else {
    x_798 = 0.0f;
  }
  let x_804 : f32 = x_798;
  u_xlat14.x = x_804;
  let x_807 : f32 = u_xlat6.w;
  let x_808 : f32 = u_xlat37;
  u_xlat37 = ((x_807 * x_808) + -0.40000000596046447754f);
  let x_813 : f32 = u_xlat2.x;
  u_xlat26 = dpdxCoarse(x_813);
  let x_816 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_816);
  let x_820 : f32 = u_xlat2.x;
  let x_822 : f32 = u_xlat26;
  u_xlat2.x = (abs(x_820) + abs(x_822));
  let x_827 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_827, 0.00009999999747378752f);
  let x_831 : f32 = u_xlat37;
  let x_833 : f32 = u_xlat2.x;
  u_xlat37 = (x_831 / x_833);
  let x_835 : f32 = u_xlat37;
  u_xlat37 = (x_835 + 0.5f);
  let x_837 : f32 = u_xlat37;
  u_xlat37 = clamp(x_837, 0.0f, 1.0f);
  let x_840 : f32 = x_149.x_AlphaToMaskAvailable;
  u_xlatb2.x = !((x_840 == 0.0f));
  let x_844 : bool = u_xlatb2.x;
  if (x_844) {
    let x_848 : f32 = u_xlat37;
    x_845 = x_848;
  } else {
    let x_851 : f32 = u_xlat14.x;
    x_845 = x_851;
  }
  let x_852 : f32 = x_845;
  u_xlat37 = x_852;
  let x_853 : f32 = u_xlat37;
  u_xlat14.x = (x_853 + -0.00009999999747378752f);
  let x_858 : f32 = u_xlat14.x;
  u_xlatb14 = (x_858 < 0.0f);
  let x_860 : bool = u_xlatb14;
  if (((select(0i, 1i, x_860) * -1i) != 0i)) {
    discard;
  }
  let x_868 : vec3<f32> = u_xlat12;
  let x_869 : vec3<f32> = u_xlat20;
  u_xlat12 = (x_868 * vec3<f32>(x_869.y, x_869.y, x_869.y));
  let x_872 : vec3<f32> = u_xlat20;
  let x_874 : vec4<f32> = vs_INTERP4;
  let x_877 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_872.x, x_872.x, x_872.x) * vec3<f32>(x_874.x, x_874.y, x_874.z)) + x_877);
  let x_879 : vec3<f32> = u_xlat20;
  let x_881 : vec3<f32> = vs_INTERP9;
  let x_883 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_879.z, x_879.z, x_879.z) * x_881) + x_883);
  let x_885 : vec3<f32> = u_xlat12;
  let x_886 : vec3<f32> = u_xlat12;
  u_xlat14.x = dot(x_885, x_886);
  let x_890 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_890);
  let x_893 : vec3<f32> = u_xlat12;
  let x_894 : vec3<f32> = u_xlat14;
  let x_896 : vec3<f32> = (x_893 * vec3<f32>(x_894.x, x_894.x, x_894.x));
  let x_897 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_900 : f32 = vs_INTERP8.y;
  let x_902 : f32 = x_149.unity_MatrixV[1i].z;
  u_xlat12.x = (x_900 * x_902);
  let x_906 : f32 = x_149.unity_MatrixV[0i].z;
  let x_908 : f32 = vs_INTERP8.x;
  let x_911 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_906 * x_908) + x_911);
  let x_915 : f32 = x_149.unity_MatrixV[2i].z;
  let x_917 : f32 = vs_INTERP8.z;
  let x_920 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_915 * x_917) + x_920);
  let x_924 : f32 = u_xlat12.x;
  let x_926 : f32 = x_149.unity_MatrixV[3i].z;
  u_xlat12.x = (x_924 + x_926);
  let x_930 : f32 = u_xlat12.x;
  let x_934 : f32 = x_149.x_ProjectionParams.y;
  u_xlat12.x = (-(x_930) + -(x_934));
  let x_939 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_939, 0.0f);
  let x_943 : f32 = u_xlat12.x;
  let x_946 : f32 = x_149.unity_FogParams.x;
  u_xlat12.x = (x_943 * x_946);
  u_xlat3.w = 1.0f;
  let x_952 : vec4<f32> = x_83.unity_SHAr;
  let x_953 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_952, x_953);
  let x_958 : vec4<f32> = x_83.unity_SHAg;
  let x_959 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_958, x_959);
  let x_964 : vec4<f32> = x_83.unity_SHAb;
  let x_965 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_964, x_965);
  let x_968 : vec4<f32> = u_xlat3;
  let x_970 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_968.y, x_968.z, x_968.z, x_968.x) * vec4<f32>(x_970.x, x_970.y, x_970.z, x_970.z));
  let x_975 : vec4<f32> = x_83.unity_SHBr;
  let x_976 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_975, x_976);
  let x_981 : vec4<f32> = x_83.unity_SHBg;
  let x_982 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_981, x_982);
  let x_986 : vec4<f32> = x_83.unity_SHBb;
  let x_987 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_986, x_987);
  let x_993 : f32 = u_xlat3.y;
  let x_995 : f32 = u_xlat3.y;
  u_xlat24.x = (x_993 * x_995);
  let x_999 : f32 = u_xlat3.x;
  let x_1001 : f32 = u_xlat3.x;
  let x_1004 : f32 = u_xlat24.x;
  u_xlat24.x = ((x_999 * x_1001) + -(x_1004));
  let x_1010 : vec4<f32> = x_83.unity_SHC;
  let x_1012 : vec2<f32> = u_xlat24;
  let x_1015 : vec4<f32> = u_xlat9;
  u_xlat14 = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.x, x_1012.x, x_1012.x)) + vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : vec3<f32> = u_xlat14;
  let x_1019 : vec3<f32> = u_xlat5;
  u_xlat14 = (x_1018 + x_1019);
  let x_1021 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_1021, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1024 : f32 = u_xlat8.x;
  u_xlat8.x = x_1024;
  let x_1027 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_1027, 0.0f, 1.0f);
  let x_1030 : f32 = u_xlat37;
  u_xlat37 = x_1030;
  let x_1031 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1031, 0.0f, 1.0f);
  let x_1033 : vec4<f32> = u_xlat7;
  u_xlat5 = (vec3<f32>(x_1033.x, x_1033.y, x_1033.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1039 : f32 = u_xlat8.x;
  u_xlat24.x = (-(x_1039) + 1.0f);
  let x_1045 : f32 = u_xlat24.x;
  let x_1047 : f32 = u_xlat24.x;
  u_xlat36 = (x_1045 * x_1047);
  let x_1049 : f32 = u_xlat36;
  u_xlat36 = max(x_1049, 0.0078125f);
  let x_1053 : f32 = u_xlat36;
  let x_1054 : f32 = u_xlat36;
  u_xlat39 = (x_1053 * x_1054);
  let x_1058 : f32 = u_xlat8.x;
  u_xlat40 = (x_1058 + 0.04000002145767211914f);
  let x_1061 : f32 = u_xlat40;
  u_xlat40 = min(x_1061, 1.0f);
  let x_1064 : f32 = u_xlat36;
  u_xlat41 = ((x_1064 * 4.0f) + 2.0f);
  let x_1068 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_1068, 1.0f);
  let x_1072 : vec3<f32> = vs_INTERP8;
  let x_1074 : vec3<f32> = x_149.x_WorldSpaceCameraPos;
  u_xlat18 = (x_1072 + -(x_1074));
  let x_1077 : vec3<f32> = u_xlat18;
  let x_1078 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_1077, x_1078);
  let x_1083 : f32 = u_xlat18.x;
  let x_1085 : f32 = x_360.x_MainLightShadowParams.z;
  let x_1088 : f32 = x_360.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1083 * x_1085) + x_1088);
  let x_1090 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1090, 0.0f, 1.0f);
  let x_1094 : f32 = u_xlat0.x;
  u_xlat42 = (-(x_1094) + 1.0f);
  let x_1097 : f32 = u_xlat30;
  let x_1098 : f32 = u_xlat42;
  let x_1101 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1097 * x_1098) + x_1101);
  let x_1104 : vec3<f32> = u_xlat4;
  let x_1106 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(-(x_1104), vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
  let x_1109 : f32 = u_xlat30;
  let x_1110 : f32 = u_xlat30;
  u_xlat30 = (x_1109 + x_1110);
  let x_1112 : vec4<f32> = u_xlat3;
  let x_1114 : f32 = u_xlat30;
  let x_1118 : vec3<f32> = u_xlat4;
  let x_1120 : vec3<f32> = ((vec3<f32>(x_1112.x, x_1112.y, x_1112.z) * -(vec3<f32>(x_1114, x_1114, x_1114))) + -(x_1118));
  let x_1121 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1123 : vec4<f32> = u_xlat3;
  let x_1125 : vec3<f32> = u_xlat4;
  u_xlat30 = dot(vec3<f32>(x_1123.x, x_1123.y, x_1123.z), x_1125);
  let x_1127 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1127, 0.0f, 1.0f);
  let x_1129 : f32 = u_xlat30;
  u_xlat30 = (-(x_1129) + 1.0f);
  let x_1132 : f32 = u_xlat30;
  let x_1133 : f32 = u_xlat30;
  u_xlat30 = (x_1132 * x_1133);
  let x_1135 : f32 = u_xlat30;
  let x_1136 : f32 = u_xlat30;
  u_xlat30 = (x_1135 * x_1136);
  let x_1139 : f32 = u_xlat24.x;
  u_xlat42 = ((-(x_1139) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1146 : f32 = u_xlat24.x;
  let x_1147 : f32 = u_xlat42;
  u_xlat24.x = (x_1146 * x_1147);
  let x_1151 : f32 = u_xlat24.x;
  u_xlat24.x = (x_1151 * 6.0f);
  let x_1163 : vec4<f32> = u_xlat7;
  let x_1166 : f32 = u_xlat24.x;
  let x_1167 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1163.x, x_1163.y, x_1163.z), x_1166);
  u_xlat7 = x_1167;
  let x_1169 : f32 = u_xlat7.w;
  u_xlat24.x = (x_1169 + -1.0f);
  let x_1173 : f32 = x_83.unity_SpecCube0_HDR.w;
  let x_1175 : f32 = u_xlat24.x;
  u_xlat24.x = ((x_1173 * x_1175) + 1.0f);
  let x_1180 : f32 = u_xlat24.x;
  u_xlat24.x = max(x_1180, 0.0f);
  let x_1184 : f32 = u_xlat24.x;
  u_xlat24.x = log2(x_1184);
  let x_1188 : f32 = u_xlat24.x;
  let x_1190 : f32 = x_83.unity_SpecCube0_HDR.y;
  u_xlat24.x = (x_1188 * x_1190);
  let x_1194 : f32 = u_xlat24.x;
  u_xlat24.x = exp2(x_1194);
  let x_1198 : f32 = u_xlat24.x;
  let x_1200 : f32 = x_83.unity_SpecCube0_HDR.x;
  u_xlat24.x = (x_1198 * x_1200);
  let x_1203 : vec4<f32> = u_xlat7;
  let x_1205 : vec2<f32> = u_xlat24;
  let x_1207 : vec3<f32> = (vec3<f32>(x_1203.x, x_1203.y, x_1203.z) * vec3<f32>(x_1205.x, x_1205.x, x_1205.x));
  let x_1208 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
  let x_1210 : f32 = u_xlat36;
  let x_1212 : f32 = u_xlat36;
  u_xlat24 = ((vec2<f32>(x_1210, x_1210) * vec2<f32>(x_1212, x_1212)) + vec2<f32>(-1.0f, 1.0f));
  let x_1218 : f32 = u_xlat24.y;
  u_xlat36 = (1.0f / x_1218);
  let x_1220 : f32 = u_xlat40;
  u_xlat40 = (x_1220 + -0.03999999910593032837f);
  let x_1223 : f32 = u_xlat30;
  let x_1224 : f32 = u_xlat40;
  u_xlat40 = ((x_1223 * x_1224) + 0.03999999910593032837f);
  let x_1228 : f32 = u_xlat36;
  let x_1229 : f32 = u_xlat40;
  u_xlat36 = (x_1228 * x_1229);
  let x_1231 : f32 = u_xlat36;
  let x_1233 : vec4<f32> = u_xlat7;
  let x_1235 : vec3<f32> = (vec3<f32>(x_1231, x_1231, x_1231) * vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
  let x_1236 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1238 : vec3<f32> = u_xlat14;
  let x_1239 : vec3<f32> = u_xlat5;
  let x_1241 : vec4<f32> = u_xlat7;
  u_xlat14 = ((x_1238 * x_1239) + vec3<f32>(x_1241.x, x_1241.y, x_1241.z));
  let x_1245 : f32 = u_xlat0.x;
  let x_1247 : f32 = x_83.unity_LightData.z;
  u_xlat0.x = (x_1245 * x_1247);
  let x_1250 : vec4<f32> = u_xlat3;
  let x_1253 : vec4<f32> = x_149.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_1250.x, x_1250.y, x_1250.z), vec3<f32>(x_1253.x, x_1253.y, x_1253.z));
  let x_1256 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1256, 0.0f, 1.0f);
  let x_1258 : f32 = u_xlat36;
  let x_1260 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1258 * x_1260);
  let x_1263 : vec4<f32> = u_xlat0;
  let x_1266 : vec4<f32> = x_149.x_MainLightColor;
  let x_1268 : vec3<f32> = (vec3<f32>(x_1263.x, x_1263.x, x_1263.x) * vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
  let x_1269 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
  let x_1271 : vec3<f32> = u_xlat4;
  let x_1273 : vec4<f32> = x_149.x_MainLightPosition;
  let x_1275 : vec3<f32> = (x_1271 + vec3<f32>(x_1273.x, x_1273.y, x_1273.z));
  let x_1276 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
  let x_1278 : vec4<f32> = u_xlat8;
  let x_1280 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1278.x, x_1278.y, x_1278.z), vec3<f32>(x_1280.x, x_1280.y, x_1280.z));
  let x_1285 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1285, 1.17549435e-38f);
  let x_1289 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1289);
  let x_1292 : vec4<f32> = u_xlat0;
  let x_1294 : vec4<f32> = u_xlat8;
  let x_1296 : vec3<f32> = (vec3<f32>(x_1292.x, x_1292.x, x_1292.x) * vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
  let x_1297 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
  let x_1299 : vec4<f32> = u_xlat3;
  let x_1301 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1299.x, x_1299.y, x_1299.z), vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
  let x_1306 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1306, 0.0f, 1.0f);
  let x_1310 : vec4<f32> = x_149.x_MainLightPosition;
  let x_1312 : vec4<f32> = u_xlat8;
  u_xlat0.w = dot(vec3<f32>(x_1310.x, x_1310.y, x_1310.z), vec3<f32>(x_1312.x, x_1312.y, x_1312.z));
  let x_1317 : f32 = u_xlat0.w;
  u_xlat0.w = clamp(x_1317, 0.0f, 1.0f);
  let x_1320 : vec4<f32> = u_xlat0;
  let x_1322 : vec4<f32> = u_xlat0;
  let x_1324 : vec2<f32> = (vec2<f32>(x_1320.x, x_1320.w) * vec2<f32>(x_1322.x, x_1322.w));
  let x_1325 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1324.x, x_1325.y, x_1325.z, x_1324.y);
  let x_1328 : f32 = u_xlat0.x;
  let x_1330 : f32 = u_xlat24.x;
  u_xlat0.x = ((x_1328 * x_1330) + 1.00001001358032226562f);
  let x_1336 : f32 = u_xlat0.x;
  let x_1338 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1336 * x_1338);
  let x_1342 : f32 = u_xlat0.w;
  u_xlat36 = max(x_1342, 0.10000000149011611938f);
  let x_1345 : f32 = u_xlat36;
  let x_1347 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1345 * x_1347);
  let x_1350 : f32 = u_xlat41;
  let x_1352 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1350 * x_1352);
  let x_1355 : f32 = u_xlat39;
  let x_1357 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1355 / x_1357);
  let x_1360 : vec4<f32> = u_xlat0;
  let x_1364 : vec3<f32> = u_xlat5;
  let x_1365 : vec3<f32> = ((vec3<f32>(x_1360.x, x_1360.x, x_1360.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1364);
  let x_1366 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
  let x_1368 : vec4<f32> = u_xlat7;
  let x_1370 : vec4<f32> = u_xlat8;
  let x_1372 : vec3<f32> = (vec3<f32>(x_1368.x, x_1368.y, x_1368.z) * vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
  let x_1373 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1373.w);
  let x_1376 : f32 = x_149.x_AdditionalLightsCount.x;
  let x_1378 : f32 = x_83.unity_LightData.y;
  u_xlat0.x = min(x_1376, x_1378);
  let x_1382 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1382));
  let x_1386 : f32 = u_xlat18.x;
  let x_1389 : f32 = x_360.x_AdditionalShadowFadeParams.x;
  let x_1392 : f32 = x_360.x_AdditionalShadowFadeParams.y;
  u_xlat36 = ((x_1386 * x_1389) + x_1392);
  let x_1394 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1394, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1405 : u32 = u_xlatu_loop_1;
    let x_1406 : u32 = u_xlatu0;
    if ((x_1405 < x_1406)) {
    } else {
      break;
    }
    let x_1409 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_1409 >> 2u);
    let x_1412 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1412 & 3u));
    let x_1416 : u32 = u_xlatu43;
    let x_1419 : vec4<f32> = x_83.unity_LightIndices[bitcast<i32>(x_1416)];
    let x_1429 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1434 : vec4<u32> = indexable[x_1429];
    u_xlat43 = dot(x_1419, bitcast<vec4<f32>>(x_1434));
    let x_1438 : f32 = u_xlat43;
    u_xlati43 = i32(x_1438);
    let x_1440 : vec3<f32> = vs_INTERP8;
    let x_1451 : i32 = u_xlati43;
    let x_1453 : vec4<f32> = x_1450.x_AdditionalLightsPosition[x_1451];
    let x_1456 : i32 = u_xlati43;
    let x_1458 : vec4<f32> = x_1450.x_AdditionalLightsPosition[x_1456];
    let x_1460 : vec3<f32> = ((-(x_1440) * vec3<f32>(x_1453.w, x_1453.w, x_1453.w)) + vec3<f32>(x_1458.x, x_1458.y, x_1458.z));
    let x_1461 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1460.x, x_1460.y, x_1460.z, x_1461.w);
    let x_1464 : vec4<f32> = u_xlat8;
    let x_1466 : vec4<f32> = u_xlat8;
    u_xlat44 = dot(vec3<f32>(x_1464.x, x_1464.y, x_1464.z), vec3<f32>(x_1466.x, x_1466.y, x_1466.z));
    let x_1469 : f32 = u_xlat44;
    u_xlat44 = max(x_1469, 0.00006103515625f);
    let x_1472 : f32 = u_xlat44;
    u_xlat9.x = inverseSqrt(x_1472);
    let x_1476 : vec4<f32> = u_xlat8;
    let x_1478 : vec4<f32> = u_xlat9;
    u_xlat21 = (vec3<f32>(x_1476.x, x_1476.y, x_1476.z) * vec3<f32>(x_1478.x, x_1478.x, x_1478.x));
    let x_1481 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_1481);
    let x_1484 : f32 = u_xlat44;
    let x_1485 : i32 = u_xlati43;
    let x_1487 : f32 = x_1450.x_AdditionalLightsAttenuation[x_1485].x;
    u_xlat44 = (x_1484 * x_1487);
    let x_1489 : f32 = u_xlat44;
    let x_1491 : f32 = u_xlat44;
    u_xlat44 = ((-(x_1489) * x_1491) + 1.0f);
    let x_1494 : f32 = u_xlat44;
    u_xlat44 = max(x_1494, 0.0f);
    let x_1496 : f32 = u_xlat44;
    let x_1497 : f32 = u_xlat44;
    u_xlat44 = (x_1496 * x_1497);
    let x_1499 : f32 = u_xlat44;
    let x_1501 : f32 = u_xlat10.x;
    u_xlat44 = (x_1499 * x_1501);
    let x_1503 : i32 = u_xlati43;
    let x_1505 : vec4<f32> = x_1450.x_AdditionalLightsSpotDir[x_1503];
    let x_1507 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1505.x, x_1505.y, x_1505.z), x_1507);
    let x_1511 : f32 = u_xlat10.x;
    let x_1512 : i32 = u_xlati43;
    let x_1514 : f32 = x_1450.x_AdditionalLightsAttenuation[x_1512].z;
    let x_1516 : i32 = u_xlati43;
    let x_1518 : f32 = x_1450.x_AdditionalLightsAttenuation[x_1516].w;
    u_xlat10.x = ((x_1511 * x_1514) + x_1518);
    let x_1522 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1522, 0.0f, 1.0f);
    let x_1526 : f32 = u_xlat10.x;
    let x_1528 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1526 * x_1528);
    let x_1531 : f32 = u_xlat44;
    let x_1533 : f32 = u_xlat10.x;
    u_xlat44 = (x_1531 * x_1533);
    let x_1537 : i32 = u_xlati43;
    let x_1539 : f32 = x_360.x_AdditionalShadowParams[x_1537].w;
    u_xlati10 = i32(x_1539);
    let x_1544 : i32 = u_xlati10;
    u_xlatb22.x = (x_1544 >= 0i);
    let x_1548 : bool = u_xlatb22.x;
    if (x_1548) {
      let x_1552 : i32 = u_xlati43;
      let x_1554 : f32 = x_360.x_AdditionalShadowParams[x_1552].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1554, x_1554, x_1554, x_1554))));
      let x_1560 : bool = u_xlatb22.x;
      if (x_1560) {
        let x_1563 : vec3<f32> = u_xlat21;
        let x_1566 : vec3<f32> = u_xlat21;
        let x_1569 : vec4<bool> = (abs(vec4<f32>(x_1563.z, x_1563.z, x_1563.y, x_1563.y)) >= abs(vec4<f32>(x_1566.x, x_1566.y, x_1566.x, x_1566.x)));
        u_xlatb22 = vec3<bool>(x_1569.x, x_1569.y, x_1569.z);
        let x_1572 : bool = u_xlatb22.y;
        let x_1574 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1572 & x_1574);
        let x_1578 : vec3<f32> = u_xlat21;
        let x_1581 : vec4<bool> = (-(vec4<f32>(x_1578.z, x_1578.y, x_1578.x, x_1578.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1581.x, x_1581.y, x_1581.z);
        let x_1585 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1585);
        let x_1590 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1590);
        let x_1595 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1595);
        let x_1598 : bool = u_xlatb22.z;
        if (x_1598) {
          let x_1603 : f32 = u_xlat11.y;
          x_1599 = x_1603;
        } else {
          let x_1605 : f32 = u_xlat34;
          x_1599 = x_1605;
        }
        let x_1606 : f32 = x_1599;
        u_xlat34 = x_1606;
        let x_1609 : bool = u_xlatb22.x;
        if (x_1609) {
          let x_1614 : f32 = u_xlat11.x;
          x_1610 = x_1614;
        } else {
          let x_1616 : f32 = u_xlat34;
          x_1610 = x_1616;
        }
        let x_1617 : f32 = x_1610;
        u_xlat22 = x_1617;
        let x_1618 : i32 = u_xlati43;
        let x_1620 : f32 = x_360.x_AdditionalShadowParams[x_1618].w;
        u_xlat34 = trunc(x_1620);
        let x_1622 : f32 = u_xlat22;
        let x_1623 : f32 = u_xlat34;
        u_xlat22 = (x_1622 + x_1623);
        let x_1625 : f32 = u_xlat22;
        u_xlati10 = i32(x_1625);
      }
      let x_1627 : i32 = u_xlati10;
      u_xlati10 = (x_1627 << bitcast<u32>(2i));
      let x_1629 : vec3<f32> = vs_INTERP8;
      let x_1632 : i32 = u_xlati10;
      let x_1635 : i32 = u_xlati10;
      let x_1639 : vec4<f32> = x_360.x_AdditionalLightsWorldToShadow[((x_1632 + 1i) / 4i)][((x_1635 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1629.y, x_1629.y, x_1629.y, x_1629.y) * x_1639);
      let x_1641 : i32 = u_xlati10;
      let x_1643 : i32 = u_xlati10;
      let x_1646 : vec4<f32> = x_360.x_AdditionalLightsWorldToShadow[(x_1641 / 4i)][(x_1643 % 4i)];
      let x_1647 : vec3<f32> = vs_INTERP8;
      let x_1650 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1646 * vec4<f32>(x_1647.x, x_1647.x, x_1647.x, x_1647.x)) + x_1650);
      let x_1652 : i32 = u_xlati10;
      let x_1655 : i32 = u_xlati10;
      let x_1659 : vec4<f32> = x_360.x_AdditionalLightsWorldToShadow[((x_1652 + 2i) / 4i)][((x_1655 + 2i) % 4i)];
      let x_1660 : vec3<f32> = vs_INTERP8;
      let x_1663 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1659 * vec4<f32>(x_1660.z, x_1660.z, x_1660.z, x_1660.z)) + x_1663);
      let x_1665 : vec4<f32> = u_xlat11;
      let x_1666 : i32 = u_xlati10;
      let x_1669 : i32 = u_xlati10;
      let x_1673 : vec4<f32> = x_360.x_AdditionalLightsWorldToShadow[((x_1666 + 3i) / 4i)][((x_1669 + 3i) % 4i)];
      u_xlat10 = (x_1665 + x_1673);
      let x_1675 : vec4<f32> = u_xlat10;
      let x_1677 : vec4<f32> = u_xlat10;
      let x_1679 : vec3<f32> = (vec3<f32>(x_1675.x, x_1675.y, x_1675.z) / vec3<f32>(x_1677.w, x_1677.w, x_1677.w));
      let x_1680 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1679.x, x_1679.y, x_1679.z, x_1680.w);
      let x_1683 : vec4<f32> = u_xlat10;
      let x_1684 : vec2<f32> = vec2<f32>(x_1683.x, x_1683.y);
      let x_1686 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1684.x, x_1684.y, x_1686);
      let x_1694 : vec3<f32> = txVec1;
      let x_1696 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1694.xy, x_1694.z);
      u_xlat10.x = x_1696;
      let x_1698 : i32 = u_xlati43;
      let x_1700 : f32 = x_360.x_AdditionalShadowParams[x_1698].x;
      u_xlat22 = (1.0f + -(x_1700));
      let x_1704 : f32 = u_xlat10.x;
      let x_1705 : i32 = u_xlati43;
      let x_1707 : f32 = x_360.x_AdditionalShadowParams[x_1705].x;
      let x_1709 : f32 = u_xlat22;
      u_xlat10.x = ((x_1704 * x_1707) + x_1709);
      let x_1713 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1713);
      let x_1718 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1718 >= 1.0f);
      let x_1720 : bool = u_xlatb34;
      let x_1722 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1720 | x_1722);
      let x_1726 : bool = u_xlatb22.x;
      if (x_1726) {
        x_1727 = 1.0f;
      } else {
        let x_1732 : f32 = u_xlat10.x;
        x_1727 = x_1732;
      }
      let x_1733 : f32 = x_1727;
      u_xlat10.x = x_1733;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1738 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1738) + 1.0f);
    let x_1741 : f32 = u_xlat36;
    let x_1742 : f32 = u_xlat22;
    let x_1745 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1741 * x_1742) + x_1745);
    let x_1748 : f32 = u_xlat44;
    let x_1750 : f32 = u_xlat10.x;
    u_xlat44 = (x_1748 * x_1750);
    let x_1752 : vec4<f32> = u_xlat3;
    let x_1754 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1752.x, x_1752.y, x_1752.z), x_1754);
    let x_1758 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1758, 0.0f, 1.0f);
    let x_1761 : f32 = u_xlat44;
    let x_1763 : f32 = u_xlat10.x;
    u_xlat44 = (x_1761 * x_1763);
    let x_1765 : f32 = u_xlat44;
    let x_1767 : i32 = u_xlati43;
    let x_1769 : vec4<f32> = x_1450.x_AdditionalLightsColor[x_1767];
    let x_1771 : vec3<f32> = (vec3<f32>(x_1765, x_1765, x_1765) * vec3<f32>(x_1769.x, x_1769.y, x_1769.z));
    let x_1772 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
    let x_1774 : vec4<f32> = u_xlat8;
    let x_1776 : vec4<f32> = u_xlat9;
    let x_1779 : vec3<f32> = u_xlat4;
    let x_1780 : vec3<f32> = ((vec3<f32>(x_1774.x, x_1774.y, x_1774.z) * vec3<f32>(x_1776.x, x_1776.x, x_1776.x)) + x_1779);
    let x_1781 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1781.w);
    let x_1783 : vec4<f32> = u_xlat8;
    let x_1785 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1783.x, x_1783.y, x_1783.z), vec3<f32>(x_1785.x, x_1785.y, x_1785.z));
    let x_1788 : f32 = u_xlat43;
    u_xlat43 = max(x_1788, 1.17549435e-38f);
    let x_1790 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1790);
    let x_1792 : f32 = u_xlat43;
    let x_1794 : vec4<f32> = u_xlat8;
    let x_1796 : vec3<f32> = (vec3<f32>(x_1792, x_1792, x_1792) * vec3<f32>(x_1794.x, x_1794.y, x_1794.z));
    let x_1797 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1796.x, x_1796.y, x_1796.z, x_1797.w);
    let x_1799 : vec4<f32> = u_xlat3;
    let x_1801 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1799.x, x_1799.y, x_1799.z), vec3<f32>(x_1801.x, x_1801.y, x_1801.z));
    let x_1804 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1804, 0.0f, 1.0f);
    let x_1806 : vec3<f32> = u_xlat21;
    let x_1807 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1806, vec3<f32>(x_1807.x, x_1807.y, x_1807.z));
    let x_1812 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1812, 0.0f, 1.0f);
    let x_1815 : f32 = u_xlat43;
    let x_1816 : f32 = u_xlat43;
    u_xlat43 = (x_1815 * x_1816);
    let x_1818 : f32 = u_xlat43;
    let x_1820 : f32 = u_xlat24.x;
    u_xlat43 = ((x_1818 * x_1820) + 1.00001001358032226562f);
    let x_1824 : f32 = u_xlat8.x;
    let x_1826 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1824 * x_1826);
    let x_1829 : f32 = u_xlat43;
    let x_1830 : f32 = u_xlat43;
    u_xlat43 = (x_1829 * x_1830);
    let x_1833 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1833, 0.10000000149011611938f);
    let x_1836 : f32 = u_xlat43;
    let x_1838 : f32 = u_xlat8.x;
    u_xlat43 = (x_1836 * x_1838);
    let x_1840 : f32 = u_xlat41;
    let x_1841 : f32 = u_xlat43;
    u_xlat43 = (x_1840 * x_1841);
    let x_1843 : f32 = u_xlat39;
    let x_1844 : f32 = u_xlat43;
    u_xlat43 = (x_1843 / x_1844);
    let x_1846 : f32 = u_xlat43;
    let x_1849 : vec3<f32> = u_xlat5;
    let x_1850 : vec3<f32> = ((vec3<f32>(x_1846, x_1846, x_1846) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1849);
    let x_1851 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1851.w);
    let x_1853 : vec4<f32> = u_xlat8;
    let x_1855 : vec4<f32> = u_xlat10;
    let x_1858 : vec3<f32> = u_xlat18;
    u_xlat18 = ((vec3<f32>(x_1853.x, x_1853.y, x_1853.z) * vec3<f32>(x_1855.x, x_1855.y, x_1855.z)) + x_1858);

    continuing {
      let x_1860 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1860 + bitcast<u32>(1i));
    }
  }
  let x_1862 : vec3<f32> = u_xlat14;
  let x_1863 : vec4<f32> = u_xlat6;
  let x_1866 : vec4<f32> = u_xlat7;
  let x_1868 : vec3<f32> = ((x_1862 * vec3<f32>(x_1863.x, x_1863.x, x_1863.x)) + vec3<f32>(x_1866.x, x_1866.y, x_1866.z));
  let x_1869 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1868.x, x_1869.y, x_1868.y, x_1868.z);
  let x_1871 : vec3<f32> = u_xlat18;
  let x_1872 : vec4<f32> = u_xlat0;
  let x_1874 : vec3<f32> = (x_1871 + vec3<f32>(x_1872.x, x_1872.z, x_1872.w));
  let x_1875 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1874.x, x_1875.y, x_1874.y, x_1874.z);
  let x_1877 : vec4<f32> = vs_INTERP6;
  let x_1879 : vec3<f32> = u_xlat1;
  let x_1881 : vec4<f32> = u_xlat0;
  let x_1883 : vec3<f32> = ((vec3<f32>(x_1877.w, x_1877.w, x_1877.w) * x_1879) + vec3<f32>(x_1881.x, x_1881.z, x_1881.w));
  let x_1884 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1883.x, x_1884.y, x_1883.y, x_1883.z);
  let x_1887 : f32 = u_xlat12.x;
  let x_1889 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1887 * -(x_1889));
  let x_1894 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1894);
  let x_1897 : vec4<f32> = u_xlat0;
  let x_1901 : vec4<f32> = x_149.unity_FogColor;
  let x_1904 : vec3<f32> = (vec3<f32>(x_1897.x, x_1897.z, x_1897.w) + -(vec3<f32>(x_1901.x, x_1901.y, x_1901.z)));
  let x_1905 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1904.x, x_1905.y, x_1904.y, x_1904.z);
  let x_1909 : vec3<f32> = u_xlat12;
  let x_1911 : vec4<f32> = u_xlat0;
  let x_1915 : vec4<f32> = x_149.unity_FogColor;
  let x_1917 : vec3<f32> = ((vec3<f32>(x_1909.x, x_1909.x, x_1909.x) * vec3<f32>(x_1911.x, x_1911.z, x_1911.w)) + vec3<f32>(x_1915.x, x_1915.y, x_1915.z));
  let x_1918 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);
  let x_1921 : bool = u_xlatb2.x;
  let x_1922 : f32 = u_xlat37;
  SV_Target0.w = select(1.0f, x_1922, x_1921);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP9_param : vec3<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


