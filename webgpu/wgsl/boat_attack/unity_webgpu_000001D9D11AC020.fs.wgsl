diagnostic(off, derivative_uniformity);

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

var<private> u_xlatb36 : bool;

@group(1) @binding(0) var<uniform> x_75 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_132 : UnityPerDraw;

var<private> u_xlat36 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(7) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_188 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat17 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_248 : LightShadows;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu36 : u32;

var<private> u_xlati36 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb37 : bool;

var<private> u_xlatb38 : bool;

var<private> u_xlat38 : f32;

var<private> u_xlatu2 : vec3<u32>;

var<private> u_xlatu26 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati26 : i32;

var<private> u_xlati14 : i32;

var<private> u_xlatu14 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb14 : vec2<bool>;

var<private> u_xlat26 : vec2<f32>;

var<private> u_xlatb2 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu43 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlat43 : f32;

var<private> u_xlati43 : i32;

@group(1) @binding(1) var<uniform> x_1327 : AdditionalLights;

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
  var x_120 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_507 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_640 : f32;
  var x_671 : f32;
  var x_721 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1472 : f32;
  var x_1483 : f32;
  var txVec1 : vec3<f32>;
  var x_1600 : f32;
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
  let x_63 : vec3<f32> = u_xlat0;
  let x_65 : vec3<f32> = vs_INTERP9;
  u_xlat0 = (vec3<f32>(x_63.x, x_63.x, x_63.x) * x_65);
  let x_80 : f32 = x_75.unity_OrthoParams.w;
  u_xlatb36 = (x_80 == 0.0f);
  let x_85 : vec3<f32> = vs_INTERP8;
  let x_90 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_85) + x_90);
  let x_93 : vec3<f32> = u_xlat1;
  let x_94 : vec3<f32> = u_xlat1;
  u_xlat37 = dot(x_93, x_94);
  let x_96 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_96);
  let x_98 : f32 = u_xlat37;
  let x_100 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_107 : f32 = x_75.unity_MatrixV[0i].z;
  u_xlat2.x = x_107;
  let x_111 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat2.y = x_111;
  let x_116 : f32 = x_75.unity_MatrixV[2i].z;
  u_xlat2.z = x_116;
  let x_118 : bool = u_xlatb36;
  if (x_118) {
    let x_123 : vec3<f32> = u_xlat1;
    x_120 = x_123;
  } else {
    let x_125 : vec3<f32> = u_xlat2;
    x_120 = x_125;
  }
  let x_126 : vec3<f32> = x_120;
  u_xlat1 = x_126;
  let x_127 : vec3<f32> = u_xlat1;
  let x_135 : vec4<f32> = x_132.unity_WorldToObject[1i];
  u_xlat2 = (vec3<f32>(x_127.y, x_127.y, x_127.y) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_139 : vec4<f32> = x_132.unity_WorldToObject[0i];
  let x_141 : vec3<f32> = u_xlat1;
  let x_144 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + x_144);
  let x_147 : vec4<f32> = x_132.unity_WorldToObject[2i];
  let x_149 : vec3<f32> = u_xlat1;
  let x_152 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_147.x, x_147.y, x_147.z) * vec3<f32>(x_149.z, x_149.z, x_149.z)) + x_152);
  let x_155 : vec3<f32> = u_xlat2;
  let x_156 : vec3<f32> = u_xlat2;
  u_xlat36 = dot(x_155, x_156);
  let x_158 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_158);
  let x_160 : f32 = u_xlat36;
  let x_162 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_160, x_160, x_160) * x_162);
  let x_178 : vec4<f32> = vs_INTERP5;
  let x_181 : f32 = x_75.x_GlobalMipBias.x;
  let x_182 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_178.x, x_178.y), x_181);
  u_xlat3 = x_182;
  let x_184 : vec4<f32> = u_xlat3;
  let x_190 : vec4<f32> = x_188.Color_C30C7CA3;
  u_xlat4 = (vec3<f32>(x_184.x, x_184.y, x_184.z) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_199 : vec4<f32> = vs_INTERP5;
  let x_202 : f32 = x_75.x_GlobalMipBias.x;
  let x_203 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_199.x, x_199.y), x_202);
  u_xlat5 = vec4<f32>(x_203.w, x_203.x, x_203.y, x_203.z);
  let x_206 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_206.y, x_206.z, x_206.w, x_206.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_214 : vec4<f32> = u_xlat6;
  let x_215 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_214, x_215);
  let x_217 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_217);
  let x_220 : f32 = u_xlat36;
  let x_222 : vec4<f32> = u_xlat6;
  u_xlat17 = (vec3<f32>(x_220, x_220, x_220) * vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_228 : f32 = vs_INTERP6.y;
  u_xlat36 = (x_228 * 200.0f);
  let x_231 : f32 = u_xlat36;
  u_xlat36 = min(x_231, 1.0f);
  let x_233 : f32 = u_xlat36;
  let x_235 : vec4<f32> = u_xlat3;
  let x_237 : vec3<f32> = (vec3<f32>(x_233, x_233, x_233) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec3<f32> = vs_INTERP8;
  let x_250 : vec4<f32> = x_248.x_CascadeShadowSplitSpheres0;
  let x_253 : vec3<f32> = (x_240 + -(vec3<f32>(x_250.x, x_250.y, x_250.z)));
  let x_254 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : vec3<f32> = vs_INTERP8;
  let x_259 : vec4<f32> = x_248.x_CascadeShadowSplitSpheres1;
  let x_262 : vec3<f32> = (x_257 + -(vec3<f32>(x_259.x, x_259.y, x_259.z)));
  let x_263 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : vec3<f32> = vs_INTERP8;
  let x_269 : vec4<f32> = x_248.x_CascadeShadowSplitSpheres2;
  u_xlat8 = (x_266 + -(vec3<f32>(x_269.x, x_269.y, x_269.z)));
  let x_274 : vec3<f32> = vs_INTERP8;
  let x_277 : vec4<f32> = x_248.x_CascadeShadowSplitSpheres3;
  u_xlat9 = (x_274 + -(vec3<f32>(x_277.x, x_277.y, x_277.z)));
  let x_281 : vec4<f32> = u_xlat6;
  let x_283 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_281.x, x_281.y, x_281.z), vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_287 : vec4<f32> = u_xlat7;
  let x_289 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_287.x, x_287.y, x_287.z), vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_293 : vec3<f32> = u_xlat8;
  let x_294 : vec3<f32> = u_xlat8;
  u_xlat6.z = dot(x_293, x_294);
  let x_297 : vec3<f32> = u_xlat9;
  let x_298 : vec3<f32> = u_xlat9;
  u_xlat6.w = dot(x_297, x_298);
  let x_304 : vec4<f32> = u_xlat6;
  let x_306 : vec4<f32> = x_248.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_304 < x_306);
  let x_309 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_309);
  let x_313 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_313);
  let x_317 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_317);
  let x_321 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_321);
  let x_325 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_325);
  let x_330 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_330);
  let x_334 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_334);
  let x_337 : vec4<f32> = u_xlat6;
  let x_339 : vec4<f32> = u_xlat7;
  let x_341 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) + vec3<f32>(x_339.y, x_339.z, x_339.w));
  let x_342 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat6;
  let x_347 : vec3<f32> = max(vec3<f32>(x_344.x, x_344.y, x_344.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_348 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_348.x, x_347.x, x_347.y, x_347.z);
  let x_350 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(x_350, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_355 : f32 = u_xlat36;
  u_xlat36 = (-(x_355) + 4.0f);
  let x_360 : f32 = u_xlat36;
  u_xlatu36 = u32(x_360);
  let x_364 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_364) << bitcast<u32>(2i));
  let x_367 : vec3<f32> = vs_INTERP8;
  let x_369 : i32 = u_xlati36;
  let x_372 : i32 = u_xlati36;
  let x_376 : vec4<f32> = x_248.x_MainLightWorldToShadow[((x_369 + 1i) / 4i)][((x_372 + 1i) % 4i)];
  let x_378 : vec3<f32> = (vec3<f32>(x_367.y, x_367.y, x_367.y) * vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : i32 = u_xlati36;
  let x_383 : i32 = u_xlati36;
  let x_386 : vec4<f32> = x_248.x_MainLightWorldToShadow[(x_381 / 4i)][(x_383 % 4i)];
  let x_388 : vec3<f32> = vs_INTERP8;
  let x_391 : vec4<f32> = u_xlat6;
  let x_393 : vec3<f32> = ((vec3<f32>(x_386.x, x_386.y, x_386.z) * vec3<f32>(x_388.x, x_388.x, x_388.x)) + vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_396 : i32 = u_xlati36;
  let x_399 : i32 = u_xlati36;
  let x_403 : vec4<f32> = x_248.x_MainLightWorldToShadow[((x_396 + 2i) / 4i)][((x_399 + 2i) % 4i)];
  let x_405 : vec3<f32> = vs_INTERP8;
  let x_408 : vec4<f32> = u_xlat6;
  let x_410 : vec3<f32> = ((vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(x_405.z, x_405.z, x_405.z)) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_413 : vec4<f32> = u_xlat6;
  let x_415 : i32 = u_xlati36;
  let x_418 : i32 = u_xlati36;
  let x_422 : vec4<f32> = x_248.x_MainLightWorldToShadow[((x_415 + 3i) / 4i)][((x_418 + 3i) % 4i)];
  let x_424 : vec3<f32> = (vec3<f32>(x_413.x, x_413.y, x_413.z) + vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_428 : vec4<f32> = u_xlat6;
  let x_429 : vec2<f32> = vec2<f32>(x_428.x, x_428.y);
  let x_431 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_429.x, x_429.y, x_431);
  let x_443 : vec3<f32> = txVec0;
  let x_445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_443.xy, x_443.z);
  u_xlat36 = x_445;
  let x_447 : f32 = x_248.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_447) + 1.0f);
  let x_450 : f32 = u_xlat36;
  let x_452 : f32 = x_248.x_MainLightShadowParams.x;
  let x_454 : f32 = u_xlat37;
  u_xlat36 = ((x_450 * x_452) + x_454);
  let x_458 : f32 = u_xlat6.z;
  u_xlatb37 = (0.0f >= x_458);
  let x_462 : f32 = u_xlat6.z;
  u_xlatb38 = (x_462 >= 1.0f);
  let x_464 : bool = u_xlatb37;
  let x_465 : bool = u_xlatb38;
  u_xlatb37 = (x_464 | x_465);
  let x_467 : bool = u_xlatb37;
  let x_468 : f32 = u_xlat36;
  u_xlat36 = select(x_468, 1.0f, x_467);
  let x_470 : vec3<f32> = u_xlat0;
  let x_472 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_470, -(vec3<f32>(x_472.x, x_472.y, x_472.z)));
  let x_478 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_478, 0.0f, 1.0f);
  let x_481 : f32 = u_xlat36;
  let x_484 : vec4<f32> = x_75.x_MainLightColor;
  let x_486 : vec3<f32> = (vec3<f32>(x_481, x_481, x_481) * vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec3<f32> = u_xlat0;
  let x_491 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_489.x, x_489.x, x_489.x) * vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : vec3<f32> = u_xlat0;
  let x_495 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_494 * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_499 : f32 = x_132.unity_LODFade.x;
  u_xlatb37 = (x_499 < 0.0f);
  let x_503 : f32 = x_132.unity_LODFade.x;
  u_xlat38 = (x_503 + 1.0f);
  let x_505 : bool = u_xlatb37;
  if (x_505) {
    let x_510 : f32 = u_xlat38;
    x_507 = x_510;
  } else {
    let x_513 : f32 = x_132.unity_LODFade.x;
    x_507 = x_513;
  }
  let x_514 : f32 = x_507;
  u_xlat37 = x_514;
  let x_516 : f32 = u_xlat37;
  u_xlatb38 = (0.5f >= x_516);
  let x_518 : vec3<f32> = u_xlat2;
  let x_522 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat2 = (abs(x_518) * vec3<f32>(x_522.x, x_522.y, x_522.x));
  let x_528 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_528);
  let x_532 : u32 = u_xlatu2.z;
  u_xlatu26 = (x_532 * 1025u);
  let x_536 : u32 = u_xlatu26;
  u_xlatu3 = (x_536 >> 6u);
  let x_540 : u32 = u_xlatu26;
  let x_541 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_540 ^ x_541));
  let x_544 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_544) * 9u);
  let x_548 : u32 = u_xlatu26;
  u_xlatu3 = (x_548 >> 11u);
  let x_551 : u32 = u_xlatu26;
  let x_552 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_551 ^ x_552));
  let x_555 : i32 = u_xlati26;
  u_xlati26 = (x_555 * 32769i);
  let x_559 : i32 = u_xlati26;
  let x_562 : u32 = u_xlatu2.y;
  u_xlati14 = bitcast<i32>((bitcast<u32>(x_559) ^ x_562));
  let x_566 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_566) * 1025u);
  let x_569 : u32 = u_xlatu14;
  u_xlatu26 = (x_569 >> 6u);
  let x_571 : u32 = u_xlatu26;
  let x_572 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_571 ^ x_572));
  let x_575 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_575) * 9u);
  let x_578 : u32 = u_xlatu14;
  u_xlatu26 = (x_578 >> 11u);
  let x_580 : u32 = u_xlatu26;
  let x_581 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_580 ^ x_581));
  let x_584 : i32 = u_xlati14;
  u_xlati14 = (x_584 * 32769i);
  let x_587 : i32 = u_xlati14;
  let x_590 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_587) ^ x_590));
  let x_593 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_593) * 1025u);
  let x_598 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_598 >> 6u);
  let x_600 : u32 = u_xlatu14;
  let x_602 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_600 ^ x_602));
  let x_605 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_605) * 9u);
  let x_610 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_610 >> 11u);
  let x_612 : u32 = u_xlatu14;
  let x_614 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_612 ^ x_614));
  let x_617 : i32 = u_xlati2;
  u_xlati2 = (x_617 * 32769i);
  param = 1065353216i;
  let x_623 : i32 = u_xlati2;
  param_1 = x_623;
  param_2 = 0i;
  param_3 = 23i;
  let x_626 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_626);
  let x_630 : f32 = u_xlat2.x;
  u_xlat2.x = (x_630 + -1.0f);
  let x_635 : f32 = u_xlat2.x;
  u_xlat14.x = (-(x_635) + 1.0f);
  let x_639 : bool = u_xlatb38;
  if (x_639) {
    let x_644 : f32 = u_xlat2.x;
    x_640 = x_644;
  } else {
    let x_647 : f32 = u_xlat14.x;
    x_640 = x_647;
  }
  let x_648 : f32 = x_640;
  u_xlat2.x = x_648;
  let x_650 : f32 = u_xlat37;
  let x_653 : f32 = u_xlat2.x;
  u_xlat37 = ((x_650 * 2.0f) + -(x_653));
  let x_656 : f32 = u_xlat37;
  let x_658 : f32 = u_xlat3.w;
  u_xlat2.x = (x_656 * x_658);
  let x_665 : f32 = u_xlat2.x;
  u_xlatb14.x = (x_665 >= 0.40000000596046447754f);
  let x_670 : bool = u_xlatb14.x;
  if (x_670) {
    let x_675 : f32 = u_xlat2.x;
    x_671 = x_675;
  } else {
    x_671 = 0.0f;
  }
  let x_677 : f32 = x_671;
  u_xlat14.x = x_677;
  let x_680 : f32 = u_xlat3.w;
  let x_681 : f32 = u_xlat37;
  u_xlat37 = ((x_680 * x_681) + -0.40000000596046447754f);
  let x_688 : f32 = u_xlat2.x;
  u_xlat26.x = dpdxCoarse(x_688);
  let x_692 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_692);
  let x_696 : f32 = u_xlat2.x;
  let x_699 : f32 = u_xlat26.x;
  u_xlat2.x = (abs(x_696) + abs(x_699));
  let x_704 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_704, 0.00009999999747378752f);
  let x_708 : f32 = u_xlat37;
  let x_710 : f32 = u_xlat2.x;
  u_xlat37 = (x_708 / x_710);
  let x_712 : f32 = u_xlat37;
  u_xlat37 = (x_712 + 0.5f);
  let x_714 : f32 = u_xlat37;
  u_xlat37 = clamp(x_714, 0.0f, 1.0f);
  let x_718 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_718 == 0.0f));
  let x_720 : bool = u_xlatb2;
  if (x_720) {
    let x_724 : f32 = u_xlat37;
    x_721 = x_724;
  } else {
    let x_727 : f32 = u_xlat14.x;
    x_721 = x_727;
  }
  let x_728 : f32 = x_721;
  u_xlat37 = x_728;
  let x_729 : f32 = u_xlat37;
  u_xlat14.x = (x_729 + -0.00009999999747378752f);
  let x_734 : f32 = u_xlat14.x;
  u_xlatb14.x = (x_734 < 0.0f);
  let x_738 : bool = u_xlatb14.x;
  if (((select(0i, 1i, x_738) * -1i) != 0i)) {
    discard;
  }
  let x_748 : f32 = vs_INTERP4.w;
  u_xlatb14.x = (0.0f < x_748);
  let x_752 : f32 = x_132.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_752 >= 0.0f);
  let x_756 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_756);
  let x_760 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_760);
  let x_764 : f32 = u_xlat14.y;
  let x_766 : f32 = u_xlat14.x;
  u_xlat14.x = (x_764 * x_766);
  let x_769 : vec4<f32> = vs_INTERP4;
  let x_771 : vec3<f32> = vs_INTERP9;
  let x_773 : vec3<f32> = (vec3<f32>(x_769.y, x_769.z, x_769.x) * vec3<f32>(x_771.z, x_771.x, x_771.y));
  let x_774 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec3<f32> = vs_INTERP9;
  let x_778 : vec4<f32> = vs_INTERP4;
  let x_781 : vec4<f32> = u_xlat3;
  let x_784 : vec3<f32> = ((vec3<f32>(x_776.y, x_776.z, x_776.x) * vec3<f32>(x_778.z, x_778.x, x_778.y)) + -(vec3<f32>(x_781.x, x_781.y, x_781.z)));
  let x_785 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_787 : vec3<f32> = u_xlat14;
  let x_789 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec3<f32>(x_787.x, x_787.x, x_787.x) * vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : vec3<f32> = u_xlat14;
  let x_793 : vec3<f32> = u_xlat17;
  u_xlat14 = (x_792 * vec3<f32>(x_793.y, x_793.y, x_793.y));
  let x_796 : vec3<f32> = u_xlat17;
  let x_798 : vec4<f32> = vs_INTERP4;
  let x_801 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_796.x, x_796.x, x_796.x) * vec3<f32>(x_798.x, x_798.y, x_798.z)) + x_801);
  let x_803 : vec3<f32> = u_xlat17;
  let x_805 : vec3<f32> = vs_INTERP9;
  let x_807 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_803.z, x_803.z, x_803.z) * x_805) + x_807);
  let x_809 : vec3<f32> = u_xlat14;
  let x_810 : vec3<f32> = u_xlat14;
  u_xlat3.x = dot(x_809, x_810);
  let x_814 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_814);
  let x_817 : vec3<f32> = u_xlat14;
  let x_818 : vec4<f32> = u_xlat3;
  let x_820 : vec3<f32> = (x_817 * vec3<f32>(x_818.x, x_818.x, x_818.x));
  let x_821 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_824 : f32 = vs_INTERP8.y;
  let x_826 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat14.x = (x_824 * x_826);
  let x_830 : f32 = x_75.unity_MatrixV[0i].z;
  let x_832 : f32 = vs_INTERP8.x;
  let x_835 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_830 * x_832) + x_835);
  let x_839 : f32 = x_75.unity_MatrixV[2i].z;
  let x_841 : f32 = vs_INTERP8.z;
  let x_844 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_839 * x_841) + x_844);
  let x_848 : f32 = u_xlat14.x;
  let x_850 : f32 = x_75.unity_MatrixV[3i].z;
  u_xlat14.x = (x_848 + x_850);
  let x_854 : f32 = u_xlat14.x;
  let x_858 : f32 = x_75.x_ProjectionParams.y;
  u_xlat14.x = (-(x_854) + -(x_858));
  let x_863 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_863, 0.0f);
  let x_867 : f32 = u_xlat14.x;
  let x_870 : f32 = x_75.unity_FogParams.x;
  u_xlat14.x = (x_867 * x_870);
  u_xlat3.w = 1.0f;
  let x_876 : vec4<f32> = x_132.unity_SHAr;
  let x_877 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_876, x_877);
  let x_882 : vec4<f32> = x_132.unity_SHAg;
  let x_883 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_882, x_883);
  let x_888 : vec4<f32> = x_132.unity_SHAb;
  let x_889 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_888, x_889);
  let x_892 : vec4<f32> = u_xlat3;
  let x_894 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_892.y, x_892.z, x_892.z, x_892.x) * vec4<f32>(x_894.x, x_894.y, x_894.z, x_894.z));
  let x_899 : vec4<f32> = x_132.unity_SHBr;
  let x_900 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_899, x_900);
  let x_905 : vec4<f32> = x_132.unity_SHBg;
  let x_906 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_905, x_906);
  let x_910 : vec4<f32> = x_132.unity_SHBb;
  let x_911 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_910, x_911);
  let x_915 : f32 = u_xlat3.y;
  let x_917 : f32 = u_xlat3.y;
  u_xlat26.x = (x_915 * x_917);
  let x_921 : f32 = u_xlat3.x;
  let x_923 : f32 = u_xlat3.x;
  let x_926 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_921 * x_923) + -(x_926));
  let x_932 : vec4<f32> = x_132.unity_SHC;
  let x_934 : vec2<f32> = u_xlat26;
  let x_937 : vec3<f32> = u_xlat8;
  u_xlat17 = ((vec3<f32>(x_932.x, x_932.y, x_932.z) * vec3<f32>(x_934.x, x_934.x, x_934.x)) + x_937);
  let x_939 : vec3<f32> = u_xlat17;
  let x_940 : vec4<f32> = u_xlat6;
  u_xlat17 = (x_939 + vec3<f32>(x_940.x, x_940.y, x_940.z));
  let x_943 : vec3<f32> = u_xlat17;
  u_xlat17 = max(x_943, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_946 : f32 = u_xlat5.x;
  u_xlat5.x = x_946;
  let x_949 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_949, 0.0f, 1.0f);
  let x_952 : f32 = u_xlat37;
  u_xlat37 = x_952;
  let x_953 : f32 = u_xlat37;
  u_xlat37 = clamp(x_953, 0.0f, 1.0f);
  let x_955 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_955 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_960 : f32 = u_xlat5.x;
  u_xlat26.x = (-(x_960) + 1.0f);
  let x_965 : f32 = u_xlat26.x;
  let x_967 : f32 = u_xlat26.x;
  u_xlat38 = (x_965 * x_967);
  let x_969 : f32 = u_xlat38;
  u_xlat38 = max(x_969, 0.0078125f);
  let x_973 : f32 = u_xlat38;
  let x_974 : f32 = u_xlat38;
  u_xlat39 = (x_973 * x_974);
  let x_978 : f32 = u_xlat5.x;
  u_xlat40 = (x_978 + 0.04000002145767211914f);
  let x_981 : f32 = u_xlat40;
  u_xlat40 = min(x_981, 1.0f);
  let x_983 : f32 = u_xlat38;
  u_xlat5.x = ((x_983 * 4.0f) + 2.0f);
  let x_988 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_988, 1.0f);
  let x_992 : vec3<f32> = vs_INTERP8;
  let x_994 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat18 = (x_992 + -(x_994));
  let x_997 : vec3<f32> = u_xlat18;
  let x_998 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_997, x_998);
  let x_1003 : f32 = u_xlat18.x;
  let x_1005 : f32 = x_248.x_MainLightShadowParams.z;
  let x_1008 : f32 = x_248.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1003 * x_1005) + x_1008);
  let x_1010 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1010, 0.0f, 1.0f);
  let x_1013 : f32 = u_xlat36;
  u_xlat42 = (-(x_1013) + 1.0f);
  let x_1016 : f32 = u_xlat30;
  let x_1017 : f32 = u_xlat42;
  let x_1019 : f32 = u_xlat36;
  u_xlat36 = ((x_1016 * x_1017) + x_1019);
  let x_1021 : vec3<f32> = u_xlat1;
  let x_1023 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(-(x_1021), vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
  let x_1026 : f32 = u_xlat30;
  let x_1027 : f32 = u_xlat30;
  u_xlat30 = (x_1026 + x_1027);
  let x_1029 : vec4<f32> = u_xlat3;
  let x_1031 : f32 = u_xlat30;
  let x_1035 : vec3<f32> = u_xlat1;
  let x_1037 : vec3<f32> = ((vec3<f32>(x_1029.x, x_1029.y, x_1029.z) * -(vec3<f32>(x_1031, x_1031, x_1031))) + -(x_1035));
  let x_1038 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
  let x_1040 : vec4<f32> = u_xlat3;
  let x_1042 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(vec3<f32>(x_1040.x, x_1040.y, x_1040.z), x_1042);
  let x_1044 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1044, 0.0f, 1.0f);
  let x_1046 : f32 = u_xlat30;
  u_xlat30 = (-(x_1046) + 1.0f);
  let x_1049 : f32 = u_xlat30;
  let x_1050 : f32 = u_xlat30;
  u_xlat30 = (x_1049 * x_1050);
  let x_1052 : f32 = u_xlat30;
  let x_1053 : f32 = u_xlat30;
  u_xlat30 = (x_1052 * x_1053);
  let x_1056 : f32 = u_xlat26.x;
  u_xlat42 = ((-(x_1056) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1063 : f32 = u_xlat26.x;
  let x_1064 : f32 = u_xlat42;
  u_xlat26.x = (x_1063 * x_1064);
  let x_1068 : f32 = u_xlat26.x;
  u_xlat26.x = (x_1068 * 6.0f);
  let x_1080 : vec4<f32> = u_xlat7;
  let x_1083 : f32 = u_xlat26.x;
  let x_1084 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1080.x, x_1080.y, x_1080.z), x_1083);
  u_xlat7 = x_1084;
  let x_1086 : f32 = u_xlat7.w;
  u_xlat26.x = (x_1086 + -1.0f);
  let x_1090 : f32 = x_132.unity_SpecCube0_HDR.w;
  let x_1092 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1090 * x_1092) + 1.0f);
  let x_1097 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_1097, 0.0f);
  let x_1101 : f32 = u_xlat26.x;
  u_xlat26.x = log2(x_1101);
  let x_1105 : f32 = u_xlat26.x;
  let x_1107 : f32 = x_132.unity_SpecCube0_HDR.y;
  u_xlat26.x = (x_1105 * x_1107);
  let x_1111 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_1111);
  let x_1115 : f32 = u_xlat26.x;
  let x_1117 : f32 = x_132.unity_SpecCube0_HDR.x;
  u_xlat26.x = (x_1115 * x_1117);
  let x_1120 : vec4<f32> = u_xlat7;
  let x_1122 : vec2<f32> = u_xlat26;
  let x_1124 : vec3<f32> = (vec3<f32>(x_1120.x, x_1120.y, x_1120.z) * vec3<f32>(x_1122.x, x_1122.x, x_1122.x));
  let x_1125 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
  let x_1127 : f32 = u_xlat38;
  let x_1129 : f32 = u_xlat38;
  u_xlat26 = ((vec2<f32>(x_1127, x_1127) * vec2<f32>(x_1129, x_1129)) + vec2<f32>(-1.0f, 1.0f));
  let x_1135 : f32 = u_xlat26.y;
  u_xlat38 = (1.0f / x_1135);
  let x_1137 : f32 = u_xlat40;
  u_xlat40 = (x_1137 + -0.03999999910593032837f);
  let x_1140 : f32 = u_xlat30;
  let x_1141 : f32 = u_xlat40;
  u_xlat40 = ((x_1140 * x_1141) + 0.03999999910593032837f);
  let x_1145 : f32 = u_xlat38;
  let x_1146 : f32 = u_xlat40;
  u_xlat38 = (x_1145 * x_1146);
  let x_1148 : f32 = u_xlat38;
  let x_1150 : vec4<f32> = u_xlat7;
  let x_1152 : vec3<f32> = (vec3<f32>(x_1148, x_1148, x_1148) * vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
  let x_1153 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1155 : vec3<f32> = u_xlat17;
  let x_1156 : vec3<f32> = u_xlat4;
  let x_1158 : vec4<f32> = u_xlat7;
  u_xlat17 = ((x_1155 * x_1156) + vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
  let x_1161 : f32 = u_xlat36;
  let x_1163 : f32 = x_132.unity_LightData.z;
  u_xlat36 = (x_1161 * x_1163);
  let x_1165 : vec4<f32> = u_xlat3;
  let x_1168 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_1165.x, x_1165.y, x_1165.z), vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
  let x_1171 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1171, 0.0f, 1.0f);
  let x_1173 : f32 = u_xlat36;
  let x_1174 : f32 = u_xlat38;
  u_xlat36 = (x_1173 * x_1174);
  let x_1176 : f32 = u_xlat36;
  let x_1179 : vec4<f32> = x_75.x_MainLightColor;
  let x_1181 : vec3<f32> = (vec3<f32>(x_1176, x_1176, x_1176) * vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
  let x_1182 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
  let x_1184 : vec3<f32> = u_xlat1;
  let x_1186 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat8 = (x_1184 + vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
  let x_1189 : vec3<f32> = u_xlat8;
  let x_1190 : vec3<f32> = u_xlat8;
  u_xlat36 = dot(x_1189, x_1190);
  let x_1192 : f32 = u_xlat36;
  u_xlat36 = max(x_1192, 1.17549435e-38f);
  let x_1195 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1195);
  let x_1197 : f32 = u_xlat36;
  let x_1199 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_1197, x_1197, x_1197) * x_1199);
  let x_1201 : vec4<f32> = u_xlat3;
  let x_1203 : vec3<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1201.x, x_1201.y, x_1201.z), x_1203);
  let x_1205 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1205, 0.0f, 1.0f);
  let x_1208 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1210 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_1208.x, x_1208.y, x_1208.z), x_1210);
  let x_1212 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1212, 0.0f, 1.0f);
  let x_1214 : f32 = u_xlat36;
  let x_1215 : f32 = u_xlat36;
  u_xlat36 = (x_1214 * x_1215);
  let x_1217 : f32 = u_xlat36;
  let x_1219 : f32 = u_xlat26.x;
  u_xlat36 = ((x_1217 * x_1219) + 1.00001001358032226562f);
  let x_1223 : f32 = u_xlat38;
  let x_1224 : f32 = u_xlat38;
  u_xlat38 = (x_1223 * x_1224);
  let x_1226 : f32 = u_xlat36;
  let x_1227 : f32 = u_xlat36;
  u_xlat36 = (x_1226 * x_1227);
  let x_1229 : f32 = u_xlat38;
  u_xlat38 = max(x_1229, 0.10000000149011611938f);
  let x_1232 : f32 = u_xlat36;
  let x_1233 : f32 = u_xlat38;
  u_xlat36 = (x_1232 * x_1233);
  let x_1236 : f32 = u_xlat5.x;
  let x_1237 : f32 = u_xlat36;
  u_xlat36 = (x_1236 * x_1237);
  let x_1239 : f32 = u_xlat39;
  let x_1240 : f32 = u_xlat36;
  u_xlat36 = (x_1239 / x_1240);
  let x_1242 : f32 = u_xlat36;
  let x_1246 : vec3<f32> = u_xlat4;
  u_xlat8 = ((vec3<f32>(x_1242, x_1242, x_1242) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1246);
  let x_1248 : vec4<f32> = u_xlat7;
  let x_1250 : vec3<f32> = u_xlat8;
  let x_1251 : vec3<f32> = (vec3<f32>(x_1248.x, x_1248.y, x_1248.z) * x_1250);
  let x_1252 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1255 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_1257 : f32 = x_132.unity_LightData.y;
  u_xlat36 = min(x_1255, x_1257);
  let x_1259 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1259));
  let x_1263 : f32 = u_xlat18.x;
  let x_1266 : f32 = x_248.x_AdditionalShadowFadeParams.x;
  let x_1269 : f32 = x_248.x_AdditionalShadowFadeParams.y;
  u_xlat38 = ((x_1263 * x_1266) + x_1269);
  let x_1271 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1271, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1282 : u32 = u_xlatu_loop_1;
    let x_1283 : u32 = u_xlatu36;
    if ((x_1282 < x_1283)) {
    } else {
      break;
    }
    let x_1286 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_1286 >> 2u);
    let x_1289 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1289 & 3u));
    let x_1293 : u32 = u_xlatu43;
    let x_1296 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_1293)];
    let x_1306 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1311 : vec4<u32> = indexable[x_1306];
    u_xlat43 = dot(x_1296, bitcast<vec4<f32>>(x_1311));
    let x_1315 : f32 = u_xlat43;
    u_xlati43 = i32(x_1315);
    let x_1317 : vec3<f32> = vs_INTERP8;
    let x_1328 : i32 = u_xlati43;
    let x_1330 : vec4<f32> = x_1327.x_AdditionalLightsPosition[x_1328];
    let x_1333 : i32 = u_xlati43;
    let x_1335 : vec4<f32> = x_1327.x_AdditionalLightsPosition[x_1333];
    u_xlat8 = ((-(x_1317) * vec3<f32>(x_1330.w, x_1330.w, x_1330.w)) + vec3<f32>(x_1335.x, x_1335.y, x_1335.z));
    let x_1339 : vec3<f32> = u_xlat8;
    let x_1340 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_1339, x_1340);
    let x_1342 : f32 = u_xlat44;
    u_xlat44 = max(x_1342, 0.00006103515625f);
    let x_1345 : f32 = u_xlat44;
    u_xlat9.x = inverseSqrt(x_1345);
    let x_1349 : vec3<f32> = u_xlat8;
    let x_1350 : vec3<f32> = u_xlat9;
    u_xlat21 = (x_1349 * vec3<f32>(x_1350.x, x_1350.x, x_1350.x));
    let x_1354 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_1354);
    let x_1357 : f32 = u_xlat44;
    let x_1358 : i32 = u_xlati43;
    let x_1360 : f32 = x_1327.x_AdditionalLightsAttenuation[x_1358].x;
    u_xlat44 = (x_1357 * x_1360);
    let x_1362 : f32 = u_xlat44;
    let x_1364 : f32 = u_xlat44;
    u_xlat44 = ((-(x_1362) * x_1364) + 1.0f);
    let x_1367 : f32 = u_xlat44;
    u_xlat44 = max(x_1367, 0.0f);
    let x_1369 : f32 = u_xlat44;
    let x_1370 : f32 = u_xlat44;
    u_xlat44 = (x_1369 * x_1370);
    let x_1372 : f32 = u_xlat44;
    let x_1374 : f32 = u_xlat10.x;
    u_xlat44 = (x_1372 * x_1374);
    let x_1376 : i32 = u_xlati43;
    let x_1378 : vec4<f32> = x_1327.x_AdditionalLightsSpotDir[x_1376];
    let x_1380 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1378.x, x_1378.y, x_1378.z), x_1380);
    let x_1384 : f32 = u_xlat10.x;
    let x_1385 : i32 = u_xlati43;
    let x_1387 : f32 = x_1327.x_AdditionalLightsAttenuation[x_1385].z;
    let x_1389 : i32 = u_xlati43;
    let x_1391 : f32 = x_1327.x_AdditionalLightsAttenuation[x_1389].w;
    u_xlat10.x = ((x_1384 * x_1387) + x_1391);
    let x_1395 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1395, 0.0f, 1.0f);
    let x_1399 : f32 = u_xlat10.x;
    let x_1401 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1399 * x_1401);
    let x_1404 : f32 = u_xlat44;
    let x_1406 : f32 = u_xlat10.x;
    u_xlat44 = (x_1404 * x_1406);
    let x_1410 : i32 = u_xlati43;
    let x_1412 : f32 = x_248.x_AdditionalShadowParams[x_1410].w;
    u_xlati10 = i32(x_1412);
    let x_1417 : i32 = u_xlati10;
    u_xlatb22.x = (x_1417 >= 0i);
    let x_1421 : bool = u_xlatb22.x;
    if (x_1421) {
      let x_1425 : i32 = u_xlati43;
      let x_1427 : f32 = x_248.x_AdditionalShadowParams[x_1425].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1427, x_1427, x_1427, x_1427))));
      let x_1433 : bool = u_xlatb22.x;
      if (x_1433) {
        let x_1436 : vec3<f32> = u_xlat21;
        let x_1439 : vec3<f32> = u_xlat21;
        let x_1442 : vec4<bool> = (abs(vec4<f32>(x_1436.z, x_1436.z, x_1436.y, x_1436.y)) >= abs(vec4<f32>(x_1439.x, x_1439.y, x_1439.x, x_1439.x)));
        u_xlatb22 = vec3<bool>(x_1442.x, x_1442.y, x_1442.z);
        let x_1445 : bool = u_xlatb22.y;
        let x_1447 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1445 & x_1447);
        let x_1451 : vec3<f32> = u_xlat21;
        let x_1454 : vec4<bool> = (-(vec4<f32>(x_1451.z, x_1451.y, x_1451.x, x_1451.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1454.x, x_1454.y, x_1454.z);
        let x_1458 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1458);
        let x_1463 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1463);
        let x_1468 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1468);
        let x_1471 : bool = u_xlatb22.z;
        if (x_1471) {
          let x_1476 : f32 = u_xlat11.y;
          x_1472 = x_1476;
        } else {
          let x_1478 : f32 = u_xlat34;
          x_1472 = x_1478;
        }
        let x_1479 : f32 = x_1472;
        u_xlat34 = x_1479;
        let x_1482 : bool = u_xlatb22.x;
        if (x_1482) {
          let x_1487 : f32 = u_xlat11.x;
          x_1483 = x_1487;
        } else {
          let x_1489 : f32 = u_xlat34;
          x_1483 = x_1489;
        }
        let x_1490 : f32 = x_1483;
        u_xlat22 = x_1490;
        let x_1491 : i32 = u_xlati43;
        let x_1493 : f32 = x_248.x_AdditionalShadowParams[x_1491].w;
        u_xlat34 = trunc(x_1493);
        let x_1495 : f32 = u_xlat22;
        let x_1496 : f32 = u_xlat34;
        u_xlat22 = (x_1495 + x_1496);
        let x_1498 : f32 = u_xlat22;
        u_xlati10 = i32(x_1498);
      }
      let x_1500 : i32 = u_xlati10;
      u_xlati10 = (x_1500 << bitcast<u32>(2i));
      let x_1502 : vec3<f32> = vs_INTERP8;
      let x_1505 : i32 = u_xlati10;
      let x_1508 : i32 = u_xlati10;
      let x_1512 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_1505 + 1i) / 4i)][((x_1508 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1502.y, x_1502.y, x_1502.y, x_1502.y) * x_1512);
      let x_1514 : i32 = u_xlati10;
      let x_1516 : i32 = u_xlati10;
      let x_1519 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[(x_1514 / 4i)][(x_1516 % 4i)];
      let x_1520 : vec3<f32> = vs_INTERP8;
      let x_1523 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1519 * vec4<f32>(x_1520.x, x_1520.x, x_1520.x, x_1520.x)) + x_1523);
      let x_1525 : i32 = u_xlati10;
      let x_1528 : i32 = u_xlati10;
      let x_1532 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_1525 + 2i) / 4i)][((x_1528 + 2i) % 4i)];
      let x_1533 : vec3<f32> = vs_INTERP8;
      let x_1536 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1532 * vec4<f32>(x_1533.z, x_1533.z, x_1533.z, x_1533.z)) + x_1536);
      let x_1538 : vec4<f32> = u_xlat11;
      let x_1539 : i32 = u_xlati10;
      let x_1542 : i32 = u_xlati10;
      let x_1546 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_1539 + 3i) / 4i)][((x_1542 + 3i) % 4i)];
      u_xlat10 = (x_1538 + x_1546);
      let x_1548 : vec4<f32> = u_xlat10;
      let x_1550 : vec4<f32> = u_xlat10;
      let x_1552 : vec3<f32> = (vec3<f32>(x_1548.x, x_1548.y, x_1548.z) / vec3<f32>(x_1550.w, x_1550.w, x_1550.w));
      let x_1553 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1552.x, x_1552.y, x_1552.z, x_1553.w);
      let x_1556 : vec4<f32> = u_xlat10;
      let x_1557 : vec2<f32> = vec2<f32>(x_1556.x, x_1556.y);
      let x_1559 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
      let x_1567 : vec3<f32> = txVec1;
      let x_1569 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1567.xy, x_1567.z);
      u_xlat10.x = x_1569;
      let x_1571 : i32 = u_xlati43;
      let x_1573 : f32 = x_248.x_AdditionalShadowParams[x_1571].x;
      u_xlat22 = (1.0f + -(x_1573));
      let x_1577 : f32 = u_xlat10.x;
      let x_1578 : i32 = u_xlati43;
      let x_1580 : f32 = x_248.x_AdditionalShadowParams[x_1578].x;
      let x_1582 : f32 = u_xlat22;
      u_xlat10.x = ((x_1577 * x_1580) + x_1582);
      let x_1586 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1586);
      let x_1591 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1591 >= 1.0f);
      let x_1593 : bool = u_xlatb34;
      let x_1595 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1593 | x_1595);
      let x_1599 : bool = u_xlatb22.x;
      if (x_1599) {
        x_1600 = 1.0f;
      } else {
        let x_1605 : f32 = u_xlat10.x;
        x_1600 = x_1605;
      }
      let x_1606 : f32 = x_1600;
      u_xlat10.x = x_1606;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1611 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1611) + 1.0f);
    let x_1614 : f32 = u_xlat38;
    let x_1615 : f32 = u_xlat22;
    let x_1618 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1614 * x_1615) + x_1618);
    let x_1621 : f32 = u_xlat44;
    let x_1623 : f32 = u_xlat10.x;
    u_xlat44 = (x_1621 * x_1623);
    let x_1625 : vec4<f32> = u_xlat3;
    let x_1627 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1625.x, x_1625.y, x_1625.z), x_1627);
    let x_1631 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1631, 0.0f, 1.0f);
    let x_1634 : f32 = u_xlat44;
    let x_1636 : f32 = u_xlat10.x;
    u_xlat44 = (x_1634 * x_1636);
    let x_1638 : f32 = u_xlat44;
    let x_1640 : i32 = u_xlati43;
    let x_1642 : vec4<f32> = x_1327.x_AdditionalLightsColor[x_1640];
    let x_1644 : vec3<f32> = (vec3<f32>(x_1638, x_1638, x_1638) * vec3<f32>(x_1642.x, x_1642.y, x_1642.z));
    let x_1645 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1644.x, x_1644.y, x_1644.z, x_1645.w);
    let x_1647 : vec3<f32> = u_xlat8;
    let x_1648 : vec3<f32> = u_xlat9;
    let x_1651 : vec3<f32> = u_xlat1;
    u_xlat8 = ((x_1647 * vec3<f32>(x_1648.x, x_1648.x, x_1648.x)) + x_1651);
    let x_1653 : vec3<f32> = u_xlat8;
    let x_1654 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(x_1653, x_1654);
    let x_1656 : f32 = u_xlat43;
    u_xlat43 = max(x_1656, 1.17549435e-38f);
    let x_1658 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1658);
    let x_1660 : f32 = u_xlat43;
    let x_1662 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1660, x_1660, x_1660) * x_1662);
    let x_1664 : vec4<f32> = u_xlat3;
    let x_1666 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1664.x, x_1664.y, x_1664.z), x_1666);
    let x_1668 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1668, 0.0f, 1.0f);
    let x_1670 : vec3<f32> = u_xlat21;
    let x_1671 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1670, x_1671);
    let x_1675 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1675, 0.0f, 1.0f);
    let x_1678 : f32 = u_xlat43;
    let x_1679 : f32 = u_xlat43;
    u_xlat43 = (x_1678 * x_1679);
    let x_1681 : f32 = u_xlat43;
    let x_1683 : f32 = u_xlat26.x;
    u_xlat43 = ((x_1681 * x_1683) + 1.00001001358032226562f);
    let x_1687 : f32 = u_xlat8.x;
    let x_1689 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1687 * x_1689);
    let x_1692 : f32 = u_xlat43;
    let x_1693 : f32 = u_xlat43;
    u_xlat43 = (x_1692 * x_1693);
    let x_1696 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1696, 0.10000000149011611938f);
    let x_1699 : f32 = u_xlat43;
    let x_1701 : f32 = u_xlat8.x;
    u_xlat43 = (x_1699 * x_1701);
    let x_1704 : f32 = u_xlat5.x;
    let x_1705 : f32 = u_xlat43;
    u_xlat43 = (x_1704 * x_1705);
    let x_1707 : f32 = u_xlat39;
    let x_1708 : f32 = u_xlat43;
    u_xlat43 = (x_1707 / x_1708);
    let x_1710 : f32 = u_xlat43;
    let x_1713 : vec3<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_1710, x_1710, x_1710) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1713);
    let x_1715 : vec3<f32> = u_xlat8;
    let x_1716 : vec4<f32> = u_xlat10;
    let x_1719 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1715 * vec3<f32>(x_1716.x, x_1716.y, x_1716.z)) + x_1719);

    continuing {
      let x_1721 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1721 + bitcast<u32>(1i));
    }
  }
  let x_1723 : vec3<f32> = u_xlat17;
  let x_1724 : vec4<f32> = u_xlat6;
  let x_1727 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_1723 * vec3<f32>(x_1724.x, x_1724.x, x_1724.x)) + vec3<f32>(x_1727.x, x_1727.y, x_1727.z));
  let x_1730 : vec3<f32> = u_xlat18;
  let x_1731 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1730 + x_1731);
  let x_1733 : vec4<f32> = vs_INTERP6;
  let x_1735 : vec3<f32> = u_xlat0;
  let x_1737 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1733.w, x_1733.w, x_1733.w) * x_1735) + x_1737);
  let x_1740 : f32 = u_xlat14.x;
  let x_1742 : f32 = u_xlat14.x;
  u_xlat36 = (x_1740 * -(x_1742));
  let x_1745 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1745);
  let x_1747 : vec3<f32> = u_xlat0;
  let x_1750 : vec4<f32> = x_75.unity_FogColor;
  u_xlat0 = (x_1747 + -(vec3<f32>(x_1750.x, x_1750.y, x_1750.z)));
  let x_1756 : f32 = u_xlat36;
  let x_1758 : vec3<f32> = u_xlat0;
  let x_1761 : vec4<f32> = x_75.unity_FogColor;
  let x_1763 : vec3<f32> = ((vec3<f32>(x_1756, x_1756, x_1756) * x_1758) + vec3<f32>(x_1761.x, x_1761.y, x_1761.z));
  let x_1764 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1763.x, x_1763.y, x_1763.z, x_1764.w);
  let x_1766 : bool = u_xlatb2;
  let x_1767 : f32 = u_xlat37;
  SV_Target0.w = select(1.0f, x_1767, x_1766);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP9_param : vec3<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP6_param : vec4<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


