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

@group(1) @binding(4) var<uniform> x_243 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_336 : LightShadows;

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

var<private> u_xlat24 : vec2<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu36 : u32;

var<private> u_xlatu43 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlat43 : f32;

var<private> u_xlati43 : i32;

@group(1) @binding(1) var<uniform> x_1258 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

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
  var x_182 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_439 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_575 : f32;
  var x_600 : f32;
  var x_645 : f32;
  var txVec1 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1410 : f32;
  var x_1421 : f32;
  var txVec2 : vec3<f32>;
  var x_1538 : f32;
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
  let x_170 : f32 = x_142.unity_MatrixV[0i].z;
  u_xlat5.x = x_170;
  let x_174 : f32 = x_142.unity_MatrixV[1i].z;
  u_xlat5.y = x_174;
  let x_178 : f32 = x_142.unity_MatrixV[2i].z;
  u_xlat5.z = x_178;
  let x_180 : bool = u_xlatb0;
  if (x_180) {
    let x_185 : vec3<f32> = u_xlat4;
    x_182 = x_185;
  } else {
    let x_187 : vec3<f32> = u_xlat5;
    x_182 = x_187;
  }
  let x_188 : vec3<f32> = x_182;
  u_xlat4 = x_188;
  let x_189 : vec3<f32> = u_xlat4;
  let x_193 : vec4<f32> = x_77.unity_WorldToObject[1i];
  u_xlat5 = (vec3<f32>(x_189.y, x_189.y, x_189.y) * vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_197 : vec4<f32> = x_77.unity_WorldToObject[0i];
  let x_199 : vec3<f32> = u_xlat4;
  let x_202 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_197.x, x_197.y, x_197.z) * vec3<f32>(x_199.x, x_199.x, x_199.x)) + x_202);
  let x_205 : vec4<f32> = x_77.unity_WorldToObject[2i];
  let x_207 : vec3<f32> = u_xlat4;
  let x_210 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_205.x, x_205.y, x_205.z) * vec3<f32>(x_207.z, x_207.z, x_207.z)) + x_210);
  let x_212 : vec3<f32> = u_xlat5;
  let x_213 : vec3<f32> = u_xlat5;
  u_xlat0 = dot(x_212, x_213);
  let x_215 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_215);
  let x_217 : f32 = u_xlat0;
  let x_219 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_217, x_217, x_217) * x_219);
  let x_233 : vec4<f32> = vs_INTERP5;
  let x_236 : f32 = x_142.x_GlobalMipBias.x;
  let x_237 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_233.x, x_233.y), x_236);
  u_xlat6 = x_237;
  let x_239 : vec4<f32> = u_xlat6;
  let x_245 : vec4<f32> = x_243.Color_C30C7CA3;
  let x_247 : vec3<f32> = (vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_256 : vec4<f32> = vs_INTERP5;
  let x_259 : f32 = x_142.x_GlobalMipBias.x;
  let x_260 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_256.x, x_256.y), x_259);
  u_xlat8 = vec4<f32>(x_260.w, x_260.x, x_260.y, x_260.z);
  let x_263 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_263.y, x_263.z, x_263.w, x_263.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_270 : vec4<f32> = u_xlat9;
  let x_271 : vec4<f32> = u_xlat9;
  u_xlat0 = dot(x_270, x_271);
  let x_273 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_273);
  let x_276 : f32 = u_xlat0;
  let x_278 : vec4<f32> = u_xlat9;
  u_xlat20 = (vec3<f32>(x_276, x_276, x_276) * vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_283 : f32 = vs_INTERP6.y;
  u_xlat0 = (x_283 * 200.0f);
  let x_286 : f32 = u_xlat0;
  u_xlat0 = min(x_286, 1.0f);
  let x_288 : f32 = u_xlat0;
  let x_290 : vec4<f32> = u_xlat6;
  let x_292 : vec3<f32> = (vec3<f32>(x_288, x_288, x_288) * vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat3;
  let x_297 : vec3<f32> = u_xlat20;
  let x_299 : vec3<f32> = (vec3<f32>(x_295.x, x_295.y, x_295.z) * vec3<f32>(x_297.y, x_297.y, x_297.y));
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec3<f32> = u_xlat20;
  let x_304 : vec3<f32> = u_xlat2;
  let x_306 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_302.x, x_302.x, x_302.x) * x_304) + vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec3<f32> = u_xlat20;
  let x_311 : vec3<f32> = u_xlat1;
  let x_313 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_309.z, x_309.z, x_309.z) * x_311) + x_313);
  let x_315 : vec3<f32> = u_xlat1;
  let x_316 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_315, x_316);
  let x_318 : f32 = u_xlat0;
  u_xlat0 = max(x_318, 1.17549435e-38f);
  let x_321 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_321);
  let x_323 : f32 = u_xlat0;
  let x_325 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_323, x_323, x_323) * x_325);
  let x_327 : vec3<f32> = vs_INTERP8;
  let x_338 : vec4<f32> = x_336.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_327.y, x_327.y, x_327.y) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_342 : vec4<f32> = x_336.x_MainLightWorldToShadow[0i][0i];
  let x_344 : vec3<f32> = vs_INTERP8;
  let x_347 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344.x, x_344.x, x_344.x)) + x_347);
  let x_350 : vec4<f32> = x_336.x_MainLightWorldToShadow[0i][2i];
  let x_352 : vec3<f32> = vs_INTERP8;
  let x_355 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(x_352.z, x_352.z, x_352.z)) + x_355);
  let x_357 : vec3<f32> = u_xlat2;
  let x_359 : vec4<f32> = x_336.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_357 + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_363 : vec3<f32> = u_xlat2;
  let x_364 : vec2<f32> = vec2<f32>(x_363.x, x_363.y);
  let x_366 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_364.x, x_364.y, x_366);
  let x_378 : vec3<f32> = txVec0;
  let x_380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_378.xy, x_378.z);
  u_xlat0 = x_380;
  let x_382 : f32 = x_336.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_382) + 1.0f);
  let x_385 : f32 = u_xlat0;
  let x_387 : f32 = x_336.x_MainLightShadowParams.x;
  let x_389 : f32 = u_xlat37;
  u_xlat0 = ((x_385 * x_387) + x_389);
  let x_393 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_393);
  let x_397 : f32 = u_xlat2.z;
  u_xlatb14 = (x_397 >= 1.0f);
  let x_399 : bool = u_xlatb14;
  let x_400 : bool = u_xlatb2;
  u_xlatb2 = (x_399 | x_400);
  let x_402 : bool = u_xlatb2;
  let x_403 : f32 = u_xlat0;
  u_xlat0 = select(x_403, 1.0f, x_402);
  let x_405 : vec3<f32> = u_xlat1;
  let x_407 : vec4<f32> = x_142.x_MainLightPosition;
  u_xlat1.x = dot(x_405, -(vec3<f32>(x_407.x, x_407.y, x_407.z)));
  let x_413 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_413, 0.0f, 1.0f);
  let x_416 : f32 = u_xlat0;
  let x_419 : vec4<f32> = x_142.x_MainLightColor;
  u_xlat2 = (vec3<f32>(x_416, x_416, x_416) * vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec3<f32> = u_xlat1;
  let x_424 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_422.x, x_422.x, x_422.x) * x_424);
  let x_426 : vec3<f32> = u_xlat1;
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_426 * vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_431 : f32 = x_77.unity_LODFade.x;
  u_xlatb0 = (x_431 < 0.0f);
  let x_434 : f32 = x_77.unity_LODFade.x;
  u_xlat2.x = (x_434 + 1.0f);
  let x_437 : bool = u_xlatb0;
  if (x_437) {
    let x_443 : f32 = u_xlat2.x;
    x_439 = x_443;
  } else {
    let x_446 : f32 = x_77.unity_LODFade.x;
    x_439 = x_446;
  }
  let x_447 : f32 = x_439;
  u_xlat0 = x_447;
  let x_449 : f32 = u_xlat0;
  u_xlatb2 = (0.5f >= x_449);
  let x_452 : vec3<f32> = u_xlat5;
  let x_456 : vec4<f32> = x_142.x_ScreenParams;
  u_xlat14 = (abs(x_452) * vec3<f32>(x_456.x, x_456.y, x_456.x));
  let x_462 : vec3<f32> = u_xlat14;
  u_xlatu14 = vec3<u32>(x_462);
  let x_467 : u32 = u_xlatu14.z;
  u_xlatu38 = (x_467 * 1025u);
  let x_471 : u32 = u_xlatu38;
  u_xlatu3 = (x_471 >> 6u);
  let x_476 : u32 = u_xlatu38;
  let x_477 : u32 = u_xlatu3;
  u_xlati38 = bitcast<i32>((x_476 ^ x_477));
  let x_480 : i32 = u_xlati38;
  u_xlatu38 = (bitcast<u32>(x_480) * 9u);
  let x_484 : u32 = u_xlatu38;
  u_xlatu3 = (x_484 >> 11u);
  let x_487 : u32 = u_xlatu38;
  let x_488 : u32 = u_xlatu3;
  u_xlati38 = bitcast<i32>((x_487 ^ x_488));
  let x_491 : i32 = u_xlati38;
  u_xlati38 = (x_491 * 32769i);
  let x_495 : i32 = u_xlati38;
  let x_498 : u32 = u_xlatu14.y;
  u_xlati26 = bitcast<i32>((bitcast<u32>(x_495) ^ x_498));
  let x_502 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_502) * 1025u);
  let x_505 : u32 = u_xlatu26;
  u_xlatu38 = (x_505 >> 6u);
  let x_507 : u32 = u_xlatu38;
  let x_508 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_507 ^ x_508));
  let x_511 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_511) * 9u);
  let x_514 : u32 = u_xlatu26;
  u_xlatu38 = (x_514 >> 11u);
  let x_516 : u32 = u_xlatu38;
  let x_517 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_516 ^ x_517));
  let x_520 : i32 = u_xlati26;
  u_xlati26 = (x_520 * 32769i);
  let x_523 : i32 = u_xlati26;
  let x_526 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((bitcast<u32>(x_523) ^ x_526));
  let x_529 : i32 = u_xlati14;
  u_xlatu14.x = (bitcast<u32>(x_529) * 1025u);
  let x_534 : u32 = u_xlatu14.x;
  u_xlatu26 = (x_534 >> 6u);
  let x_536 : u32 = u_xlatu26;
  let x_538 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((x_536 ^ x_538));
  let x_541 : i32 = u_xlati14;
  u_xlatu14.x = (bitcast<u32>(x_541) * 9u);
  let x_546 : u32 = u_xlatu14.x;
  u_xlatu26 = (x_546 >> 11u);
  let x_548 : u32 = u_xlatu26;
  let x_550 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((x_548 ^ x_550));
  let x_553 : i32 = u_xlati14;
  u_xlati14 = (x_553 * 32769i);
  param = 1065353216i;
  let x_559 : i32 = u_xlati14;
  param_1 = x_559;
  param_2 = 0i;
  param_3 = 23i;
  let x_562 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat14.x = bitcast<f32>(x_562);
  let x_566 : f32 = u_xlat14.x;
  u_xlat14.x = (x_566 + -1.0f);
  let x_571 : f32 = u_xlat14.x;
  u_xlat26 = (-(x_571) + 1.0f);
  let x_574 : bool = u_xlatb2;
  if (x_574) {
    let x_579 : f32 = u_xlat14.x;
    x_575 = x_579;
  } else {
    let x_581 : f32 = u_xlat26;
    x_575 = x_581;
  }
  let x_582 : f32 = x_575;
  u_xlat2.x = x_582;
  let x_584 : f32 = u_xlat0;
  let x_587 : f32 = u_xlat2.x;
  u_xlat0 = ((x_584 * 2.0f) + -(x_587));
  let x_590 : f32 = u_xlat0;
  let x_592 : f32 = u_xlat6.w;
  u_xlat2.x = (x_590 * x_592);
  let x_596 : f32 = u_xlat2.x;
  u_xlatb14 = (x_596 >= 0.40000000596046447754f);
  let x_599 : bool = u_xlatb14;
  if (x_599) {
    let x_604 : f32 = u_xlat2.x;
    x_600 = x_604;
  } else {
    x_600 = 0.0f;
  }
  let x_606 : f32 = x_600;
  u_xlat14.x = x_606;
  let x_609 : f32 = u_xlat6.w;
  let x_610 : f32 = u_xlat0;
  u_xlat0 = ((x_609 * x_610) + -0.40000000596046447754f);
  let x_615 : f32 = u_xlat2.x;
  u_xlat26 = dpdxCoarse(x_615);
  let x_618 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_618);
  let x_622 : f32 = u_xlat2.x;
  let x_624 : f32 = u_xlat26;
  u_xlat2.x = (abs(x_622) + abs(x_624));
  let x_629 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_629, 0.00009999999747378752f);
  let x_633 : f32 = u_xlat0;
  let x_635 : f32 = u_xlat2.x;
  u_xlat0 = (x_633 / x_635);
  let x_637 : f32 = u_xlat0;
  u_xlat0 = (x_637 + 0.5f);
  let x_639 : f32 = u_xlat0;
  u_xlat0 = clamp(x_639, 0.0f, 1.0f);
  let x_642 : f32 = x_142.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_642 == 0.0f));
  let x_644 : bool = u_xlatb2;
  if (x_644) {
    let x_648 : f32 = u_xlat0;
    x_645 = x_648;
  } else {
    let x_651 : f32 = u_xlat14.x;
    x_645 = x_651;
  }
  let x_652 : f32 = x_645;
  u_xlat0 = x_652;
  let x_653 : f32 = u_xlat0;
  u_xlat14.x = (x_653 + -0.00009999999747378752f);
  let x_658 : f32 = u_xlat14.x;
  u_xlatb14 = (x_658 < 0.0f);
  let x_660 : bool = u_xlatb14;
  if (((select(0i, 1i, x_660) * -1i) != 0i)) {
    discard;
  }
  let x_668 : vec3<f32> = u_xlat12;
  let x_669 : vec3<f32> = u_xlat20;
  u_xlat12 = (x_668 * vec3<f32>(x_669.y, x_669.y, x_669.y));
  let x_672 : vec3<f32> = u_xlat20;
  let x_674 : vec4<f32> = vs_INTERP4;
  let x_677 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_672.x, x_672.x, x_672.x) * vec3<f32>(x_674.x, x_674.y, x_674.z)) + x_677);
  let x_679 : vec3<f32> = u_xlat20;
  let x_681 : vec3<f32> = vs_INTERP9;
  let x_683 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_679.z, x_679.z, x_679.z) * x_681) + x_683);
  let x_685 : vec3<f32> = u_xlat12;
  let x_686 : vec3<f32> = u_xlat12;
  u_xlat14.x = dot(x_685, x_686);
  let x_690 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_690);
  let x_693 : vec3<f32> = u_xlat12;
  let x_694 : vec3<f32> = u_xlat14;
  let x_696 : vec3<f32> = (x_693 * vec3<f32>(x_694.x, x_694.x, x_694.x));
  let x_697 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_700 : f32 = vs_INTERP8.y;
  let x_702 : f32 = x_142.unity_MatrixV[1i].z;
  u_xlat12.x = (x_700 * x_702);
  let x_706 : f32 = x_142.unity_MatrixV[0i].z;
  let x_708 : f32 = vs_INTERP8.x;
  let x_711 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_706 * x_708) + x_711);
  let x_715 : f32 = x_142.unity_MatrixV[2i].z;
  let x_717 : f32 = vs_INTERP8.z;
  let x_720 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_715 * x_717) + x_720);
  let x_724 : f32 = u_xlat12.x;
  let x_726 : f32 = x_142.unity_MatrixV[3i].z;
  u_xlat12.x = (x_724 + x_726);
  let x_730 : f32 = u_xlat12.x;
  let x_734 : f32 = x_142.x_ProjectionParams.y;
  u_xlat12.x = (-(x_730) + -(x_734));
  let x_739 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_739, 0.0f);
  let x_743 : f32 = u_xlat12.x;
  let x_746 : f32 = x_142.unity_FogParams.x;
  u_xlat12.x = (x_743 * x_746);
  u_xlat3.w = 1.0f;
  let x_752 : vec4<f32> = x_77.unity_SHAr;
  let x_753 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_752, x_753);
  let x_758 : vec4<f32> = x_77.unity_SHAg;
  let x_759 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_758, x_759);
  let x_764 : vec4<f32> = x_77.unity_SHAb;
  let x_765 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_764, x_765);
  let x_768 : vec4<f32> = u_xlat3;
  let x_770 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_768.y, x_768.z, x_768.z, x_768.x) * vec4<f32>(x_770.x, x_770.y, x_770.z, x_770.z));
  let x_775 : vec4<f32> = x_77.unity_SHBr;
  let x_776 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_775, x_776);
  let x_781 : vec4<f32> = x_77.unity_SHBg;
  let x_782 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_781, x_782);
  let x_786 : vec4<f32> = x_77.unity_SHBb;
  let x_787 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_786, x_787);
  let x_793 : f32 = u_xlat3.y;
  let x_795 : f32 = u_xlat3.y;
  u_xlat24.x = (x_793 * x_795);
  let x_799 : f32 = u_xlat3.x;
  let x_801 : f32 = u_xlat3.x;
  let x_804 : f32 = u_xlat24.x;
  u_xlat24.x = ((x_799 * x_801) + -(x_804));
  let x_810 : vec4<f32> = x_77.unity_SHC;
  let x_812 : vec2<f32> = u_xlat24;
  let x_815 : vec4<f32> = u_xlat9;
  u_xlat14 = ((vec3<f32>(x_810.x, x_810.y, x_810.z) * vec3<f32>(x_812.x, x_812.x, x_812.x)) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec3<f32> = u_xlat14;
  let x_819 : vec3<f32> = u_xlat5;
  u_xlat14 = (x_818 + x_819);
  let x_821 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_821, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_825 : f32 = u_xlat8.x;
  u_xlat8.x = x_825;
  let x_828 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_828, 0.0f, 1.0f);
  let x_831 : f32 = u_xlat0;
  u_xlat0 = x_831;
  let x_832 : f32 = u_xlat0;
  u_xlat0 = clamp(x_832, 0.0f, 1.0f);
  let x_834 : vec4<f32> = u_xlat7;
  u_xlat5 = (vec3<f32>(x_834.x, x_834.y, x_834.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_840 : f32 = u_xlat8.x;
  u_xlat24.x = (-(x_840) + 1.0f);
  let x_846 : f32 = u_xlat24.x;
  let x_848 : f32 = u_xlat24.x;
  u_xlat36 = (x_846 * x_848);
  let x_850 : f32 = u_xlat36;
  u_xlat36 = max(x_850, 0.0078125f);
  let x_854 : f32 = u_xlat36;
  let x_855 : f32 = u_xlat36;
  u_xlat39 = (x_854 * x_855);
  let x_859 : f32 = u_xlat8.x;
  u_xlat40 = (x_859 + 0.04000002145767211914f);
  let x_862 : f32 = u_xlat40;
  u_xlat40 = min(x_862, 1.0f);
  let x_865 : f32 = u_xlat36;
  u_xlat41 = ((x_865 * 4.0f) + 2.0f);
  let x_870 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_870, 1.0f);
  let x_875 : vec4<f32> = vs_INTERP3;
  let x_876 : vec2<f32> = vec2<f32>(x_875.x, x_875.y);
  let x_878 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_876.x, x_876.y, x_878);
  let x_886 : vec3<f32> = txVec1;
  let x_888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_886.xy, x_886.z);
  u_xlat18.x = x_888;
  let x_891 : f32 = u_xlat18.x;
  let x_893 : f32 = x_336.x_MainLightShadowParams.x;
  let x_895 : f32 = u_xlat37;
  u_xlat37 = ((x_891 * x_893) + x_895);
  let x_899 : f32 = vs_INTERP3.z;
  u_xlatb18 = (0.0f >= x_899);
  let x_903 : f32 = vs_INTERP3.z;
  u_xlatb30 = (x_903 >= 1.0f);
  let x_905 : bool = u_xlatb30;
  let x_906 : bool = u_xlatb18;
  u_xlatb18 = (x_905 | x_906);
  let x_908 : bool = u_xlatb18;
  let x_909 : f32 = u_xlat37;
  u_xlat37 = select(x_909, 1.0f, x_908);
  let x_911 : vec3<f32> = vs_INTERP8;
  let x_913 : vec3<f32> = x_142.x_WorldSpaceCameraPos;
  u_xlat18 = (x_911 + -(x_913));
  let x_916 : vec3<f32> = u_xlat18;
  let x_917 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_916, x_917);
  let x_922 : f32 = u_xlat18.x;
  let x_924 : f32 = x_336.x_MainLightShadowParams.z;
  let x_927 : f32 = x_336.x_MainLightShadowParams.w;
  u_xlat30 = ((x_922 * x_924) + x_927);
  let x_929 : f32 = u_xlat30;
  u_xlat30 = clamp(x_929, 0.0f, 1.0f);
  let x_932 : f32 = u_xlat37;
  u_xlat42 = (-(x_932) + 1.0f);
  let x_935 : f32 = u_xlat30;
  let x_936 : f32 = u_xlat42;
  let x_938 : f32 = u_xlat37;
  u_xlat37 = ((x_935 * x_936) + x_938);
  let x_940 : vec3<f32> = u_xlat4;
  let x_942 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(-(x_940), vec3<f32>(x_942.x, x_942.y, x_942.z));
  let x_945 : f32 = u_xlat30;
  let x_946 : f32 = u_xlat30;
  u_xlat30 = (x_945 + x_946);
  let x_948 : vec4<f32> = u_xlat3;
  let x_950 : f32 = u_xlat30;
  let x_954 : vec3<f32> = u_xlat4;
  let x_956 : vec3<f32> = ((vec3<f32>(x_948.x, x_948.y, x_948.z) * -(vec3<f32>(x_950, x_950, x_950))) + -(x_954));
  let x_957 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : vec4<f32> = u_xlat3;
  let x_961 : vec3<f32> = u_xlat4;
  u_xlat30 = dot(vec3<f32>(x_959.x, x_959.y, x_959.z), x_961);
  let x_963 : f32 = u_xlat30;
  u_xlat30 = clamp(x_963, 0.0f, 1.0f);
  let x_965 : f32 = u_xlat30;
  u_xlat30 = (-(x_965) + 1.0f);
  let x_968 : f32 = u_xlat30;
  let x_969 : f32 = u_xlat30;
  u_xlat30 = (x_968 * x_969);
  let x_971 : f32 = u_xlat30;
  let x_972 : f32 = u_xlat30;
  u_xlat30 = (x_971 * x_972);
  let x_975 : f32 = u_xlat24.x;
  u_xlat42 = ((-(x_975) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_982 : f32 = u_xlat24.x;
  let x_983 : f32 = u_xlat42;
  u_xlat24.x = (x_982 * x_983);
  let x_987 : f32 = u_xlat24.x;
  u_xlat24.x = (x_987 * 6.0f);
  let x_999 : vec4<f32> = u_xlat7;
  let x_1002 : f32 = u_xlat24.x;
  let x_1003 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_999.x, x_999.y, x_999.z), x_1002);
  u_xlat7 = x_1003;
  let x_1005 : f32 = u_xlat7.w;
  u_xlat24.x = (x_1005 + -1.0f);
  let x_1009 : f32 = x_77.unity_SpecCube0_HDR.w;
  let x_1011 : f32 = u_xlat24.x;
  u_xlat24.x = ((x_1009 * x_1011) + 1.0f);
  let x_1016 : f32 = u_xlat24.x;
  u_xlat24.x = max(x_1016, 0.0f);
  let x_1020 : f32 = u_xlat24.x;
  u_xlat24.x = log2(x_1020);
  let x_1024 : f32 = u_xlat24.x;
  let x_1026 : f32 = x_77.unity_SpecCube0_HDR.y;
  u_xlat24.x = (x_1024 * x_1026);
  let x_1030 : f32 = u_xlat24.x;
  u_xlat24.x = exp2(x_1030);
  let x_1034 : f32 = u_xlat24.x;
  let x_1036 : f32 = x_77.unity_SpecCube0_HDR.x;
  u_xlat24.x = (x_1034 * x_1036);
  let x_1039 : vec4<f32> = u_xlat7;
  let x_1041 : vec2<f32> = u_xlat24;
  let x_1043 : vec3<f32> = (vec3<f32>(x_1039.x, x_1039.y, x_1039.z) * vec3<f32>(x_1041.x, x_1041.x, x_1041.x));
  let x_1044 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
  let x_1046 : f32 = u_xlat36;
  let x_1048 : f32 = u_xlat36;
  u_xlat24 = ((vec2<f32>(x_1046, x_1046) * vec2<f32>(x_1048, x_1048)) + vec2<f32>(-1.0f, 1.0f));
  let x_1054 : f32 = u_xlat24.y;
  u_xlat36 = (1.0f / x_1054);
  let x_1056 : f32 = u_xlat40;
  u_xlat40 = (x_1056 + -0.03999999910593032837f);
  let x_1059 : f32 = u_xlat30;
  let x_1060 : f32 = u_xlat40;
  u_xlat40 = ((x_1059 * x_1060) + 0.03999999910593032837f);
  let x_1064 : f32 = u_xlat36;
  let x_1065 : f32 = u_xlat40;
  u_xlat36 = (x_1064 * x_1065);
  let x_1067 : f32 = u_xlat36;
  let x_1069 : vec4<f32> = u_xlat7;
  let x_1071 : vec3<f32> = (vec3<f32>(x_1067, x_1067, x_1067) * vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1072 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1074 : vec3<f32> = u_xlat14;
  let x_1075 : vec3<f32> = u_xlat5;
  let x_1077 : vec4<f32> = u_xlat7;
  u_xlat14 = ((x_1074 * x_1075) + vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
  let x_1080 : f32 = u_xlat37;
  let x_1082 : f32 = x_77.unity_LightData.z;
  u_xlat36 = (x_1080 * x_1082);
  let x_1084 : vec4<f32> = u_xlat3;
  let x_1087 : vec4<f32> = x_142.x_MainLightPosition;
  u_xlat37 = dot(vec3<f32>(x_1084.x, x_1084.y, x_1084.z), vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
  let x_1090 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1090, 0.0f, 1.0f);
  let x_1092 : f32 = u_xlat36;
  let x_1093 : f32 = u_xlat37;
  u_xlat36 = (x_1092 * x_1093);
  let x_1095 : f32 = u_xlat36;
  let x_1098 : vec4<f32> = x_142.x_MainLightColor;
  let x_1100 : vec3<f32> = (vec3<f32>(x_1095, x_1095, x_1095) * vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1103 : vec3<f32> = u_xlat4;
  let x_1105 : vec4<f32> = x_142.x_MainLightPosition;
  let x_1107 : vec3<f32> = (x_1103 + vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
  let x_1108 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1110 : vec4<f32> = u_xlat8;
  let x_1112 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1110.x, x_1110.y, x_1110.z), vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
  let x_1115 : f32 = u_xlat36;
  u_xlat36 = max(x_1115, 1.17549435e-38f);
  let x_1117 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1117);
  let x_1119 : f32 = u_xlat36;
  let x_1121 : vec4<f32> = u_xlat8;
  let x_1123 : vec3<f32> = (vec3<f32>(x_1119, x_1119, x_1119) * vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1124 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
  let x_1126 : vec4<f32> = u_xlat3;
  let x_1128 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1126.x, x_1126.y, x_1126.z), vec3<f32>(x_1128.x, x_1128.y, x_1128.z));
  let x_1131 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1131, 0.0f, 1.0f);
  let x_1134 : vec4<f32> = x_142.x_MainLightPosition;
  let x_1136 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_1134.x, x_1134.y, x_1134.z), vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
  let x_1139 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1139, 0.0f, 1.0f);
  let x_1141 : f32 = u_xlat36;
  let x_1142 : f32 = u_xlat36;
  u_xlat36 = (x_1141 * x_1142);
  let x_1144 : f32 = u_xlat36;
  let x_1146 : f32 = u_xlat24.x;
  u_xlat36 = ((x_1144 * x_1146) + 1.00001001358032226562f);
  let x_1150 : f32 = u_xlat37;
  let x_1151 : f32 = u_xlat37;
  u_xlat37 = (x_1150 * x_1151);
  let x_1153 : f32 = u_xlat36;
  let x_1154 : f32 = u_xlat36;
  u_xlat36 = (x_1153 * x_1154);
  let x_1156 : f32 = u_xlat37;
  u_xlat37 = max(x_1156, 0.10000000149011611938f);
  let x_1159 : f32 = u_xlat36;
  let x_1160 : f32 = u_xlat37;
  u_xlat36 = (x_1159 * x_1160);
  let x_1162 : f32 = u_xlat41;
  let x_1163 : f32 = u_xlat36;
  u_xlat36 = (x_1162 * x_1163);
  let x_1165 : f32 = u_xlat39;
  let x_1166 : f32 = u_xlat36;
  u_xlat36 = (x_1165 / x_1166);
  let x_1168 : f32 = u_xlat36;
  let x_1172 : vec3<f32> = u_xlat5;
  let x_1173 : vec3<f32> = ((vec3<f32>(x_1168, x_1168, x_1168) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1172);
  let x_1174 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
  let x_1176 : vec4<f32> = u_xlat7;
  let x_1178 : vec4<f32> = u_xlat8;
  let x_1180 : vec3<f32> = (vec3<f32>(x_1176.x, x_1176.y, x_1176.z) * vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
  let x_1181 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
  let x_1185 : f32 = x_142.x_AdditionalLightsCount.x;
  let x_1187 : f32 = x_77.unity_LightData.y;
  u_xlat36 = min(x_1185, x_1187);
  let x_1190 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1190));
  let x_1194 : f32 = u_xlat18.x;
  let x_1197 : f32 = x_336.x_AdditionalShadowFadeParams.x;
  let x_1200 : f32 = x_336.x_AdditionalShadowFadeParams.y;
  u_xlat37 = ((x_1194 * x_1197) + x_1200);
  let x_1202 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1202, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1213 : u32 = u_xlatu_loop_1;
    let x_1214 : u32 = u_xlatu36;
    if ((x_1213 < x_1214)) {
    } else {
      break;
    }
    let x_1217 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_1217 >> 2u);
    let x_1220 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1220 & 3u));
    let x_1224 : u32 = u_xlatu43;
    let x_1227 : vec4<f32> = x_77.unity_LightIndices[bitcast<i32>(x_1224)];
    let x_1237 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1242 : vec4<u32> = indexable[x_1237];
    u_xlat43 = dot(x_1227, bitcast<vec4<f32>>(x_1242));
    let x_1246 : f32 = u_xlat43;
    u_xlati43 = i32(x_1246);
    let x_1248 : vec3<f32> = vs_INTERP8;
    let x_1259 : i32 = u_xlati43;
    let x_1261 : vec4<f32> = x_1258.x_AdditionalLightsPosition[x_1259];
    let x_1264 : i32 = u_xlati43;
    let x_1266 : vec4<f32> = x_1258.x_AdditionalLightsPosition[x_1264];
    let x_1268 : vec3<f32> = ((-(x_1248) * vec3<f32>(x_1261.w, x_1261.w, x_1261.w)) + vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
    let x_1269 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
    let x_1272 : vec4<f32> = u_xlat8;
    let x_1274 : vec4<f32> = u_xlat8;
    u_xlat44 = dot(vec3<f32>(x_1272.x, x_1272.y, x_1272.z), vec3<f32>(x_1274.x, x_1274.y, x_1274.z));
    let x_1277 : f32 = u_xlat44;
    u_xlat44 = max(x_1277, 0.00006103515625f);
    let x_1280 : f32 = u_xlat44;
    u_xlat9.x = inverseSqrt(x_1280);
    let x_1284 : vec4<f32> = u_xlat8;
    let x_1286 : vec4<f32> = u_xlat9;
    u_xlat21 = (vec3<f32>(x_1284.x, x_1284.y, x_1284.z) * vec3<f32>(x_1286.x, x_1286.x, x_1286.x));
    let x_1290 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_1290);
    let x_1293 : f32 = u_xlat44;
    let x_1294 : i32 = u_xlati43;
    let x_1296 : f32 = x_1258.x_AdditionalLightsAttenuation[x_1294].x;
    u_xlat44 = (x_1293 * x_1296);
    let x_1298 : f32 = u_xlat44;
    let x_1300 : f32 = u_xlat44;
    u_xlat44 = ((-(x_1298) * x_1300) + 1.0f);
    let x_1303 : f32 = u_xlat44;
    u_xlat44 = max(x_1303, 0.0f);
    let x_1305 : f32 = u_xlat44;
    let x_1306 : f32 = u_xlat44;
    u_xlat44 = (x_1305 * x_1306);
    let x_1308 : f32 = u_xlat44;
    let x_1310 : f32 = u_xlat10.x;
    u_xlat44 = (x_1308 * x_1310);
    let x_1312 : i32 = u_xlati43;
    let x_1314 : vec4<f32> = x_1258.x_AdditionalLightsSpotDir[x_1312];
    let x_1316 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1314.x, x_1314.y, x_1314.z), x_1316);
    let x_1320 : f32 = u_xlat10.x;
    let x_1321 : i32 = u_xlati43;
    let x_1323 : f32 = x_1258.x_AdditionalLightsAttenuation[x_1321].z;
    let x_1325 : i32 = u_xlati43;
    let x_1327 : f32 = x_1258.x_AdditionalLightsAttenuation[x_1325].w;
    u_xlat10.x = ((x_1320 * x_1323) + x_1327);
    let x_1331 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1331, 0.0f, 1.0f);
    let x_1335 : f32 = u_xlat10.x;
    let x_1337 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1335 * x_1337);
    let x_1340 : f32 = u_xlat44;
    let x_1342 : f32 = u_xlat10.x;
    u_xlat44 = (x_1340 * x_1342);
    let x_1346 : i32 = u_xlati43;
    let x_1348 : f32 = x_336.x_AdditionalShadowParams[x_1346].w;
    u_xlati10 = i32(x_1348);
    let x_1353 : i32 = u_xlati10;
    u_xlatb22.x = (x_1353 >= 0i);
    let x_1357 : bool = u_xlatb22.x;
    if (x_1357) {
      let x_1361 : i32 = u_xlati43;
      let x_1363 : f32 = x_336.x_AdditionalShadowParams[x_1361].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1363, x_1363, x_1363, x_1363))));
      let x_1370 : bool = u_xlatb22.x;
      if (x_1370) {
        let x_1373 : vec3<f32> = u_xlat21;
        let x_1376 : vec3<f32> = u_xlat21;
        let x_1379 : vec4<bool> = (abs(vec4<f32>(x_1373.z, x_1373.z, x_1373.y, x_1373.y)) >= abs(vec4<f32>(x_1376.x, x_1376.y, x_1376.x, x_1376.x)));
        u_xlatb22 = vec3<bool>(x_1379.x, x_1379.y, x_1379.z);
        let x_1382 : bool = u_xlatb22.y;
        let x_1384 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1382 & x_1384);
        let x_1388 : vec3<f32> = u_xlat21;
        let x_1391 : vec4<bool> = (-(vec4<f32>(x_1388.z, x_1388.y, x_1388.x, x_1388.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1391.x, x_1391.y, x_1391.z);
        let x_1395 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1395);
        let x_1400 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1400);
        let x_1406 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1406);
        let x_1409 : bool = u_xlatb22.z;
        if (x_1409) {
          let x_1414 : f32 = u_xlat11.y;
          x_1410 = x_1414;
        } else {
          let x_1416 : f32 = u_xlat34;
          x_1410 = x_1416;
        }
        let x_1417 : f32 = x_1410;
        u_xlat34 = x_1417;
        let x_1420 : bool = u_xlatb22.x;
        if (x_1420) {
          let x_1425 : f32 = u_xlat11.x;
          x_1421 = x_1425;
        } else {
          let x_1427 : f32 = u_xlat34;
          x_1421 = x_1427;
        }
        let x_1428 : f32 = x_1421;
        u_xlat22 = x_1428;
        let x_1429 : i32 = u_xlati43;
        let x_1431 : f32 = x_336.x_AdditionalShadowParams[x_1429].w;
        u_xlat34 = trunc(x_1431);
        let x_1433 : f32 = u_xlat22;
        let x_1434 : f32 = u_xlat34;
        u_xlat22 = (x_1433 + x_1434);
        let x_1436 : f32 = u_xlat22;
        u_xlati10 = i32(x_1436);
      }
      let x_1438 : i32 = u_xlati10;
      u_xlati10 = (x_1438 << bitcast<u32>(2i));
      let x_1440 : vec3<f32> = vs_INTERP8;
      let x_1443 : i32 = u_xlati10;
      let x_1446 : i32 = u_xlati10;
      let x_1450 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[((x_1443 + 1i) / 4i)][((x_1446 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1440.y, x_1440.y, x_1440.y, x_1440.y) * x_1450);
      let x_1452 : i32 = u_xlati10;
      let x_1454 : i32 = u_xlati10;
      let x_1457 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[(x_1452 / 4i)][(x_1454 % 4i)];
      let x_1458 : vec3<f32> = vs_INTERP8;
      let x_1461 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1457 * vec4<f32>(x_1458.x, x_1458.x, x_1458.x, x_1458.x)) + x_1461);
      let x_1463 : i32 = u_xlati10;
      let x_1466 : i32 = u_xlati10;
      let x_1470 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[((x_1463 + 2i) / 4i)][((x_1466 + 2i) % 4i)];
      let x_1471 : vec3<f32> = vs_INTERP8;
      let x_1474 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1470 * vec4<f32>(x_1471.z, x_1471.z, x_1471.z, x_1471.z)) + x_1474);
      let x_1476 : vec4<f32> = u_xlat11;
      let x_1477 : i32 = u_xlati10;
      let x_1480 : i32 = u_xlati10;
      let x_1484 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[((x_1477 + 3i) / 4i)][((x_1480 + 3i) % 4i)];
      u_xlat10 = (x_1476 + x_1484);
      let x_1486 : vec4<f32> = u_xlat10;
      let x_1488 : vec4<f32> = u_xlat10;
      let x_1490 : vec3<f32> = (vec3<f32>(x_1486.x, x_1486.y, x_1486.z) / vec3<f32>(x_1488.w, x_1488.w, x_1488.w));
      let x_1491 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1491.w);
      let x_1494 : vec4<f32> = u_xlat10;
      let x_1495 : vec2<f32> = vec2<f32>(x_1494.x, x_1494.y);
      let x_1497 : f32 = u_xlat10.z;
      txVec2 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
      let x_1505 : vec3<f32> = txVec2;
      let x_1507 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1505.xy, x_1505.z);
      u_xlat10.x = x_1507;
      let x_1509 : i32 = u_xlati43;
      let x_1511 : f32 = x_336.x_AdditionalShadowParams[x_1509].x;
      u_xlat22 = (1.0f + -(x_1511));
      let x_1515 : f32 = u_xlat10.x;
      let x_1516 : i32 = u_xlati43;
      let x_1518 : f32 = x_336.x_AdditionalShadowParams[x_1516].x;
      let x_1520 : f32 = u_xlat22;
      u_xlat10.x = ((x_1515 * x_1518) + x_1520);
      let x_1524 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1524);
      let x_1529 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1529 >= 1.0f);
      let x_1531 : bool = u_xlatb34;
      let x_1533 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1531 | x_1533);
      let x_1537 : bool = u_xlatb22.x;
      if (x_1537) {
        x_1538 = 1.0f;
      } else {
        let x_1543 : f32 = u_xlat10.x;
        x_1538 = x_1543;
      }
      let x_1544 : f32 = x_1538;
      u_xlat10.x = x_1544;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1549 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1549) + 1.0f);
    let x_1552 : f32 = u_xlat37;
    let x_1553 : f32 = u_xlat22;
    let x_1556 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1552 * x_1553) + x_1556);
    let x_1559 : f32 = u_xlat44;
    let x_1561 : f32 = u_xlat10.x;
    u_xlat44 = (x_1559 * x_1561);
    let x_1563 : vec4<f32> = u_xlat3;
    let x_1565 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1563.x, x_1563.y, x_1563.z), x_1565);
    let x_1569 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1569, 0.0f, 1.0f);
    let x_1572 : f32 = u_xlat44;
    let x_1574 : f32 = u_xlat10.x;
    u_xlat44 = (x_1572 * x_1574);
    let x_1576 : f32 = u_xlat44;
    let x_1578 : i32 = u_xlati43;
    let x_1580 : vec4<f32> = x_1258.x_AdditionalLightsColor[x_1578];
    let x_1582 : vec3<f32> = (vec3<f32>(x_1576, x_1576, x_1576) * vec3<f32>(x_1580.x, x_1580.y, x_1580.z));
    let x_1583 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1583.w);
    let x_1585 : vec4<f32> = u_xlat8;
    let x_1587 : vec4<f32> = u_xlat9;
    let x_1590 : vec3<f32> = u_xlat4;
    let x_1591 : vec3<f32> = ((vec3<f32>(x_1585.x, x_1585.y, x_1585.z) * vec3<f32>(x_1587.x, x_1587.x, x_1587.x)) + x_1590);
    let x_1592 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1591.x, x_1591.y, x_1591.z, x_1592.w);
    let x_1594 : vec4<f32> = u_xlat8;
    let x_1596 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1594.x, x_1594.y, x_1594.z), vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
    let x_1599 : f32 = u_xlat43;
    u_xlat43 = max(x_1599, 1.17549435e-38f);
    let x_1601 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1601);
    let x_1603 : f32 = u_xlat43;
    let x_1605 : vec4<f32> = u_xlat8;
    let x_1607 : vec3<f32> = (vec3<f32>(x_1603, x_1603, x_1603) * vec3<f32>(x_1605.x, x_1605.y, x_1605.z));
    let x_1608 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1607.x, x_1607.y, x_1607.z, x_1608.w);
    let x_1610 : vec4<f32> = u_xlat3;
    let x_1612 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1610.x, x_1610.y, x_1610.z), vec3<f32>(x_1612.x, x_1612.y, x_1612.z));
    let x_1615 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1615, 0.0f, 1.0f);
    let x_1617 : vec3<f32> = u_xlat21;
    let x_1618 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1617, vec3<f32>(x_1618.x, x_1618.y, x_1618.z));
    let x_1623 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1623, 0.0f, 1.0f);
    let x_1626 : f32 = u_xlat43;
    let x_1627 : f32 = u_xlat43;
    u_xlat43 = (x_1626 * x_1627);
    let x_1629 : f32 = u_xlat43;
    let x_1631 : f32 = u_xlat24.x;
    u_xlat43 = ((x_1629 * x_1631) + 1.00001001358032226562f);
    let x_1635 : f32 = u_xlat8.x;
    let x_1637 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1635 * x_1637);
    let x_1640 : f32 = u_xlat43;
    let x_1641 : f32 = u_xlat43;
    u_xlat43 = (x_1640 * x_1641);
    let x_1644 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1644, 0.10000000149011611938f);
    let x_1647 : f32 = u_xlat43;
    let x_1649 : f32 = u_xlat8.x;
    u_xlat43 = (x_1647 * x_1649);
    let x_1651 : f32 = u_xlat41;
    let x_1652 : f32 = u_xlat43;
    u_xlat43 = (x_1651 * x_1652);
    let x_1654 : f32 = u_xlat39;
    let x_1655 : f32 = u_xlat43;
    u_xlat43 = (x_1654 / x_1655);
    let x_1657 : f32 = u_xlat43;
    let x_1660 : vec3<f32> = u_xlat5;
    let x_1661 : vec3<f32> = ((vec3<f32>(x_1657, x_1657, x_1657) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1660);
    let x_1662 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1662.w);
    let x_1664 : vec4<f32> = u_xlat8;
    let x_1666 : vec4<f32> = u_xlat10;
    let x_1669 : vec3<f32> = u_xlat18;
    u_xlat18 = ((vec3<f32>(x_1664.x, x_1664.y, x_1664.z) * vec3<f32>(x_1666.x, x_1666.y, x_1666.z)) + x_1669);

    continuing {
      let x_1671 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1671 + bitcast<u32>(1i));
    }
  }
  let x_1673 : vec3<f32> = u_xlat14;
  let x_1674 : vec4<f32> = u_xlat6;
  let x_1677 : vec4<f32> = u_xlat7;
  u_xlat14 = ((x_1673 * vec3<f32>(x_1674.x, x_1674.x, x_1674.x)) + vec3<f32>(x_1677.x, x_1677.y, x_1677.z));
  let x_1680 : vec3<f32> = u_xlat18;
  let x_1681 : vec3<f32> = u_xlat14;
  u_xlat14 = (x_1680 + x_1681);
  let x_1683 : vec4<f32> = vs_INTERP6;
  let x_1685 : vec3<f32> = u_xlat1;
  let x_1687 : vec3<f32> = u_xlat14;
  u_xlat1 = ((vec3<f32>(x_1683.w, x_1683.w, x_1683.w) * x_1685) + x_1687);
  let x_1690 : f32 = u_xlat12.x;
  let x_1692 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1690 * -(x_1692));
  let x_1697 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1697);
  let x_1700 : vec3<f32> = u_xlat1;
  let x_1703 : vec4<f32> = x_142.unity_FogColor;
  u_xlat1 = (x_1700 + -(vec3<f32>(x_1703.x, x_1703.y, x_1703.z)));
  let x_1709 : vec3<f32> = u_xlat12;
  let x_1711 : vec3<f32> = u_xlat1;
  let x_1714 : vec4<f32> = x_142.unity_FogColor;
  let x_1716 : vec3<f32> = ((vec3<f32>(x_1709.x, x_1709.x, x_1709.x) * x_1711) + vec3<f32>(x_1714.x, x_1714.y, x_1714.z));
  let x_1717 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1716.x, x_1716.y, x_1716.z, x_1717.w);
  let x_1719 : bool = u_xlatb2;
  let x_1720 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1720, x_1719);
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


