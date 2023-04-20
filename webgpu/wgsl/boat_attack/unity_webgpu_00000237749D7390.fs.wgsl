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

@group(1) @binding(3) var<uniform> x_251 : LightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb38 : bool;

var<private> u_xlatb40 : bool;

var<private> u_xlat12 : vec3<f32>;

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

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatu37 : u32;

var<private> u_xlatu17 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlati17 : i32;

@group(1) @binding(1) var<uniform> x_1187 : AdditionalLights;

var<private> u_xlat43 : f32;

var<private> u_xlat9 : f32;

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
  var x_367 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_502 : f32;
  var x_533 : f32;
  var x_580 : f32;
  var txVec1 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1334 : f32;
  var x_1345 : f32;
  var txVec2 : vec3<f32>;
  var x_1462 : f32;
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
  let x_253 : vec4<f32> = x_251.x_MainLightWorldToShadow[0i][1i];
  let x_255 : vec3<f32> = (vec3<f32>(x_242.y, x_242.y, x_242.y) * vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : vec4<f32> = x_251.x_MainLightWorldToShadow[0i][0i];
  let x_261 : vec3<f32> = vs_INTERP8;
  let x_264 : vec4<f32> = u_xlat6;
  let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.x, x_261.x, x_261.x)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : vec4<f32> = x_251.x_MainLightWorldToShadow[0i][2i];
  let x_272 : vec3<f32> = vs_INTERP8;
  let x_275 : vec4<f32> = u_xlat6;
  let x_277 : vec3<f32> = ((vec3<f32>(x_270.x, x_270.y, x_270.z) * vec3<f32>(x_272.z, x_272.z, x_272.z)) + vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec4<f32> = u_xlat6;
  let x_284 : vec4<f32> = x_251.x_MainLightWorldToShadow[0i][3i];
  let x_286 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) + vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_287 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_290 : vec4<f32> = u_xlat6;
  let x_291 : vec2<f32> = vec2<f32>(x_290.x, x_290.y);
  let x_293 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_291.x, x_291.y, x_293);
  let x_305 : vec3<f32> = txVec0;
  let x_307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_305.xy, x_305.z);
  u_xlat36 = x_307;
  let x_309 : f32 = x_251.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_309) + 1.0f);
  let x_312 : f32 = u_xlat36;
  let x_314 : f32 = x_251.x_MainLightShadowParams.x;
  let x_316 : f32 = u_xlat37;
  u_xlat36 = ((x_312 * x_314) + x_316);
  let x_320 : f32 = u_xlat6.z;
  u_xlatb38 = (0.0f >= x_320);
  let x_324 : f32 = u_xlat6.z;
  u_xlatb40 = (x_324 >= 1.0f);
  let x_326 : bool = u_xlatb38;
  let x_327 : bool = u_xlatb40;
  u_xlatb38 = (x_326 | x_327);
  let x_329 : bool = u_xlatb38;
  let x_330 : f32 = u_xlat36;
  u_xlat36 = select(x_330, 1.0f, x_329);
  let x_332 : vec3<f32> = u_xlat0;
  let x_334 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_332, -(vec3<f32>(x_334.x, x_334.y, x_334.z)));
  let x_340 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_340, 0.0f, 1.0f);
  let x_344 : f32 = u_xlat36;
  let x_347 : vec4<f32> = x_75.x_MainLightColor;
  u_xlat12 = (vec3<f32>(x_344, x_344, x_344) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec3<f32> = u_xlat12;
  let x_351 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_350 * vec3<f32>(x_351.x, x_351.x, x_351.x));
  let x_354 : vec3<f32> = u_xlat0;
  let x_355 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_354 * vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_359 : f32 = x_132.unity_LODFade.x;
  u_xlatb36 = (x_359 < 0.0f);
  let x_363 : f32 = x_132.unity_LODFade.x;
  u_xlat38 = (x_363 + 1.0f);
  let x_365 : bool = u_xlatb36;
  if (x_365) {
    let x_370 : f32 = u_xlat38;
    x_367 = x_370;
  } else {
    let x_373 : f32 = x_132.unity_LODFade.x;
    x_367 = x_373;
  }
  let x_374 : f32 = x_367;
  u_xlat36 = x_374;
  let x_376 : f32 = u_xlat36;
  u_xlatb38 = (0.5f >= x_376);
  let x_378 : vec3<f32> = u_xlat2;
  let x_382 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat2 = (abs(x_378) * vec3<f32>(x_382.x, x_382.y, x_382.x));
  let x_388 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_388);
  let x_393 : u32 = u_xlatu2.z;
  u_xlatu26 = (x_393 * 1025u);
  let x_397 : u32 = u_xlatu26;
  u_xlatu3 = (x_397 >> 6u);
  let x_402 : u32 = u_xlatu26;
  let x_403 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_402 ^ x_403));
  let x_406 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_406) * 9u);
  let x_410 : u32 = u_xlatu26;
  u_xlatu3 = (x_410 >> 11u);
  let x_413 : u32 = u_xlatu26;
  let x_414 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_413 ^ x_414));
  let x_417 : i32 = u_xlati26;
  u_xlati26 = (x_417 * 32769i);
  let x_421 : i32 = u_xlati26;
  let x_424 : u32 = u_xlatu2.y;
  u_xlati14 = bitcast<i32>((bitcast<u32>(x_421) ^ x_424));
  let x_428 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_428) * 1025u);
  let x_431 : u32 = u_xlatu14;
  u_xlatu26 = (x_431 >> 6u);
  let x_433 : u32 = u_xlatu26;
  let x_434 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_433 ^ x_434));
  let x_437 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_437) * 9u);
  let x_440 : u32 = u_xlatu14;
  u_xlatu26 = (x_440 >> 11u);
  let x_442 : u32 = u_xlatu26;
  let x_443 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_442 ^ x_443));
  let x_446 : i32 = u_xlati14;
  u_xlati14 = (x_446 * 32769i);
  let x_449 : i32 = u_xlati14;
  let x_452 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_449) ^ x_452));
  let x_455 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_455) * 1025u);
  let x_460 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_460 >> 6u);
  let x_462 : u32 = u_xlatu14;
  let x_464 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_462 ^ x_464));
  let x_467 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_467) * 9u);
  let x_472 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_472 >> 11u);
  let x_474 : u32 = u_xlatu14;
  let x_476 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_474 ^ x_476));
  let x_479 : i32 = u_xlati2;
  u_xlati2 = (x_479 * 32769i);
  param = 1065353216i;
  let x_485 : i32 = u_xlati2;
  param_1 = x_485;
  param_2 = 0i;
  param_3 = 23i;
  let x_488 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_488);
  let x_492 : f32 = u_xlat2.x;
  u_xlat2.x = (x_492 + -1.0f);
  let x_497 : f32 = u_xlat2.x;
  u_xlat14.x = (-(x_497) + 1.0f);
  let x_501 : bool = u_xlatb38;
  if (x_501) {
    let x_506 : f32 = u_xlat2.x;
    x_502 = x_506;
  } else {
    let x_509 : f32 = u_xlat14.x;
    x_502 = x_509;
  }
  let x_510 : f32 = x_502;
  u_xlat2.x = x_510;
  let x_512 : f32 = u_xlat36;
  let x_515 : f32 = u_xlat2.x;
  u_xlat36 = ((x_512 * 2.0f) + -(x_515));
  let x_518 : f32 = u_xlat36;
  let x_520 : f32 = u_xlat3.w;
  u_xlat2.x = (x_518 * x_520);
  let x_527 : f32 = u_xlat2.x;
  u_xlatb14.x = (x_527 >= 0.40000000596046447754f);
  let x_532 : bool = u_xlatb14.x;
  if (x_532) {
    let x_537 : f32 = u_xlat2.x;
    x_533 = x_537;
  } else {
    x_533 = 0.0f;
  }
  let x_539 : f32 = x_533;
  u_xlat14.x = x_539;
  let x_542 : f32 = u_xlat3.w;
  let x_543 : f32 = u_xlat36;
  u_xlat36 = ((x_542 * x_543) + -0.40000000596046447754f);
  let x_549 : f32 = u_xlat2.x;
  u_xlat26 = dpdxCoarse(x_549);
  let x_552 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_552);
  let x_556 : f32 = u_xlat2.x;
  let x_558 : f32 = u_xlat26;
  u_xlat2.x = (abs(x_556) + abs(x_558));
  let x_563 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_563, 0.00009999999747378752f);
  let x_567 : f32 = u_xlat36;
  let x_569 : f32 = u_xlat2.x;
  u_xlat36 = (x_567 / x_569);
  let x_571 : f32 = u_xlat36;
  u_xlat36 = (x_571 + 0.5f);
  let x_573 : f32 = u_xlat36;
  u_xlat36 = clamp(x_573, 0.0f, 1.0f);
  let x_577 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_577 == 0.0f));
  let x_579 : bool = u_xlatb2;
  if (x_579) {
    let x_583 : f32 = u_xlat36;
    x_580 = x_583;
  } else {
    let x_586 : f32 = u_xlat14.x;
    x_580 = x_586;
  }
  let x_587 : f32 = x_580;
  u_xlat36 = x_587;
  let x_588 : f32 = u_xlat36;
  u_xlat14.x = (x_588 + -0.00009999999747378752f);
  let x_593 : f32 = u_xlat14.x;
  u_xlatb14.x = (x_593 < 0.0f);
  let x_597 : bool = u_xlatb14.x;
  if (((select(0i, 1i, x_597) * -1i) != 0i)) {
    discard;
  }
  let x_607 : f32 = vs_INTERP4.w;
  u_xlatb14.x = (0.0f < x_607);
  let x_611 : f32 = x_132.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_611 >= 0.0f);
  let x_615 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_615);
  let x_619 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_619);
  let x_623 : f32 = u_xlat14.y;
  let x_625 : f32 = u_xlat14.x;
  u_xlat14.x = (x_623 * x_625);
  let x_628 : vec4<f32> = vs_INTERP4;
  let x_630 : vec3<f32> = vs_INTERP9;
  let x_632 : vec3<f32> = (vec3<f32>(x_628.y, x_628.z, x_628.x) * vec3<f32>(x_630.z, x_630.x, x_630.y));
  let x_633 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec3<f32> = vs_INTERP9;
  let x_637 : vec4<f32> = vs_INTERP4;
  let x_640 : vec4<f32> = u_xlat3;
  let x_643 : vec3<f32> = ((vec3<f32>(x_635.y, x_635.z, x_635.x) * vec3<f32>(x_637.z, x_637.x, x_637.y)) + -(vec3<f32>(x_640.x, x_640.y, x_640.z)));
  let x_644 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec3<f32> = u_xlat14;
  let x_648 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec3<f32>(x_646.x, x_646.x, x_646.x) * vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec3<f32> = u_xlat14;
  let x_652 : vec3<f32> = u_xlat17;
  u_xlat14 = (x_651 * vec3<f32>(x_652.y, x_652.y, x_652.y));
  let x_655 : vec3<f32> = u_xlat17;
  let x_657 : vec4<f32> = vs_INTERP4;
  let x_660 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_655.x, x_655.x, x_655.x) * vec3<f32>(x_657.x, x_657.y, x_657.z)) + x_660);
  let x_662 : vec3<f32> = u_xlat17;
  let x_664 : vec3<f32> = vs_INTERP9;
  let x_666 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_662.z, x_662.z, x_662.z) * x_664) + x_666);
  let x_668 : vec3<f32> = u_xlat14;
  let x_669 : vec3<f32> = u_xlat14;
  u_xlat3.x = dot(x_668, x_669);
  let x_673 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_673);
  let x_676 : vec3<f32> = u_xlat14;
  let x_677 : vec4<f32> = u_xlat3;
  u_xlat14 = (x_676 * vec3<f32>(x_677.x, x_677.x, x_677.x));
  let x_681 : f32 = vs_INTERP8.y;
  let x_683 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat3.x = (x_681 * x_683);
  let x_687 : f32 = x_75.unity_MatrixV[0i].z;
  let x_689 : f32 = vs_INTERP8.x;
  let x_692 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_687 * x_689) + x_692);
  let x_696 : f32 = x_75.unity_MatrixV[2i].z;
  let x_698 : f32 = vs_INTERP8.z;
  let x_701 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_696 * x_698) + x_701);
  let x_705 : f32 = u_xlat3.x;
  let x_707 : f32 = x_75.unity_MatrixV[3i].z;
  u_xlat3.x = (x_705 + x_707);
  let x_711 : f32 = u_xlat3.x;
  let x_715 : f32 = x_75.x_ProjectionParams.y;
  u_xlat3.x = (-(x_711) + -(x_715));
  let x_720 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_720, 0.0f);
  let x_724 : f32 = u_xlat3.x;
  let x_727 : f32 = x_75.unity_FogParams.x;
  u_xlat3.x = (x_724 * x_727);
  let x_737 : vec2<f32> = vs_INTERP0;
  let x_739 : f32 = x_75.x_GlobalMipBias.x;
  let x_740 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_737, x_739);
  u_xlat6 = x_740;
  let x_746 : vec2<f32> = vs_INTERP0;
  let x_748 : f32 = x_75.x_GlobalMipBias.x;
  let x_749 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_746, x_748);
  u_xlat15 = vec3<f32>(x_749.x, x_749.y, x_749.z);
  let x_751 : vec4<f32> = u_xlat6;
  u_xlat17 = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_757 : vec3<f32> = u_xlat14;
  let x_758 : vec3<f32> = u_xlat17;
  u_xlat40 = dot(x_757, x_758);
  let x_760 : f32 = u_xlat40;
  u_xlat40 = (x_760 + 0.5f);
  let x_762 : vec3<f32> = u_xlat15;
  let x_763 : f32 = u_xlat40;
  u_xlat15 = (x_762 * vec3<f32>(x_763, x_763, x_763));
  let x_767 : f32 = u_xlat6.w;
  u_xlat40 = max(x_767, 0.00009999999747378752f);
  let x_769 : vec3<f32> = u_xlat15;
  let x_770 : f32 = u_xlat40;
  u_xlat15 = (x_769 / vec3<f32>(x_770, x_770, x_770));
  let x_774 : f32 = u_xlat5.x;
  u_xlat5.x = x_774;
  let x_777 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_777, 0.0f, 1.0f);
  let x_780 : f32 = u_xlat36;
  u_xlat36 = x_780;
  let x_781 : f32 = u_xlat36;
  u_xlat36 = clamp(x_781, 0.0f, 1.0f);
  let x_784 : f32 = u_xlat5.x;
  u_xlat40 = (-(x_784) + 1.0f);
  let x_787 : f32 = u_xlat40;
  let x_788 : f32 = u_xlat40;
  u_xlat17.x = (x_787 * x_788);
  let x_792 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_792, 0.0078125f);
  let x_798 : f32 = u_xlat17.x;
  let x_800 : f32 = u_xlat17.x;
  u_xlat29 = (x_798 * x_800);
  let x_803 : f32 = u_xlat5.x;
  u_xlat5.x = (x_803 + 0.04000002145767211914f);
  let x_808 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_808, 1.0f);
  let x_813 : f32 = u_xlat17.x;
  u_xlat41 = ((x_813 * 4.0f) + 2.0f);
  let x_818 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_818, 1.0f);
  let x_823 : vec4<f32> = vs_INTERP3;
  let x_824 : vec2<f32> = vec2<f32>(x_823.x, x_823.y);
  let x_826 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_824.x, x_824.y, x_826);
  let x_834 : vec3<f32> = txVec1;
  let x_836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_834.xy, x_834.z);
  u_xlat18.x = x_836;
  let x_839 : f32 = u_xlat18.x;
  let x_841 : f32 = x_251.x_MainLightShadowParams.x;
  let x_843 : f32 = u_xlat37;
  u_xlat37 = ((x_839 * x_841) + x_843);
  let x_847 : f32 = vs_INTERP3.z;
  u_xlatb18 = (0.0f >= x_847);
  let x_851 : f32 = vs_INTERP3.z;
  u_xlatb30 = (x_851 >= 1.0f);
  let x_853 : bool = u_xlatb30;
  let x_854 : bool = u_xlatb18;
  u_xlatb18 = (x_853 | x_854);
  let x_856 : bool = u_xlatb18;
  let x_857 : f32 = u_xlat37;
  u_xlat37 = select(x_857, 1.0f, x_856);
  let x_859 : vec3<f32> = vs_INTERP8;
  let x_861 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat18 = (x_859 + -(x_861));
  let x_864 : vec3<f32> = u_xlat18;
  let x_865 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_864, x_865);
  let x_870 : f32 = u_xlat18.x;
  let x_872 : f32 = x_251.x_MainLightShadowParams.z;
  let x_875 : f32 = x_251.x_MainLightShadowParams.w;
  u_xlat30 = ((x_870 * x_872) + x_875);
  let x_877 : f32 = u_xlat30;
  u_xlat30 = clamp(x_877, 0.0f, 1.0f);
  let x_880 : f32 = u_xlat37;
  u_xlat42 = (-(x_880) + 1.0f);
  let x_883 : f32 = u_xlat30;
  let x_884 : f32 = u_xlat42;
  let x_886 : f32 = u_xlat37;
  u_xlat37 = ((x_883 * x_884) + x_886);
  let x_888 : vec3<f32> = u_xlat1;
  let x_890 : vec3<f32> = u_xlat14;
  u_xlat30 = dot(-(x_888), x_890);
  let x_892 : f32 = u_xlat30;
  let x_893 : f32 = u_xlat30;
  u_xlat30 = (x_892 + x_893);
  let x_896 : vec3<f32> = u_xlat14;
  let x_897 : f32 = u_xlat30;
  let x_901 : vec3<f32> = u_xlat1;
  let x_903 : vec3<f32> = ((x_896 * -(vec3<f32>(x_897, x_897, x_897))) + -(x_901));
  let x_904 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec3<f32> = u_xlat14;
  let x_907 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_906, x_907);
  let x_909 : f32 = u_xlat30;
  u_xlat30 = clamp(x_909, 0.0f, 1.0f);
  let x_911 : f32 = u_xlat30;
  u_xlat30 = (-(x_911) + 1.0f);
  let x_914 : f32 = u_xlat30;
  let x_915 : f32 = u_xlat30;
  u_xlat30 = (x_914 * x_915);
  let x_917 : f32 = u_xlat30;
  let x_918 : f32 = u_xlat30;
  u_xlat30 = (x_917 * x_918);
  let x_920 : f32 = u_xlat40;
  u_xlat42 = ((-(x_920) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_926 : f32 = u_xlat40;
  let x_927 : f32 = u_xlat42;
  u_xlat4.w = (x_926 * x_927);
  let x_930 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_930 * vec4<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f, 6.0f));
  let x_943 : vec4<f32> = u_xlat7;
  let x_946 : f32 = u_xlat4.w;
  let x_947 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_943.x, x_943.y, x_943.z), x_946);
  u_xlat7 = x_947;
  let x_949 : f32 = u_xlat7.w;
  u_xlat40 = (x_949 + -1.0f);
  let x_952 : f32 = x_132.unity_SpecCube0_HDR.w;
  let x_953 : f32 = u_xlat40;
  u_xlat40 = ((x_952 * x_953) + 1.0f);
  let x_956 : f32 = u_xlat40;
  u_xlat40 = max(x_956, 0.0f);
  let x_958 : f32 = u_xlat40;
  u_xlat40 = log2(x_958);
  let x_960 : f32 = u_xlat40;
  let x_962 : f32 = x_132.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_960 * x_962);
  let x_964 : f32 = u_xlat40;
  u_xlat40 = exp2(x_964);
  let x_966 : f32 = u_xlat40;
  let x_968 : f32 = x_132.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_966 * x_968);
  let x_970 : vec4<f32> = u_xlat7;
  let x_972 : f32 = u_xlat40;
  let x_974 : vec3<f32> = (vec3<f32>(x_970.x, x_970.y, x_970.z) * vec3<f32>(x_972, x_972, x_972));
  let x_975 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_979 : vec3<f32> = u_xlat17;
  let x_981 : vec3<f32> = u_xlat17;
  u_xlat8 = ((vec2<f32>(x_979.x, x_979.x) * vec2<f32>(x_981.x, x_981.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_987 : f32 = u_xlat8.y;
  u_xlat40 = (1.0f / x_987);
  let x_990 : f32 = u_xlat5.x;
  u_xlat5.x = (x_990 + -0.03999999910593032837f);
  let x_994 : f32 = u_xlat30;
  let x_996 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_994 * x_996) + 0.03999999910593032837f);
  let x_1001 : f32 = u_xlat40;
  let x_1003 : f32 = u_xlat5.x;
  u_xlat40 = (x_1001 * x_1003);
  let x_1005 : f32 = u_xlat40;
  let x_1007 : vec4<f32> = u_xlat7;
  let x_1009 : vec3<f32> = (vec3<f32>(x_1005, x_1005, x_1005) * vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1010 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
  let x_1012 : vec3<f32> = u_xlat15;
  let x_1013 : vec4<f32> = u_xlat4;
  let x_1016 : vec4<f32> = u_xlat7;
  u_xlat15 = ((x_1012 * vec3<f32>(x_1013.x, x_1013.y, x_1013.z)) + vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : f32 = u_xlat37;
  let x_1021 : f32 = x_132.unity_LightData.z;
  u_xlat37 = (x_1019 * x_1021);
  let x_1023 : vec3<f32> = u_xlat14;
  let x_1025 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat40 = dot(x_1023, vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1028, 0.0f, 1.0f);
  let x_1030 : f32 = u_xlat37;
  let x_1031 : f32 = u_xlat40;
  u_xlat37 = (x_1030 * x_1031);
  let x_1033 : f32 = u_xlat37;
  let x_1036 : vec4<f32> = x_75.x_MainLightColor;
  let x_1038 : vec3<f32> = (vec3<f32>(x_1033, x_1033, x_1033) * vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
  let x_1039 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  let x_1042 : vec3<f32> = u_xlat1;
  let x_1044 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat20 = (x_1042 + vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : vec3<f32> = u_xlat20;
  let x_1048 : vec3<f32> = u_xlat20;
  u_xlat37 = dot(x_1047, x_1048);
  let x_1050 : f32 = u_xlat37;
  u_xlat37 = max(x_1050, 1.17549435e-38f);
  let x_1053 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_1053);
  let x_1055 : f32 = u_xlat37;
  let x_1057 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1055, x_1055, x_1055) * x_1057);
  let x_1059 : vec3<f32> = u_xlat14;
  let x_1060 : vec3<f32> = u_xlat20;
  u_xlat37 = dot(x_1059, x_1060);
  let x_1062 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1062, 0.0f, 1.0f);
  let x_1065 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1067 : vec3<f32> = u_xlat20;
  u_xlat40 = dot(vec3<f32>(x_1065.x, x_1065.y, x_1065.z), x_1067);
  let x_1069 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1069, 0.0f, 1.0f);
  let x_1071 : f32 = u_xlat37;
  let x_1072 : f32 = u_xlat37;
  u_xlat37 = (x_1071 * x_1072);
  let x_1074 : f32 = u_xlat37;
  let x_1076 : f32 = u_xlat8.x;
  u_xlat37 = ((x_1074 * x_1076) + 1.00001001358032226562f);
  let x_1080 : f32 = u_xlat40;
  let x_1081 : f32 = u_xlat40;
  u_xlat40 = (x_1080 * x_1081);
  let x_1083 : f32 = u_xlat37;
  let x_1084 : f32 = u_xlat37;
  u_xlat37 = (x_1083 * x_1084);
  let x_1086 : f32 = u_xlat40;
  u_xlat40 = max(x_1086, 0.10000000149011611938f);
  let x_1089 : f32 = u_xlat37;
  let x_1090 : f32 = u_xlat40;
  u_xlat37 = (x_1089 * x_1090);
  let x_1092 : f32 = u_xlat41;
  let x_1093 : f32 = u_xlat37;
  u_xlat37 = (x_1092 * x_1093);
  let x_1095 : f32 = u_xlat29;
  let x_1096 : f32 = u_xlat37;
  u_xlat37 = (x_1095 / x_1096);
  let x_1098 : f32 = u_xlat37;
  let x_1102 : vec4<f32> = u_xlat4;
  u_xlat20 = ((vec3<f32>(x_1098, x_1098, x_1098) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
  let x_1105 : vec4<f32> = u_xlat7;
  let x_1107 : vec3<f32> = u_xlat20;
  let x_1108 : vec3<f32> = (vec3<f32>(x_1105.x, x_1105.y, x_1105.z) * x_1107);
  let x_1109 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1113 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_1115 : f32 = x_132.unity_LightData.y;
  u_xlat37 = min(x_1113, x_1115);
  let x_1118 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_1118));
  let x_1122 : f32 = u_xlat18.x;
  let x_1125 : f32 = x_251.x_AdditionalShadowFadeParams.x;
  let x_1128 : f32 = x_251.x_AdditionalShadowFadeParams.y;
  u_xlat40 = ((x_1122 * x_1125) + x_1128);
  let x_1130 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1130, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1141 : u32 = u_xlatu_loop_1;
    let x_1142 : u32 = u_xlatu37;
    if ((x_1141 < x_1142)) {
    } else {
      break;
    }
    let x_1145 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_1145 >> 2u);
    let x_1148 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_1148 & 3u));
    let x_1151 : u32 = u_xlatu17;
    let x_1154 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_1151)];
    let x_1164 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1169 : vec4<u32> = indexable[x_1164];
    u_xlat17.x = dot(x_1154, bitcast<vec4<f32>>(x_1169));
    let x_1175 : f32 = u_xlat17.x;
    u_xlati17 = i32(x_1175);
    let x_1177 : vec3<f32> = vs_INTERP8;
    let x_1188 : i32 = u_xlati17;
    let x_1190 : vec4<f32> = x_1187.x_AdditionalLightsPosition[x_1188];
    let x_1193 : i32 = u_xlati17;
    let x_1195 : vec4<f32> = x_1187.x_AdditionalLightsPosition[x_1193];
    u_xlat20 = ((-(x_1177) * vec3<f32>(x_1190.w, x_1190.w, x_1190.w)) + vec3<f32>(x_1195.x, x_1195.y, x_1195.z));
    let x_1199 : vec3<f32> = u_xlat20;
    let x_1200 : vec3<f32> = u_xlat20;
    u_xlat43 = dot(x_1199, x_1200);
    let x_1202 : f32 = u_xlat43;
    u_xlat43 = max(x_1202, 0.00006103515625f);
    let x_1206 : f32 = u_xlat43;
    u_xlat9 = inverseSqrt(x_1206);
    let x_1209 : vec3<f32> = u_xlat20;
    let x_1210 : f32 = u_xlat9;
    u_xlat21 = (x_1209 * vec3<f32>(x_1210, x_1210, x_1210));
    let x_1214 : f32 = u_xlat43;
    u_xlat10.x = (1.0f / x_1214);
    let x_1217 : f32 = u_xlat43;
    let x_1218 : i32 = u_xlati17;
    let x_1220 : f32 = x_1187.x_AdditionalLightsAttenuation[x_1218].x;
    u_xlat43 = (x_1217 * x_1220);
    let x_1222 : f32 = u_xlat43;
    let x_1224 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1222) * x_1224) + 1.0f);
    let x_1227 : f32 = u_xlat43;
    u_xlat43 = max(x_1227, 0.0f);
    let x_1229 : f32 = u_xlat43;
    let x_1230 : f32 = u_xlat43;
    u_xlat43 = (x_1229 * x_1230);
    let x_1232 : f32 = u_xlat43;
    let x_1234 : f32 = u_xlat10.x;
    u_xlat43 = (x_1232 * x_1234);
    let x_1236 : i32 = u_xlati17;
    let x_1238 : vec4<f32> = x_1187.x_AdditionalLightsSpotDir[x_1236];
    let x_1240 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1238.x, x_1238.y, x_1238.z), x_1240);
    let x_1244 : f32 = u_xlat10.x;
    let x_1245 : i32 = u_xlati17;
    let x_1247 : f32 = x_1187.x_AdditionalLightsAttenuation[x_1245].z;
    let x_1249 : i32 = u_xlati17;
    let x_1251 : f32 = x_1187.x_AdditionalLightsAttenuation[x_1249].w;
    u_xlat10.x = ((x_1244 * x_1247) + x_1251);
    let x_1255 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1255, 0.0f, 1.0f);
    let x_1259 : f32 = u_xlat10.x;
    let x_1261 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1259 * x_1261);
    let x_1264 : f32 = u_xlat43;
    let x_1266 : f32 = u_xlat10.x;
    u_xlat43 = (x_1264 * x_1266);
    let x_1270 : i32 = u_xlati17;
    let x_1272 : f32 = x_251.x_AdditionalShadowParams[x_1270].w;
    u_xlati10 = i32(x_1272);
    let x_1277 : i32 = u_xlati10;
    u_xlatb22.x = (x_1277 >= 0i);
    let x_1281 : bool = u_xlatb22.x;
    if (x_1281) {
      let x_1285 : i32 = u_xlati17;
      let x_1287 : f32 = x_251.x_AdditionalShadowParams[x_1285].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1287, x_1287, x_1287, x_1287))));
      let x_1294 : bool = u_xlatb22.x;
      if (x_1294) {
        let x_1297 : vec3<f32> = u_xlat21;
        let x_1300 : vec3<f32> = u_xlat21;
        let x_1303 : vec4<bool> = (abs(vec4<f32>(x_1297.z, x_1297.z, x_1297.y, x_1297.y)) >= abs(vec4<f32>(x_1300.x, x_1300.y, x_1300.x, x_1300.x)));
        u_xlatb22 = vec3<bool>(x_1303.x, x_1303.y, x_1303.z);
        let x_1306 : bool = u_xlatb22.y;
        let x_1308 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1306 & x_1308);
        let x_1312 : vec3<f32> = u_xlat21;
        let x_1315 : vec4<bool> = (-(vec4<f32>(x_1312.z, x_1312.y, x_1312.x, x_1312.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1315.x, x_1315.y, x_1315.z);
        let x_1319 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1319);
        let x_1324 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1324);
        let x_1330 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1330);
        let x_1333 : bool = u_xlatb22.z;
        if (x_1333) {
          let x_1338 : f32 = u_xlat11.y;
          x_1334 = x_1338;
        } else {
          let x_1340 : f32 = u_xlat34;
          x_1334 = x_1340;
        }
        let x_1341 : f32 = x_1334;
        u_xlat34 = x_1341;
        let x_1344 : bool = u_xlatb22.x;
        if (x_1344) {
          let x_1349 : f32 = u_xlat11.x;
          x_1345 = x_1349;
        } else {
          let x_1351 : f32 = u_xlat34;
          x_1345 = x_1351;
        }
        let x_1352 : f32 = x_1345;
        u_xlat22 = x_1352;
        let x_1353 : i32 = u_xlati17;
        let x_1355 : f32 = x_251.x_AdditionalShadowParams[x_1353].w;
        u_xlat34 = trunc(x_1355);
        let x_1357 : f32 = u_xlat22;
        let x_1358 : f32 = u_xlat34;
        u_xlat22 = (x_1357 + x_1358);
        let x_1360 : f32 = u_xlat22;
        u_xlati10 = i32(x_1360);
      }
      let x_1362 : i32 = u_xlati10;
      u_xlati10 = (x_1362 << bitcast<u32>(2i));
      let x_1364 : vec3<f32> = vs_INTERP8;
      let x_1367 : i32 = u_xlati10;
      let x_1370 : i32 = u_xlati10;
      let x_1374 : vec4<f32> = x_251.x_AdditionalLightsWorldToShadow[((x_1367 + 1i) / 4i)][((x_1370 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1364.y, x_1364.y, x_1364.y, x_1364.y) * x_1374);
      let x_1376 : i32 = u_xlati10;
      let x_1378 : i32 = u_xlati10;
      let x_1381 : vec4<f32> = x_251.x_AdditionalLightsWorldToShadow[(x_1376 / 4i)][(x_1378 % 4i)];
      let x_1382 : vec3<f32> = vs_INTERP8;
      let x_1385 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1381 * vec4<f32>(x_1382.x, x_1382.x, x_1382.x, x_1382.x)) + x_1385);
      let x_1387 : i32 = u_xlati10;
      let x_1390 : i32 = u_xlati10;
      let x_1394 : vec4<f32> = x_251.x_AdditionalLightsWorldToShadow[((x_1387 + 2i) / 4i)][((x_1390 + 2i) % 4i)];
      let x_1395 : vec3<f32> = vs_INTERP8;
      let x_1398 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1394 * vec4<f32>(x_1395.z, x_1395.z, x_1395.z, x_1395.z)) + x_1398);
      let x_1400 : vec4<f32> = u_xlat11;
      let x_1401 : i32 = u_xlati10;
      let x_1404 : i32 = u_xlati10;
      let x_1408 : vec4<f32> = x_251.x_AdditionalLightsWorldToShadow[((x_1401 + 3i) / 4i)][((x_1404 + 3i) % 4i)];
      u_xlat10 = (x_1400 + x_1408);
      let x_1410 : vec4<f32> = u_xlat10;
      let x_1412 : vec4<f32> = u_xlat10;
      let x_1414 : vec3<f32> = (vec3<f32>(x_1410.x, x_1410.y, x_1410.z) / vec3<f32>(x_1412.w, x_1412.w, x_1412.w));
      let x_1415 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1414.x, x_1414.y, x_1414.z, x_1415.w);
      let x_1418 : vec4<f32> = u_xlat10;
      let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
      let x_1421 : f32 = u_xlat10.z;
      txVec2 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
      let x_1429 : vec3<f32> = txVec2;
      let x_1431 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
      u_xlat10.x = x_1431;
      let x_1433 : i32 = u_xlati17;
      let x_1435 : f32 = x_251.x_AdditionalShadowParams[x_1433].x;
      u_xlat22 = (1.0f + -(x_1435));
      let x_1439 : f32 = u_xlat10.x;
      let x_1440 : i32 = u_xlati17;
      let x_1442 : f32 = x_251.x_AdditionalShadowParams[x_1440].x;
      let x_1444 : f32 = u_xlat22;
      u_xlat10.x = ((x_1439 * x_1442) + x_1444);
      let x_1448 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1448);
      let x_1453 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1453 >= 1.0f);
      let x_1455 : bool = u_xlatb34;
      let x_1457 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1455 | x_1457);
      let x_1461 : bool = u_xlatb22.x;
      if (x_1461) {
        x_1462 = 1.0f;
      } else {
        let x_1467 : f32 = u_xlat10.x;
        x_1462 = x_1467;
      }
      let x_1468 : f32 = x_1462;
      u_xlat10.x = x_1468;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1473 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1473) + 1.0f);
    let x_1476 : f32 = u_xlat40;
    let x_1477 : f32 = u_xlat22;
    let x_1480 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1476 * x_1477) + x_1480);
    let x_1483 : f32 = u_xlat43;
    let x_1485 : f32 = u_xlat10.x;
    u_xlat43 = (x_1483 * x_1485);
    let x_1487 : vec3<f32> = u_xlat14;
    let x_1488 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(x_1487, x_1488);
    let x_1492 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1492, 0.0f, 1.0f);
    let x_1495 : f32 = u_xlat43;
    let x_1497 : f32 = u_xlat10.x;
    u_xlat43 = (x_1495 * x_1497);
    let x_1499 : f32 = u_xlat43;
    let x_1501 : i32 = u_xlati17;
    let x_1503 : vec4<f32> = x_1187.x_AdditionalLightsColor[x_1501];
    let x_1505 : vec3<f32> = (vec3<f32>(x_1499, x_1499, x_1499) * vec3<f32>(x_1503.x, x_1503.y, x_1503.z));
    let x_1506 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1506.w);
    let x_1508 : vec3<f32> = u_xlat20;
    let x_1509 : f32 = u_xlat9;
    let x_1512 : vec3<f32> = u_xlat1;
    u_xlat20 = ((x_1508 * vec3<f32>(x_1509, x_1509, x_1509)) + x_1512);
    let x_1514 : vec3<f32> = u_xlat20;
    let x_1515 : vec3<f32> = u_xlat20;
    u_xlat17.x = dot(x_1514, x_1515);
    let x_1519 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_1519, 1.17549435e-38f);
    let x_1523 : f32 = u_xlat17.x;
    u_xlat17.x = inverseSqrt(x_1523);
    let x_1526 : vec3<f32> = u_xlat17;
    let x_1528 : vec3<f32> = u_xlat20;
    u_xlat20 = (vec3<f32>(x_1526.x, x_1526.x, x_1526.x) * x_1528);
    let x_1530 : vec3<f32> = u_xlat14;
    let x_1531 : vec3<f32> = u_xlat20;
    u_xlat17.x = dot(x_1530, x_1531);
    let x_1535 : f32 = u_xlat17.x;
    u_xlat17.x = clamp(x_1535, 0.0f, 1.0f);
    let x_1538 : vec3<f32> = u_xlat21;
    let x_1539 : vec3<f32> = u_xlat20;
    u_xlat43 = dot(x_1538, x_1539);
    let x_1541 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1541, 0.0f, 1.0f);
    let x_1544 : f32 = u_xlat17.x;
    let x_1546 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1544 * x_1546);
    let x_1550 : f32 = u_xlat17.x;
    let x_1552 : f32 = u_xlat8.x;
    u_xlat17.x = ((x_1550 * x_1552) + 1.00001001358032226562f);
    let x_1556 : f32 = u_xlat43;
    let x_1557 : f32 = u_xlat43;
    u_xlat43 = (x_1556 * x_1557);
    let x_1560 : f32 = u_xlat17.x;
    let x_1562 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1560 * x_1562);
    let x_1565 : f32 = u_xlat43;
    u_xlat43 = max(x_1565, 0.10000000149011611938f);
    let x_1568 : f32 = u_xlat17.x;
    let x_1569 : f32 = u_xlat43;
    u_xlat17.x = (x_1568 * x_1569);
    let x_1572 : f32 = u_xlat41;
    let x_1574 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1572 * x_1574);
    let x_1577 : f32 = u_xlat29;
    let x_1579 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1577 / x_1579);
    let x_1582 : vec3<f32> = u_xlat17;
    let x_1585 : vec4<f32> = u_xlat4;
    u_xlat20 = ((vec3<f32>(x_1582.x, x_1582.x, x_1582.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1585.x, x_1585.y, x_1585.z));
    let x_1588 : vec3<f32> = u_xlat20;
    let x_1589 : vec4<f32> = u_xlat10;
    let x_1592 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1588 * vec3<f32>(x_1589.x, x_1589.y, x_1589.z)) + x_1592);

    continuing {
      let x_1594 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1594 + bitcast<u32>(1i));
    }
  }
  let x_1596 : vec3<f32> = u_xlat15;
  let x_1597 : vec4<f32> = u_xlat6;
  let x_1600 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_1596 * vec3<f32>(x_1597.x, x_1597.x, x_1597.x)) + vec3<f32>(x_1600.x, x_1600.y, x_1600.z));
  let x_1603 : vec3<f32> = u_xlat18;
  let x_1604 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1603 + x_1604);
  let x_1606 : vec4<f32> = vs_INTERP6;
  let x_1608 : vec3<f32> = u_xlat0;
  let x_1610 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1606.w, x_1606.w, x_1606.w) * x_1608) + x_1610);
  let x_1613 : f32 = u_xlat3.x;
  let x_1615 : f32 = u_xlat3.x;
  u_xlat1.x = (x_1613 * -(x_1615));
  let x_1620 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1620);
  let x_1623 : vec3<f32> = u_xlat0;
  let x_1626 : vec4<f32> = x_75.unity_FogColor;
  u_xlat0 = (x_1623 + -(vec3<f32>(x_1626.x, x_1626.y, x_1626.z)));
  let x_1632 : vec3<f32> = u_xlat1;
  let x_1634 : vec3<f32> = u_xlat0;
  let x_1637 : vec4<f32> = x_75.unity_FogColor;
  let x_1639 : vec3<f32> = ((vec3<f32>(x_1632.x, x_1632.x, x_1632.x) * x_1634) + vec3<f32>(x_1637.x, x_1637.y, x_1637.z));
  let x_1640 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1639.x, x_1639.y, x_1639.z, x_1640.w);
  let x_1642 : bool = u_xlatb2;
  let x_1643 : f32 = u_xlat36;
  SV_Target0.w = select(1.0f, x_1643, x_1642);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


