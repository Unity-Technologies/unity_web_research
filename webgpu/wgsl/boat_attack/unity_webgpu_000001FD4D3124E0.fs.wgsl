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

var<private> u_xlat0 : f32;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb12 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_77 : UnityPerDraw;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(0) var<uniform> x_142 : PGlobals;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(7) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_259 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_352 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb2 : bool;

var<private> u_xlatb14 : bool;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatu14 : vec3<u32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlati26 : i32;

var<private> u_xlatu26 : u32;

var<private> u_xlati14 : i32;

var<private> u_xlat26 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatb18 : bool;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat19 : vec2<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu37 : u32;

var<private> u_xlatu28 : u32;

var<private> u_xlati6 : i32;

var<private> u_xlati28 : i32;

@group(1) @binding(1) var<uniform> x_1222 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_169 : f32;
  var x_182 : f32;
  var x_194 : f32;
  var txVec0 : vec3<f32>;
  var x_455 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_591 : f32;
  var x_616 : f32;
  var x_661 : f32;
  var txVec1 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1384 : f32;
  var x_1395 : f32;
  var txVec2 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_48 : vec3<f32> = vs_INTERP9;
  let x_49 : vec3<f32> = vs_INTERP9;
  u_xlat0 = dot(x_48, x_49);
  let x_51 : f32 = u_xlat0;
  u_xlat0 = sqrt(x_51);
  let x_54 : f32 = u_xlat0;
  u_xlat0 = (1.0f / x_54);
  let x_67 : f32 = vs_INTERP4.w;
  u_xlatb12.x = (0.0f < x_67);
  let x_81 : f32 = x_77.unity_WorldTransformParams.w;
  u_xlatb12.y = (x_81 >= 0.0f);
  let x_88 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_88);
  let x_93 : bool = u_xlatb12.y;
  u_xlat12.y = select(-1.0f, 1.0f, x_93);
  let x_97 : f32 = u_xlat12.y;
  let x_99 : f32 = u_xlat12.x;
  u_xlat12.x = (x_97 * x_99);
  let x_103 : vec4<f32> = vs_INTERP4;
  let x_105 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_103.y, x_103.z, x_103.x) * vec3<f32>(x_105.z, x_105.x, x_105.y));
  let x_108 : vec3<f32> = vs_INTERP9;
  let x_110 : vec4<f32> = vs_INTERP4;
  let x_113 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_108.y, x_108.z, x_108.x) * vec3<f32>(x_110.z, x_110.x, x_110.y)) + -(x_113));
  let x_116 : vec3<f32> = u_xlat12;
  let x_118 : vec3<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_116.x, x_116.x, x_116.x) * x_118);
  let x_120 : f32 = u_xlat0;
  let x_122 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_120, x_120, x_120) * x_122);
  let x_125 : f32 = u_xlat0;
  let x_127 : vec4<f32> = vs_INTERP4;
  u_xlat2 = (vec3<f32>(x_125, x_125, x_125) * vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_132 : vec3<f32> = u_xlat12;
  let x_133 : f32 = u_xlat0;
  let x_135 : vec3<f32> = (x_132 * vec3<f32>(x_133, x_133, x_133));
  let x_136 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_145 : f32 = x_142.unity_OrthoParams.w;
  u_xlatb0 = (x_145 == 0.0f);
  let x_149 : vec3<f32> = vs_INTERP8;
  let x_154 : vec3<f32> = x_142.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_149) + x_154);
  let x_157 : vec3<f32> = u_xlat4;
  let x_158 : vec3<f32> = u_xlat4;
  u_xlat37 = dot(x_157, x_158);
  let x_160 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_160);
  let x_162 : f32 = u_xlat37;
  let x_164 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_162, x_162, x_162) * x_164);
  let x_167 : bool = u_xlatb0;
  if (x_167) {
    let x_173 : f32 = u_xlat4.x;
    x_169 = x_173;
  } else {
    let x_178 : f32 = x_142.unity_MatrixV[0i].z;
    x_169 = x_178;
  }
  let x_179 : f32 = x_169;
  u_xlat5.x = x_179;
  let x_181 : bool = u_xlatb0;
  if (x_181) {
    let x_186 : f32 = u_xlat4.y;
    x_182 = x_186;
  } else {
    let x_190 : f32 = x_142.unity_MatrixV[1i].z;
    x_182 = x_190;
  }
  let x_191 : f32 = x_182;
  u_xlat5.y = x_191;
  let x_193 : bool = u_xlatb0;
  if (x_193) {
    let x_198 : f32 = u_xlat4.z;
    x_194 = x_198;
  } else {
    let x_202 : f32 = x_142.unity_MatrixV[2i].z;
    x_194 = x_202;
  }
  let x_203 : f32 = x_194;
  u_xlat5.z = x_203;
  let x_205 : vec3<f32> = u_xlat5;
  let x_209 : vec4<f32> = x_77.unity_WorldToObject[1i];
  u_xlat4 = (vec3<f32>(x_205.y, x_205.y, x_205.y) * vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_213 : vec4<f32> = x_77.unity_WorldToObject[0i];
  let x_215 : vec3<f32> = u_xlat5;
  let x_218 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_213.x, x_213.y, x_213.z) * vec3<f32>(x_215.x, x_215.x, x_215.x)) + x_218);
  let x_221 : vec4<f32> = x_77.unity_WorldToObject[2i];
  let x_223 : vec3<f32> = u_xlat5;
  let x_226 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_221.x, x_221.y, x_221.z) * vec3<f32>(x_223.z, x_223.z, x_223.z)) + x_226);
  let x_228 : vec3<f32> = u_xlat4;
  let x_229 : vec3<f32> = u_xlat4;
  u_xlat0 = dot(x_228, x_229);
  let x_231 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_231);
  let x_233 : f32 = u_xlat0;
  let x_235 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_233, x_233, x_233) * x_235);
  let x_249 : vec4<f32> = vs_INTERP5;
  let x_252 : f32 = x_142.x_GlobalMipBias.x;
  let x_253 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_249.x, x_249.y), x_252);
  u_xlat6 = x_253;
  let x_255 : vec4<f32> = u_xlat6;
  let x_261 : vec4<f32> = x_259.Color_C30C7CA3;
  let x_263 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_272 : vec4<f32> = vs_INTERP5;
  let x_275 : f32 = x_142.x_GlobalMipBias.x;
  let x_276 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_272.x, x_272.y), x_275);
  u_xlat8 = vec4<f32>(x_276.w, x_276.x, x_276.y, x_276.z);
  let x_279 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_279.y, x_279.z, x_279.w, x_279.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_286 : vec4<f32> = u_xlat9;
  let x_287 : vec4<f32> = u_xlat9;
  u_xlat0 = dot(x_286, x_287);
  let x_289 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_289);
  let x_292 : f32 = u_xlat0;
  let x_294 : vec4<f32> = u_xlat9;
  u_xlat20 = (vec3<f32>(x_292, x_292, x_292) * vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_299 : f32 = vs_INTERP6.y;
  u_xlat0 = (x_299 * 200.0f);
  let x_302 : f32 = u_xlat0;
  u_xlat0 = min(x_302, 1.0f);
  let x_304 : f32 = u_xlat0;
  let x_306 : vec4<f32> = u_xlat6;
  let x_308 : vec3<f32> = (vec3<f32>(x_304, x_304, x_304) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat3;
  let x_313 : vec3<f32> = u_xlat20;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.y, x_313.y, x_313.y));
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec3<f32> = u_xlat20;
  let x_320 : vec3<f32> = u_xlat2;
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_318.x, x_318.x, x_318.x) * x_320) + vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec3<f32> = u_xlat20;
  let x_327 : vec3<f32> = u_xlat1;
  let x_329 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_325.z, x_325.z, x_325.z) * x_327) + x_329);
  let x_331 : vec3<f32> = u_xlat1;
  let x_332 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_331, x_332);
  let x_334 : f32 = u_xlat0;
  u_xlat0 = max(x_334, 1.17549435e-38f);
  let x_337 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_337);
  let x_339 : f32 = u_xlat0;
  let x_341 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_339, x_339, x_339) * x_341);
  let x_343 : vec3<f32> = vs_INTERP8;
  let x_354 : vec4<f32> = x_352.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_343.y, x_343.y, x_343.y) * vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_358 : vec4<f32> = x_352.x_MainLightWorldToShadow[0i][0i];
  let x_360 : vec3<f32> = vs_INTERP8;
  let x_363 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_360.x, x_360.x, x_360.x)) + x_363);
  let x_366 : vec4<f32> = x_352.x_MainLightWorldToShadow[0i][2i];
  let x_368 : vec3<f32> = vs_INTERP8;
  let x_371 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_366.x, x_366.y, x_366.z) * vec3<f32>(x_368.z, x_368.z, x_368.z)) + x_371);
  let x_373 : vec3<f32> = u_xlat2;
  let x_375 : vec4<f32> = x_352.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_373 + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_380 : vec3<f32> = u_xlat2;
  let x_381 : vec2<f32> = vec2<f32>(x_380.x, x_380.y);
  let x_383 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_381.x, x_381.y, x_383);
  let x_395 : vec3<f32> = txVec0;
  let x_397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_395.xy, x_395.z);
  u_xlat0 = x_397;
  let x_399 : f32 = x_352.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_399) + 1.0f);
  let x_402 : f32 = u_xlat0;
  let x_404 : f32 = x_352.x_MainLightShadowParams.x;
  let x_406 : f32 = u_xlat37;
  u_xlat0 = ((x_402 * x_404) + x_406);
  let x_410 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_410);
  let x_414 : f32 = u_xlat2.z;
  u_xlatb14 = (x_414 >= 1.0f);
  let x_416 : bool = u_xlatb14;
  let x_417 : bool = u_xlatb2;
  u_xlatb2 = (x_416 | x_417);
  let x_419 : bool = u_xlatb2;
  let x_420 : f32 = u_xlat0;
  u_xlat0 = select(x_420, 1.0f, x_419);
  let x_422 : vec3<f32> = u_xlat1;
  let x_424 : vec4<f32> = x_142.x_MainLightPosition;
  u_xlat1.x = dot(x_422, -(vec3<f32>(x_424.x, x_424.y, x_424.z)));
  let x_430 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_430, 0.0f, 1.0f);
  let x_433 : f32 = u_xlat0;
  let x_436 : vec4<f32> = x_142.x_MainLightColor;
  u_xlat2 = (vec3<f32>(x_433, x_433, x_433) * vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec3<f32> = u_xlat1;
  let x_441 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_439.x, x_439.x, x_439.x) * x_441);
  let x_443 : vec3<f32> = u_xlat1;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_443 * vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_448 : f32 = x_77.unity_LODFade.x;
  u_xlatb0 = (x_448 < 0.0f);
  let x_451 : f32 = x_77.unity_LODFade.x;
  u_xlat2.x = (x_451 + 1.0f);
  let x_454 : bool = u_xlatb0;
  if (x_454) {
    let x_459 : f32 = u_xlat2.x;
    x_455 = x_459;
  } else {
    let x_462 : f32 = x_77.unity_LODFade.x;
    x_455 = x_462;
  }
  let x_463 : f32 = x_455;
  u_xlat0 = x_463;
  let x_465 : f32 = u_xlat0;
  u_xlatb2 = (0.5f >= x_465);
  let x_468 : vec3<f32> = u_xlat4;
  let x_472 : vec4<f32> = x_142.x_ScreenParams;
  u_xlat14 = (abs(x_468) * vec3<f32>(x_472.x, x_472.y, x_472.x));
  let x_478 : vec3<f32> = u_xlat14;
  u_xlatu14 = vec3<u32>(x_478);
  let x_483 : u32 = u_xlatu14.z;
  u_xlatu38 = (x_483 * 1025u);
  let x_487 : u32 = u_xlatu38;
  u_xlatu3 = (x_487 >> 6u);
  let x_492 : u32 = u_xlatu38;
  let x_493 : u32 = u_xlatu3;
  u_xlati38 = bitcast<i32>((x_492 ^ x_493));
  let x_496 : i32 = u_xlati38;
  u_xlatu38 = (bitcast<u32>(x_496) * 9u);
  let x_500 : u32 = u_xlatu38;
  u_xlatu3 = (x_500 >> 11u);
  let x_503 : u32 = u_xlatu38;
  let x_504 : u32 = u_xlatu3;
  u_xlati38 = bitcast<i32>((x_503 ^ x_504));
  let x_507 : i32 = u_xlati38;
  u_xlati38 = (x_507 * 32769i);
  let x_511 : i32 = u_xlati38;
  let x_514 : u32 = u_xlatu14.y;
  u_xlati26 = bitcast<i32>((bitcast<u32>(x_511) ^ x_514));
  let x_518 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_518) * 1025u);
  let x_521 : u32 = u_xlatu26;
  u_xlatu38 = (x_521 >> 6u);
  let x_523 : u32 = u_xlatu38;
  let x_524 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_523 ^ x_524));
  let x_527 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_527) * 9u);
  let x_530 : u32 = u_xlatu26;
  u_xlatu38 = (x_530 >> 11u);
  let x_532 : u32 = u_xlatu38;
  let x_533 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_532 ^ x_533));
  let x_536 : i32 = u_xlati26;
  u_xlati26 = (x_536 * 32769i);
  let x_539 : i32 = u_xlati26;
  let x_542 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((bitcast<u32>(x_539) ^ x_542));
  let x_545 : i32 = u_xlati14;
  u_xlatu14.x = (bitcast<u32>(x_545) * 1025u);
  let x_550 : u32 = u_xlatu14.x;
  u_xlatu26 = (x_550 >> 6u);
  let x_552 : u32 = u_xlatu26;
  let x_554 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((x_552 ^ x_554));
  let x_557 : i32 = u_xlati14;
  u_xlatu14.x = (bitcast<u32>(x_557) * 9u);
  let x_562 : u32 = u_xlatu14.x;
  u_xlatu26 = (x_562 >> 11u);
  let x_564 : u32 = u_xlatu26;
  let x_566 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((x_564 ^ x_566));
  let x_569 : i32 = u_xlati14;
  u_xlati14 = (x_569 * 32769i);
  param = 1065353216i;
  let x_575 : i32 = u_xlati14;
  param_1 = x_575;
  param_2 = 0i;
  param_3 = 23i;
  let x_578 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat14.x = bitcast<f32>(x_578);
  let x_582 : f32 = u_xlat14.x;
  u_xlat14.x = (x_582 + -1.0f);
  let x_587 : f32 = u_xlat14.x;
  u_xlat26 = (-(x_587) + 1.0f);
  let x_590 : bool = u_xlatb2;
  if (x_590) {
    let x_595 : f32 = u_xlat14.x;
    x_591 = x_595;
  } else {
    let x_597 : f32 = u_xlat26;
    x_591 = x_597;
  }
  let x_598 : f32 = x_591;
  u_xlat2.x = x_598;
  let x_600 : f32 = u_xlat0;
  let x_603 : f32 = u_xlat2.x;
  u_xlat0 = ((x_600 * 2.0f) + -(x_603));
  let x_606 : f32 = u_xlat0;
  let x_608 : f32 = u_xlat6.w;
  u_xlat2.x = (x_606 * x_608);
  let x_612 : f32 = u_xlat2.x;
  u_xlatb14 = (x_612 >= 0.40000000596046447754f);
  let x_615 : bool = u_xlatb14;
  if (x_615) {
    let x_620 : f32 = u_xlat2.x;
    x_616 = x_620;
  } else {
    x_616 = 0.0f;
  }
  let x_622 : f32 = x_616;
  u_xlat14.x = x_622;
  let x_625 : f32 = u_xlat6.w;
  let x_626 : f32 = u_xlat0;
  u_xlat0 = ((x_625 * x_626) + -0.40000000596046447754f);
  let x_631 : f32 = u_xlat2.x;
  u_xlat26 = dpdxCoarse(x_631);
  let x_634 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_634);
  let x_638 : f32 = u_xlat2.x;
  let x_640 : f32 = u_xlat26;
  u_xlat2.x = (abs(x_638) + abs(x_640));
  let x_645 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_645, 0.00009999999747378752f);
  let x_649 : f32 = u_xlat0;
  let x_651 : f32 = u_xlat2.x;
  u_xlat0 = (x_649 / x_651);
  let x_653 : f32 = u_xlat0;
  u_xlat0 = (x_653 + 0.5f);
  let x_655 : f32 = u_xlat0;
  u_xlat0 = clamp(x_655, 0.0f, 1.0f);
  let x_658 : f32 = x_142.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_658 == 0.0f));
  let x_660 : bool = u_xlatb2;
  if (x_660) {
    let x_664 : f32 = u_xlat0;
    x_661 = x_664;
  } else {
    let x_667 : f32 = u_xlat14.x;
    x_661 = x_667;
  }
  let x_668 : f32 = x_661;
  u_xlat0 = x_668;
  let x_669 : f32 = u_xlat0;
  u_xlat14.x = (x_669 + -0.00009999999747378752f);
  let x_674 : f32 = u_xlat14.x;
  u_xlatb14 = (x_674 < 0.0f);
  let x_676 : bool = u_xlatb14;
  if (((select(0i, 1i, x_676) * -1i) != 0i)) {
    discard;
  }
  let x_684 : vec3<f32> = u_xlat12;
  let x_685 : vec3<f32> = u_xlat20;
  u_xlat12 = (x_684 * vec3<f32>(x_685.y, x_685.y, x_685.y));
  let x_688 : vec3<f32> = u_xlat20;
  let x_690 : vec4<f32> = vs_INTERP4;
  let x_693 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_688.x, x_688.x, x_688.x) * vec3<f32>(x_690.x, x_690.y, x_690.z)) + x_693);
  let x_695 : vec3<f32> = u_xlat20;
  let x_697 : vec3<f32> = vs_INTERP9;
  let x_699 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_695.z, x_695.z, x_695.z) * x_697) + x_699);
  let x_701 : vec3<f32> = u_xlat12;
  let x_702 : vec3<f32> = u_xlat12;
  u_xlat14.x = dot(x_701, x_702);
  let x_706 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_706);
  let x_709 : vec3<f32> = u_xlat12;
  let x_710 : vec3<f32> = u_xlat14;
  let x_712 : vec3<f32> = (x_709 * vec3<f32>(x_710.x, x_710.x, x_710.x));
  let x_713 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  u_xlat3.w = 1.0f;
  let x_718 : vec4<f32> = x_77.unity_SHAr;
  let x_719 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_718, x_719);
  let x_724 : vec4<f32> = x_77.unity_SHAg;
  let x_725 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_724, x_725);
  let x_730 : vec4<f32> = x_77.unity_SHAb;
  let x_731 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_730, x_731);
  let x_734 : vec4<f32> = u_xlat3;
  let x_736 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_734.y, x_734.z, x_734.z, x_734.x) * vec4<f32>(x_736.x, x_736.y, x_736.z, x_736.z));
  let x_741 : vec4<f32> = x_77.unity_SHBr;
  let x_742 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_741, x_742);
  let x_747 : vec4<f32> = x_77.unity_SHBg;
  let x_748 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_747, x_748);
  let x_752 : vec4<f32> = x_77.unity_SHBb;
  let x_753 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_752, x_753);
  let x_757 : f32 = u_xlat3.y;
  let x_759 : f32 = u_xlat3.y;
  u_xlat12.x = (x_757 * x_759);
  let x_763 : f32 = u_xlat3.x;
  let x_765 : f32 = u_xlat3.x;
  let x_768 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_763 * x_765) + -(x_768));
  let x_774 : vec4<f32> = x_77.unity_SHC;
  let x_776 : vec3<f32> = u_xlat12;
  let x_779 : vec4<f32> = u_xlat9;
  u_xlat12 = ((vec3<f32>(x_774.x, x_774.y, x_774.z) * vec3<f32>(x_776.x, x_776.x, x_776.x)) + vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec3<f32> = u_xlat12;
  let x_783 : vec3<f32> = u_xlat4;
  u_xlat12 = (x_782 + x_783);
  let x_785 : vec3<f32> = u_xlat12;
  u_xlat12 = max(x_785, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_789 : f32 = u_xlat8.x;
  u_xlat8.x = x_789;
  let x_792 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_792, 0.0f, 1.0f);
  let x_795 : f32 = u_xlat0;
  u_xlat0 = x_795;
  let x_796 : f32 = u_xlat0;
  u_xlat0 = clamp(x_796, 0.0f, 1.0f);
  let x_798 : vec4<f32> = u_xlat7;
  u_xlat14 = (vec3<f32>(x_798.x, x_798.y, x_798.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_805 : f32 = u_xlat8.x;
  u_xlat39 = (-(x_805) + 1.0f);
  let x_808 : f32 = u_xlat39;
  let x_809 : f32 = u_xlat39;
  u_xlat4.x = (x_808 * x_809);
  let x_813 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_813, 0.0078125f);
  let x_819 : f32 = u_xlat4.x;
  let x_821 : f32 = u_xlat4.x;
  u_xlat16 = (x_819 * x_821);
  let x_825 : f32 = u_xlat8.x;
  u_xlat28 = (x_825 + 0.04000002145767211914f);
  let x_828 : f32 = u_xlat28;
  u_xlat28 = min(x_828, 1.0f);
  let x_832 : f32 = u_xlat4.x;
  u_xlat40 = ((x_832 * 4.0f) + 2.0f);
  let x_838 : f32 = vs_INTERP6.w;
  u_xlat41 = min(x_838, 1.0f);
  let x_842 : vec4<f32> = vs_INTERP3;
  let x_843 : vec2<f32> = vec2<f32>(x_842.x, x_842.y);
  let x_845 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_843.x, x_843.y, x_845);
  let x_852 : vec3<f32> = txVec1;
  let x_854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_852.xy, x_852.z);
  u_xlat6.x = x_854;
  let x_857 : f32 = u_xlat6.x;
  let x_859 : f32 = x_352.x_MainLightShadowParams.x;
  let x_861 : f32 = u_xlat37;
  u_xlat37 = ((x_857 * x_859) + x_861);
  let x_865 : f32 = vs_INTERP3.z;
  u_xlatb6 = (0.0f >= x_865);
  let x_869 : f32 = vs_INTERP3.z;
  u_xlatb18 = (x_869 >= 1.0f);
  let x_871 : bool = u_xlatb18;
  let x_872 : bool = u_xlatb6;
  u_xlatb6 = (x_871 | x_872);
  let x_874 : bool = u_xlatb6;
  let x_875 : f32 = u_xlat37;
  u_xlat37 = select(x_875, 1.0f, x_874);
  let x_877 : vec3<f32> = vs_INTERP8;
  let x_879 : vec3<f32> = x_142.x_WorldSpaceCameraPos;
  let x_881 : vec3<f32> = (x_877 + -(x_879));
  let x_882 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec4<f32> = u_xlat6;
  let x_886 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_884.x, x_884.y, x_884.z), vec3<f32>(x_886.x, x_886.y, x_886.z));
  let x_892 : f32 = u_xlat6.x;
  let x_894 : f32 = x_352.x_MainLightShadowParams.z;
  let x_897 : f32 = x_352.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_892 * x_894) + x_897);
  let x_901 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_901, 0.0f, 1.0f);
  let x_905 : f32 = u_xlat37;
  u_xlat30 = (-(x_905) + 1.0f);
  let x_909 : f32 = u_xlat18.x;
  let x_910 : f32 = u_xlat30;
  let x_912 : f32 = u_xlat37;
  u_xlat37 = ((x_909 * x_910) + x_912);
  let x_914 : vec3<f32> = u_xlat5;
  let x_916 : vec4<f32> = u_xlat3;
  u_xlat18.x = dot(-(x_914), vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_921 : f32 = u_xlat18.x;
  let x_923 : f32 = u_xlat18.x;
  u_xlat18.x = (x_921 + x_923);
  let x_926 : vec4<f32> = u_xlat3;
  let x_928 : vec3<f32> = u_xlat18;
  let x_932 : vec3<f32> = u_xlat5;
  u_xlat18 = ((vec3<f32>(x_926.x, x_926.y, x_926.z) * -(vec3<f32>(x_928.x, x_928.x, x_928.x))) + -(x_932));
  let x_935 : vec4<f32> = u_xlat3;
  let x_937 : vec3<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_935.x, x_935.y, x_935.z), x_937);
  let x_941 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_941, 0.0f, 1.0f);
  let x_945 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_945) + 1.0f);
  let x_950 : f32 = u_xlat7.x;
  let x_952 : f32 = u_xlat7.x;
  u_xlat7.x = (x_950 * x_952);
  let x_956 : f32 = u_xlat7.x;
  let x_958 : f32 = u_xlat7.x;
  u_xlat7.x = (x_956 * x_958);
  let x_963 : f32 = u_xlat39;
  u_xlat19.x = ((-(x_963) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_970 : f32 = u_xlat39;
  let x_972 : f32 = u_xlat19.x;
  u_xlat39 = (x_970 * x_972);
  let x_974 : f32 = u_xlat39;
  u_xlat39 = (x_974 * 6.0f);
  let x_985 : vec3<f32> = u_xlat18;
  let x_986 : f32 = u_xlat39;
  let x_987 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_985, x_986);
  u_xlat8 = x_987;
  let x_989 : f32 = u_xlat8.w;
  u_xlat39 = (x_989 + -1.0f);
  let x_992 : f32 = x_77.unity_SpecCube0_HDR.w;
  let x_993 : f32 = u_xlat39;
  u_xlat39 = ((x_992 * x_993) + 1.0f);
  let x_996 : f32 = u_xlat39;
  u_xlat39 = max(x_996, 0.0f);
  let x_998 : f32 = u_xlat39;
  u_xlat39 = log2(x_998);
  let x_1000 : f32 = u_xlat39;
  let x_1002 : f32 = x_77.unity_SpecCube0_HDR.y;
  u_xlat39 = (x_1000 * x_1002);
  let x_1004 : f32 = u_xlat39;
  u_xlat39 = exp2(x_1004);
  let x_1006 : f32 = u_xlat39;
  let x_1008 : f32 = x_77.unity_SpecCube0_HDR.x;
  u_xlat39 = (x_1006 * x_1008);
  let x_1010 : vec4<f32> = u_xlat8;
  let x_1012 : f32 = u_xlat39;
  u_xlat18 = (vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012, x_1012, x_1012));
  let x_1015 : vec3<f32> = u_xlat4;
  let x_1017 : vec3<f32> = u_xlat4;
  u_xlat19 = ((vec2<f32>(x_1015.x, x_1015.x) * vec2<f32>(x_1017.x, x_1017.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1023 : f32 = u_xlat19.y;
  u_xlat39 = (1.0f / x_1023);
  let x_1025 : f32 = u_xlat28;
  u_xlat4.x = (x_1025 + -0.03999999910593032837f);
  let x_1030 : f32 = u_xlat7.x;
  let x_1032 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1030 * x_1032) + 0.03999999910593032837f);
  let x_1037 : f32 = u_xlat39;
  let x_1039 : f32 = u_xlat4.x;
  u_xlat39 = (x_1037 * x_1039);
  let x_1041 : f32 = u_xlat39;
  let x_1043 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_1041, x_1041, x_1041) * x_1043);
  let x_1045 : vec3<f32> = u_xlat12;
  let x_1046 : vec3<f32> = u_xlat14;
  let x_1048 : vec3<f32> = u_xlat18;
  u_xlat12 = ((x_1045 * x_1046) + x_1048);
  let x_1050 : f32 = u_xlat37;
  let x_1052 : f32 = x_77.unity_LightData.z;
  u_xlat37 = (x_1050 * x_1052);
  let x_1054 : vec4<f32> = u_xlat3;
  let x_1057 : vec4<f32> = x_142.x_MainLightPosition;
  u_xlat39 = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1060, 0.0f, 1.0f);
  let x_1062 : f32 = u_xlat37;
  let x_1063 : f32 = u_xlat39;
  u_xlat37 = (x_1062 * x_1063);
  let x_1065 : f32 = u_xlat37;
  let x_1068 : vec4<f32> = x_142.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_1065, x_1065, x_1065) * vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
  let x_1071 : vec3<f32> = u_xlat5;
  let x_1073 : vec4<f32> = x_142.x_MainLightPosition;
  let x_1075 : vec3<f32> = (x_1071 + vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
  let x_1076 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1075.x, x_1076.y, x_1075.y, x_1075.z);
  let x_1078 : vec4<f32> = u_xlat7;
  let x_1080 : vec4<f32> = u_xlat7;
  u_xlat37 = dot(vec3<f32>(x_1078.x, x_1078.z, x_1078.w), vec3<f32>(x_1080.x, x_1080.z, x_1080.w));
  let x_1083 : f32 = u_xlat37;
  u_xlat37 = max(x_1083, 1.17549435e-38f);
  let x_1085 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_1085);
  let x_1087 : f32 = u_xlat37;
  let x_1089 : vec4<f32> = u_xlat7;
  let x_1091 : vec3<f32> = (vec3<f32>(x_1087, x_1087, x_1087) * vec3<f32>(x_1089.x, x_1089.z, x_1089.w));
  let x_1092 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1091.x, x_1092.y, x_1091.y, x_1091.z);
  let x_1094 : vec4<f32> = u_xlat3;
  let x_1096 : vec4<f32> = u_xlat7;
  u_xlat37 = dot(vec3<f32>(x_1094.x, x_1094.y, x_1094.z), vec3<f32>(x_1096.x, x_1096.z, x_1096.w));
  let x_1099 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1099, 0.0f, 1.0f);
  let x_1102 : vec4<f32> = x_142.x_MainLightPosition;
  let x_1104 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_1102.x, x_1102.y, x_1102.z), vec3<f32>(x_1104.x, x_1104.z, x_1104.w));
  let x_1107 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1107, 0.0f, 1.0f);
  let x_1109 : f32 = u_xlat37;
  let x_1110 : f32 = u_xlat37;
  u_xlat37 = (x_1109 * x_1110);
  let x_1112 : f32 = u_xlat37;
  let x_1114 : f32 = u_xlat19.x;
  u_xlat37 = ((x_1112 * x_1114) + 1.00001001358032226562f);
  let x_1118 : f32 = u_xlat39;
  let x_1119 : f32 = u_xlat39;
  u_xlat39 = (x_1118 * x_1119);
  let x_1121 : f32 = u_xlat37;
  let x_1122 : f32 = u_xlat37;
  u_xlat37 = (x_1121 * x_1122);
  let x_1124 : f32 = u_xlat39;
  u_xlat39 = max(x_1124, 0.10000000149011611938f);
  let x_1127 : f32 = u_xlat37;
  let x_1128 : f32 = u_xlat39;
  u_xlat37 = (x_1127 * x_1128);
  let x_1130 : f32 = u_xlat40;
  let x_1131 : f32 = u_xlat37;
  u_xlat37 = (x_1130 * x_1131);
  let x_1133 : f32 = u_xlat16;
  let x_1134 : f32 = u_xlat37;
  u_xlat37 = (x_1133 / x_1134);
  let x_1136 : f32 = u_xlat37;
  let x_1140 : vec3<f32> = u_xlat14;
  let x_1141 : vec3<f32> = ((vec3<f32>(x_1136, x_1136, x_1136) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1140);
  let x_1142 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1141.x, x_1142.y, x_1141.y, x_1141.z);
  let x_1144 : vec3<f32> = u_xlat18;
  let x_1145 : vec4<f32> = u_xlat7;
  u_xlat18 = (x_1144 * vec3<f32>(x_1145.x, x_1145.z, x_1145.w));
  let x_1150 : f32 = x_142.x_AdditionalLightsCount.x;
  let x_1152 : f32 = x_77.unity_LightData.y;
  u_xlat37 = min(x_1150, x_1152);
  let x_1155 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_1155));
  let x_1159 : f32 = u_xlat6.x;
  let x_1162 : f32 = x_352.x_AdditionalShadowFadeParams.x;
  let x_1165 : f32 = x_352.x_AdditionalShadowFadeParams.y;
  u_xlat39 = ((x_1159 * x_1162) + x_1165);
  let x_1167 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1167, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlat7.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1178 : u32 = u_xlatu_loop_1;
    let x_1179 : u32 = u_xlatu37;
    if ((x_1178 < x_1179)) {
    } else {
      break;
    }
    let x_1182 : u32 = u_xlatu_loop_1;
    u_xlatu28 = (x_1182 >> 2u);
    let x_1185 : u32 = u_xlatu_loop_1;
    u_xlati6 = bitcast<i32>((x_1185 & 3u));
    let x_1188 : u32 = u_xlatu28;
    let x_1191 : vec4<f32> = x_77.unity_LightIndices[bitcast<i32>(x_1188)];
    let x_1201 : i32 = u_xlati6;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1206 : vec4<u32> = indexable[x_1201];
    u_xlat28 = dot(x_1191, bitcast<vec4<f32>>(x_1206));
    let x_1210 : f32 = u_xlat28;
    u_xlati28 = i32(x_1210);
    let x_1212 : vec3<f32> = vs_INTERP8;
    let x_1223 : i32 = u_xlati28;
    let x_1225 : vec4<f32> = x_1222.x_AdditionalLightsPosition[x_1223];
    let x_1228 : i32 = u_xlati28;
    let x_1230 : vec4<f32> = x_1222.x_AdditionalLightsPosition[x_1228];
    let x_1232 : vec3<f32> = ((-(x_1212) * vec3<f32>(x_1225.w, x_1225.w, x_1225.w)) + vec3<f32>(x_1230.x, x_1230.y, x_1230.z));
    let x_1233 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
    let x_1235 : vec4<f32> = u_xlat8;
    let x_1237 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1235.x, x_1235.y, x_1235.z), vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
    let x_1242 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1242, 0.00006103515625f);
    let x_1248 : f32 = u_xlat6.x;
    u_xlat44 = inverseSqrt(x_1248);
    let x_1250 : f32 = u_xlat44;
    let x_1252 : vec4<f32> = u_xlat8;
    let x_1254 : vec3<f32> = (vec3<f32>(x_1250, x_1250, x_1250) * vec3<f32>(x_1252.x, x_1252.y, x_1252.z));
    let x_1255 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
    let x_1259 : f32 = u_xlat6.x;
    u_xlat45 = (1.0f / x_1259);
    let x_1262 : f32 = u_xlat6.x;
    let x_1263 : i32 = u_xlati28;
    let x_1265 : f32 = x_1222.x_AdditionalLightsAttenuation[x_1263].x;
    u_xlat6.x = (x_1262 * x_1265);
    let x_1269 : f32 = u_xlat6.x;
    let x_1272 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1269) * x_1272) + 1.0f);
    let x_1277 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1277, 0.0f);
    let x_1281 : f32 = u_xlat6.x;
    let x_1283 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1281 * x_1283);
    let x_1287 : f32 = u_xlat6.x;
    let x_1288 : f32 = u_xlat45;
    u_xlat6.x = (x_1287 * x_1288);
    let x_1291 : i32 = u_xlati28;
    let x_1293 : vec4<f32> = x_1222.x_AdditionalLightsSpotDir[x_1291];
    let x_1295 : vec4<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1293.x, x_1293.y, x_1293.z), vec3<f32>(x_1295.x, x_1295.y, x_1295.z));
    let x_1298 : f32 = u_xlat45;
    let x_1299 : i32 = u_xlati28;
    let x_1301 : f32 = x_1222.x_AdditionalLightsAttenuation[x_1299].z;
    let x_1303 : i32 = u_xlati28;
    let x_1305 : f32 = x_1222.x_AdditionalLightsAttenuation[x_1303].w;
    u_xlat45 = ((x_1298 * x_1301) + x_1305);
    let x_1307 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1307, 0.0f, 1.0f);
    let x_1309 : f32 = u_xlat45;
    let x_1310 : f32 = u_xlat45;
    u_xlat45 = (x_1309 * x_1310);
    let x_1313 : f32 = u_xlat6.x;
    let x_1314 : f32 = u_xlat45;
    u_xlat6.x = (x_1313 * x_1314);
    let x_1319 : i32 = u_xlati28;
    let x_1321 : f32 = x_352.x_AdditionalShadowParams[x_1319].w;
    u_xlati45 = i32(x_1321);
    let x_1326 : i32 = u_xlati45;
    u_xlatb10.x = (x_1326 >= 0i);
    let x_1330 : bool = u_xlatb10.x;
    if (x_1330) {
      let x_1334 : i32 = u_xlati28;
      let x_1336 : f32 = x_352.x_AdditionalShadowParams[x_1334].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1336, x_1336, x_1336, x_1336))));
      let x_1343 : bool = u_xlatb10.x;
      if (x_1343) {
        let x_1346 : vec4<f32> = u_xlat9;
        let x_1349 : vec4<f32> = u_xlat9;
        let x_1352 : vec4<bool> = (abs(vec4<f32>(x_1346.z, x_1346.z, x_1346.y, x_1346.z)) >= abs(vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.x)));
        u_xlatb10 = vec3<bool>(x_1352.x, x_1352.y, x_1352.z);
        let x_1355 : bool = u_xlatb10.y;
        let x_1357 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1355 & x_1357);
        let x_1361 : vec4<f32> = u_xlat9;
        let x_1364 : vec4<bool> = (-(vec4<f32>(x_1361.z, x_1361.y, x_1361.x, x_1361.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1364.x, x_1364.y, x_1364.z);
        let x_1368 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1368);
        let x_1373 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1373);
        let x_1379 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1379);
        let x_1383 : bool = u_xlatb10.z;
        if (x_1383) {
          let x_1388 : f32 = u_xlat22.z;
          x_1384 = x_1388;
        } else {
          let x_1390 : f32 = u_xlat11;
          x_1384 = x_1390;
        }
        let x_1391 : f32 = x_1384;
        u_xlat34 = x_1391;
        let x_1394 : bool = u_xlatb10.x;
        if (x_1394) {
          let x_1399 : f32 = u_xlat22.x;
          x_1395 = x_1399;
        } else {
          let x_1401 : f32 = u_xlat34;
          x_1395 = x_1401;
        }
        let x_1402 : f32 = x_1395;
        u_xlat10.x = x_1402;
        let x_1404 : i32 = u_xlati28;
        let x_1406 : f32 = x_352.x_AdditionalShadowParams[x_1404].w;
        u_xlat22.x = trunc(x_1406);
        let x_1410 : f32 = u_xlat10.x;
        let x_1412 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1410 + x_1412);
        let x_1416 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1416);
      }
      let x_1418 : i32 = u_xlati45;
      u_xlati45 = (x_1418 << bitcast<u32>(2i));
      let x_1420 : vec3<f32> = vs_INTERP8;
      let x_1423 : i32 = u_xlati45;
      let x_1426 : i32 = u_xlati45;
      let x_1430 : vec4<f32> = x_352.x_AdditionalLightsWorldToShadow[((x_1423 + 1i) / 4i)][((x_1426 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1420.y, x_1420.y, x_1420.y, x_1420.y) * x_1430);
      let x_1432 : i32 = u_xlati45;
      let x_1434 : i32 = u_xlati45;
      let x_1437 : vec4<f32> = x_352.x_AdditionalLightsWorldToShadow[(x_1432 / 4i)][(x_1434 % 4i)];
      let x_1438 : vec3<f32> = vs_INTERP8;
      let x_1441 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1437 * vec4<f32>(x_1438.x, x_1438.x, x_1438.x, x_1438.x)) + x_1441);
      let x_1443 : i32 = u_xlati45;
      let x_1446 : i32 = u_xlati45;
      let x_1450 : vec4<f32> = x_352.x_AdditionalLightsWorldToShadow[((x_1443 + 2i) / 4i)][((x_1446 + 2i) % 4i)];
      let x_1451 : vec3<f32> = vs_INTERP8;
      let x_1454 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1450 * vec4<f32>(x_1451.z, x_1451.z, x_1451.z, x_1451.z)) + x_1454);
      let x_1456 : vec4<f32> = u_xlat10;
      let x_1457 : i32 = u_xlati45;
      let x_1460 : i32 = u_xlati45;
      let x_1464 : vec4<f32> = x_352.x_AdditionalLightsWorldToShadow[((x_1457 + 3i) / 4i)][((x_1460 + 3i) % 4i)];
      u_xlat10 = (x_1456 + x_1464);
      let x_1466 : vec4<f32> = u_xlat10;
      let x_1468 : vec4<f32> = u_xlat10;
      let x_1470 : vec3<f32> = (vec3<f32>(x_1466.x, x_1466.y, x_1466.z) / vec3<f32>(x_1468.w, x_1468.w, x_1468.w));
      let x_1471 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
      let x_1474 : vec4<f32> = u_xlat10;
      let x_1475 : vec2<f32> = vec2<f32>(x_1474.x, x_1474.y);
      let x_1477 : f32 = u_xlat10.z;
      txVec2 = vec3<f32>(x_1475.x, x_1475.y, x_1477);
      let x_1485 : vec3<f32> = txVec2;
      let x_1487 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1485.xy, x_1485.z);
      u_xlat45 = x_1487;
      let x_1488 : i32 = u_xlati28;
      let x_1490 : f32 = x_352.x_AdditionalShadowParams[x_1488].x;
      u_xlat10.x = (1.0f + -(x_1490));
      let x_1494 : f32 = u_xlat45;
      let x_1495 : i32 = u_xlati28;
      let x_1497 : f32 = x_352.x_AdditionalShadowParams[x_1495].x;
      let x_1500 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1494 * x_1497) + x_1500);
      let x_1503 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1503);
      let x_1508 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1508 >= 1.0f);
      let x_1510 : bool = u_xlatb22;
      let x_1512 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1510 | x_1512);
      let x_1516 : bool = u_xlatb10.x;
      let x_1517 : f32 = u_xlat45;
      u_xlat45 = select(x_1517, 1.0f, x_1516);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1520 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1520) + 1.0f);
    let x_1524 : f32 = u_xlat39;
    let x_1526 : f32 = u_xlat10.x;
    let x_1528 : f32 = u_xlat45;
    u_xlat45 = ((x_1524 * x_1526) + x_1528);
    let x_1531 : f32 = u_xlat6.x;
    let x_1532 : f32 = u_xlat45;
    u_xlat6.x = (x_1531 * x_1532);
    let x_1535 : vec4<f32> = u_xlat3;
    let x_1537 : vec4<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1535.x, x_1535.y, x_1535.z), vec3<f32>(x_1537.x, x_1537.y, x_1537.z));
    let x_1540 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1540, 0.0f, 1.0f);
    let x_1543 : f32 = u_xlat6.x;
    let x_1544 : f32 = u_xlat45;
    u_xlat6.x = (x_1543 * x_1544);
    let x_1547 : vec4<f32> = u_xlat6;
    let x_1549 : i32 = u_xlati28;
    let x_1551 : vec4<f32> = x_1222.x_AdditionalLightsColor[x_1549];
    let x_1553 : vec3<f32> = (vec3<f32>(x_1547.x, x_1547.x, x_1547.x) * vec3<f32>(x_1551.x, x_1551.y, x_1551.z));
    let x_1554 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1553.x, x_1553.y, x_1553.z, x_1554.w);
    let x_1556 : vec4<f32> = u_xlat8;
    let x_1558 : f32 = u_xlat44;
    let x_1561 : vec3<f32> = u_xlat5;
    let x_1562 : vec3<f32> = ((vec3<f32>(x_1556.x, x_1556.y, x_1556.z) * vec3<f32>(x_1558, x_1558, x_1558)) + x_1561);
    let x_1563 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1563.w);
    let x_1565 : vec4<f32> = u_xlat8;
    let x_1567 : vec4<f32> = u_xlat8;
    u_xlat28 = dot(vec3<f32>(x_1565.x, x_1565.y, x_1565.z), vec3<f32>(x_1567.x, x_1567.y, x_1567.z));
    let x_1570 : f32 = u_xlat28;
    u_xlat28 = max(x_1570, 1.17549435e-38f);
    let x_1572 : f32 = u_xlat28;
    u_xlat28 = inverseSqrt(x_1572);
    let x_1574 : f32 = u_xlat28;
    let x_1576 : vec4<f32> = u_xlat8;
    let x_1578 : vec3<f32> = (vec3<f32>(x_1574, x_1574, x_1574) * vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
    let x_1579 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1578.x, x_1578.y, x_1578.z, x_1579.w);
    let x_1581 : vec4<f32> = u_xlat3;
    let x_1583 : vec4<f32> = u_xlat8;
    u_xlat28 = dot(vec3<f32>(x_1581.x, x_1581.y, x_1581.z), vec3<f32>(x_1583.x, x_1583.y, x_1583.z));
    let x_1586 : f32 = u_xlat28;
    u_xlat28 = clamp(x_1586, 0.0f, 1.0f);
    let x_1588 : vec4<f32> = u_xlat9;
    let x_1590 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1588.x, x_1588.y, x_1588.z), vec3<f32>(x_1590.x, x_1590.y, x_1590.z));
    let x_1595 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1595, 0.0f, 1.0f);
    let x_1598 : f32 = u_xlat28;
    let x_1599 : f32 = u_xlat28;
    u_xlat28 = (x_1598 * x_1599);
    let x_1601 : f32 = u_xlat28;
    let x_1603 : f32 = u_xlat19.x;
    u_xlat28 = ((x_1601 * x_1603) + 1.00001001358032226562f);
    let x_1607 : f32 = u_xlat6.x;
    let x_1609 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1607 * x_1609);
    let x_1612 : f32 = u_xlat28;
    let x_1613 : f32 = u_xlat28;
    u_xlat28 = (x_1612 * x_1613);
    let x_1616 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1616, 0.10000000149011611938f);
    let x_1619 : f32 = u_xlat28;
    let x_1621 : f32 = u_xlat6.x;
    u_xlat28 = (x_1619 * x_1621);
    let x_1623 : f32 = u_xlat40;
    let x_1624 : f32 = u_xlat28;
    u_xlat28 = (x_1623 * x_1624);
    let x_1626 : f32 = u_xlat16;
    let x_1627 : f32 = u_xlat28;
    u_xlat28 = (x_1626 / x_1627);
    let x_1629 : f32 = u_xlat28;
    let x_1632 : vec3<f32> = u_xlat14;
    let x_1633 : vec3<f32> = ((vec3<f32>(x_1629, x_1629, x_1629) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1632);
    let x_1634 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1633.x, x_1633.y, x_1633.z, x_1634.w);
    let x_1636 : vec4<f32> = u_xlat8;
    let x_1638 : vec4<f32> = u_xlat10;
    let x_1641 : vec4<f32> = u_xlat7;
    let x_1643 : vec3<f32> = ((vec3<f32>(x_1636.x, x_1636.y, x_1636.z) * vec3<f32>(x_1638.x, x_1638.y, x_1638.z)) + vec3<f32>(x_1641.x, x_1641.z, x_1641.w));
    let x_1644 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1643.x, x_1644.y, x_1643.y, x_1643.z);

    continuing {
      let x_1646 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1646 + bitcast<u32>(1i));
    }
  }
  let x_1648 : vec3<f32> = u_xlat12;
  let x_1649 : f32 = u_xlat41;
  let x_1652 : vec3<f32> = u_xlat18;
  u_xlat12 = ((x_1648 * vec3<f32>(x_1649, x_1649, x_1649)) + x_1652);
  let x_1654 : vec4<f32> = u_xlat7;
  let x_1656 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_1654.x, x_1654.z, x_1654.w) + x_1656);
  let x_1660 : vec4<f32> = vs_INTERP6;
  let x_1662 : vec3<f32> = u_xlat1;
  let x_1664 : vec3<f32> = u_xlat12;
  let x_1665 : vec3<f32> = ((vec3<f32>(x_1660.w, x_1660.w, x_1660.w) * x_1662) + x_1664);
  let x_1666 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1665.x, x_1665.y, x_1665.z, x_1666.w);
  let x_1668 : bool = u_xlatb2;
  let x_1669 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1669, x_1668);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


