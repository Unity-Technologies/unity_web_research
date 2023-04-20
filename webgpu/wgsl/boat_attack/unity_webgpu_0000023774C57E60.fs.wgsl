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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_243 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_336 : LightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat26 : vec2<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat38 : f32;

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

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu37 : u32;

var<private> u_xlatu43 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlat43 : f32;

var<private> u_xlati43 : i32;

@group(1) @binding(1) var<uniform> x_1237 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb22 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_577 : f32;
  var x_603 : f32;
  var x_650 : f32;
  var txVec1 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1389 : f32;
  var x_1400 : f32;
  var txVec2 : vec3<f32>;
  var x_1517 : f32;
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
  let x_572 : f32 = u_xlat14.x;
  u_xlat26.x = (-(x_572) + 1.0f);
  let x_576 : bool = u_xlatb2;
  if (x_576) {
    let x_581 : f32 = u_xlat14.x;
    x_577 = x_581;
  } else {
    let x_584 : f32 = u_xlat26.x;
    x_577 = x_584;
  }
  let x_585 : f32 = x_577;
  u_xlat2.x = x_585;
  let x_587 : f32 = u_xlat0;
  let x_590 : f32 = u_xlat2.x;
  u_xlat0 = ((x_587 * 2.0f) + -(x_590));
  let x_593 : f32 = u_xlat0;
  let x_595 : f32 = u_xlat6.w;
  u_xlat2.x = (x_593 * x_595);
  let x_599 : f32 = u_xlat2.x;
  u_xlatb14 = (x_599 >= 0.40000000596046447754f);
  let x_602 : bool = u_xlatb14;
  if (x_602) {
    let x_607 : f32 = u_xlat2.x;
    x_603 = x_607;
  } else {
    x_603 = 0.0f;
  }
  let x_609 : f32 = x_603;
  u_xlat14.x = x_609;
  let x_612 : f32 = u_xlat6.w;
  let x_613 : f32 = u_xlat0;
  u_xlat0 = ((x_612 * x_613) + -0.40000000596046447754f);
  let x_618 : f32 = u_xlat2.x;
  u_xlat26.x = dpdxCoarse(x_618);
  let x_622 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_622);
  let x_626 : f32 = u_xlat2.x;
  let x_629 : f32 = u_xlat26.x;
  u_xlat2.x = (abs(x_626) + abs(x_629));
  let x_634 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_634, 0.00009999999747378752f);
  let x_638 : f32 = u_xlat0;
  let x_640 : f32 = u_xlat2.x;
  u_xlat0 = (x_638 / x_640);
  let x_642 : f32 = u_xlat0;
  u_xlat0 = (x_642 + 0.5f);
  let x_644 : f32 = u_xlat0;
  u_xlat0 = clamp(x_644, 0.0f, 1.0f);
  let x_647 : f32 = x_142.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_647 == 0.0f));
  let x_649 : bool = u_xlatb2;
  if (x_649) {
    let x_653 : f32 = u_xlat0;
    x_650 = x_653;
  } else {
    let x_656 : f32 = u_xlat14.x;
    x_650 = x_656;
  }
  let x_657 : f32 = x_650;
  u_xlat0 = x_657;
  let x_658 : f32 = u_xlat0;
  u_xlat14.x = (x_658 + -0.00009999999747378752f);
  let x_663 : f32 = u_xlat14.x;
  u_xlatb14 = (x_663 < 0.0f);
  let x_665 : bool = u_xlatb14;
  if (((select(0i, 1i, x_665) * -1i) != 0i)) {
    discard;
  }
  let x_673 : vec3<f32> = u_xlat12;
  let x_674 : vec3<f32> = u_xlat20;
  u_xlat12 = (x_673 * vec3<f32>(x_674.y, x_674.y, x_674.y));
  let x_677 : vec3<f32> = u_xlat20;
  let x_679 : vec4<f32> = vs_INTERP4;
  let x_682 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_677.x, x_677.x, x_677.x) * vec3<f32>(x_679.x, x_679.y, x_679.z)) + x_682);
  let x_684 : vec3<f32> = u_xlat20;
  let x_686 : vec3<f32> = vs_INTERP9;
  let x_688 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_684.z, x_684.z, x_684.z) * x_686) + x_688);
  let x_690 : vec3<f32> = u_xlat12;
  let x_691 : vec3<f32> = u_xlat12;
  u_xlat14.x = dot(x_690, x_691);
  let x_695 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_695);
  let x_698 : vec3<f32> = u_xlat12;
  let x_699 : vec3<f32> = u_xlat14;
  u_xlat12 = (x_698 * vec3<f32>(x_699.x, x_699.x, x_699.x));
  let x_703 : f32 = vs_INTERP8.y;
  let x_705 : f32 = x_142.unity_MatrixV[1i].z;
  u_xlat14.x = (x_703 * x_705);
  let x_709 : f32 = x_142.unity_MatrixV[0i].z;
  let x_711 : f32 = vs_INTERP8.x;
  let x_714 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_709 * x_711) + x_714);
  let x_718 : f32 = x_142.unity_MatrixV[2i].z;
  let x_720 : f32 = vs_INTERP8.z;
  let x_723 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_718 * x_720) + x_723);
  let x_727 : f32 = u_xlat14.x;
  let x_729 : f32 = x_142.unity_MatrixV[3i].z;
  u_xlat14.x = (x_727 + x_729);
  let x_733 : f32 = u_xlat14.x;
  let x_737 : f32 = x_142.x_ProjectionParams.y;
  u_xlat14.x = (-(x_733) + -(x_737));
  let x_742 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_742, 0.0f);
  let x_746 : f32 = u_xlat14.x;
  let x_749 : f32 = x_142.unity_FogParams.x;
  u_xlat14.x = (x_746 * x_749);
  let x_759 : vec2<f32> = vs_INTERP0;
  let x_761 : f32 = x_142.x_GlobalMipBias.x;
  let x_762 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_759, x_761);
  u_xlat3 = x_762;
  let x_767 : vec2<f32> = vs_INTERP0;
  let x_769 : f32 = x_142.x_GlobalMipBias.x;
  let x_770 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_767, x_769);
  u_xlat5 = vec3<f32>(x_770.x, x_770.y, x_770.z);
  let x_772 : vec4<f32> = u_xlat3;
  let x_776 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_777 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_779 : vec3<f32> = u_xlat12;
  let x_780 : vec4<f32> = u_xlat3;
  u_xlat26.x = dot(x_779, vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_785 : f32 = u_xlat26.x;
  u_xlat26.x = (x_785 + 0.5f);
  let x_788 : vec2<f32> = u_xlat26;
  let x_790 : vec3<f32> = u_xlat5;
  let x_791 : vec3<f32> = (vec3<f32>(x_788.x, x_788.x, x_788.x) * x_790);
  let x_792 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_795 : f32 = u_xlat3.w;
  u_xlat26.x = max(x_795, 0.00009999999747378752f);
  let x_798 : vec4<f32> = u_xlat3;
  let x_800 : vec2<f32> = u_xlat26;
  let x_802 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) / vec3<f32>(x_800.x, x_800.x, x_800.x));
  let x_803 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_806 : f32 = u_xlat8.x;
  u_xlat8.x = x_806;
  let x_809 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_809, 0.0f, 1.0f);
  let x_812 : f32 = u_xlat0;
  u_xlat0 = x_812;
  let x_813 : f32 = u_xlat0;
  u_xlat0 = clamp(x_813, 0.0f, 1.0f);
  let x_815 : vec4<f32> = u_xlat7;
  u_xlat5 = (vec3<f32>(x_815.x, x_815.y, x_815.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_821 : f32 = u_xlat8.x;
  u_xlat26.x = (-(x_821) + 1.0f);
  let x_827 : f32 = u_xlat26.x;
  let x_829 : f32 = u_xlat26.x;
  u_xlat38 = (x_827 * x_829);
  let x_831 : f32 = u_xlat38;
  u_xlat38 = max(x_831, 0.0078125f);
  let x_835 : f32 = u_xlat38;
  let x_836 : f32 = u_xlat38;
  u_xlat39 = (x_835 * x_836);
  let x_840 : f32 = u_xlat8.x;
  u_xlat40 = (x_840 + 0.04000002145767211914f);
  let x_843 : f32 = u_xlat40;
  u_xlat40 = min(x_843, 1.0f);
  let x_846 : f32 = u_xlat38;
  u_xlat41 = ((x_846 * 4.0f) + 2.0f);
  let x_851 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_851, 1.0f);
  let x_856 : vec4<f32> = vs_INTERP3;
  let x_857 : vec2<f32> = vec2<f32>(x_856.x, x_856.y);
  let x_859 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_857.x, x_857.y, x_859);
  let x_867 : vec3<f32> = txVec1;
  let x_869 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_867.xy, x_867.z);
  u_xlat18.x = x_869;
  let x_872 : f32 = u_xlat18.x;
  let x_874 : f32 = x_336.x_MainLightShadowParams.x;
  let x_876 : f32 = u_xlat37;
  u_xlat37 = ((x_872 * x_874) + x_876);
  let x_880 : f32 = vs_INTERP3.z;
  u_xlatb18 = (0.0f >= x_880);
  let x_884 : f32 = vs_INTERP3.z;
  u_xlatb30 = (x_884 >= 1.0f);
  let x_886 : bool = u_xlatb30;
  let x_887 : bool = u_xlatb18;
  u_xlatb18 = (x_886 | x_887);
  let x_889 : bool = u_xlatb18;
  let x_890 : f32 = u_xlat37;
  u_xlat37 = select(x_890, 1.0f, x_889);
  let x_892 : vec3<f32> = vs_INTERP8;
  let x_894 : vec3<f32> = x_142.x_WorldSpaceCameraPos;
  u_xlat18 = (x_892 + -(x_894));
  let x_897 : vec3<f32> = u_xlat18;
  let x_898 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_897, x_898);
  let x_903 : f32 = u_xlat18.x;
  let x_905 : f32 = x_336.x_MainLightShadowParams.z;
  let x_908 : f32 = x_336.x_MainLightShadowParams.w;
  u_xlat30 = ((x_903 * x_905) + x_908);
  let x_910 : f32 = u_xlat30;
  u_xlat30 = clamp(x_910, 0.0f, 1.0f);
  let x_913 : f32 = u_xlat37;
  u_xlat42 = (-(x_913) + 1.0f);
  let x_916 : f32 = u_xlat30;
  let x_917 : f32 = u_xlat42;
  let x_919 : f32 = u_xlat37;
  u_xlat37 = ((x_916 * x_917) + x_919);
  let x_921 : vec3<f32> = u_xlat4;
  let x_923 : vec3<f32> = u_xlat12;
  u_xlat30 = dot(-(x_921), x_923);
  let x_925 : f32 = u_xlat30;
  let x_926 : f32 = u_xlat30;
  u_xlat30 = (x_925 + x_926);
  let x_928 : vec3<f32> = u_xlat12;
  let x_929 : f32 = u_xlat30;
  let x_933 : vec3<f32> = u_xlat4;
  let x_935 : vec3<f32> = ((x_928 * -(vec3<f32>(x_929, x_929, x_929))) + -(x_933));
  let x_936 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec3<f32> = u_xlat12;
  let x_939 : vec3<f32> = u_xlat4;
  u_xlat30 = dot(x_938, x_939);
  let x_941 : f32 = u_xlat30;
  u_xlat30 = clamp(x_941, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat30;
  u_xlat30 = (-(x_943) + 1.0f);
  let x_946 : f32 = u_xlat30;
  let x_947 : f32 = u_xlat30;
  u_xlat30 = (x_946 * x_947);
  let x_949 : f32 = u_xlat30;
  let x_950 : f32 = u_xlat30;
  u_xlat30 = (x_949 * x_950);
  let x_953 : f32 = u_xlat26.x;
  u_xlat42 = ((-(x_953) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_960 : f32 = u_xlat26.x;
  let x_961 : f32 = u_xlat42;
  u_xlat26.x = (x_960 * x_961);
  let x_965 : f32 = u_xlat26.x;
  u_xlat26.x = (x_965 * 6.0f);
  let x_977 : vec4<f32> = u_xlat7;
  let x_980 : f32 = u_xlat26.x;
  let x_981 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_977.x, x_977.y, x_977.z), x_980);
  u_xlat7 = x_981;
  let x_983 : f32 = u_xlat7.w;
  u_xlat26.x = (x_983 + -1.0f);
  let x_987 : f32 = x_77.unity_SpecCube0_HDR.w;
  let x_989 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_987 * x_989) + 1.0f);
  let x_994 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_994, 0.0f);
  let x_998 : f32 = u_xlat26.x;
  u_xlat26.x = log2(x_998);
  let x_1002 : f32 = u_xlat26.x;
  let x_1004 : f32 = x_77.unity_SpecCube0_HDR.y;
  u_xlat26.x = (x_1002 * x_1004);
  let x_1008 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_1008);
  let x_1012 : f32 = u_xlat26.x;
  let x_1014 : f32 = x_77.unity_SpecCube0_HDR.x;
  u_xlat26.x = (x_1012 * x_1014);
  let x_1017 : vec4<f32> = u_xlat7;
  let x_1019 : vec2<f32> = u_xlat26;
  let x_1021 : vec3<f32> = (vec3<f32>(x_1017.x, x_1017.y, x_1017.z) * vec3<f32>(x_1019.x, x_1019.x, x_1019.x));
  let x_1022 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
  let x_1024 : f32 = u_xlat38;
  let x_1026 : f32 = u_xlat38;
  u_xlat26 = ((vec2<f32>(x_1024, x_1024) * vec2<f32>(x_1026, x_1026)) + vec2<f32>(-1.0f, 1.0f));
  let x_1032 : f32 = u_xlat26.y;
  u_xlat38 = (1.0f / x_1032);
  let x_1034 : f32 = u_xlat40;
  u_xlat40 = (x_1034 + -0.03999999910593032837f);
  let x_1037 : f32 = u_xlat30;
  let x_1038 : f32 = u_xlat40;
  u_xlat40 = ((x_1037 * x_1038) + 0.03999999910593032837f);
  let x_1042 : f32 = u_xlat38;
  let x_1043 : f32 = u_xlat40;
  u_xlat38 = (x_1042 * x_1043);
  let x_1045 : f32 = u_xlat38;
  let x_1047 : vec4<f32> = u_xlat7;
  let x_1049 : vec3<f32> = (vec3<f32>(x_1045, x_1045, x_1045) * vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  let x_1052 : vec4<f32> = u_xlat3;
  let x_1054 : vec3<f32> = u_xlat5;
  let x_1056 : vec4<f32> = u_xlat7;
  let x_1058 : vec3<f32> = ((vec3<f32>(x_1052.x, x_1052.y, x_1052.z) * x_1054) + vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : f32 = u_xlat37;
  let x_1063 : f32 = x_77.unity_LightData.z;
  u_xlat37 = (x_1061 * x_1063);
  let x_1065 : vec3<f32> = u_xlat12;
  let x_1067 : vec4<f32> = x_142.x_MainLightPosition;
  u_xlat38 = dot(x_1065, vec3<f32>(x_1067.x, x_1067.y, x_1067.z));
  let x_1070 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1070, 0.0f, 1.0f);
  let x_1072 : f32 = u_xlat37;
  let x_1073 : f32 = u_xlat38;
  u_xlat37 = (x_1072 * x_1073);
  let x_1075 : f32 = u_xlat37;
  let x_1078 : vec4<f32> = x_142.x_MainLightColor;
  let x_1080 : vec3<f32> = (vec3<f32>(x_1075, x_1075, x_1075) * vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1081 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  let x_1083 : vec3<f32> = u_xlat4;
  let x_1085 : vec4<f32> = x_142.x_MainLightPosition;
  let x_1087 : vec3<f32> = (x_1083 + vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
  let x_1088 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1090 : vec4<f32> = u_xlat8;
  let x_1092 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_1090.x, x_1090.y, x_1090.z), vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1095 : f32 = u_xlat37;
  u_xlat37 = max(x_1095, 1.17549435e-38f);
  let x_1097 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_1097);
  let x_1099 : f32 = u_xlat37;
  let x_1101 : vec4<f32> = u_xlat8;
  let x_1103 : vec3<f32> = (vec3<f32>(x_1099, x_1099, x_1099) * vec3<f32>(x_1101.x, x_1101.y, x_1101.z));
  let x_1104 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
  let x_1106 : vec3<f32> = u_xlat12;
  let x_1107 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(x_1106, vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1110, 0.0f, 1.0f);
  let x_1113 : vec4<f32> = x_142.x_MainLightPosition;
  let x_1115 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_1113.x, x_1113.y, x_1113.z), vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1118 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1118, 0.0f, 1.0f);
  let x_1120 : f32 = u_xlat37;
  let x_1121 : f32 = u_xlat37;
  u_xlat37 = (x_1120 * x_1121);
  let x_1123 : f32 = u_xlat37;
  let x_1125 : f32 = u_xlat26.x;
  u_xlat37 = ((x_1123 * x_1125) + 1.00001001358032226562f);
  let x_1129 : f32 = u_xlat38;
  let x_1130 : f32 = u_xlat38;
  u_xlat38 = (x_1129 * x_1130);
  let x_1132 : f32 = u_xlat37;
  let x_1133 : f32 = u_xlat37;
  u_xlat37 = (x_1132 * x_1133);
  let x_1135 : f32 = u_xlat38;
  u_xlat38 = max(x_1135, 0.10000000149011611938f);
  let x_1138 : f32 = u_xlat37;
  let x_1139 : f32 = u_xlat38;
  u_xlat37 = (x_1138 * x_1139);
  let x_1141 : f32 = u_xlat41;
  let x_1142 : f32 = u_xlat37;
  u_xlat37 = (x_1141 * x_1142);
  let x_1144 : f32 = u_xlat39;
  let x_1145 : f32 = u_xlat37;
  u_xlat37 = (x_1144 / x_1145);
  let x_1147 : f32 = u_xlat37;
  let x_1151 : vec3<f32> = u_xlat5;
  let x_1152 : vec3<f32> = ((vec3<f32>(x_1147, x_1147, x_1147) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1151);
  let x_1153 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1155 : vec4<f32> = u_xlat7;
  let x_1157 : vec4<f32> = u_xlat8;
  let x_1159 : vec3<f32> = (vec3<f32>(x_1155.x, x_1155.y, x_1155.z) * vec3<f32>(x_1157.x, x_1157.y, x_1157.z));
  let x_1160 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
  let x_1164 : f32 = x_142.x_AdditionalLightsCount.x;
  let x_1166 : f32 = x_77.unity_LightData.y;
  u_xlat37 = min(x_1164, x_1166);
  let x_1169 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_1169));
  let x_1173 : f32 = u_xlat18.x;
  let x_1176 : f32 = x_336.x_AdditionalShadowFadeParams.x;
  let x_1179 : f32 = x_336.x_AdditionalShadowFadeParams.y;
  u_xlat38 = ((x_1173 * x_1176) + x_1179);
  let x_1181 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1181, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1192 : u32 = u_xlatu_loop_1;
    let x_1193 : u32 = u_xlatu37;
    if ((x_1192 < x_1193)) {
    } else {
      break;
    }
    let x_1196 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_1196 >> 2u);
    let x_1199 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1199 & 3u));
    let x_1203 : u32 = u_xlatu43;
    let x_1206 : vec4<f32> = x_77.unity_LightIndices[bitcast<i32>(x_1203)];
    let x_1216 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1221 : vec4<u32> = indexable[x_1216];
    u_xlat43 = dot(x_1206, bitcast<vec4<f32>>(x_1221));
    let x_1225 : f32 = u_xlat43;
    u_xlati43 = i32(x_1225);
    let x_1227 : vec3<f32> = vs_INTERP8;
    let x_1238 : i32 = u_xlati43;
    let x_1240 : vec4<f32> = x_1237.x_AdditionalLightsPosition[x_1238];
    let x_1243 : i32 = u_xlati43;
    let x_1245 : vec4<f32> = x_1237.x_AdditionalLightsPosition[x_1243];
    let x_1247 : vec3<f32> = ((-(x_1227) * vec3<f32>(x_1240.w, x_1240.w, x_1240.w)) + vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
    let x_1248 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1248.w);
    let x_1251 : vec4<f32> = u_xlat8;
    let x_1253 : vec4<f32> = u_xlat8;
    u_xlat44 = dot(vec3<f32>(x_1251.x, x_1251.y, x_1251.z), vec3<f32>(x_1253.x, x_1253.y, x_1253.z));
    let x_1256 : f32 = u_xlat44;
    u_xlat44 = max(x_1256, 0.00006103515625f);
    let x_1259 : f32 = u_xlat44;
    u_xlat9.x = inverseSqrt(x_1259);
    let x_1263 : vec4<f32> = u_xlat8;
    let x_1265 : vec4<f32> = u_xlat9;
    u_xlat21 = (vec3<f32>(x_1263.x, x_1263.y, x_1263.z) * vec3<f32>(x_1265.x, x_1265.x, x_1265.x));
    let x_1269 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_1269);
    let x_1272 : f32 = u_xlat44;
    let x_1273 : i32 = u_xlati43;
    let x_1275 : f32 = x_1237.x_AdditionalLightsAttenuation[x_1273].x;
    u_xlat44 = (x_1272 * x_1275);
    let x_1277 : f32 = u_xlat44;
    let x_1279 : f32 = u_xlat44;
    u_xlat44 = ((-(x_1277) * x_1279) + 1.0f);
    let x_1282 : f32 = u_xlat44;
    u_xlat44 = max(x_1282, 0.0f);
    let x_1284 : f32 = u_xlat44;
    let x_1285 : f32 = u_xlat44;
    u_xlat44 = (x_1284 * x_1285);
    let x_1287 : f32 = u_xlat44;
    let x_1289 : f32 = u_xlat10.x;
    u_xlat44 = (x_1287 * x_1289);
    let x_1291 : i32 = u_xlati43;
    let x_1293 : vec4<f32> = x_1237.x_AdditionalLightsSpotDir[x_1291];
    let x_1295 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1293.x, x_1293.y, x_1293.z), x_1295);
    let x_1299 : f32 = u_xlat10.x;
    let x_1300 : i32 = u_xlati43;
    let x_1302 : f32 = x_1237.x_AdditionalLightsAttenuation[x_1300].z;
    let x_1304 : i32 = u_xlati43;
    let x_1306 : f32 = x_1237.x_AdditionalLightsAttenuation[x_1304].w;
    u_xlat10.x = ((x_1299 * x_1302) + x_1306);
    let x_1310 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1310, 0.0f, 1.0f);
    let x_1314 : f32 = u_xlat10.x;
    let x_1316 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1314 * x_1316);
    let x_1319 : f32 = u_xlat44;
    let x_1321 : f32 = u_xlat10.x;
    u_xlat44 = (x_1319 * x_1321);
    let x_1325 : i32 = u_xlati43;
    let x_1327 : f32 = x_336.x_AdditionalShadowParams[x_1325].w;
    u_xlati10 = i32(x_1327);
    let x_1332 : i32 = u_xlati10;
    u_xlatb22.x = (x_1332 >= 0i);
    let x_1336 : bool = u_xlatb22.x;
    if (x_1336) {
      let x_1340 : i32 = u_xlati43;
      let x_1342 : f32 = x_336.x_AdditionalShadowParams[x_1340].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1342, x_1342, x_1342, x_1342))));
      let x_1349 : bool = u_xlatb22.x;
      if (x_1349) {
        let x_1352 : vec3<f32> = u_xlat21;
        let x_1355 : vec3<f32> = u_xlat21;
        let x_1358 : vec4<bool> = (abs(vec4<f32>(x_1352.z, x_1352.z, x_1352.y, x_1352.y)) >= abs(vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.x)));
        u_xlatb22 = vec3<bool>(x_1358.x, x_1358.y, x_1358.z);
        let x_1361 : bool = u_xlatb22.y;
        let x_1363 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1361 & x_1363);
        let x_1367 : vec3<f32> = u_xlat21;
        let x_1370 : vec4<bool> = (-(vec4<f32>(x_1367.z, x_1367.y, x_1367.x, x_1367.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1370.x, x_1370.y, x_1370.z);
        let x_1374 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1374);
        let x_1379 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1379);
        let x_1385 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1385);
        let x_1388 : bool = u_xlatb22.z;
        if (x_1388) {
          let x_1393 : f32 = u_xlat11.y;
          x_1389 = x_1393;
        } else {
          let x_1395 : f32 = u_xlat34;
          x_1389 = x_1395;
        }
        let x_1396 : f32 = x_1389;
        u_xlat34 = x_1396;
        let x_1399 : bool = u_xlatb22.x;
        if (x_1399) {
          let x_1404 : f32 = u_xlat11.x;
          x_1400 = x_1404;
        } else {
          let x_1406 : f32 = u_xlat34;
          x_1400 = x_1406;
        }
        let x_1407 : f32 = x_1400;
        u_xlat22 = x_1407;
        let x_1408 : i32 = u_xlati43;
        let x_1410 : f32 = x_336.x_AdditionalShadowParams[x_1408].w;
        u_xlat34 = trunc(x_1410);
        let x_1412 : f32 = u_xlat22;
        let x_1413 : f32 = u_xlat34;
        u_xlat22 = (x_1412 + x_1413);
        let x_1415 : f32 = u_xlat22;
        u_xlati10 = i32(x_1415);
      }
      let x_1417 : i32 = u_xlati10;
      u_xlati10 = (x_1417 << bitcast<u32>(2i));
      let x_1419 : vec3<f32> = vs_INTERP8;
      let x_1422 : i32 = u_xlati10;
      let x_1425 : i32 = u_xlati10;
      let x_1429 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[((x_1422 + 1i) / 4i)][((x_1425 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1419.y, x_1419.y, x_1419.y, x_1419.y) * x_1429);
      let x_1431 : i32 = u_xlati10;
      let x_1433 : i32 = u_xlati10;
      let x_1436 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[(x_1431 / 4i)][(x_1433 % 4i)];
      let x_1437 : vec3<f32> = vs_INTERP8;
      let x_1440 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1436 * vec4<f32>(x_1437.x, x_1437.x, x_1437.x, x_1437.x)) + x_1440);
      let x_1442 : i32 = u_xlati10;
      let x_1445 : i32 = u_xlati10;
      let x_1449 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[((x_1442 + 2i) / 4i)][((x_1445 + 2i) % 4i)];
      let x_1450 : vec3<f32> = vs_INTERP8;
      let x_1453 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1449 * vec4<f32>(x_1450.z, x_1450.z, x_1450.z, x_1450.z)) + x_1453);
      let x_1455 : vec4<f32> = u_xlat11;
      let x_1456 : i32 = u_xlati10;
      let x_1459 : i32 = u_xlati10;
      let x_1463 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[((x_1456 + 3i) / 4i)][((x_1459 + 3i) % 4i)];
      u_xlat10 = (x_1455 + x_1463);
      let x_1465 : vec4<f32> = u_xlat10;
      let x_1467 : vec4<f32> = u_xlat10;
      let x_1469 : vec3<f32> = (vec3<f32>(x_1465.x, x_1465.y, x_1465.z) / vec3<f32>(x_1467.w, x_1467.w, x_1467.w));
      let x_1470 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
      let x_1473 : vec4<f32> = u_xlat10;
      let x_1474 : vec2<f32> = vec2<f32>(x_1473.x, x_1473.y);
      let x_1476 : f32 = u_xlat10.z;
      txVec2 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
      let x_1484 : vec3<f32> = txVec2;
      let x_1486 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1484.xy, x_1484.z);
      u_xlat10.x = x_1486;
      let x_1488 : i32 = u_xlati43;
      let x_1490 : f32 = x_336.x_AdditionalShadowParams[x_1488].x;
      u_xlat22 = (1.0f + -(x_1490));
      let x_1494 : f32 = u_xlat10.x;
      let x_1495 : i32 = u_xlati43;
      let x_1497 : f32 = x_336.x_AdditionalShadowParams[x_1495].x;
      let x_1499 : f32 = u_xlat22;
      u_xlat10.x = ((x_1494 * x_1497) + x_1499);
      let x_1503 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1503);
      let x_1508 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1508 >= 1.0f);
      let x_1510 : bool = u_xlatb34;
      let x_1512 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1510 | x_1512);
      let x_1516 : bool = u_xlatb22.x;
      if (x_1516) {
        x_1517 = 1.0f;
      } else {
        let x_1522 : f32 = u_xlat10.x;
        x_1517 = x_1522;
      }
      let x_1523 : f32 = x_1517;
      u_xlat10.x = x_1523;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1528 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1528) + 1.0f);
    let x_1531 : f32 = u_xlat38;
    let x_1532 : f32 = u_xlat22;
    let x_1535 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1531 * x_1532) + x_1535);
    let x_1538 : f32 = u_xlat44;
    let x_1540 : f32 = u_xlat10.x;
    u_xlat44 = (x_1538 * x_1540);
    let x_1542 : vec3<f32> = u_xlat12;
    let x_1543 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(x_1542, x_1543);
    let x_1547 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1547, 0.0f, 1.0f);
    let x_1550 : f32 = u_xlat44;
    let x_1552 : f32 = u_xlat10.x;
    u_xlat44 = (x_1550 * x_1552);
    let x_1554 : f32 = u_xlat44;
    let x_1556 : i32 = u_xlati43;
    let x_1558 : vec4<f32> = x_1237.x_AdditionalLightsColor[x_1556];
    let x_1560 : vec3<f32> = (vec3<f32>(x_1554, x_1554, x_1554) * vec3<f32>(x_1558.x, x_1558.y, x_1558.z));
    let x_1561 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1560.x, x_1560.y, x_1560.z, x_1561.w);
    let x_1563 : vec4<f32> = u_xlat8;
    let x_1565 : vec4<f32> = u_xlat9;
    let x_1568 : vec3<f32> = u_xlat4;
    let x_1569 : vec3<f32> = ((vec3<f32>(x_1563.x, x_1563.y, x_1563.z) * vec3<f32>(x_1565.x, x_1565.x, x_1565.x)) + x_1568);
    let x_1570 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1569.x, x_1569.y, x_1569.z, x_1570.w);
    let x_1572 : vec4<f32> = u_xlat8;
    let x_1574 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1572.x, x_1572.y, x_1572.z), vec3<f32>(x_1574.x, x_1574.y, x_1574.z));
    let x_1577 : f32 = u_xlat43;
    u_xlat43 = max(x_1577, 1.17549435e-38f);
    let x_1579 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1579);
    let x_1581 : f32 = u_xlat43;
    let x_1583 : vec4<f32> = u_xlat8;
    let x_1585 : vec3<f32> = (vec3<f32>(x_1581, x_1581, x_1581) * vec3<f32>(x_1583.x, x_1583.y, x_1583.z));
    let x_1586 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1585.x, x_1585.y, x_1585.z, x_1586.w);
    let x_1588 : vec3<f32> = u_xlat12;
    let x_1589 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(x_1588, vec3<f32>(x_1589.x, x_1589.y, x_1589.z));
    let x_1592 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1592, 0.0f, 1.0f);
    let x_1594 : vec3<f32> = u_xlat21;
    let x_1595 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1594, vec3<f32>(x_1595.x, x_1595.y, x_1595.z));
    let x_1600 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1600, 0.0f, 1.0f);
    let x_1603 : f32 = u_xlat43;
    let x_1604 : f32 = u_xlat43;
    u_xlat43 = (x_1603 * x_1604);
    let x_1606 : f32 = u_xlat43;
    let x_1608 : f32 = u_xlat26.x;
    u_xlat43 = ((x_1606 * x_1608) + 1.00001001358032226562f);
    let x_1612 : f32 = u_xlat8.x;
    let x_1614 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1612 * x_1614);
    let x_1617 : f32 = u_xlat43;
    let x_1618 : f32 = u_xlat43;
    u_xlat43 = (x_1617 * x_1618);
    let x_1621 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1621, 0.10000000149011611938f);
    let x_1624 : f32 = u_xlat43;
    let x_1626 : f32 = u_xlat8.x;
    u_xlat43 = (x_1624 * x_1626);
    let x_1628 : f32 = u_xlat41;
    let x_1629 : f32 = u_xlat43;
    u_xlat43 = (x_1628 * x_1629);
    let x_1631 : f32 = u_xlat39;
    let x_1632 : f32 = u_xlat43;
    u_xlat43 = (x_1631 / x_1632);
    let x_1634 : f32 = u_xlat43;
    let x_1637 : vec3<f32> = u_xlat5;
    let x_1638 : vec3<f32> = ((vec3<f32>(x_1634, x_1634, x_1634) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1637);
    let x_1639 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1639.w);
    let x_1641 : vec4<f32> = u_xlat8;
    let x_1643 : vec4<f32> = u_xlat10;
    let x_1646 : vec3<f32> = u_xlat18;
    u_xlat18 = ((vec3<f32>(x_1641.x, x_1641.y, x_1641.z) * vec3<f32>(x_1643.x, x_1643.y, x_1643.z)) + x_1646);

    continuing {
      let x_1648 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1648 + bitcast<u32>(1i));
    }
  }
  let x_1650 : vec4<f32> = u_xlat3;
  let x_1652 : vec4<f32> = u_xlat6;
  let x_1655 : vec4<f32> = u_xlat7;
  u_xlat12 = ((vec3<f32>(x_1650.x, x_1650.y, x_1650.z) * vec3<f32>(x_1652.x, x_1652.x, x_1652.x)) + vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
  let x_1658 : vec3<f32> = u_xlat18;
  let x_1659 : vec3<f32> = u_xlat12;
  u_xlat12 = (x_1658 + x_1659);
  let x_1661 : vec4<f32> = vs_INTERP6;
  let x_1663 : vec3<f32> = u_xlat1;
  let x_1665 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_1661.w, x_1661.w, x_1661.w) * x_1663) + x_1665);
  let x_1668 : f32 = u_xlat14.x;
  let x_1670 : f32 = u_xlat14.x;
  u_xlat1.x = (x_1668 * -(x_1670));
  let x_1675 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1675);
  let x_1678 : vec3<f32> = u_xlat12;
  let x_1681 : vec4<f32> = x_142.unity_FogColor;
  u_xlat12 = (x_1678 + -(vec3<f32>(x_1681.x, x_1681.y, x_1681.z)));
  let x_1687 : vec3<f32> = u_xlat1;
  let x_1689 : vec3<f32> = u_xlat12;
  let x_1692 : vec4<f32> = x_142.unity_FogColor;
  let x_1694 : vec3<f32> = ((vec3<f32>(x_1687.x, x_1687.x, x_1687.x) * x_1689) + vec3<f32>(x_1692.x, x_1692.y, x_1692.z));
  let x_1695 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1694.x, x_1694.y, x_1694.z, x_1695.w);
  let x_1697 : bool = u_xlatb2;
  let x_1698 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1698, x_1697);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


