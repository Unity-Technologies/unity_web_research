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

@group(1) @binding(4) var<uniform> x_253 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_360 : LightShadows;

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

var<private> u_xlat26 : vec2<f32>;

var<private> u_xlatb14 : bool;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu43 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlat43 : f32;

var<private> u_xlati43 : i32;

@group(1) @binding(1) var<uniform> x_1428 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb22 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> u_xlat36 : f32;

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
  var x_774 : f32;
  var x_801 : f32;
  var x_850 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1577 : f32;
  var x_1588 : f32;
  var txVec1 : vec3<f32>;
  var x_1705 : f32;
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
  let x_227 : vec3<f32> = u_xlat0;
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
  let x_289 : vec3<f32> = u_xlat0;
  let x_291 : vec4<f32> = u_xlat9;
  u_xlat20 = (vec3<f32>(x_289.x, x_289.x, x_289.x) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_296 : f32 = vs_INTERP6.y;
  u_xlat0.x = (x_296 * 200.0f);
  let x_301 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_301, 1.0f);
  let x_304 : vec3<f32> = u_xlat0;
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
  let x_348 : vec3<f32> = u_xlat0;
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
  let x_614 : vec3<f32> = u_xlat0;
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
  let x_768 : f32 = u_xlat14.x;
  u_xlat26.x = (-(x_768) + 1.0f);
  let x_773 : bool = u_xlatb2.x;
  if (x_773) {
    let x_778 : f32 = u_xlat14.x;
    x_774 = x_778;
  } else {
    let x_781 : f32 = u_xlat26.x;
    x_774 = x_781;
  }
  let x_782 : f32 = x_774;
  u_xlat2.x = x_782;
  let x_784 : f32 = u_xlat37;
  let x_787 : f32 = u_xlat2.x;
  u_xlat37 = ((x_784 * 2.0f) + -(x_787));
  let x_790 : f32 = u_xlat37;
  let x_792 : f32 = u_xlat6.w;
  u_xlat2.x = (x_790 * x_792);
  let x_797 : f32 = u_xlat2.x;
  u_xlatb14 = (x_797 >= 0.40000000596046447754f);
  let x_800 : bool = u_xlatb14;
  if (x_800) {
    let x_805 : f32 = u_xlat2.x;
    x_801 = x_805;
  } else {
    x_801 = 0.0f;
  }
  let x_807 : f32 = x_801;
  u_xlat14.x = x_807;
  let x_810 : f32 = u_xlat6.w;
  let x_811 : f32 = u_xlat37;
  u_xlat37 = ((x_810 * x_811) + -0.40000000596046447754f);
  let x_816 : f32 = u_xlat2.x;
  u_xlat26.x = dpdxCoarse(x_816);
  let x_820 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_820);
  let x_824 : f32 = u_xlat2.x;
  let x_827 : f32 = u_xlat26.x;
  u_xlat2.x = (abs(x_824) + abs(x_827));
  let x_832 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_832, 0.00009999999747378752f);
  let x_836 : f32 = u_xlat37;
  let x_838 : f32 = u_xlat2.x;
  u_xlat37 = (x_836 / x_838);
  let x_840 : f32 = u_xlat37;
  u_xlat37 = (x_840 + 0.5f);
  let x_842 : f32 = u_xlat37;
  u_xlat37 = clamp(x_842, 0.0f, 1.0f);
  let x_845 : f32 = x_149.x_AlphaToMaskAvailable;
  u_xlatb2.x = !((x_845 == 0.0f));
  let x_849 : bool = u_xlatb2.x;
  if (x_849) {
    let x_853 : f32 = u_xlat37;
    x_850 = x_853;
  } else {
    let x_856 : f32 = u_xlat14.x;
    x_850 = x_856;
  }
  let x_857 : f32 = x_850;
  u_xlat37 = x_857;
  let x_858 : f32 = u_xlat37;
  u_xlat14.x = (x_858 + -0.00009999999747378752f);
  let x_863 : f32 = u_xlat14.x;
  u_xlatb14 = (x_863 < 0.0f);
  let x_865 : bool = u_xlatb14;
  if (((select(0i, 1i, x_865) * -1i) != 0i)) {
    discard;
  }
  let x_873 : vec3<f32> = u_xlat12;
  let x_874 : vec3<f32> = u_xlat20;
  u_xlat12 = (x_873 * vec3<f32>(x_874.y, x_874.y, x_874.y));
  let x_877 : vec3<f32> = u_xlat20;
  let x_879 : vec4<f32> = vs_INTERP4;
  let x_882 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_877.x, x_877.x, x_877.x) * vec3<f32>(x_879.x, x_879.y, x_879.z)) + x_882);
  let x_884 : vec3<f32> = u_xlat20;
  let x_886 : vec3<f32> = vs_INTERP9;
  let x_888 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_884.z, x_884.z, x_884.z) * x_886) + x_888);
  let x_890 : vec3<f32> = u_xlat12;
  let x_891 : vec3<f32> = u_xlat12;
  u_xlat14.x = dot(x_890, x_891);
  let x_895 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_895);
  let x_898 : vec3<f32> = u_xlat12;
  let x_899 : vec3<f32> = u_xlat14;
  u_xlat12 = (x_898 * vec3<f32>(x_899.x, x_899.x, x_899.x));
  let x_903 : f32 = vs_INTERP8.y;
  let x_905 : f32 = x_149.unity_MatrixV[1i].z;
  u_xlat14.x = (x_903 * x_905);
  let x_909 : f32 = x_149.unity_MatrixV[0i].z;
  let x_911 : f32 = vs_INTERP8.x;
  let x_914 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_909 * x_911) + x_914);
  let x_918 : f32 = x_149.unity_MatrixV[2i].z;
  let x_920 : f32 = vs_INTERP8.z;
  let x_923 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_918 * x_920) + x_923);
  let x_927 : f32 = u_xlat14.x;
  let x_929 : f32 = x_149.unity_MatrixV[3i].z;
  u_xlat14.x = (x_927 + x_929);
  let x_933 : f32 = u_xlat14.x;
  let x_937 : f32 = x_149.x_ProjectionParams.y;
  u_xlat14.x = (-(x_933) + -(x_937));
  let x_942 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_942, 0.0f);
  let x_946 : f32 = u_xlat14.x;
  let x_949 : f32 = x_149.unity_FogParams.x;
  u_xlat14.x = (x_946 * x_949);
  let x_959 : vec2<f32> = vs_INTERP0;
  let x_961 : f32 = x_149.x_GlobalMipBias.x;
  let x_962 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_959, x_961);
  u_xlat3 = x_962;
  let x_967 : vec2<f32> = vs_INTERP0;
  let x_969 : f32 = x_149.x_GlobalMipBias.x;
  let x_970 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_967, x_969);
  u_xlat5 = vec3<f32>(x_970.x, x_970.y, x_970.z);
  let x_972 : vec4<f32> = u_xlat3;
  let x_976 : vec3<f32> = (vec3<f32>(x_972.x, x_972.y, x_972.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_977 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec3<f32> = u_xlat12;
  let x_980 : vec4<f32> = u_xlat3;
  u_xlat26.x = dot(x_979, vec3<f32>(x_980.x, x_980.y, x_980.z));
  let x_985 : f32 = u_xlat26.x;
  u_xlat26.x = (x_985 + 0.5f);
  let x_988 : vec2<f32> = u_xlat26;
  let x_990 : vec3<f32> = u_xlat5;
  let x_991 : vec3<f32> = (vec3<f32>(x_988.x, x_988.x, x_988.x) * x_990);
  let x_992 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_995 : f32 = u_xlat3.w;
  u_xlat26.x = max(x_995, 0.00009999999747378752f);
  let x_998 : vec4<f32> = u_xlat3;
  let x_1000 : vec2<f32> = u_xlat26;
  let x_1002 : vec3<f32> = (vec3<f32>(x_998.x, x_998.y, x_998.z) / vec3<f32>(x_1000.x, x_1000.x, x_1000.x));
  let x_1003 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
  let x_1006 : f32 = u_xlat8.x;
  u_xlat8.x = x_1006;
  let x_1009 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_1009, 0.0f, 1.0f);
  let x_1012 : f32 = u_xlat37;
  u_xlat37 = x_1012;
  let x_1013 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1013, 0.0f, 1.0f);
  let x_1015 : vec4<f32> = u_xlat7;
  u_xlat5 = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1021 : f32 = u_xlat8.x;
  u_xlat26.x = (-(x_1021) + 1.0f);
  let x_1027 : f32 = u_xlat26.x;
  let x_1029 : f32 = u_xlat26.x;
  u_xlat38 = (x_1027 * x_1029);
  let x_1031 : f32 = u_xlat38;
  u_xlat38 = max(x_1031, 0.0078125f);
  let x_1035 : f32 = u_xlat38;
  let x_1036 : f32 = u_xlat38;
  u_xlat39 = (x_1035 * x_1036);
  let x_1040 : f32 = u_xlat8.x;
  u_xlat40 = (x_1040 + 0.04000002145767211914f);
  let x_1043 : f32 = u_xlat40;
  u_xlat40 = min(x_1043, 1.0f);
  let x_1046 : f32 = u_xlat38;
  u_xlat41 = ((x_1046 * 4.0f) + 2.0f);
  let x_1050 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_1050, 1.0f);
  let x_1054 : vec3<f32> = vs_INTERP8;
  let x_1056 : vec3<f32> = x_149.x_WorldSpaceCameraPos;
  u_xlat18 = (x_1054 + -(x_1056));
  let x_1059 : vec3<f32> = u_xlat18;
  let x_1060 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_1059, x_1060);
  let x_1065 : f32 = u_xlat18.x;
  let x_1067 : f32 = x_360.x_MainLightShadowParams.z;
  let x_1070 : f32 = x_360.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1065 * x_1067) + x_1070);
  let x_1072 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1072, 0.0f, 1.0f);
  let x_1076 : f32 = u_xlat0.x;
  u_xlat42 = (-(x_1076) + 1.0f);
  let x_1079 : f32 = u_xlat30;
  let x_1080 : f32 = u_xlat42;
  let x_1083 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1079 * x_1080) + x_1083);
  let x_1086 : vec3<f32> = u_xlat4;
  let x_1088 : vec3<f32> = u_xlat12;
  u_xlat30 = dot(-(x_1086), x_1088);
  let x_1090 : f32 = u_xlat30;
  let x_1091 : f32 = u_xlat30;
  u_xlat30 = (x_1090 + x_1091);
  let x_1093 : vec3<f32> = u_xlat12;
  let x_1094 : f32 = u_xlat30;
  let x_1098 : vec3<f32> = u_xlat4;
  let x_1100 : vec3<f32> = ((x_1093 * -(vec3<f32>(x_1094, x_1094, x_1094))) + -(x_1098));
  let x_1101 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1103 : vec3<f32> = u_xlat12;
  let x_1104 : vec3<f32> = u_xlat4;
  u_xlat30 = dot(x_1103, x_1104);
  let x_1106 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1106, 0.0f, 1.0f);
  let x_1108 : f32 = u_xlat30;
  u_xlat30 = (-(x_1108) + 1.0f);
  let x_1111 : f32 = u_xlat30;
  let x_1112 : f32 = u_xlat30;
  u_xlat30 = (x_1111 * x_1112);
  let x_1114 : f32 = u_xlat30;
  let x_1115 : f32 = u_xlat30;
  u_xlat30 = (x_1114 * x_1115);
  let x_1118 : f32 = u_xlat26.x;
  u_xlat42 = ((-(x_1118) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1125 : f32 = u_xlat26.x;
  let x_1126 : f32 = u_xlat42;
  u_xlat26.x = (x_1125 * x_1126);
  let x_1130 : f32 = u_xlat26.x;
  u_xlat26.x = (x_1130 * 6.0f);
  let x_1142 : vec4<f32> = u_xlat7;
  let x_1145 : f32 = u_xlat26.x;
  let x_1146 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1142.x, x_1142.y, x_1142.z), x_1145);
  u_xlat7 = x_1146;
  let x_1148 : f32 = u_xlat7.w;
  u_xlat26.x = (x_1148 + -1.0f);
  let x_1152 : f32 = x_83.unity_SpecCube0_HDR.w;
  let x_1154 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1152 * x_1154) + 1.0f);
  let x_1159 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_1159, 0.0f);
  let x_1163 : f32 = u_xlat26.x;
  u_xlat26.x = log2(x_1163);
  let x_1167 : f32 = u_xlat26.x;
  let x_1169 : f32 = x_83.unity_SpecCube0_HDR.y;
  u_xlat26.x = (x_1167 * x_1169);
  let x_1173 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_1173);
  let x_1177 : f32 = u_xlat26.x;
  let x_1179 : f32 = x_83.unity_SpecCube0_HDR.x;
  u_xlat26.x = (x_1177 * x_1179);
  let x_1182 : vec4<f32> = u_xlat7;
  let x_1184 : vec2<f32> = u_xlat26;
  let x_1186 : vec3<f32> = (vec3<f32>(x_1182.x, x_1182.y, x_1182.z) * vec3<f32>(x_1184.x, x_1184.x, x_1184.x));
  let x_1187 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1189 : f32 = u_xlat38;
  let x_1191 : f32 = u_xlat38;
  u_xlat26 = ((vec2<f32>(x_1189, x_1189) * vec2<f32>(x_1191, x_1191)) + vec2<f32>(-1.0f, 1.0f));
  let x_1197 : f32 = u_xlat26.y;
  u_xlat38 = (1.0f / x_1197);
  let x_1199 : f32 = u_xlat40;
  u_xlat40 = (x_1199 + -0.03999999910593032837f);
  let x_1202 : f32 = u_xlat30;
  let x_1203 : f32 = u_xlat40;
  u_xlat40 = ((x_1202 * x_1203) + 0.03999999910593032837f);
  let x_1207 : f32 = u_xlat38;
  let x_1208 : f32 = u_xlat40;
  u_xlat38 = (x_1207 * x_1208);
  let x_1210 : f32 = u_xlat38;
  let x_1212 : vec4<f32> = u_xlat7;
  let x_1214 : vec3<f32> = (vec3<f32>(x_1210, x_1210, x_1210) * vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
  let x_1215 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
  let x_1217 : vec4<f32> = u_xlat3;
  let x_1219 : vec3<f32> = u_xlat5;
  let x_1221 : vec4<f32> = u_xlat7;
  let x_1223 : vec3<f32> = ((vec3<f32>(x_1217.x, x_1217.y, x_1217.z) * x_1219) + vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
  let x_1224 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
  let x_1227 : f32 = u_xlat0.x;
  let x_1229 : f32 = x_83.unity_LightData.z;
  u_xlat0.x = (x_1227 * x_1229);
  let x_1232 : vec3<f32> = u_xlat12;
  let x_1234 : vec4<f32> = x_149.x_MainLightPosition;
  u_xlat38 = dot(x_1232, vec3<f32>(x_1234.x, x_1234.y, x_1234.z));
  let x_1237 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1237, 0.0f, 1.0f);
  let x_1240 : f32 = u_xlat0.x;
  let x_1241 : f32 = u_xlat38;
  u_xlat0.x = (x_1240 * x_1241);
  let x_1244 : vec3<f32> = u_xlat0;
  let x_1247 : vec4<f32> = x_149.x_MainLightColor;
  let x_1249 : vec3<f32> = (vec3<f32>(x_1244.x, x_1244.x, x_1244.x) * vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1252 : vec3<f32> = u_xlat4;
  let x_1254 : vec4<f32> = x_149.x_MainLightPosition;
  let x_1256 : vec3<f32> = (x_1252 + vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
  let x_1257 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
  let x_1259 : vec4<f32> = u_xlat8;
  let x_1261 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1259.x, x_1259.y, x_1259.z), vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
  let x_1266 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1266, 1.17549435e-38f);
  let x_1270 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1270);
  let x_1273 : vec3<f32> = u_xlat0;
  let x_1275 : vec4<f32> = u_xlat8;
  let x_1277 : vec3<f32> = (vec3<f32>(x_1273.x, x_1273.x, x_1273.x) * vec3<f32>(x_1275.x, x_1275.y, x_1275.z));
  let x_1278 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
  let x_1280 : vec3<f32> = u_xlat12;
  let x_1281 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_1280, vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
  let x_1286 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1286, 0.0f, 1.0f);
  let x_1290 : vec4<f32> = x_149.x_MainLightPosition;
  let x_1292 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_1290.x, x_1290.y, x_1290.z), vec3<f32>(x_1292.x, x_1292.y, x_1292.z));
  let x_1295 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1295, 0.0f, 1.0f);
  let x_1298 : f32 = u_xlat0.x;
  let x_1300 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1298 * x_1300);
  let x_1304 : f32 = u_xlat0.x;
  let x_1306 : f32 = u_xlat26.x;
  u_xlat0.x = ((x_1304 * x_1306) + 1.00001001358032226562f);
  let x_1311 : f32 = u_xlat38;
  let x_1312 : f32 = u_xlat38;
  u_xlat38 = (x_1311 * x_1312);
  let x_1315 : f32 = u_xlat0.x;
  let x_1317 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1315 * x_1317);
  let x_1320 : f32 = u_xlat38;
  u_xlat38 = max(x_1320, 0.10000000149011611938f);
  let x_1324 : f32 = u_xlat0.x;
  let x_1325 : f32 = u_xlat38;
  u_xlat0.x = (x_1324 * x_1325);
  let x_1328 : f32 = u_xlat41;
  let x_1330 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1328 * x_1330);
  let x_1333 : f32 = u_xlat39;
  let x_1335 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1333 / x_1335);
  let x_1338 : vec3<f32> = u_xlat0;
  let x_1342 : vec3<f32> = u_xlat5;
  let x_1343 : vec3<f32> = ((vec3<f32>(x_1338.x, x_1338.x, x_1338.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1342);
  let x_1344 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
  let x_1346 : vec4<f32> = u_xlat7;
  let x_1348 : vec4<f32> = u_xlat8;
  let x_1350 : vec3<f32> = (vec3<f32>(x_1346.x, x_1346.y, x_1346.z) * vec3<f32>(x_1348.x, x_1348.y, x_1348.z));
  let x_1351 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1350.x, x_1350.y, x_1350.z, x_1351.w);
  let x_1354 : f32 = x_149.x_AdditionalLightsCount.x;
  let x_1356 : f32 = x_83.unity_LightData.y;
  u_xlat0.x = min(x_1354, x_1356);
  let x_1360 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1360));
  let x_1364 : f32 = u_xlat18.x;
  let x_1367 : f32 = x_360.x_AdditionalShadowFadeParams.x;
  let x_1370 : f32 = x_360.x_AdditionalShadowFadeParams.y;
  u_xlat38 = ((x_1364 * x_1367) + x_1370);
  let x_1372 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1372, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1383 : u32 = u_xlatu_loop_1;
    let x_1384 : u32 = u_xlatu0;
    if ((x_1383 < x_1384)) {
    } else {
      break;
    }
    let x_1387 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_1387 >> 2u);
    let x_1390 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1390 & 3u));
    let x_1394 : u32 = u_xlatu43;
    let x_1397 : vec4<f32> = x_83.unity_LightIndices[bitcast<i32>(x_1394)];
    let x_1407 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1412 : vec4<u32> = indexable[x_1407];
    u_xlat43 = dot(x_1397, bitcast<vec4<f32>>(x_1412));
    let x_1416 : f32 = u_xlat43;
    u_xlati43 = i32(x_1416);
    let x_1418 : vec3<f32> = vs_INTERP8;
    let x_1429 : i32 = u_xlati43;
    let x_1431 : vec4<f32> = x_1428.x_AdditionalLightsPosition[x_1429];
    let x_1434 : i32 = u_xlati43;
    let x_1436 : vec4<f32> = x_1428.x_AdditionalLightsPosition[x_1434];
    let x_1438 : vec3<f32> = ((-(x_1418) * vec3<f32>(x_1431.w, x_1431.w, x_1431.w)) + vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
    let x_1439 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
    let x_1442 : vec4<f32> = u_xlat8;
    let x_1444 : vec4<f32> = u_xlat8;
    u_xlat44 = dot(vec3<f32>(x_1442.x, x_1442.y, x_1442.z), vec3<f32>(x_1444.x, x_1444.y, x_1444.z));
    let x_1447 : f32 = u_xlat44;
    u_xlat44 = max(x_1447, 0.00006103515625f);
    let x_1450 : f32 = u_xlat44;
    u_xlat9.x = inverseSqrt(x_1450);
    let x_1454 : vec4<f32> = u_xlat8;
    let x_1456 : vec4<f32> = u_xlat9;
    u_xlat21 = (vec3<f32>(x_1454.x, x_1454.y, x_1454.z) * vec3<f32>(x_1456.x, x_1456.x, x_1456.x));
    let x_1459 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_1459);
    let x_1462 : f32 = u_xlat44;
    let x_1463 : i32 = u_xlati43;
    let x_1465 : f32 = x_1428.x_AdditionalLightsAttenuation[x_1463].x;
    u_xlat44 = (x_1462 * x_1465);
    let x_1467 : f32 = u_xlat44;
    let x_1469 : f32 = u_xlat44;
    u_xlat44 = ((-(x_1467) * x_1469) + 1.0f);
    let x_1472 : f32 = u_xlat44;
    u_xlat44 = max(x_1472, 0.0f);
    let x_1474 : f32 = u_xlat44;
    let x_1475 : f32 = u_xlat44;
    u_xlat44 = (x_1474 * x_1475);
    let x_1477 : f32 = u_xlat44;
    let x_1479 : f32 = u_xlat10.x;
    u_xlat44 = (x_1477 * x_1479);
    let x_1481 : i32 = u_xlati43;
    let x_1483 : vec4<f32> = x_1428.x_AdditionalLightsSpotDir[x_1481];
    let x_1485 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1483.x, x_1483.y, x_1483.z), x_1485);
    let x_1489 : f32 = u_xlat10.x;
    let x_1490 : i32 = u_xlati43;
    let x_1492 : f32 = x_1428.x_AdditionalLightsAttenuation[x_1490].z;
    let x_1494 : i32 = u_xlati43;
    let x_1496 : f32 = x_1428.x_AdditionalLightsAttenuation[x_1494].w;
    u_xlat10.x = ((x_1489 * x_1492) + x_1496);
    let x_1500 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1500, 0.0f, 1.0f);
    let x_1504 : f32 = u_xlat10.x;
    let x_1506 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1504 * x_1506);
    let x_1509 : f32 = u_xlat44;
    let x_1511 : f32 = u_xlat10.x;
    u_xlat44 = (x_1509 * x_1511);
    let x_1515 : i32 = u_xlati43;
    let x_1517 : f32 = x_360.x_AdditionalShadowParams[x_1515].w;
    u_xlati10 = i32(x_1517);
    let x_1522 : i32 = u_xlati10;
    u_xlatb22.x = (x_1522 >= 0i);
    let x_1526 : bool = u_xlatb22.x;
    if (x_1526) {
      let x_1530 : i32 = u_xlati43;
      let x_1532 : f32 = x_360.x_AdditionalShadowParams[x_1530].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1532, x_1532, x_1532, x_1532))));
      let x_1538 : bool = u_xlatb22.x;
      if (x_1538) {
        let x_1541 : vec3<f32> = u_xlat21;
        let x_1544 : vec3<f32> = u_xlat21;
        let x_1547 : vec4<bool> = (abs(vec4<f32>(x_1541.z, x_1541.z, x_1541.y, x_1541.y)) >= abs(vec4<f32>(x_1544.x, x_1544.y, x_1544.x, x_1544.x)));
        u_xlatb22 = vec3<bool>(x_1547.x, x_1547.y, x_1547.z);
        let x_1550 : bool = u_xlatb22.y;
        let x_1552 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1550 & x_1552);
        let x_1556 : vec3<f32> = u_xlat21;
        let x_1559 : vec4<bool> = (-(vec4<f32>(x_1556.z, x_1556.y, x_1556.x, x_1556.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1559.x, x_1559.y, x_1559.z);
        let x_1563 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1563);
        let x_1568 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1568);
        let x_1573 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1573);
        let x_1576 : bool = u_xlatb22.z;
        if (x_1576) {
          let x_1581 : f32 = u_xlat11.y;
          x_1577 = x_1581;
        } else {
          let x_1583 : f32 = u_xlat34;
          x_1577 = x_1583;
        }
        let x_1584 : f32 = x_1577;
        u_xlat34 = x_1584;
        let x_1587 : bool = u_xlatb22.x;
        if (x_1587) {
          let x_1592 : f32 = u_xlat11.x;
          x_1588 = x_1592;
        } else {
          let x_1594 : f32 = u_xlat34;
          x_1588 = x_1594;
        }
        let x_1595 : f32 = x_1588;
        u_xlat22 = x_1595;
        let x_1596 : i32 = u_xlati43;
        let x_1598 : f32 = x_360.x_AdditionalShadowParams[x_1596].w;
        u_xlat34 = trunc(x_1598);
        let x_1600 : f32 = u_xlat22;
        let x_1601 : f32 = u_xlat34;
        u_xlat22 = (x_1600 + x_1601);
        let x_1603 : f32 = u_xlat22;
        u_xlati10 = i32(x_1603);
      }
      let x_1605 : i32 = u_xlati10;
      u_xlati10 = (x_1605 << bitcast<u32>(2i));
      let x_1607 : vec3<f32> = vs_INTERP8;
      let x_1610 : i32 = u_xlati10;
      let x_1613 : i32 = u_xlati10;
      let x_1617 : vec4<f32> = x_360.x_AdditionalLightsWorldToShadow[((x_1610 + 1i) / 4i)][((x_1613 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1607.y, x_1607.y, x_1607.y, x_1607.y) * x_1617);
      let x_1619 : i32 = u_xlati10;
      let x_1621 : i32 = u_xlati10;
      let x_1624 : vec4<f32> = x_360.x_AdditionalLightsWorldToShadow[(x_1619 / 4i)][(x_1621 % 4i)];
      let x_1625 : vec3<f32> = vs_INTERP8;
      let x_1628 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1624 * vec4<f32>(x_1625.x, x_1625.x, x_1625.x, x_1625.x)) + x_1628);
      let x_1630 : i32 = u_xlati10;
      let x_1633 : i32 = u_xlati10;
      let x_1637 : vec4<f32> = x_360.x_AdditionalLightsWorldToShadow[((x_1630 + 2i) / 4i)][((x_1633 + 2i) % 4i)];
      let x_1638 : vec3<f32> = vs_INTERP8;
      let x_1641 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1637 * vec4<f32>(x_1638.z, x_1638.z, x_1638.z, x_1638.z)) + x_1641);
      let x_1643 : vec4<f32> = u_xlat11;
      let x_1644 : i32 = u_xlati10;
      let x_1647 : i32 = u_xlati10;
      let x_1651 : vec4<f32> = x_360.x_AdditionalLightsWorldToShadow[((x_1644 + 3i) / 4i)][((x_1647 + 3i) % 4i)];
      u_xlat10 = (x_1643 + x_1651);
      let x_1653 : vec4<f32> = u_xlat10;
      let x_1655 : vec4<f32> = u_xlat10;
      let x_1657 : vec3<f32> = (vec3<f32>(x_1653.x, x_1653.y, x_1653.z) / vec3<f32>(x_1655.w, x_1655.w, x_1655.w));
      let x_1658 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1657.x, x_1657.y, x_1657.z, x_1658.w);
      let x_1661 : vec4<f32> = u_xlat10;
      let x_1662 : vec2<f32> = vec2<f32>(x_1661.x, x_1661.y);
      let x_1664 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1662.x, x_1662.y, x_1664);
      let x_1672 : vec3<f32> = txVec1;
      let x_1674 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1672.xy, x_1672.z);
      u_xlat10.x = x_1674;
      let x_1676 : i32 = u_xlati43;
      let x_1678 : f32 = x_360.x_AdditionalShadowParams[x_1676].x;
      u_xlat22 = (1.0f + -(x_1678));
      let x_1682 : f32 = u_xlat10.x;
      let x_1683 : i32 = u_xlati43;
      let x_1685 : f32 = x_360.x_AdditionalShadowParams[x_1683].x;
      let x_1687 : f32 = u_xlat22;
      u_xlat10.x = ((x_1682 * x_1685) + x_1687);
      let x_1691 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1691);
      let x_1696 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1696 >= 1.0f);
      let x_1698 : bool = u_xlatb34;
      let x_1700 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1698 | x_1700);
      let x_1704 : bool = u_xlatb22.x;
      if (x_1704) {
        x_1705 = 1.0f;
      } else {
        let x_1710 : f32 = u_xlat10.x;
        x_1705 = x_1710;
      }
      let x_1711 : f32 = x_1705;
      u_xlat10.x = x_1711;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1716 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1716) + 1.0f);
    let x_1719 : f32 = u_xlat38;
    let x_1720 : f32 = u_xlat22;
    let x_1723 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1719 * x_1720) + x_1723);
    let x_1726 : f32 = u_xlat44;
    let x_1728 : f32 = u_xlat10.x;
    u_xlat44 = (x_1726 * x_1728);
    let x_1730 : vec3<f32> = u_xlat12;
    let x_1731 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(x_1730, x_1731);
    let x_1735 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1735, 0.0f, 1.0f);
    let x_1738 : f32 = u_xlat44;
    let x_1740 : f32 = u_xlat10.x;
    u_xlat44 = (x_1738 * x_1740);
    let x_1742 : f32 = u_xlat44;
    let x_1744 : i32 = u_xlati43;
    let x_1746 : vec4<f32> = x_1428.x_AdditionalLightsColor[x_1744];
    let x_1748 : vec3<f32> = (vec3<f32>(x_1742, x_1742, x_1742) * vec3<f32>(x_1746.x, x_1746.y, x_1746.z));
    let x_1749 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1749.w);
    let x_1751 : vec4<f32> = u_xlat8;
    let x_1753 : vec4<f32> = u_xlat9;
    let x_1756 : vec3<f32> = u_xlat4;
    let x_1757 : vec3<f32> = ((vec3<f32>(x_1751.x, x_1751.y, x_1751.z) * vec3<f32>(x_1753.x, x_1753.x, x_1753.x)) + x_1756);
    let x_1758 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1757.x, x_1757.y, x_1757.z, x_1758.w);
    let x_1760 : vec4<f32> = u_xlat8;
    let x_1762 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1760.x, x_1760.y, x_1760.z), vec3<f32>(x_1762.x, x_1762.y, x_1762.z));
    let x_1765 : f32 = u_xlat43;
    u_xlat43 = max(x_1765, 1.17549435e-38f);
    let x_1767 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1767);
    let x_1769 : f32 = u_xlat43;
    let x_1771 : vec4<f32> = u_xlat8;
    let x_1773 : vec3<f32> = (vec3<f32>(x_1769, x_1769, x_1769) * vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
    let x_1774 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
    let x_1776 : vec3<f32> = u_xlat12;
    let x_1777 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(x_1776, vec3<f32>(x_1777.x, x_1777.y, x_1777.z));
    let x_1780 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1780, 0.0f, 1.0f);
    let x_1782 : vec3<f32> = u_xlat21;
    let x_1783 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1782, vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
    let x_1788 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1788, 0.0f, 1.0f);
    let x_1791 : f32 = u_xlat43;
    let x_1792 : f32 = u_xlat43;
    u_xlat43 = (x_1791 * x_1792);
    let x_1794 : f32 = u_xlat43;
    let x_1796 : f32 = u_xlat26.x;
    u_xlat43 = ((x_1794 * x_1796) + 1.00001001358032226562f);
    let x_1800 : f32 = u_xlat8.x;
    let x_1802 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1800 * x_1802);
    let x_1805 : f32 = u_xlat43;
    let x_1806 : f32 = u_xlat43;
    u_xlat43 = (x_1805 * x_1806);
    let x_1809 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1809, 0.10000000149011611938f);
    let x_1812 : f32 = u_xlat43;
    let x_1814 : f32 = u_xlat8.x;
    u_xlat43 = (x_1812 * x_1814);
    let x_1816 : f32 = u_xlat41;
    let x_1817 : f32 = u_xlat43;
    u_xlat43 = (x_1816 * x_1817);
    let x_1819 : f32 = u_xlat39;
    let x_1820 : f32 = u_xlat43;
    u_xlat43 = (x_1819 / x_1820);
    let x_1822 : f32 = u_xlat43;
    let x_1825 : vec3<f32> = u_xlat5;
    let x_1826 : vec3<f32> = ((vec3<f32>(x_1822, x_1822, x_1822) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1825);
    let x_1827 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1827.w);
    let x_1829 : vec4<f32> = u_xlat8;
    let x_1831 : vec4<f32> = u_xlat10;
    let x_1834 : vec3<f32> = u_xlat18;
    u_xlat18 = ((vec3<f32>(x_1829.x, x_1829.y, x_1829.z) * vec3<f32>(x_1831.x, x_1831.y, x_1831.z)) + x_1834);

    continuing {
      let x_1836 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1836 + bitcast<u32>(1i));
    }
  }
  let x_1838 : vec4<f32> = u_xlat3;
  let x_1840 : vec4<f32> = u_xlat6;
  let x_1843 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1838.x, x_1838.y, x_1838.z) * vec3<f32>(x_1840.x, x_1840.x, x_1840.x)) + vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
  let x_1846 : vec3<f32> = u_xlat18;
  let x_1847 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1846 + x_1847);
  let x_1849 : vec4<f32> = vs_INTERP6;
  let x_1851 : vec3<f32> = u_xlat1;
  let x_1853 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1849.w, x_1849.w, x_1849.w) * x_1851) + x_1853);
  let x_1857 : f32 = u_xlat14.x;
  let x_1859 : f32 = u_xlat14.x;
  u_xlat36 = (x_1857 * -(x_1859));
  let x_1862 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1862);
  let x_1864 : vec3<f32> = u_xlat0;
  let x_1867 : vec4<f32> = x_149.unity_FogColor;
  u_xlat0 = (x_1864 + -(vec3<f32>(x_1867.x, x_1867.y, x_1867.z)));
  let x_1873 : f32 = u_xlat36;
  let x_1875 : vec3<f32> = u_xlat0;
  let x_1878 : vec4<f32> = x_149.unity_FogColor;
  let x_1880 : vec3<f32> = ((vec3<f32>(x_1873, x_1873, x_1873) * x_1875) + vec3<f32>(x_1878.x, x_1878.y, x_1878.z));
  let x_1881 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1881.w);
  let x_1884 : bool = u_xlatb2.x;
  let x_1885 : f32 = u_xlat37;
  SV_Target0.w = select(1.0f, x_1885, x_1884);
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


