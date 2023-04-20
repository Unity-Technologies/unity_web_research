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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_188 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat17 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_250 : LightShadows;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu36 : u32;

var<private> u_xlati36 : i32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat26 : f32;

var<private> u_xlatb2 : bool;

var<private> vs_INTERP4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat15 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatu17 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlati17 : i32;

@group(1) @binding(1) var<uniform> x_1286 : AdditionalLights;

var<private> u_xlat43 : f32;

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

var<private> u_xlatu5 : u32;

var<private> u_xlatb17 : bool;

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
  var x_509 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_642 : f32;
  var x_673 : f32;
  var x_720 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1431 : f32;
  var x_1442 : f32;
  var txVec1 : vec3<f32>;
  var x_1559 : f32;
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
  let x_192 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_201 : vec4<f32> = vs_INTERP5;
  let x_204 : f32 = x_75.x_GlobalMipBias.x;
  let x_205 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_201.x, x_201.y), x_204);
  u_xlat5 = vec4<f32>(x_205.w, x_205.x, x_205.y, x_205.z);
  let x_208 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_208.y, x_208.z, x_208.w, x_208.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_216 : vec4<f32> = u_xlat6;
  let x_217 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_216, x_217);
  let x_219 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_219);
  let x_222 : f32 = u_xlat36;
  let x_224 : vec4<f32> = u_xlat6;
  u_xlat17 = (vec3<f32>(x_222, x_222, x_222) * vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_230 : f32 = vs_INTERP6.y;
  u_xlat36 = (x_230 * 200.0f);
  let x_233 : f32 = u_xlat36;
  u_xlat36 = min(x_233, 1.0f);
  let x_235 : f32 = u_xlat36;
  let x_237 : vec4<f32> = u_xlat3;
  let x_239 : vec3<f32> = (vec3<f32>(x_235, x_235, x_235) * vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec3<f32> = vs_INTERP8;
  let x_252 : vec4<f32> = x_250.x_CascadeShadowSplitSpheres0;
  let x_255 : vec3<f32> = (x_242 + -(vec3<f32>(x_252.x, x_252.y, x_252.z)));
  let x_256 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : vec3<f32> = vs_INTERP8;
  let x_261 : vec4<f32> = x_250.x_CascadeShadowSplitSpheres1;
  let x_264 : vec3<f32> = (x_259 + -(vec3<f32>(x_261.x, x_261.y, x_261.z)));
  let x_265 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : vec3<f32> = vs_INTERP8;
  let x_271 : vec4<f32> = x_250.x_CascadeShadowSplitSpheres2;
  u_xlat8 = (x_268 + -(vec3<f32>(x_271.x, x_271.y, x_271.z)));
  let x_276 : vec3<f32> = vs_INTERP8;
  let x_279 : vec4<f32> = x_250.x_CascadeShadowSplitSpheres3;
  u_xlat9 = (x_276 + -(vec3<f32>(x_279.x, x_279.y, x_279.z)));
  let x_283 : vec4<f32> = u_xlat6;
  let x_285 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_283.x, x_283.y, x_283.z), vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_289 : vec4<f32> = u_xlat7;
  let x_291 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_295 : vec3<f32> = u_xlat8;
  let x_296 : vec3<f32> = u_xlat8;
  u_xlat6.z = dot(x_295, x_296);
  let x_299 : vec3<f32> = u_xlat9;
  let x_300 : vec3<f32> = u_xlat9;
  u_xlat6.w = dot(x_299, x_300);
  let x_306 : vec4<f32> = u_xlat6;
  let x_308 : vec4<f32> = x_250.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_306 < x_308);
  let x_311 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_311);
  let x_315 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_315);
  let x_319 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_319);
  let x_323 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_323);
  let x_327 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_327);
  let x_332 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_332);
  let x_336 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_336);
  let x_339 : vec4<f32> = u_xlat6;
  let x_341 : vec4<f32> = u_xlat7;
  let x_343 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) + vec3<f32>(x_341.y, x_341.z, x_341.w));
  let x_344 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat6;
  let x_349 : vec3<f32> = max(vec3<f32>(x_346.x, x_346.y, x_346.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_350 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_350.x, x_349.x, x_349.y, x_349.z);
  let x_352 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(x_352, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_357 : f32 = u_xlat36;
  u_xlat36 = (-(x_357) + 4.0f);
  let x_362 : f32 = u_xlat36;
  u_xlatu36 = u32(x_362);
  let x_366 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_366) << bitcast<u32>(2i));
  let x_369 : vec3<f32> = vs_INTERP8;
  let x_371 : i32 = u_xlati36;
  let x_374 : i32 = u_xlati36;
  let x_378 : vec4<f32> = x_250.x_MainLightWorldToShadow[((x_371 + 1i) / 4i)][((x_374 + 1i) % 4i)];
  let x_380 : vec3<f32> = (vec3<f32>(x_369.y, x_369.y, x_369.y) * vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : i32 = u_xlati36;
  let x_385 : i32 = u_xlati36;
  let x_388 : vec4<f32> = x_250.x_MainLightWorldToShadow[(x_383 / 4i)][(x_385 % 4i)];
  let x_390 : vec3<f32> = vs_INTERP8;
  let x_393 : vec4<f32> = u_xlat6;
  let x_395 : vec3<f32> = ((vec3<f32>(x_388.x, x_388.y, x_388.z) * vec3<f32>(x_390.x, x_390.x, x_390.x)) + vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : i32 = u_xlati36;
  let x_401 : i32 = u_xlati36;
  let x_405 : vec4<f32> = x_250.x_MainLightWorldToShadow[((x_398 + 2i) / 4i)][((x_401 + 2i) % 4i)];
  let x_407 : vec3<f32> = vs_INTERP8;
  let x_410 : vec4<f32> = u_xlat6;
  let x_412 : vec3<f32> = ((vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(x_407.z, x_407.z, x_407.z)) + vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat6;
  let x_417 : i32 = u_xlati36;
  let x_420 : i32 = u_xlati36;
  let x_424 : vec4<f32> = x_250.x_MainLightWorldToShadow[((x_417 + 3i) / 4i)][((x_420 + 3i) % 4i)];
  let x_426 : vec3<f32> = (vec3<f32>(x_415.x, x_415.y, x_415.z) + vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_430 : vec4<f32> = u_xlat6;
  let x_431 : vec2<f32> = vec2<f32>(x_430.x, x_430.y);
  let x_433 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_431.x, x_431.y, x_433);
  let x_445 : vec3<f32> = txVec0;
  let x_447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_445.xy, x_445.z);
  u_xlat36 = x_447;
  let x_449 : f32 = x_250.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_449) + 1.0f);
  let x_452 : f32 = u_xlat36;
  let x_454 : f32 = x_250.x_MainLightShadowParams.x;
  let x_456 : f32 = u_xlat37;
  u_xlat36 = ((x_452 * x_454) + x_456);
  let x_460 : f32 = u_xlat6.z;
  u_xlatb37 = (0.0f >= x_460);
  let x_464 : f32 = u_xlat6.z;
  u_xlatb38 = (x_464 >= 1.0f);
  let x_466 : bool = u_xlatb37;
  let x_467 : bool = u_xlatb38;
  u_xlatb37 = (x_466 | x_467);
  let x_469 : bool = u_xlatb37;
  let x_470 : f32 = u_xlat36;
  u_xlat36 = select(x_470, 1.0f, x_469);
  let x_472 : vec3<f32> = u_xlat0;
  let x_474 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_472, -(vec3<f32>(x_474.x, x_474.y, x_474.z)));
  let x_480 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_480, 0.0f, 1.0f);
  let x_483 : f32 = u_xlat36;
  let x_486 : vec4<f32> = x_75.x_MainLightColor;
  let x_488 : vec3<f32> = (vec3<f32>(x_483, x_483, x_483) * vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec3<f32> = u_xlat0;
  let x_493 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_491.x, x_491.x, x_491.x) * vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : vec3<f32> = u_xlat0;
  let x_497 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_496 * vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_501 : f32 = x_132.unity_LODFade.x;
  u_xlatb37 = (x_501 < 0.0f);
  let x_505 : f32 = x_132.unity_LODFade.x;
  u_xlat38 = (x_505 + 1.0f);
  let x_507 : bool = u_xlatb37;
  if (x_507) {
    let x_512 : f32 = u_xlat38;
    x_509 = x_512;
  } else {
    let x_515 : f32 = x_132.unity_LODFade.x;
    x_509 = x_515;
  }
  let x_516 : f32 = x_509;
  u_xlat37 = x_516;
  let x_518 : f32 = u_xlat37;
  u_xlatb38 = (0.5f >= x_518);
  let x_520 : vec3<f32> = u_xlat2;
  let x_524 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat2 = (abs(x_520) * vec3<f32>(x_524.x, x_524.y, x_524.x));
  let x_530 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_530);
  let x_534 : u32 = u_xlatu2.z;
  u_xlatu26 = (x_534 * 1025u);
  let x_538 : u32 = u_xlatu26;
  u_xlatu3 = (x_538 >> 6u);
  let x_542 : u32 = u_xlatu26;
  let x_543 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_542 ^ x_543));
  let x_546 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_546) * 9u);
  let x_550 : u32 = u_xlatu26;
  u_xlatu3 = (x_550 >> 11u);
  let x_553 : u32 = u_xlatu26;
  let x_554 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_553 ^ x_554));
  let x_557 : i32 = u_xlati26;
  u_xlati26 = (x_557 * 32769i);
  let x_561 : i32 = u_xlati26;
  let x_564 : u32 = u_xlatu2.y;
  u_xlati14 = bitcast<i32>((bitcast<u32>(x_561) ^ x_564));
  let x_568 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_568) * 1025u);
  let x_571 : u32 = u_xlatu14;
  u_xlatu26 = (x_571 >> 6u);
  let x_573 : u32 = u_xlatu26;
  let x_574 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_573 ^ x_574));
  let x_577 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_577) * 9u);
  let x_580 : u32 = u_xlatu14;
  u_xlatu26 = (x_580 >> 11u);
  let x_582 : u32 = u_xlatu26;
  let x_583 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_582 ^ x_583));
  let x_586 : i32 = u_xlati14;
  u_xlati14 = (x_586 * 32769i);
  let x_589 : i32 = u_xlati14;
  let x_592 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_589) ^ x_592));
  let x_595 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_595) * 1025u);
  let x_600 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_600 >> 6u);
  let x_602 : u32 = u_xlatu14;
  let x_604 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_602 ^ x_604));
  let x_607 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_607) * 9u);
  let x_612 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_612 >> 11u);
  let x_614 : u32 = u_xlatu14;
  let x_616 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_614 ^ x_616));
  let x_619 : i32 = u_xlati2;
  u_xlati2 = (x_619 * 32769i);
  param = 1065353216i;
  let x_625 : i32 = u_xlati2;
  param_1 = x_625;
  param_2 = 0i;
  param_3 = 23i;
  let x_628 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_628);
  let x_632 : f32 = u_xlat2.x;
  u_xlat2.x = (x_632 + -1.0f);
  let x_637 : f32 = u_xlat2.x;
  u_xlat14.x = (-(x_637) + 1.0f);
  let x_641 : bool = u_xlatb38;
  if (x_641) {
    let x_646 : f32 = u_xlat2.x;
    x_642 = x_646;
  } else {
    let x_649 : f32 = u_xlat14.x;
    x_642 = x_649;
  }
  let x_650 : f32 = x_642;
  u_xlat2.x = x_650;
  let x_652 : f32 = u_xlat37;
  let x_655 : f32 = u_xlat2.x;
  u_xlat37 = ((x_652 * 2.0f) + -(x_655));
  let x_658 : f32 = u_xlat37;
  let x_660 : f32 = u_xlat3.w;
  u_xlat2.x = (x_658 * x_660);
  let x_667 : f32 = u_xlat2.x;
  u_xlatb14.x = (x_667 >= 0.40000000596046447754f);
  let x_672 : bool = u_xlatb14.x;
  if (x_672) {
    let x_677 : f32 = u_xlat2.x;
    x_673 = x_677;
  } else {
    x_673 = 0.0f;
  }
  let x_679 : f32 = x_673;
  u_xlat14.x = x_679;
  let x_682 : f32 = u_xlat3.w;
  let x_683 : f32 = u_xlat37;
  u_xlat37 = ((x_682 * x_683) + -0.40000000596046447754f);
  let x_689 : f32 = u_xlat2.x;
  u_xlat26 = dpdxCoarse(x_689);
  let x_692 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_692);
  let x_696 : f32 = u_xlat2.x;
  let x_698 : f32 = u_xlat26;
  u_xlat2.x = (abs(x_696) + abs(x_698));
  let x_703 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_703, 0.00009999999747378752f);
  let x_707 : f32 = u_xlat37;
  let x_709 : f32 = u_xlat2.x;
  u_xlat37 = (x_707 / x_709);
  let x_711 : f32 = u_xlat37;
  u_xlat37 = (x_711 + 0.5f);
  let x_713 : f32 = u_xlat37;
  u_xlat37 = clamp(x_713, 0.0f, 1.0f);
  let x_717 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_717 == 0.0f));
  let x_719 : bool = u_xlatb2;
  if (x_719) {
    let x_723 : f32 = u_xlat37;
    x_720 = x_723;
  } else {
    let x_726 : f32 = u_xlat14.x;
    x_720 = x_726;
  }
  let x_727 : f32 = x_720;
  u_xlat37 = x_727;
  let x_728 : f32 = u_xlat37;
  u_xlat14.x = (x_728 + -0.00009999999747378752f);
  let x_733 : f32 = u_xlat14.x;
  u_xlatb14.x = (x_733 < 0.0f);
  let x_737 : bool = u_xlatb14.x;
  if (((select(0i, 1i, x_737) * -1i) != 0i)) {
    discard;
  }
  let x_747 : f32 = vs_INTERP4.w;
  u_xlatb14.x = (0.0f < x_747);
  let x_751 : f32 = x_132.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_751 >= 0.0f);
  let x_755 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_755);
  let x_759 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_759);
  let x_763 : f32 = u_xlat14.y;
  let x_765 : f32 = u_xlat14.x;
  u_xlat14.x = (x_763 * x_765);
  let x_768 : vec4<f32> = vs_INTERP4;
  let x_770 : vec3<f32> = vs_INTERP9;
  let x_772 : vec3<f32> = (vec3<f32>(x_768.y, x_768.z, x_768.x) * vec3<f32>(x_770.z, x_770.x, x_770.y));
  let x_773 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_775 : vec3<f32> = vs_INTERP9;
  let x_777 : vec4<f32> = vs_INTERP4;
  let x_780 : vec4<f32> = u_xlat3;
  let x_783 : vec3<f32> = ((vec3<f32>(x_775.y, x_775.z, x_775.x) * vec3<f32>(x_777.z, x_777.x, x_777.y)) + -(vec3<f32>(x_780.x, x_780.y, x_780.z)));
  let x_784 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec3<f32> = u_xlat14;
  let x_788 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec3<f32>(x_786.x, x_786.x, x_786.x) * vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_791 : vec3<f32> = u_xlat14;
  let x_792 : vec3<f32> = u_xlat17;
  u_xlat14 = (x_791 * vec3<f32>(x_792.y, x_792.y, x_792.y));
  let x_795 : vec3<f32> = u_xlat17;
  let x_797 : vec4<f32> = vs_INTERP4;
  let x_800 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_795.x, x_795.x, x_795.x) * vec3<f32>(x_797.x, x_797.y, x_797.z)) + x_800);
  let x_802 : vec3<f32> = u_xlat17;
  let x_804 : vec3<f32> = vs_INTERP9;
  let x_806 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_802.z, x_802.z, x_802.z) * x_804) + x_806);
  let x_808 : vec3<f32> = u_xlat14;
  let x_809 : vec3<f32> = u_xlat14;
  u_xlat3.x = dot(x_808, x_809);
  let x_813 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_813);
  let x_816 : vec3<f32> = u_xlat14;
  let x_817 : vec4<f32> = u_xlat3;
  u_xlat14 = (x_816 * vec3<f32>(x_817.x, x_817.x, x_817.x));
  let x_821 : f32 = vs_INTERP8.y;
  let x_823 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat3.x = (x_821 * x_823);
  let x_827 : f32 = x_75.unity_MatrixV[0i].z;
  let x_829 : f32 = vs_INTERP8.x;
  let x_832 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_827 * x_829) + x_832);
  let x_836 : f32 = x_75.unity_MatrixV[2i].z;
  let x_838 : f32 = vs_INTERP8.z;
  let x_841 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_836 * x_838) + x_841);
  let x_845 : f32 = u_xlat3.x;
  let x_847 : f32 = x_75.unity_MatrixV[3i].z;
  u_xlat3.x = (x_845 + x_847);
  let x_851 : f32 = u_xlat3.x;
  let x_855 : f32 = x_75.x_ProjectionParams.y;
  u_xlat3.x = (-(x_851) + -(x_855));
  let x_860 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_860, 0.0f);
  let x_864 : f32 = u_xlat3.x;
  let x_867 : f32 = x_75.unity_FogParams.x;
  u_xlat3.x = (x_864 * x_867);
  let x_877 : vec2<f32> = vs_INTERP0;
  let x_879 : f32 = x_75.x_GlobalMipBias.x;
  let x_880 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_877, x_879);
  u_xlat6 = x_880;
  let x_886 : vec2<f32> = vs_INTERP0;
  let x_888 : f32 = x_75.x_GlobalMipBias.x;
  let x_889 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_886, x_888);
  u_xlat15 = vec3<f32>(x_889.x, x_889.y, x_889.z);
  let x_891 : vec4<f32> = u_xlat6;
  u_xlat17 = (vec3<f32>(x_891.x, x_891.y, x_891.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_897 : vec3<f32> = u_xlat14;
  let x_898 : vec3<f32> = u_xlat17;
  u_xlat40 = dot(x_897, x_898);
  let x_900 : f32 = u_xlat40;
  u_xlat40 = (x_900 + 0.5f);
  let x_902 : vec3<f32> = u_xlat15;
  let x_903 : f32 = u_xlat40;
  u_xlat15 = (x_902 * vec3<f32>(x_903, x_903, x_903));
  let x_907 : f32 = u_xlat6.w;
  u_xlat40 = max(x_907, 0.00009999999747378752f);
  let x_909 : vec3<f32> = u_xlat15;
  let x_910 : f32 = u_xlat40;
  u_xlat15 = (x_909 / vec3<f32>(x_910, x_910, x_910));
  let x_914 : f32 = u_xlat5.x;
  u_xlat5.x = x_914;
  let x_917 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_917, 0.0f, 1.0f);
  let x_920 : f32 = u_xlat37;
  u_xlat37 = x_920;
  let x_921 : f32 = u_xlat37;
  u_xlat37 = clamp(x_921, 0.0f, 1.0f);
  let x_924 : f32 = u_xlat5.x;
  u_xlat40 = (-(x_924) + 1.0f);
  let x_927 : f32 = u_xlat40;
  let x_928 : f32 = u_xlat40;
  u_xlat17.x = (x_927 * x_928);
  let x_932 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_932, 0.0078125f);
  let x_938 : f32 = u_xlat17.x;
  let x_940 : f32 = u_xlat17.x;
  u_xlat29 = (x_938 * x_940);
  let x_943 : f32 = u_xlat5.x;
  u_xlat5.x = (x_943 + 0.04000002145767211914f);
  let x_948 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_948, 1.0f);
  let x_953 : f32 = u_xlat17.x;
  u_xlat41 = ((x_953 * 4.0f) + 2.0f);
  let x_957 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_957, 1.0f);
  let x_961 : vec3<f32> = vs_INTERP8;
  let x_963 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat18 = (x_961 + -(x_963));
  let x_966 : vec3<f32> = u_xlat18;
  let x_967 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_966, x_967);
  let x_972 : f32 = u_xlat18.x;
  let x_974 : f32 = x_250.x_MainLightShadowParams.z;
  let x_977 : f32 = x_250.x_MainLightShadowParams.w;
  u_xlat30 = ((x_972 * x_974) + x_977);
  let x_979 : f32 = u_xlat30;
  u_xlat30 = clamp(x_979, 0.0f, 1.0f);
  let x_982 : f32 = u_xlat36;
  u_xlat42 = (-(x_982) + 1.0f);
  let x_985 : f32 = u_xlat30;
  let x_986 : f32 = u_xlat42;
  let x_988 : f32 = u_xlat36;
  u_xlat36 = ((x_985 * x_986) + x_988);
  let x_990 : vec3<f32> = u_xlat1;
  let x_992 : vec3<f32> = u_xlat14;
  u_xlat30 = dot(-(x_990), x_992);
  let x_994 : f32 = u_xlat30;
  let x_995 : f32 = u_xlat30;
  u_xlat30 = (x_994 + x_995);
  let x_997 : vec3<f32> = u_xlat14;
  let x_998 : f32 = u_xlat30;
  let x_1002 : vec3<f32> = u_xlat1;
  let x_1004 : vec3<f32> = ((x_997 * -(vec3<f32>(x_998, x_998, x_998))) + -(x_1002));
  let x_1005 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
  let x_1007 : vec3<f32> = u_xlat14;
  let x_1008 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_1007, x_1008);
  let x_1010 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1010, 0.0f, 1.0f);
  let x_1012 : f32 = u_xlat30;
  u_xlat30 = (-(x_1012) + 1.0f);
  let x_1015 : f32 = u_xlat30;
  let x_1016 : f32 = u_xlat30;
  u_xlat30 = (x_1015 * x_1016);
  let x_1018 : f32 = u_xlat30;
  let x_1019 : f32 = u_xlat30;
  u_xlat30 = (x_1018 * x_1019);
  let x_1021 : f32 = u_xlat40;
  u_xlat42 = ((-(x_1021) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1027 : f32 = u_xlat40;
  let x_1028 : f32 = u_xlat42;
  u_xlat4.w = (x_1027 * x_1028);
  let x_1031 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_1031 * vec4<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f, 6.0f));
  let x_1044 : vec4<f32> = u_xlat7;
  let x_1047 : f32 = u_xlat4.w;
  let x_1048 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1044.x, x_1044.y, x_1044.z), x_1047);
  u_xlat7 = x_1048;
  let x_1050 : f32 = u_xlat7.w;
  u_xlat40 = (x_1050 + -1.0f);
  let x_1053 : f32 = x_132.unity_SpecCube0_HDR.w;
  let x_1054 : f32 = u_xlat40;
  u_xlat40 = ((x_1053 * x_1054) + 1.0f);
  let x_1057 : f32 = u_xlat40;
  u_xlat40 = max(x_1057, 0.0f);
  let x_1059 : f32 = u_xlat40;
  u_xlat40 = log2(x_1059);
  let x_1061 : f32 = u_xlat40;
  let x_1063 : f32 = x_132.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_1061 * x_1063);
  let x_1065 : f32 = u_xlat40;
  u_xlat40 = exp2(x_1065);
  let x_1067 : f32 = u_xlat40;
  let x_1069 : f32 = x_132.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_1067 * x_1069);
  let x_1071 : vec4<f32> = u_xlat7;
  let x_1073 : f32 = u_xlat40;
  let x_1075 : vec3<f32> = (vec3<f32>(x_1071.x, x_1071.y, x_1071.z) * vec3<f32>(x_1073, x_1073, x_1073));
  let x_1076 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1078 : vec3<f32> = u_xlat17;
  let x_1080 : vec3<f32> = u_xlat17;
  let x_1084 : vec2<f32> = ((vec2<f32>(x_1078.x, x_1078.x) * vec2<f32>(x_1080.x, x_1080.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1085 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_1084.x, x_1084.y, x_1085.z);
  let x_1088 : f32 = u_xlat8.y;
  u_xlat40 = (1.0f / x_1088);
  let x_1091 : f32 = u_xlat5.x;
  u_xlat5.x = (x_1091 + -0.03999999910593032837f);
  let x_1095 : f32 = u_xlat30;
  let x_1097 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1095 * x_1097) + 0.03999999910593032837f);
  let x_1102 : f32 = u_xlat40;
  let x_1104 : f32 = u_xlat5.x;
  u_xlat40 = (x_1102 * x_1104);
  let x_1106 : f32 = u_xlat40;
  let x_1108 : vec4<f32> = u_xlat7;
  let x_1110 : vec3<f32> = (vec3<f32>(x_1106, x_1106, x_1106) * vec3<f32>(x_1108.x, x_1108.y, x_1108.z));
  let x_1111 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1111.w);
  let x_1113 : vec3<f32> = u_xlat15;
  let x_1114 : vec4<f32> = u_xlat4;
  let x_1117 : vec4<f32> = u_xlat7;
  u_xlat15 = ((x_1113 * vec3<f32>(x_1114.x, x_1114.y, x_1114.z)) + vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1120 : f32 = u_xlat36;
  let x_1122 : f32 = x_132.unity_LightData.z;
  u_xlat36 = (x_1120 * x_1122);
  let x_1124 : vec3<f32> = u_xlat14;
  let x_1126 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat40 = dot(x_1124, vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
  let x_1129 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1129, 0.0f, 1.0f);
  let x_1131 : f32 = u_xlat36;
  let x_1132 : f32 = u_xlat40;
  u_xlat36 = (x_1131 * x_1132);
  let x_1134 : f32 = u_xlat36;
  let x_1137 : vec4<f32> = x_75.x_MainLightColor;
  let x_1139 : vec3<f32> = (vec3<f32>(x_1134, x_1134, x_1134) * vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
  let x_1140 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
  let x_1143 : vec3<f32> = u_xlat1;
  let x_1145 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat20 = (x_1143 + vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
  let x_1148 : vec3<f32> = u_xlat20;
  let x_1149 : vec3<f32> = u_xlat20;
  u_xlat36 = dot(x_1148, x_1149);
  let x_1151 : f32 = u_xlat36;
  u_xlat36 = max(x_1151, 1.17549435e-38f);
  let x_1154 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1154);
  let x_1156 : f32 = u_xlat36;
  let x_1158 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1156, x_1156, x_1156) * x_1158);
  let x_1160 : vec3<f32> = u_xlat14;
  let x_1161 : vec3<f32> = u_xlat20;
  u_xlat36 = dot(x_1160, x_1161);
  let x_1163 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1163, 0.0f, 1.0f);
  let x_1166 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1168 : vec3<f32> = u_xlat20;
  u_xlat40 = dot(vec3<f32>(x_1166.x, x_1166.y, x_1166.z), x_1168);
  let x_1170 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1170, 0.0f, 1.0f);
  let x_1172 : f32 = u_xlat36;
  let x_1173 : f32 = u_xlat36;
  u_xlat36 = (x_1172 * x_1173);
  let x_1175 : f32 = u_xlat36;
  let x_1177 : f32 = u_xlat8.x;
  u_xlat36 = ((x_1175 * x_1177) + 1.00001001358032226562f);
  let x_1181 : f32 = u_xlat40;
  let x_1182 : f32 = u_xlat40;
  u_xlat40 = (x_1181 * x_1182);
  let x_1184 : f32 = u_xlat36;
  let x_1185 : f32 = u_xlat36;
  u_xlat36 = (x_1184 * x_1185);
  let x_1187 : f32 = u_xlat40;
  u_xlat40 = max(x_1187, 0.10000000149011611938f);
  let x_1190 : f32 = u_xlat36;
  let x_1191 : f32 = u_xlat40;
  u_xlat36 = (x_1190 * x_1191);
  let x_1193 : f32 = u_xlat41;
  let x_1194 : f32 = u_xlat36;
  u_xlat36 = (x_1193 * x_1194);
  let x_1196 : f32 = u_xlat29;
  let x_1197 : f32 = u_xlat36;
  u_xlat36 = (x_1196 / x_1197);
  let x_1199 : f32 = u_xlat36;
  let x_1203 : vec4<f32> = u_xlat4;
  u_xlat20 = ((vec3<f32>(x_1199, x_1199, x_1199) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1206 : vec4<f32> = u_xlat7;
  let x_1208 : vec3<f32> = u_xlat20;
  let x_1209 : vec3<f32> = (vec3<f32>(x_1206.x, x_1206.y, x_1206.z) * x_1208);
  let x_1210 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1213 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_1215 : f32 = x_132.unity_LightData.y;
  u_xlat36 = min(x_1213, x_1215);
  let x_1217 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1217));
  let x_1221 : f32 = u_xlat18.x;
  let x_1224 : f32 = x_250.x_AdditionalShadowFadeParams.x;
  let x_1227 : f32 = x_250.x_AdditionalShadowFadeParams.y;
  u_xlat40 = ((x_1221 * x_1224) + x_1227);
  let x_1229 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1229, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1240 : u32 = u_xlatu_loop_1;
    let x_1241 : u32 = u_xlatu36;
    if ((x_1240 < x_1241)) {
    } else {
      break;
    }
    let x_1244 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_1244 >> 2u);
    let x_1247 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_1247 & 3u));
    let x_1250 : u32 = u_xlatu17;
    let x_1253 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_1250)];
    let x_1263 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1268 : vec4<u32> = indexable[x_1263];
    u_xlat17.x = dot(x_1253, bitcast<vec4<f32>>(x_1268));
    let x_1274 : f32 = u_xlat17.x;
    u_xlati17 = i32(x_1274);
    let x_1276 : vec3<f32> = vs_INTERP8;
    let x_1287 : i32 = u_xlati17;
    let x_1289 : vec4<f32> = x_1286.x_AdditionalLightsPosition[x_1287];
    let x_1292 : i32 = u_xlati17;
    let x_1294 : vec4<f32> = x_1286.x_AdditionalLightsPosition[x_1292];
    u_xlat20 = ((-(x_1276) * vec3<f32>(x_1289.w, x_1289.w, x_1289.w)) + vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
    let x_1298 : vec3<f32> = u_xlat20;
    let x_1299 : vec3<f32> = u_xlat20;
    u_xlat43 = dot(x_1298, x_1299);
    let x_1301 : f32 = u_xlat43;
    u_xlat43 = max(x_1301, 0.00006103515625f);
    let x_1304 : f32 = u_xlat43;
    u_xlat9.x = inverseSqrt(x_1304);
    let x_1308 : vec3<f32> = u_xlat20;
    let x_1309 : vec3<f32> = u_xlat9;
    u_xlat21 = (x_1308 * vec3<f32>(x_1309.x, x_1309.x, x_1309.x));
    let x_1313 : f32 = u_xlat43;
    u_xlat10.x = (1.0f / x_1313);
    let x_1316 : f32 = u_xlat43;
    let x_1317 : i32 = u_xlati17;
    let x_1319 : f32 = x_1286.x_AdditionalLightsAttenuation[x_1317].x;
    u_xlat43 = (x_1316 * x_1319);
    let x_1321 : f32 = u_xlat43;
    let x_1323 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1321) * x_1323) + 1.0f);
    let x_1326 : f32 = u_xlat43;
    u_xlat43 = max(x_1326, 0.0f);
    let x_1328 : f32 = u_xlat43;
    let x_1329 : f32 = u_xlat43;
    u_xlat43 = (x_1328 * x_1329);
    let x_1331 : f32 = u_xlat43;
    let x_1333 : f32 = u_xlat10.x;
    u_xlat43 = (x_1331 * x_1333);
    let x_1335 : i32 = u_xlati17;
    let x_1337 : vec4<f32> = x_1286.x_AdditionalLightsSpotDir[x_1335];
    let x_1339 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1337.x, x_1337.y, x_1337.z), x_1339);
    let x_1343 : f32 = u_xlat10.x;
    let x_1344 : i32 = u_xlati17;
    let x_1346 : f32 = x_1286.x_AdditionalLightsAttenuation[x_1344].z;
    let x_1348 : i32 = u_xlati17;
    let x_1350 : f32 = x_1286.x_AdditionalLightsAttenuation[x_1348].w;
    u_xlat10.x = ((x_1343 * x_1346) + x_1350);
    let x_1354 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1354, 0.0f, 1.0f);
    let x_1358 : f32 = u_xlat10.x;
    let x_1360 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1358 * x_1360);
    let x_1363 : f32 = u_xlat43;
    let x_1365 : f32 = u_xlat10.x;
    u_xlat43 = (x_1363 * x_1365);
    let x_1369 : i32 = u_xlati17;
    let x_1371 : f32 = x_250.x_AdditionalShadowParams[x_1369].w;
    u_xlati10 = i32(x_1371);
    let x_1376 : i32 = u_xlati10;
    u_xlatb22.x = (x_1376 >= 0i);
    let x_1380 : bool = u_xlatb22.x;
    if (x_1380) {
      let x_1384 : i32 = u_xlati17;
      let x_1386 : f32 = x_250.x_AdditionalShadowParams[x_1384].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1386, x_1386, x_1386, x_1386))));
      let x_1392 : bool = u_xlatb22.x;
      if (x_1392) {
        let x_1395 : vec3<f32> = u_xlat21;
        let x_1398 : vec3<f32> = u_xlat21;
        let x_1401 : vec4<bool> = (abs(vec4<f32>(x_1395.z, x_1395.z, x_1395.y, x_1395.y)) >= abs(vec4<f32>(x_1398.x, x_1398.y, x_1398.x, x_1398.x)));
        u_xlatb22 = vec3<bool>(x_1401.x, x_1401.y, x_1401.z);
        let x_1404 : bool = u_xlatb22.y;
        let x_1406 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1404 & x_1406);
        let x_1410 : vec3<f32> = u_xlat21;
        let x_1413 : vec4<bool> = (-(vec4<f32>(x_1410.z, x_1410.y, x_1410.x, x_1410.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1413.x, x_1413.y, x_1413.z);
        let x_1417 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1417);
        let x_1422 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1422);
        let x_1427 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1427);
        let x_1430 : bool = u_xlatb22.z;
        if (x_1430) {
          let x_1435 : f32 = u_xlat11.y;
          x_1431 = x_1435;
        } else {
          let x_1437 : f32 = u_xlat34;
          x_1431 = x_1437;
        }
        let x_1438 : f32 = x_1431;
        u_xlat34 = x_1438;
        let x_1441 : bool = u_xlatb22.x;
        if (x_1441) {
          let x_1446 : f32 = u_xlat11.x;
          x_1442 = x_1446;
        } else {
          let x_1448 : f32 = u_xlat34;
          x_1442 = x_1448;
        }
        let x_1449 : f32 = x_1442;
        u_xlat22 = x_1449;
        let x_1450 : i32 = u_xlati17;
        let x_1452 : f32 = x_250.x_AdditionalShadowParams[x_1450].w;
        u_xlat34 = trunc(x_1452);
        let x_1454 : f32 = u_xlat22;
        let x_1455 : f32 = u_xlat34;
        u_xlat22 = (x_1454 + x_1455);
        let x_1457 : f32 = u_xlat22;
        u_xlati10 = i32(x_1457);
      }
      let x_1459 : i32 = u_xlati10;
      u_xlati10 = (x_1459 << bitcast<u32>(2i));
      let x_1461 : vec3<f32> = vs_INTERP8;
      let x_1464 : i32 = u_xlati10;
      let x_1467 : i32 = u_xlati10;
      let x_1471 : vec4<f32> = x_250.x_AdditionalLightsWorldToShadow[((x_1464 + 1i) / 4i)][((x_1467 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1461.y, x_1461.y, x_1461.y, x_1461.y) * x_1471);
      let x_1473 : i32 = u_xlati10;
      let x_1475 : i32 = u_xlati10;
      let x_1478 : vec4<f32> = x_250.x_AdditionalLightsWorldToShadow[(x_1473 / 4i)][(x_1475 % 4i)];
      let x_1479 : vec3<f32> = vs_INTERP8;
      let x_1482 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1478 * vec4<f32>(x_1479.x, x_1479.x, x_1479.x, x_1479.x)) + x_1482);
      let x_1484 : i32 = u_xlati10;
      let x_1487 : i32 = u_xlati10;
      let x_1491 : vec4<f32> = x_250.x_AdditionalLightsWorldToShadow[((x_1484 + 2i) / 4i)][((x_1487 + 2i) % 4i)];
      let x_1492 : vec3<f32> = vs_INTERP8;
      let x_1495 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1491 * vec4<f32>(x_1492.z, x_1492.z, x_1492.z, x_1492.z)) + x_1495);
      let x_1497 : vec4<f32> = u_xlat11;
      let x_1498 : i32 = u_xlati10;
      let x_1501 : i32 = u_xlati10;
      let x_1505 : vec4<f32> = x_250.x_AdditionalLightsWorldToShadow[((x_1498 + 3i) / 4i)][((x_1501 + 3i) % 4i)];
      u_xlat10 = (x_1497 + x_1505);
      let x_1507 : vec4<f32> = u_xlat10;
      let x_1509 : vec4<f32> = u_xlat10;
      let x_1511 : vec3<f32> = (vec3<f32>(x_1507.x, x_1507.y, x_1507.z) / vec3<f32>(x_1509.w, x_1509.w, x_1509.w));
      let x_1512 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1511.x, x_1511.y, x_1511.z, x_1512.w);
      let x_1515 : vec4<f32> = u_xlat10;
      let x_1516 : vec2<f32> = vec2<f32>(x_1515.x, x_1515.y);
      let x_1518 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
      let x_1526 : vec3<f32> = txVec1;
      let x_1528 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1526.xy, x_1526.z);
      u_xlat10.x = x_1528;
      let x_1530 : i32 = u_xlati17;
      let x_1532 : f32 = x_250.x_AdditionalShadowParams[x_1530].x;
      u_xlat22 = (1.0f + -(x_1532));
      let x_1536 : f32 = u_xlat10.x;
      let x_1537 : i32 = u_xlati17;
      let x_1539 : f32 = x_250.x_AdditionalShadowParams[x_1537].x;
      let x_1541 : f32 = u_xlat22;
      u_xlat10.x = ((x_1536 * x_1539) + x_1541);
      let x_1545 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1545);
      let x_1550 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1550 >= 1.0f);
      let x_1552 : bool = u_xlatb34;
      let x_1554 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1552 | x_1554);
      let x_1558 : bool = u_xlatb22.x;
      if (x_1558) {
        x_1559 = 1.0f;
      } else {
        let x_1564 : f32 = u_xlat10.x;
        x_1559 = x_1564;
      }
      let x_1565 : f32 = x_1559;
      u_xlat10.x = x_1565;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1570 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1570) + 1.0f);
    let x_1573 : f32 = u_xlat40;
    let x_1574 : f32 = u_xlat22;
    let x_1577 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1573 * x_1574) + x_1577);
    let x_1580 : f32 = u_xlat43;
    let x_1582 : f32 = u_xlat10.x;
    u_xlat43 = (x_1580 * x_1582);
    let x_1584 : vec3<f32> = u_xlat14;
    let x_1585 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(x_1584, x_1585);
    let x_1589 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1589, 0.0f, 1.0f);
    let x_1592 : f32 = u_xlat43;
    let x_1594 : f32 = u_xlat10.x;
    u_xlat43 = (x_1592 * x_1594);
    let x_1596 : f32 = u_xlat43;
    let x_1598 : i32 = u_xlati17;
    let x_1600 : vec4<f32> = x_1286.x_AdditionalLightsColor[x_1598];
    let x_1602 : vec3<f32> = (vec3<f32>(x_1596, x_1596, x_1596) * vec3<f32>(x_1600.x, x_1600.y, x_1600.z));
    let x_1603 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1602.x, x_1602.y, x_1602.z, x_1603.w);
    let x_1605 : vec3<f32> = u_xlat20;
    let x_1606 : vec3<f32> = u_xlat9;
    let x_1609 : vec3<f32> = u_xlat1;
    u_xlat20 = ((x_1605 * vec3<f32>(x_1606.x, x_1606.x, x_1606.x)) + x_1609);
    let x_1611 : vec3<f32> = u_xlat20;
    let x_1612 : vec3<f32> = u_xlat20;
    u_xlat17.x = dot(x_1611, x_1612);
    let x_1616 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_1616, 1.17549435e-38f);
    let x_1620 : f32 = u_xlat17.x;
    u_xlat17.x = inverseSqrt(x_1620);
    let x_1623 : vec3<f32> = u_xlat17;
    let x_1625 : vec3<f32> = u_xlat20;
    u_xlat20 = (vec3<f32>(x_1623.x, x_1623.x, x_1623.x) * x_1625);
    let x_1627 : vec3<f32> = u_xlat14;
    let x_1628 : vec3<f32> = u_xlat20;
    u_xlat17.x = dot(x_1627, x_1628);
    let x_1632 : f32 = u_xlat17.x;
    u_xlat17.x = clamp(x_1632, 0.0f, 1.0f);
    let x_1635 : vec3<f32> = u_xlat21;
    let x_1636 : vec3<f32> = u_xlat20;
    u_xlat43 = dot(x_1635, x_1636);
    let x_1638 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1638, 0.0f, 1.0f);
    let x_1641 : f32 = u_xlat17.x;
    let x_1643 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1641 * x_1643);
    let x_1647 : f32 = u_xlat17.x;
    let x_1649 : f32 = u_xlat8.x;
    u_xlat17.x = ((x_1647 * x_1649) + 1.00001001358032226562f);
    let x_1653 : f32 = u_xlat43;
    let x_1654 : f32 = u_xlat43;
    u_xlat43 = (x_1653 * x_1654);
    let x_1657 : f32 = u_xlat17.x;
    let x_1659 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1657 * x_1659);
    let x_1662 : f32 = u_xlat43;
    u_xlat43 = max(x_1662, 0.10000000149011611938f);
    let x_1665 : f32 = u_xlat17.x;
    let x_1666 : f32 = u_xlat43;
    u_xlat17.x = (x_1665 * x_1666);
    let x_1669 : f32 = u_xlat41;
    let x_1671 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1669 * x_1671);
    let x_1674 : f32 = u_xlat29;
    let x_1676 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1674 / x_1676);
    let x_1679 : vec3<f32> = u_xlat17;
    let x_1682 : vec4<f32> = u_xlat4;
    u_xlat20 = ((vec3<f32>(x_1679.x, x_1679.x, x_1679.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1682.x, x_1682.y, x_1682.z));
    let x_1685 : vec3<f32> = u_xlat20;
    let x_1686 : vec4<f32> = u_xlat10;
    let x_1689 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1685 * vec3<f32>(x_1686.x, x_1686.y, x_1686.z)) + x_1689);

    continuing {
      let x_1691 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1691 + bitcast<u32>(1i));
    }
  }
  let x_1693 : vec3<f32> = u_xlat15;
  let x_1694 : vec4<f32> = u_xlat6;
  let x_1697 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_1693 * vec3<f32>(x_1694.x, x_1694.x, x_1694.x)) + vec3<f32>(x_1697.x, x_1697.y, x_1697.z));
  let x_1700 : vec3<f32> = u_xlat18;
  let x_1701 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1700 + x_1701);
  let x_1703 : vec4<f32> = vs_INTERP6;
  let x_1705 : vec3<f32> = u_xlat0;
  let x_1707 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1703.w, x_1703.w, x_1703.w) * x_1705) + x_1707);
  let x_1710 : f32 = u_xlat3.x;
  let x_1712 : f32 = u_xlat3.x;
  u_xlat36 = (x_1710 * -(x_1712));
  let x_1715 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1715);
  let x_1717 : vec3<f32> = u_xlat0;
  let x_1720 : vec4<f32> = x_75.unity_FogColor;
  u_xlat0 = (x_1717 + -(vec3<f32>(x_1720.x, x_1720.y, x_1720.z)));
  let x_1726 : f32 = u_xlat36;
  let x_1728 : vec3<f32> = u_xlat0;
  let x_1731 : vec4<f32> = x_75.unity_FogColor;
  let x_1733 : vec3<f32> = ((vec3<f32>(x_1726, x_1726, x_1726) * x_1728) + vec3<f32>(x_1731.x, x_1731.y, x_1731.z));
  let x_1734 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1733.x, x_1733.y, x_1733.z, x_1734.w);
  let x_1736 : bool = u_xlatb2;
  let x_1737 : f32 = u_xlat37;
  SV_Target0.w = select(1.0f, x_1737, x_1736);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


