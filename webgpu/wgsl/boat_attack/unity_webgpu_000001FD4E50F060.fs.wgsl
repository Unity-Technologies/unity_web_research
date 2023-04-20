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

@group(1) @binding(3) var<uniform> x_249 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat26 : vec2<f32>;

var<private> u_xlatb2 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu37 : u32;

var<private> u_xlatu43 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlat43 : f32;

var<private> u_xlati43 : i32;

@group(1) @binding(1) var<uniform> x_1230 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : f32;

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
  var x_365 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_500 : f32;
  var x_531 : f32;
  var x_581 : f32;
  var txVec1 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1377 : f32;
  var x_1388 : f32;
  var txVec2 : vec3<f32>;
  var x_1505 : f32;
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
  let x_251 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][1i];
  let x_253 : vec3<f32> = (vec3<f32>(x_240.y, x_240.y, x_240.y) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][0i];
  let x_259 : vec3<f32> = vs_INTERP8;
  let x_262 : vec4<f32> = u_xlat6;
  let x_264 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.x, x_259.x, x_259.x)) + vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_265 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][2i];
  let x_270 : vec3<f32> = vs_INTERP8;
  let x_273 : vec4<f32> = u_xlat6;
  let x_275 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270.z, x_270.z, x_270.z)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat6;
  let x_282 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][3i];
  let x_284 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) + vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_288 : vec4<f32> = u_xlat6;
  let x_289 : vec2<f32> = vec2<f32>(x_288.x, x_288.y);
  let x_291 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_289.x, x_289.y, x_291);
  let x_303 : vec3<f32> = txVec0;
  let x_305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_303.xy, x_303.z);
  u_xlat36 = x_305;
  let x_307 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_307) + 1.0f);
  let x_310 : f32 = u_xlat36;
  let x_312 : f32 = x_249.x_MainLightShadowParams.x;
  let x_314 : f32 = u_xlat37;
  u_xlat36 = ((x_310 * x_312) + x_314);
  let x_318 : f32 = u_xlat6.z;
  u_xlatb38 = (0.0f >= x_318);
  let x_322 : f32 = u_xlat6.z;
  u_xlatb40 = (x_322 >= 1.0f);
  let x_324 : bool = u_xlatb38;
  let x_325 : bool = u_xlatb40;
  u_xlatb38 = (x_324 | x_325);
  let x_327 : bool = u_xlatb38;
  let x_328 : f32 = u_xlat36;
  u_xlat36 = select(x_328, 1.0f, x_327);
  let x_330 : vec3<f32> = u_xlat0;
  let x_332 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_330, -(vec3<f32>(x_332.x, x_332.y, x_332.z)));
  let x_338 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_338, 0.0f, 1.0f);
  let x_342 : f32 = u_xlat36;
  let x_345 : vec4<f32> = x_75.x_MainLightColor;
  u_xlat12 = (vec3<f32>(x_342, x_342, x_342) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec3<f32> = u_xlat12;
  let x_349 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_348 * vec3<f32>(x_349.x, x_349.x, x_349.x));
  let x_352 : vec3<f32> = u_xlat0;
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_352 * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_357 : f32 = x_132.unity_LODFade.x;
  u_xlatb36 = (x_357 < 0.0f);
  let x_361 : f32 = x_132.unity_LODFade.x;
  u_xlat38 = (x_361 + 1.0f);
  let x_363 : bool = u_xlatb36;
  if (x_363) {
    let x_368 : f32 = u_xlat38;
    x_365 = x_368;
  } else {
    let x_371 : f32 = x_132.unity_LODFade.x;
    x_365 = x_371;
  }
  let x_372 : f32 = x_365;
  u_xlat36 = x_372;
  let x_374 : f32 = u_xlat36;
  u_xlatb38 = (0.5f >= x_374);
  let x_376 : vec3<f32> = u_xlat2;
  let x_380 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat2 = (abs(x_376) * vec3<f32>(x_380.x, x_380.y, x_380.x));
  let x_386 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_386);
  let x_391 : u32 = u_xlatu2.z;
  u_xlatu26 = (x_391 * 1025u);
  let x_395 : u32 = u_xlatu26;
  u_xlatu3 = (x_395 >> 6u);
  let x_400 : u32 = u_xlatu26;
  let x_401 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_400 ^ x_401));
  let x_404 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_404) * 9u);
  let x_408 : u32 = u_xlatu26;
  u_xlatu3 = (x_408 >> 11u);
  let x_411 : u32 = u_xlatu26;
  let x_412 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_411 ^ x_412));
  let x_415 : i32 = u_xlati26;
  u_xlati26 = (x_415 * 32769i);
  let x_419 : i32 = u_xlati26;
  let x_422 : u32 = u_xlatu2.y;
  u_xlati14 = bitcast<i32>((bitcast<u32>(x_419) ^ x_422));
  let x_426 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_426) * 1025u);
  let x_429 : u32 = u_xlatu14;
  u_xlatu26 = (x_429 >> 6u);
  let x_431 : u32 = u_xlatu26;
  let x_432 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_431 ^ x_432));
  let x_435 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_435) * 9u);
  let x_438 : u32 = u_xlatu14;
  u_xlatu26 = (x_438 >> 11u);
  let x_440 : u32 = u_xlatu26;
  let x_441 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_440 ^ x_441));
  let x_444 : i32 = u_xlati14;
  u_xlati14 = (x_444 * 32769i);
  let x_447 : i32 = u_xlati14;
  let x_450 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_447) ^ x_450));
  let x_453 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_453) * 1025u);
  let x_458 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_458 >> 6u);
  let x_460 : u32 = u_xlatu14;
  let x_462 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_460 ^ x_462));
  let x_465 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_465) * 9u);
  let x_470 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_470 >> 11u);
  let x_472 : u32 = u_xlatu14;
  let x_474 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_472 ^ x_474));
  let x_477 : i32 = u_xlati2;
  u_xlati2 = (x_477 * 32769i);
  param = 1065353216i;
  let x_483 : i32 = u_xlati2;
  param_1 = x_483;
  param_2 = 0i;
  param_3 = 23i;
  let x_486 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_486);
  let x_490 : f32 = u_xlat2.x;
  u_xlat2.x = (x_490 + -1.0f);
  let x_495 : f32 = u_xlat2.x;
  u_xlat14.x = (-(x_495) + 1.0f);
  let x_499 : bool = u_xlatb38;
  if (x_499) {
    let x_504 : f32 = u_xlat2.x;
    x_500 = x_504;
  } else {
    let x_507 : f32 = u_xlat14.x;
    x_500 = x_507;
  }
  let x_508 : f32 = x_500;
  u_xlat2.x = x_508;
  let x_510 : f32 = u_xlat36;
  let x_513 : f32 = u_xlat2.x;
  u_xlat36 = ((x_510 * 2.0f) + -(x_513));
  let x_516 : f32 = u_xlat36;
  let x_518 : f32 = u_xlat3.w;
  u_xlat2.x = (x_516 * x_518);
  let x_525 : f32 = u_xlat2.x;
  u_xlatb14.x = (x_525 >= 0.40000000596046447754f);
  let x_530 : bool = u_xlatb14.x;
  if (x_530) {
    let x_535 : f32 = u_xlat2.x;
    x_531 = x_535;
  } else {
    x_531 = 0.0f;
  }
  let x_537 : f32 = x_531;
  u_xlat14.x = x_537;
  let x_540 : f32 = u_xlat3.w;
  let x_541 : f32 = u_xlat36;
  u_xlat36 = ((x_540 * x_541) + -0.40000000596046447754f);
  let x_548 : f32 = u_xlat2.x;
  u_xlat26.x = dpdxCoarse(x_548);
  let x_552 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_552);
  let x_556 : f32 = u_xlat2.x;
  let x_559 : f32 = u_xlat26.x;
  u_xlat2.x = (abs(x_556) + abs(x_559));
  let x_564 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_564, 0.00009999999747378752f);
  let x_568 : f32 = u_xlat36;
  let x_570 : f32 = u_xlat2.x;
  u_xlat36 = (x_568 / x_570);
  let x_572 : f32 = u_xlat36;
  u_xlat36 = (x_572 + 0.5f);
  let x_574 : f32 = u_xlat36;
  u_xlat36 = clamp(x_574, 0.0f, 1.0f);
  let x_578 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_578 == 0.0f));
  let x_580 : bool = u_xlatb2;
  if (x_580) {
    let x_584 : f32 = u_xlat36;
    x_581 = x_584;
  } else {
    let x_587 : f32 = u_xlat14.x;
    x_581 = x_587;
  }
  let x_588 : f32 = x_581;
  u_xlat36 = x_588;
  let x_589 : f32 = u_xlat36;
  u_xlat14.x = (x_589 + -0.00009999999747378752f);
  let x_594 : f32 = u_xlat14.x;
  u_xlatb14.x = (x_594 < 0.0f);
  let x_598 : bool = u_xlatb14.x;
  if (((select(0i, 1i, x_598) * -1i) != 0i)) {
    discard;
  }
  let x_608 : f32 = vs_INTERP4.w;
  u_xlatb14.x = (0.0f < x_608);
  let x_612 : f32 = x_132.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_612 >= 0.0f);
  let x_616 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_616);
  let x_620 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_620);
  let x_624 : f32 = u_xlat14.y;
  let x_626 : f32 = u_xlat14.x;
  u_xlat14.x = (x_624 * x_626);
  let x_629 : vec4<f32> = vs_INTERP4;
  let x_631 : vec3<f32> = vs_INTERP9;
  let x_633 : vec3<f32> = (vec3<f32>(x_629.y, x_629.z, x_629.x) * vec3<f32>(x_631.z, x_631.x, x_631.y));
  let x_634 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_636 : vec3<f32> = vs_INTERP9;
  let x_638 : vec4<f32> = vs_INTERP4;
  let x_641 : vec4<f32> = u_xlat3;
  let x_644 : vec3<f32> = ((vec3<f32>(x_636.y, x_636.z, x_636.x) * vec3<f32>(x_638.z, x_638.x, x_638.y)) + -(vec3<f32>(x_641.x, x_641.y, x_641.z)));
  let x_645 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec3<f32> = u_xlat14;
  let x_649 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec3<f32>(x_647.x, x_647.x, x_647.x) * vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_652 : vec3<f32> = u_xlat14;
  let x_653 : vec3<f32> = u_xlat17;
  u_xlat14 = (x_652 * vec3<f32>(x_653.y, x_653.y, x_653.y));
  let x_656 : vec3<f32> = u_xlat17;
  let x_658 : vec4<f32> = vs_INTERP4;
  let x_661 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_656.x, x_656.x, x_656.x) * vec3<f32>(x_658.x, x_658.y, x_658.z)) + x_661);
  let x_663 : vec3<f32> = u_xlat17;
  let x_665 : vec3<f32> = vs_INTERP9;
  let x_667 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_663.z, x_663.z, x_663.z) * x_665) + x_667);
  let x_669 : vec3<f32> = u_xlat14;
  let x_670 : vec3<f32> = u_xlat14;
  u_xlat3.x = dot(x_669, x_670);
  let x_674 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_674);
  let x_677 : vec3<f32> = u_xlat14;
  let x_678 : vec4<f32> = u_xlat3;
  let x_680 : vec3<f32> = (x_677 * vec3<f32>(x_678.x, x_678.x, x_678.x));
  let x_681 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_684 : f32 = vs_INTERP8.y;
  let x_686 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat14.x = (x_684 * x_686);
  let x_690 : f32 = x_75.unity_MatrixV[0i].z;
  let x_692 : f32 = vs_INTERP8.x;
  let x_695 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_690 * x_692) + x_695);
  let x_699 : f32 = x_75.unity_MatrixV[2i].z;
  let x_701 : f32 = vs_INTERP8.z;
  let x_704 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_699 * x_701) + x_704);
  let x_708 : f32 = u_xlat14.x;
  let x_710 : f32 = x_75.unity_MatrixV[3i].z;
  u_xlat14.x = (x_708 + x_710);
  let x_714 : f32 = u_xlat14.x;
  let x_718 : f32 = x_75.x_ProjectionParams.y;
  u_xlat14.x = (-(x_714) + -(x_718));
  let x_723 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_723, 0.0f);
  let x_727 : f32 = u_xlat14.x;
  let x_730 : f32 = x_75.unity_FogParams.x;
  u_xlat14.x = (x_727 * x_730);
  u_xlat3.w = 1.0f;
  let x_736 : vec4<f32> = x_132.unity_SHAr;
  let x_737 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_736, x_737);
  let x_742 : vec4<f32> = x_132.unity_SHAg;
  let x_743 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_742, x_743);
  let x_748 : vec4<f32> = x_132.unity_SHAb;
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_748, x_749);
  let x_753 : vec4<f32> = u_xlat3;
  let x_755 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_753.y, x_753.z, x_753.z, x_753.x) * vec4<f32>(x_755.x, x_755.y, x_755.z, x_755.z));
  let x_761 : vec4<f32> = x_132.unity_SHBr;
  let x_762 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_761, x_762);
  let x_767 : vec4<f32> = x_132.unity_SHBg;
  let x_768 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_767, x_768);
  let x_772 : vec4<f32> = x_132.unity_SHBb;
  let x_773 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_772, x_773);
  let x_777 : f32 = u_xlat3.y;
  let x_779 : f32 = u_xlat3.y;
  u_xlat26.x = (x_777 * x_779);
  let x_783 : f32 = u_xlat3.x;
  let x_785 : f32 = u_xlat3.x;
  let x_788 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_783 * x_785) + -(x_788));
  let x_794 : vec4<f32> = x_132.unity_SHC;
  let x_796 : vec2<f32> = u_xlat26;
  let x_799 : vec3<f32> = u_xlat8;
  u_xlat17 = ((vec3<f32>(x_794.x, x_794.y, x_794.z) * vec3<f32>(x_796.x, x_796.x, x_796.x)) + x_799);
  let x_801 : vec3<f32> = u_xlat17;
  let x_802 : vec4<f32> = u_xlat6;
  u_xlat17 = (x_801 + vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec3<f32> = u_xlat17;
  u_xlat17 = max(x_805, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_809 : f32 = u_xlat5.x;
  u_xlat5.x = x_809;
  let x_812 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_812, 0.0f, 1.0f);
  let x_815 : f32 = u_xlat36;
  u_xlat36 = x_815;
  let x_816 : f32 = u_xlat36;
  u_xlat36 = clamp(x_816, 0.0f, 1.0f);
  let x_818 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_818 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_823 : f32 = u_xlat5.x;
  u_xlat26.x = (-(x_823) + 1.0f);
  let x_828 : f32 = u_xlat26.x;
  let x_830 : f32 = u_xlat26.x;
  u_xlat38 = (x_828 * x_830);
  let x_832 : f32 = u_xlat38;
  u_xlat38 = max(x_832, 0.0078125f);
  let x_836 : f32 = u_xlat38;
  let x_837 : f32 = u_xlat38;
  u_xlat39 = (x_836 * x_837);
  let x_841 : f32 = u_xlat5.x;
  u_xlat40 = (x_841 + 0.04000002145767211914f);
  let x_844 : f32 = u_xlat40;
  u_xlat40 = min(x_844, 1.0f);
  let x_846 : f32 = u_xlat38;
  u_xlat5.x = ((x_846 * 4.0f) + 2.0f);
  let x_852 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_852, 1.0f);
  let x_857 : vec4<f32> = vs_INTERP3;
  let x_858 : vec2<f32> = vec2<f32>(x_857.x, x_857.y);
  let x_860 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_858.x, x_858.y, x_860);
  let x_868 : vec3<f32> = txVec1;
  let x_870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_868.xy, x_868.z);
  u_xlat18.x = x_870;
  let x_873 : f32 = u_xlat18.x;
  let x_875 : f32 = x_249.x_MainLightShadowParams.x;
  let x_877 : f32 = u_xlat37;
  u_xlat37 = ((x_873 * x_875) + x_877);
  let x_881 : f32 = vs_INTERP3.z;
  u_xlatb18 = (0.0f >= x_881);
  let x_885 : f32 = vs_INTERP3.z;
  u_xlatb30 = (x_885 >= 1.0f);
  let x_887 : bool = u_xlatb30;
  let x_888 : bool = u_xlatb18;
  u_xlatb18 = (x_887 | x_888);
  let x_890 : bool = u_xlatb18;
  let x_891 : f32 = u_xlat37;
  u_xlat37 = select(x_891, 1.0f, x_890);
  let x_893 : vec3<f32> = vs_INTERP8;
  let x_895 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat18 = (x_893 + -(x_895));
  let x_898 : vec3<f32> = u_xlat18;
  let x_899 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_898, x_899);
  let x_904 : f32 = u_xlat18.x;
  let x_906 : f32 = x_249.x_MainLightShadowParams.z;
  let x_909 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat30 = ((x_904 * x_906) + x_909);
  let x_911 : f32 = u_xlat30;
  u_xlat30 = clamp(x_911, 0.0f, 1.0f);
  let x_914 : f32 = u_xlat37;
  u_xlat42 = (-(x_914) + 1.0f);
  let x_917 : f32 = u_xlat30;
  let x_918 : f32 = u_xlat42;
  let x_920 : f32 = u_xlat37;
  u_xlat37 = ((x_917 * x_918) + x_920);
  let x_922 : vec3<f32> = u_xlat1;
  let x_924 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(-(x_922), vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : f32 = u_xlat30;
  let x_928 : f32 = u_xlat30;
  u_xlat30 = (x_927 + x_928);
  let x_930 : vec4<f32> = u_xlat3;
  let x_932 : f32 = u_xlat30;
  let x_936 : vec3<f32> = u_xlat1;
  let x_938 : vec3<f32> = ((vec3<f32>(x_930.x, x_930.y, x_930.z) * -(vec3<f32>(x_932, x_932, x_932))) + -(x_936));
  let x_939 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_941 : vec4<f32> = u_xlat3;
  let x_943 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(vec3<f32>(x_941.x, x_941.y, x_941.z), x_943);
  let x_945 : f32 = u_xlat30;
  u_xlat30 = clamp(x_945, 0.0f, 1.0f);
  let x_947 : f32 = u_xlat30;
  u_xlat30 = (-(x_947) + 1.0f);
  let x_950 : f32 = u_xlat30;
  let x_951 : f32 = u_xlat30;
  u_xlat30 = (x_950 * x_951);
  let x_953 : f32 = u_xlat30;
  let x_954 : f32 = u_xlat30;
  u_xlat30 = (x_953 * x_954);
  let x_957 : f32 = u_xlat26.x;
  u_xlat42 = ((-(x_957) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_964 : f32 = u_xlat26.x;
  let x_965 : f32 = u_xlat42;
  u_xlat26.x = (x_964 * x_965);
  let x_969 : f32 = u_xlat26.x;
  u_xlat26.x = (x_969 * 6.0f);
  let x_981 : vec4<f32> = u_xlat7;
  let x_984 : f32 = u_xlat26.x;
  let x_985 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_981.x, x_981.y, x_981.z), x_984);
  u_xlat7 = x_985;
  let x_987 : f32 = u_xlat7.w;
  u_xlat26.x = (x_987 + -1.0f);
  let x_991 : f32 = x_132.unity_SpecCube0_HDR.w;
  let x_993 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_991 * x_993) + 1.0f);
  let x_998 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_998, 0.0f);
  let x_1002 : f32 = u_xlat26.x;
  u_xlat26.x = log2(x_1002);
  let x_1006 : f32 = u_xlat26.x;
  let x_1008 : f32 = x_132.unity_SpecCube0_HDR.y;
  u_xlat26.x = (x_1006 * x_1008);
  let x_1012 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_1012);
  let x_1016 : f32 = u_xlat26.x;
  let x_1018 : f32 = x_132.unity_SpecCube0_HDR.x;
  u_xlat26.x = (x_1016 * x_1018);
  let x_1021 : vec4<f32> = u_xlat7;
  let x_1023 : vec2<f32> = u_xlat26;
  let x_1025 : vec3<f32> = (vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * vec3<f32>(x_1023.x, x_1023.x, x_1023.x));
  let x_1026 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
  let x_1028 : f32 = u_xlat38;
  let x_1030 : f32 = u_xlat38;
  u_xlat26 = ((vec2<f32>(x_1028, x_1028) * vec2<f32>(x_1030, x_1030)) + vec2<f32>(-1.0f, 1.0f));
  let x_1036 : f32 = u_xlat26.y;
  u_xlat38 = (1.0f / x_1036);
  let x_1038 : f32 = u_xlat40;
  u_xlat40 = (x_1038 + -0.03999999910593032837f);
  let x_1041 : f32 = u_xlat30;
  let x_1042 : f32 = u_xlat40;
  u_xlat40 = ((x_1041 * x_1042) + 0.03999999910593032837f);
  let x_1046 : f32 = u_xlat38;
  let x_1047 : f32 = u_xlat40;
  u_xlat38 = (x_1046 * x_1047);
  let x_1049 : f32 = u_xlat38;
  let x_1051 : vec4<f32> = u_xlat7;
  let x_1053 : vec3<f32> = (vec3<f32>(x_1049, x_1049, x_1049) * vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
  let x_1054 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
  let x_1056 : vec3<f32> = u_xlat17;
  let x_1057 : vec3<f32> = u_xlat4;
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat17 = ((x_1056 * x_1057) + vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
  let x_1062 : f32 = u_xlat37;
  let x_1064 : f32 = x_132.unity_LightData.z;
  u_xlat37 = (x_1062 * x_1064);
  let x_1066 : vec4<f32> = u_xlat3;
  let x_1069 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_1066.x, x_1066.y, x_1066.z), vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1072 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1072, 0.0f, 1.0f);
  let x_1074 : f32 = u_xlat37;
  let x_1075 : f32 = u_xlat38;
  u_xlat37 = (x_1074 * x_1075);
  let x_1077 : f32 = u_xlat37;
  let x_1080 : vec4<f32> = x_75.x_MainLightColor;
  let x_1082 : vec3<f32> = (vec3<f32>(x_1077, x_1077, x_1077) * vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
  let x_1083 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
  let x_1085 : vec3<f32> = u_xlat1;
  let x_1087 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat8 = (x_1085 + vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
  let x_1090 : vec3<f32> = u_xlat8;
  let x_1091 : vec3<f32> = u_xlat8;
  u_xlat37 = dot(x_1090, x_1091);
  let x_1093 : f32 = u_xlat37;
  u_xlat37 = max(x_1093, 1.17549435e-38f);
  let x_1096 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_1096);
  let x_1098 : f32 = u_xlat37;
  let x_1100 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_1098, x_1098, x_1098) * x_1100);
  let x_1102 : vec4<f32> = u_xlat3;
  let x_1104 : vec3<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_1102.x, x_1102.y, x_1102.z), x_1104);
  let x_1106 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1106, 0.0f, 1.0f);
  let x_1109 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1111 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_1109.x, x_1109.y, x_1109.z), x_1111);
  let x_1113 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1113, 0.0f, 1.0f);
  let x_1115 : f32 = u_xlat37;
  let x_1116 : f32 = u_xlat37;
  u_xlat37 = (x_1115 * x_1116);
  let x_1118 : f32 = u_xlat37;
  let x_1120 : f32 = u_xlat26.x;
  u_xlat37 = ((x_1118 * x_1120) + 1.00001001358032226562f);
  let x_1124 : f32 = u_xlat38;
  let x_1125 : f32 = u_xlat38;
  u_xlat38 = (x_1124 * x_1125);
  let x_1127 : f32 = u_xlat37;
  let x_1128 : f32 = u_xlat37;
  u_xlat37 = (x_1127 * x_1128);
  let x_1130 : f32 = u_xlat38;
  u_xlat38 = max(x_1130, 0.10000000149011611938f);
  let x_1133 : f32 = u_xlat37;
  let x_1134 : f32 = u_xlat38;
  u_xlat37 = (x_1133 * x_1134);
  let x_1137 : f32 = u_xlat5.x;
  let x_1138 : f32 = u_xlat37;
  u_xlat37 = (x_1137 * x_1138);
  let x_1140 : f32 = u_xlat39;
  let x_1141 : f32 = u_xlat37;
  u_xlat37 = (x_1140 / x_1141);
  let x_1143 : f32 = u_xlat37;
  let x_1147 : vec3<f32> = u_xlat4;
  u_xlat8 = ((vec3<f32>(x_1143, x_1143, x_1143) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1147);
  let x_1149 : vec4<f32> = u_xlat7;
  let x_1151 : vec3<f32> = u_xlat8;
  let x_1152 : vec3<f32> = (vec3<f32>(x_1149.x, x_1149.y, x_1149.z) * x_1151);
  let x_1153 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1157 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_1159 : f32 = x_132.unity_LightData.y;
  u_xlat37 = min(x_1157, x_1159);
  let x_1162 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_1162));
  let x_1166 : f32 = u_xlat18.x;
  let x_1169 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_1172 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat38 = ((x_1166 * x_1169) + x_1172);
  let x_1174 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1174, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1185 : u32 = u_xlatu_loop_1;
    let x_1186 : u32 = u_xlatu37;
    if ((x_1185 < x_1186)) {
    } else {
      break;
    }
    let x_1189 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_1189 >> 2u);
    let x_1192 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1192 & 3u));
    let x_1196 : u32 = u_xlatu43;
    let x_1199 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_1196)];
    let x_1209 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1214 : vec4<u32> = indexable[x_1209];
    u_xlat43 = dot(x_1199, bitcast<vec4<f32>>(x_1214));
    let x_1218 : f32 = u_xlat43;
    u_xlati43 = i32(x_1218);
    let x_1220 : vec3<f32> = vs_INTERP8;
    let x_1231 : i32 = u_xlati43;
    let x_1233 : vec4<f32> = x_1230.x_AdditionalLightsPosition[x_1231];
    let x_1236 : i32 = u_xlati43;
    let x_1238 : vec4<f32> = x_1230.x_AdditionalLightsPosition[x_1236];
    u_xlat8 = ((-(x_1220) * vec3<f32>(x_1233.w, x_1233.w, x_1233.w)) + vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
    let x_1242 : vec3<f32> = u_xlat8;
    let x_1243 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_1242, x_1243);
    let x_1245 : f32 = u_xlat44;
    u_xlat44 = max(x_1245, 0.00006103515625f);
    let x_1249 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_1249);
    let x_1252 : vec3<f32> = u_xlat8;
    let x_1253 : f32 = u_xlat9;
    u_xlat21 = (x_1252 * vec3<f32>(x_1253, x_1253, x_1253));
    let x_1257 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_1257);
    let x_1260 : f32 = u_xlat44;
    let x_1261 : i32 = u_xlati43;
    let x_1263 : f32 = x_1230.x_AdditionalLightsAttenuation[x_1261].x;
    u_xlat44 = (x_1260 * x_1263);
    let x_1265 : f32 = u_xlat44;
    let x_1267 : f32 = u_xlat44;
    u_xlat44 = ((-(x_1265) * x_1267) + 1.0f);
    let x_1270 : f32 = u_xlat44;
    u_xlat44 = max(x_1270, 0.0f);
    let x_1272 : f32 = u_xlat44;
    let x_1273 : f32 = u_xlat44;
    u_xlat44 = (x_1272 * x_1273);
    let x_1275 : f32 = u_xlat44;
    let x_1277 : f32 = u_xlat10.x;
    u_xlat44 = (x_1275 * x_1277);
    let x_1279 : i32 = u_xlati43;
    let x_1281 : vec4<f32> = x_1230.x_AdditionalLightsSpotDir[x_1279];
    let x_1283 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1281.x, x_1281.y, x_1281.z), x_1283);
    let x_1287 : f32 = u_xlat10.x;
    let x_1288 : i32 = u_xlati43;
    let x_1290 : f32 = x_1230.x_AdditionalLightsAttenuation[x_1288].z;
    let x_1292 : i32 = u_xlati43;
    let x_1294 : f32 = x_1230.x_AdditionalLightsAttenuation[x_1292].w;
    u_xlat10.x = ((x_1287 * x_1290) + x_1294);
    let x_1298 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1298, 0.0f, 1.0f);
    let x_1302 : f32 = u_xlat10.x;
    let x_1304 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1302 * x_1304);
    let x_1307 : f32 = u_xlat44;
    let x_1309 : f32 = u_xlat10.x;
    u_xlat44 = (x_1307 * x_1309);
    let x_1313 : i32 = u_xlati43;
    let x_1315 : f32 = x_249.x_AdditionalShadowParams[x_1313].w;
    u_xlati10 = i32(x_1315);
    let x_1320 : i32 = u_xlati10;
    u_xlatb22.x = (x_1320 >= 0i);
    let x_1324 : bool = u_xlatb22.x;
    if (x_1324) {
      let x_1328 : i32 = u_xlati43;
      let x_1330 : f32 = x_249.x_AdditionalShadowParams[x_1328].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1330, x_1330, x_1330, x_1330))));
      let x_1337 : bool = u_xlatb22.x;
      if (x_1337) {
        let x_1340 : vec3<f32> = u_xlat21;
        let x_1343 : vec3<f32> = u_xlat21;
        let x_1346 : vec4<bool> = (abs(vec4<f32>(x_1340.z, x_1340.z, x_1340.y, x_1340.y)) >= abs(vec4<f32>(x_1343.x, x_1343.y, x_1343.x, x_1343.x)));
        u_xlatb22 = vec3<bool>(x_1346.x, x_1346.y, x_1346.z);
        let x_1349 : bool = u_xlatb22.y;
        let x_1351 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1349 & x_1351);
        let x_1355 : vec3<f32> = u_xlat21;
        let x_1358 : vec4<bool> = (-(vec4<f32>(x_1355.z, x_1355.y, x_1355.x, x_1355.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1358.x, x_1358.y, x_1358.z);
        let x_1362 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1362);
        let x_1367 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1367);
        let x_1373 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1373);
        let x_1376 : bool = u_xlatb22.z;
        if (x_1376) {
          let x_1381 : f32 = u_xlat11.y;
          x_1377 = x_1381;
        } else {
          let x_1383 : f32 = u_xlat34;
          x_1377 = x_1383;
        }
        let x_1384 : f32 = x_1377;
        u_xlat34 = x_1384;
        let x_1387 : bool = u_xlatb22.x;
        if (x_1387) {
          let x_1392 : f32 = u_xlat11.x;
          x_1388 = x_1392;
        } else {
          let x_1394 : f32 = u_xlat34;
          x_1388 = x_1394;
        }
        let x_1395 : f32 = x_1388;
        u_xlat22 = x_1395;
        let x_1396 : i32 = u_xlati43;
        let x_1398 : f32 = x_249.x_AdditionalShadowParams[x_1396].w;
        u_xlat34 = trunc(x_1398);
        let x_1400 : f32 = u_xlat22;
        let x_1401 : f32 = u_xlat34;
        u_xlat22 = (x_1400 + x_1401);
        let x_1403 : f32 = u_xlat22;
        u_xlati10 = i32(x_1403);
      }
      let x_1405 : i32 = u_xlati10;
      u_xlati10 = (x_1405 << bitcast<u32>(2i));
      let x_1407 : vec3<f32> = vs_INTERP8;
      let x_1410 : i32 = u_xlati10;
      let x_1413 : i32 = u_xlati10;
      let x_1417 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1410 + 1i) / 4i)][((x_1413 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1407.y, x_1407.y, x_1407.y, x_1407.y) * x_1417);
      let x_1419 : i32 = u_xlati10;
      let x_1421 : i32 = u_xlati10;
      let x_1424 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_1419 / 4i)][(x_1421 % 4i)];
      let x_1425 : vec3<f32> = vs_INTERP8;
      let x_1428 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1424 * vec4<f32>(x_1425.x, x_1425.x, x_1425.x, x_1425.x)) + x_1428);
      let x_1430 : i32 = u_xlati10;
      let x_1433 : i32 = u_xlati10;
      let x_1437 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1430 + 2i) / 4i)][((x_1433 + 2i) % 4i)];
      let x_1438 : vec3<f32> = vs_INTERP8;
      let x_1441 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1437 * vec4<f32>(x_1438.z, x_1438.z, x_1438.z, x_1438.z)) + x_1441);
      let x_1443 : vec4<f32> = u_xlat11;
      let x_1444 : i32 = u_xlati10;
      let x_1447 : i32 = u_xlati10;
      let x_1451 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1444 + 3i) / 4i)][((x_1447 + 3i) % 4i)];
      u_xlat10 = (x_1443 + x_1451);
      let x_1453 : vec4<f32> = u_xlat10;
      let x_1455 : vec4<f32> = u_xlat10;
      let x_1457 : vec3<f32> = (vec3<f32>(x_1453.x, x_1453.y, x_1453.z) / vec3<f32>(x_1455.w, x_1455.w, x_1455.w));
      let x_1458 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
      let x_1461 : vec4<f32> = u_xlat10;
      let x_1462 : vec2<f32> = vec2<f32>(x_1461.x, x_1461.y);
      let x_1464 : f32 = u_xlat10.z;
      txVec2 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
      let x_1472 : vec3<f32> = txVec2;
      let x_1474 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
      u_xlat10.x = x_1474;
      let x_1476 : i32 = u_xlati43;
      let x_1478 : f32 = x_249.x_AdditionalShadowParams[x_1476].x;
      u_xlat22 = (1.0f + -(x_1478));
      let x_1482 : f32 = u_xlat10.x;
      let x_1483 : i32 = u_xlati43;
      let x_1485 : f32 = x_249.x_AdditionalShadowParams[x_1483].x;
      let x_1487 : f32 = u_xlat22;
      u_xlat10.x = ((x_1482 * x_1485) + x_1487);
      let x_1491 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1491);
      let x_1496 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1496 >= 1.0f);
      let x_1498 : bool = u_xlatb34;
      let x_1500 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1498 | x_1500);
      let x_1504 : bool = u_xlatb22.x;
      if (x_1504) {
        x_1505 = 1.0f;
      } else {
        let x_1510 : f32 = u_xlat10.x;
        x_1505 = x_1510;
      }
      let x_1511 : f32 = x_1505;
      u_xlat10.x = x_1511;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1516 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1516) + 1.0f);
    let x_1519 : f32 = u_xlat38;
    let x_1520 : f32 = u_xlat22;
    let x_1523 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1519 * x_1520) + x_1523);
    let x_1526 : f32 = u_xlat44;
    let x_1528 : f32 = u_xlat10.x;
    u_xlat44 = (x_1526 * x_1528);
    let x_1530 : vec4<f32> = u_xlat3;
    let x_1532 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1530.x, x_1530.y, x_1530.z), x_1532);
    let x_1536 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1536, 0.0f, 1.0f);
    let x_1539 : f32 = u_xlat44;
    let x_1541 : f32 = u_xlat10.x;
    u_xlat44 = (x_1539 * x_1541);
    let x_1543 : f32 = u_xlat44;
    let x_1545 : i32 = u_xlati43;
    let x_1547 : vec4<f32> = x_1230.x_AdditionalLightsColor[x_1545];
    let x_1549 : vec3<f32> = (vec3<f32>(x_1543, x_1543, x_1543) * vec3<f32>(x_1547.x, x_1547.y, x_1547.z));
    let x_1550 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1549.x, x_1549.y, x_1549.z, x_1550.w);
    let x_1552 : vec3<f32> = u_xlat8;
    let x_1553 : f32 = u_xlat9;
    let x_1556 : vec3<f32> = u_xlat1;
    u_xlat8 = ((x_1552 * vec3<f32>(x_1553, x_1553, x_1553)) + x_1556);
    let x_1558 : vec3<f32> = u_xlat8;
    let x_1559 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(x_1558, x_1559);
    let x_1561 : f32 = u_xlat43;
    u_xlat43 = max(x_1561, 1.17549435e-38f);
    let x_1563 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1563);
    let x_1565 : f32 = u_xlat43;
    let x_1567 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1565, x_1565, x_1565) * x_1567);
    let x_1569 : vec4<f32> = u_xlat3;
    let x_1571 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1569.x, x_1569.y, x_1569.z), x_1571);
    let x_1573 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1573, 0.0f, 1.0f);
    let x_1575 : vec3<f32> = u_xlat21;
    let x_1576 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1575, x_1576);
    let x_1580 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1580, 0.0f, 1.0f);
    let x_1583 : f32 = u_xlat43;
    let x_1584 : f32 = u_xlat43;
    u_xlat43 = (x_1583 * x_1584);
    let x_1586 : f32 = u_xlat43;
    let x_1588 : f32 = u_xlat26.x;
    u_xlat43 = ((x_1586 * x_1588) + 1.00001001358032226562f);
    let x_1592 : f32 = u_xlat8.x;
    let x_1594 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1592 * x_1594);
    let x_1597 : f32 = u_xlat43;
    let x_1598 : f32 = u_xlat43;
    u_xlat43 = (x_1597 * x_1598);
    let x_1601 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1601, 0.10000000149011611938f);
    let x_1604 : f32 = u_xlat43;
    let x_1606 : f32 = u_xlat8.x;
    u_xlat43 = (x_1604 * x_1606);
    let x_1609 : f32 = u_xlat5.x;
    let x_1610 : f32 = u_xlat43;
    u_xlat43 = (x_1609 * x_1610);
    let x_1612 : f32 = u_xlat39;
    let x_1613 : f32 = u_xlat43;
    u_xlat43 = (x_1612 / x_1613);
    let x_1615 : f32 = u_xlat43;
    let x_1618 : vec3<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_1615, x_1615, x_1615) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1618);
    let x_1620 : vec3<f32> = u_xlat8;
    let x_1621 : vec4<f32> = u_xlat10;
    let x_1624 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1620 * vec3<f32>(x_1621.x, x_1621.y, x_1621.z)) + x_1624);

    continuing {
      let x_1626 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1626 + bitcast<u32>(1i));
    }
  }
  let x_1628 : vec3<f32> = u_xlat17;
  let x_1629 : vec4<f32> = u_xlat6;
  let x_1632 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_1628 * vec3<f32>(x_1629.x, x_1629.x, x_1629.x)) + vec3<f32>(x_1632.x, x_1632.y, x_1632.z));
  let x_1635 : vec3<f32> = u_xlat18;
  let x_1636 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1635 + x_1636);
  let x_1638 : vec4<f32> = vs_INTERP6;
  let x_1640 : vec3<f32> = u_xlat0;
  let x_1642 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1638.w, x_1638.w, x_1638.w) * x_1640) + x_1642);
  let x_1645 : f32 = u_xlat14.x;
  let x_1647 : f32 = u_xlat14.x;
  u_xlat1.x = (x_1645 * -(x_1647));
  let x_1652 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1652);
  let x_1655 : vec3<f32> = u_xlat0;
  let x_1658 : vec4<f32> = x_75.unity_FogColor;
  u_xlat0 = (x_1655 + -(vec3<f32>(x_1658.x, x_1658.y, x_1658.z)));
  let x_1664 : vec3<f32> = u_xlat1;
  let x_1666 : vec3<f32> = u_xlat0;
  let x_1669 : vec4<f32> = x_75.unity_FogColor;
  let x_1671 : vec3<f32> = ((vec3<f32>(x_1664.x, x_1664.x, x_1664.x) * x_1666) + vec3<f32>(x_1669.x, x_1669.y, x_1669.z));
  let x_1672 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1671.x, x_1671.y, x_1671.z, x_1672.w);
  let x_1674 : bool = u_xlatb2;
  let x_1675 : f32 = u_xlat36;
  SV_Target0.w = select(1.0f, x_1675, x_1674);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


