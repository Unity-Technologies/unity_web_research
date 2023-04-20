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

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : f32;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb14 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_77 : UnityPerDraw;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(0) var<uniform> x_142 : PGlobals;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_259 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_352 : LightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb2 : bool;

var<private> u_xlatb16 : bool;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlatu16 : vec3<u32>;

var<private> u_xlatu44 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati44 : i32;

var<private> u_xlati30 : i32;

var<private> u_xlatu30 : u32;

var<private> u_xlati16 : i32;

var<private> u_xlat30 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

@group(1) @binding(4) var<uniform> x_896 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu43 : u32;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlatu49 : u32;

var<private> u_xlati22 : i32;

var<private> u_xlati49 : i32;

@group(1) @binding(1) var<uniform> x_1332 : AdditionalLights;

var<private> u_xlat23 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlati37 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu6 : u32;

var<private> u_xlatb49 : bool;

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
  var x_980 : f32;
  var x_991 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1483 : f32;
  var x_1493 : f32;
  var txVec2 : vec3<f32>;
  var x_1923 : f32;
  var x_1936 : f32;
  var x_1994 : f32;
  var x_2005 : vec3<f32>;
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
  u_xlatb14.x = (0.0f < x_67);
  let x_81 : f32 = x_77.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_81 >= 0.0f);
  let x_88 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_88);
  let x_93 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_93);
  let x_97 : f32 = u_xlat14.y;
  let x_99 : f32 = u_xlat14.x;
  u_xlat14.x = (x_97 * x_99);
  let x_103 : vec4<f32> = vs_INTERP4;
  let x_105 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_103.y, x_103.z, x_103.x) * vec3<f32>(x_105.z, x_105.x, x_105.y));
  let x_108 : vec3<f32> = vs_INTERP9;
  let x_110 : vec4<f32> = vs_INTERP4;
  let x_113 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_108.y, x_108.z, x_108.x) * vec3<f32>(x_110.z, x_110.x, x_110.y)) + -(x_113));
  let x_116 : vec3<f32> = u_xlat14;
  let x_118 : vec3<f32> = u_xlat1;
  u_xlat14 = (vec3<f32>(x_116.x, x_116.x, x_116.x) * x_118);
  let x_120 : f32 = u_xlat0;
  let x_122 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_120, x_120, x_120) * x_122);
  let x_125 : f32 = u_xlat0;
  let x_127 : vec4<f32> = vs_INTERP4;
  u_xlat2 = (vec3<f32>(x_125, x_125, x_125) * vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_132 : vec3<f32> = u_xlat14;
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
  u_xlat43 = dot(x_157, x_158);
  let x_160 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_160);
  let x_162 : f32 = u_xlat43;
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
  u_xlat22 = (vec3<f32>(x_292, x_292, x_292) * vec3<f32>(x_294.x, x_294.y, x_294.z));
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
  let x_313 : vec3<f32> = u_xlat22;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.y, x_313.y, x_313.y));
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec3<f32> = u_xlat22;
  let x_320 : vec3<f32> = u_xlat2;
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_318.x, x_318.x, x_318.x) * x_320) + vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec3<f32> = u_xlat22;
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
  u_xlat43 = (-(x_399) + 1.0f);
  let x_402 : f32 = u_xlat0;
  let x_404 : f32 = x_352.x_MainLightShadowParams.x;
  let x_406 : f32 = u_xlat43;
  u_xlat0 = ((x_402 * x_404) + x_406);
  let x_410 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_410);
  let x_414 : f32 = u_xlat2.z;
  u_xlatb16 = (x_414 >= 1.0f);
  let x_416 : bool = u_xlatb16;
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
  u_xlat16 = (abs(x_468) * vec3<f32>(x_472.x, x_472.y, x_472.x));
  let x_478 : vec3<f32> = u_xlat16;
  u_xlatu16 = vec3<u32>(x_478);
  let x_483 : u32 = u_xlatu16.z;
  u_xlatu44 = (x_483 * 1025u);
  let x_487 : u32 = u_xlatu44;
  u_xlatu3 = (x_487 >> 6u);
  let x_492 : u32 = u_xlatu44;
  let x_493 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_492 ^ x_493));
  let x_496 : i32 = u_xlati44;
  u_xlatu44 = (bitcast<u32>(x_496) * 9u);
  let x_500 : u32 = u_xlatu44;
  u_xlatu3 = (x_500 >> 11u);
  let x_503 : u32 = u_xlatu44;
  let x_504 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_503 ^ x_504));
  let x_507 : i32 = u_xlati44;
  u_xlati44 = (x_507 * 32769i);
  let x_511 : i32 = u_xlati44;
  let x_514 : u32 = u_xlatu16.y;
  u_xlati30 = bitcast<i32>((bitcast<u32>(x_511) ^ x_514));
  let x_518 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_518) * 1025u);
  let x_521 : u32 = u_xlatu30;
  u_xlatu44 = (x_521 >> 6u);
  let x_523 : u32 = u_xlatu44;
  let x_524 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_523 ^ x_524));
  let x_527 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_527) * 9u);
  let x_530 : u32 = u_xlatu30;
  u_xlatu44 = (x_530 >> 11u);
  let x_532 : u32 = u_xlatu44;
  let x_533 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_532 ^ x_533));
  let x_536 : i32 = u_xlati30;
  u_xlati30 = (x_536 * 32769i);
  let x_539 : i32 = u_xlati30;
  let x_542 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((bitcast<u32>(x_539) ^ x_542));
  let x_545 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_545) * 1025u);
  let x_550 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_550 >> 6u);
  let x_552 : u32 = u_xlatu30;
  let x_554 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_552 ^ x_554));
  let x_557 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_557) * 9u);
  let x_562 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_562 >> 11u);
  let x_564 : u32 = u_xlatu30;
  let x_566 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_564 ^ x_566));
  let x_569 : i32 = u_xlati16;
  u_xlati16 = (x_569 * 32769i);
  param = 1065353216i;
  let x_575 : i32 = u_xlati16;
  param_1 = x_575;
  param_2 = 0i;
  param_3 = 23i;
  let x_578 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat16.x = bitcast<f32>(x_578);
  let x_582 : f32 = u_xlat16.x;
  u_xlat16.x = (x_582 + -1.0f);
  let x_587 : f32 = u_xlat16.x;
  u_xlat30 = (-(x_587) + 1.0f);
  let x_590 : bool = u_xlatb2;
  if (x_590) {
    let x_595 : f32 = u_xlat16.x;
    x_591 = x_595;
  } else {
    let x_597 : f32 = u_xlat30;
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
  u_xlatb16 = (x_612 >= 0.40000000596046447754f);
  let x_615 : bool = u_xlatb16;
  if (x_615) {
    let x_620 : f32 = u_xlat2.x;
    x_616 = x_620;
  } else {
    x_616 = 0.0f;
  }
  let x_622 : f32 = x_616;
  u_xlat16.x = x_622;
  let x_625 : f32 = u_xlat6.w;
  let x_626 : f32 = u_xlat0;
  u_xlat0 = ((x_625 * x_626) + -0.40000000596046447754f);
  let x_631 : f32 = u_xlat2.x;
  u_xlat30 = dpdxCoarse(x_631);
  let x_634 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_634);
  let x_638 : f32 = u_xlat2.x;
  let x_640 : f32 = u_xlat30;
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
    let x_667 : f32 = u_xlat16.x;
    x_661 = x_667;
  }
  let x_668 : f32 = x_661;
  u_xlat0 = x_668;
  let x_669 : f32 = u_xlat0;
  u_xlat16.x = (x_669 + -0.00009999999747378752f);
  let x_674 : f32 = u_xlat16.x;
  u_xlatb16 = (x_674 < 0.0f);
  let x_676 : bool = u_xlatb16;
  if (((select(0i, 1i, x_676) * -1i) != 0i)) {
    discard;
  }
  let x_684 : vec3<f32> = u_xlat14;
  let x_685 : vec3<f32> = u_xlat22;
  u_xlat14 = (x_684 * vec3<f32>(x_685.y, x_685.y, x_685.y));
  let x_688 : vec3<f32> = u_xlat22;
  let x_690 : vec4<f32> = vs_INTERP4;
  let x_693 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_688.x, x_688.x, x_688.x) * vec3<f32>(x_690.x, x_690.y, x_690.z)) + x_693);
  let x_695 : vec3<f32> = u_xlat22;
  let x_697 : vec3<f32> = vs_INTERP9;
  let x_699 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_695.z, x_695.z, x_695.z) * x_697) + x_699);
  let x_701 : vec3<f32> = u_xlat14;
  let x_702 : vec3<f32> = u_xlat14;
  u_xlat16.x = dot(x_701, x_702);
  let x_706 : f32 = u_xlat16.x;
  u_xlat16.x = inverseSqrt(x_706);
  let x_709 : vec3<f32> = u_xlat14;
  let x_710 : vec3<f32> = u_xlat16;
  u_xlat14 = (x_709 * vec3<f32>(x_710.x, x_710.x, x_710.x));
  let x_720 : vec2<f32> = vs_INTERP0;
  let x_722 : f32 = x_142.x_GlobalMipBias.x;
  let x_723 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_720, x_722);
  u_xlat3 = x_723;
  let x_728 : vec2<f32> = vs_INTERP0;
  let x_730 : f32 = x_142.x_GlobalMipBias.x;
  let x_731 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_728, x_730);
  u_xlat16 = vec3<f32>(x_731.x, x_731.y, x_731.z);
  let x_733 : vec4<f32> = u_xlat3;
  let x_737 : vec3<f32> = (vec3<f32>(x_733.x, x_733.y, x_733.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_738 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_740 : vec3<f32> = u_xlat14;
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_740, vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_746 : f32 = u_xlat3.x;
  u_xlat3.x = (x_746 + 0.5f);
  let x_749 : vec3<f32> = u_xlat16;
  let x_750 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_749 * vec3<f32>(x_750.x, x_750.x, x_750.x));
  let x_754 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_754, 0.00009999999747378752f);
  let x_757 : vec3<f32> = u_xlat16;
  let x_758 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_757 / vec3<f32>(x_758.x, x_758.x, x_758.x));
  let x_762 : f32 = u_xlat8.x;
  u_xlat8.x = x_762;
  let x_765 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_765, 0.0f, 1.0f);
  let x_768 : f32 = u_xlat0;
  u_xlat0 = x_768;
  let x_769 : f32 = u_xlat0;
  u_xlat0 = clamp(x_769, 0.0f, 1.0f);
  let x_771 : vec4<f32> = u_xlat7;
  let x_775 : vec3<f32> = (vec3<f32>(x_771.x, x_771.y, x_771.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_776 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_780 : f32 = u_xlat8.x;
  u_xlat45 = (-(x_780) + 1.0f);
  let x_783 : f32 = u_xlat45;
  let x_784 : f32 = u_xlat45;
  u_xlat4.x = (x_783 * x_784);
  let x_788 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_788, 0.0078125f);
  let x_794 : f32 = u_xlat4.x;
  let x_796 : f32 = u_xlat4.x;
  u_xlat18 = (x_794 * x_796);
  let x_800 : f32 = u_xlat8.x;
  u_xlat32 = (x_800 + 0.04000002145767211914f);
  let x_803 : f32 = u_xlat32;
  u_xlat32 = min(x_803, 1.0f);
  let x_807 : f32 = u_xlat4.x;
  u_xlat46 = ((x_807 * 4.0f) + 2.0f);
  let x_813 : f32 = vs_INTERP6.w;
  u_xlat47 = min(x_813, 1.0f);
  let x_817 : vec4<f32> = vs_INTERP3;
  let x_818 : vec2<f32> = vec2<f32>(x_817.x, x_817.y);
  let x_820 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_818.x, x_818.y, x_820);
  let x_827 : vec3<f32> = txVec1;
  let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_827.xy, x_827.z);
  u_xlat6.x = x_829;
  let x_832 : f32 = u_xlat6.x;
  let x_834 : f32 = x_352.x_MainLightShadowParams.x;
  let x_836 : f32 = u_xlat43;
  u_xlat43 = ((x_832 * x_834) + x_836);
  let x_840 : f32 = vs_INTERP3.z;
  u_xlatb6 = (0.0f >= x_840);
  let x_844 : f32 = vs_INTERP3.z;
  u_xlatb20.x = (x_844 >= 1.0f);
  let x_848 : bool = u_xlatb20.x;
  let x_849 : bool = u_xlatb6;
  u_xlatb6 = (x_848 | x_849);
  let x_851 : bool = u_xlatb6;
  let x_852 : f32 = u_xlat43;
  u_xlat43 = select(x_852, 1.0f, x_851);
  let x_854 : vec3<f32> = vs_INTERP8;
  let x_856 : vec3<f32> = x_142.x_WorldSpaceCameraPos;
  let x_858 : vec3<f32> = (x_854 + -(x_856));
  let x_859 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat6;
  let x_863 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_861.x, x_861.y, x_861.z), vec3<f32>(x_863.x, x_863.y, x_863.z));
  let x_869 : f32 = u_xlat6.x;
  let x_871 : f32 = x_352.x_MainLightShadowParams.z;
  let x_874 : f32 = x_352.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_869 * x_871) + x_874);
  let x_878 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_878, 0.0f, 1.0f);
  let x_882 : f32 = u_xlat43;
  u_xlat34 = (-(x_882) + 1.0f);
  let x_886 : f32 = u_xlat20.x;
  let x_887 : f32 = u_xlat34;
  let x_889 : f32 = u_xlat43;
  u_xlat43 = ((x_886 * x_887) + x_889);
  let x_898 : f32 = x_896.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_898 == -1.0f));
  let x_902 : bool = u_xlatb20.x;
  if (x_902) {
    let x_905 : vec3<f32> = vs_INTERP8;
    let x_908 : vec4<f32> = x_896.x_MainLightWorldToLight[1i];
    let x_910 : vec2<f32> = (vec2<f32>(x_905.y, x_905.y) * vec2<f32>(x_908.x, x_908.y));
    let x_911 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_910.x, x_910.y, x_911.z);
    let x_914 : vec4<f32> = x_896.x_MainLightWorldToLight[0i];
    let x_916 : vec3<f32> = vs_INTERP8;
    let x_919 : vec3<f32> = u_xlat20;
    let x_921 : vec2<f32> = ((vec2<f32>(x_914.x, x_914.y) * vec2<f32>(x_916.x, x_916.x)) + vec2<f32>(x_919.x, x_919.y));
    let x_922 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_921.x, x_921.y, x_922.z);
    let x_925 : vec4<f32> = x_896.x_MainLightWorldToLight[2i];
    let x_927 : vec3<f32> = vs_INTERP8;
    let x_930 : vec3<f32> = u_xlat20;
    let x_932 : vec2<f32> = ((vec2<f32>(x_925.x, x_925.y) * vec2<f32>(x_927.z, x_927.z)) + vec2<f32>(x_930.x, x_930.y));
    let x_933 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_932.x, x_932.y, x_933.z);
    let x_935 : vec3<f32> = u_xlat20;
    let x_938 : vec4<f32> = x_896.x_MainLightWorldToLight[3i];
    let x_940 : vec2<f32> = (vec2<f32>(x_935.x, x_935.y) + vec2<f32>(x_938.x, x_938.y));
    let x_941 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_940.x, x_940.y, x_941.z);
    let x_943 : vec3<f32> = u_xlat20;
    let x_947 : vec2<f32> = ((vec2<f32>(x_943.x, x_943.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_948 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_947.x, x_947.y, x_948.z);
    let x_955 : vec3<f32> = u_xlat20;
    let x_958 : f32 = x_142.x_GlobalMipBias.x;
    let x_959 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_955.x, x_955.y), x_958);
    u_xlat7 = x_959;
    let x_961 : f32 = x_896.x_MainLightCookieTextureFormat;
    let x_963 : f32 = x_896.x_MainLightCookieTextureFormat;
    let x_965 : f32 = x_896.x_MainLightCookieTextureFormat;
    let x_967 : f32 = x_896.x_MainLightCookieTextureFormat;
    let x_968 : vec4<f32> = vec4<f32>(x_961, x_963, x_965, x_967);
    let x_976 : vec4<bool> = (vec4<f32>(x_968.x, x_968.y, x_968.z, x_968.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_976.x, x_976.y);
    let x_979 : bool = u_xlatb20.y;
    if (x_979) {
      let x_984 : f32 = u_xlat7.w;
      x_980 = x_984;
    } else {
      let x_987 : f32 = u_xlat7.x;
      x_980 = x_987;
    }
    let x_988 : f32 = x_980;
    u_xlat34 = x_988;
    let x_990 : bool = u_xlatb20.x;
    if (x_990) {
      let x_994 : vec4<f32> = u_xlat7;
      x_991 = vec3<f32>(x_994.x, x_994.y, x_994.z);
    } else {
      let x_997 : f32 = u_xlat34;
      x_991 = vec3<f32>(x_997, x_997, x_997);
    }
    let x_999 : vec3<f32> = x_991;
    u_xlat20 = x_999;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1004 : vec3<f32> = u_xlat20;
  let x_1006 : vec4<f32> = x_142.x_MainLightColor;
  u_xlat20 = (x_1004 * vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec3<f32> = u_xlat5;
  let x_1011 : vec3<f32> = u_xlat14;
  u_xlat7.x = dot(-(x_1009), x_1011);
  let x_1015 : f32 = u_xlat7.x;
  let x_1017 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1015 + x_1017);
  let x_1020 : vec3<f32> = u_xlat14;
  let x_1021 : vec4<f32> = u_xlat7;
  let x_1025 : vec3<f32> = u_xlat5;
  let x_1027 : vec3<f32> = ((x_1020 * -(vec3<f32>(x_1021.x, x_1021.x, x_1021.x))) + -(x_1025));
  let x_1028 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1031 : vec3<f32> = u_xlat14;
  let x_1032 : vec3<f32> = u_xlat5;
  u_xlat49 = dot(x_1031, x_1032);
  let x_1034 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1034, 0.0f, 1.0f);
  let x_1036 : f32 = u_xlat49;
  u_xlat49 = (-(x_1036) + 1.0f);
  let x_1039 : f32 = u_xlat49;
  let x_1040 : f32 = u_xlat49;
  u_xlat49 = (x_1039 * x_1040);
  let x_1042 : f32 = u_xlat49;
  let x_1043 : f32 = u_xlat49;
  u_xlat49 = (x_1042 * x_1043);
  let x_1045 : f32 = u_xlat45;
  u_xlat8.x = ((-(x_1045) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1052 : f32 = u_xlat45;
  let x_1054 : f32 = u_xlat8.x;
  u_xlat45 = (x_1052 * x_1054);
  let x_1056 : f32 = u_xlat45;
  u_xlat45 = (x_1056 * 6.0f);
  let x_1067 : vec4<f32> = u_xlat7;
  let x_1069 : f32 = u_xlat45;
  let x_1070 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1067.x, x_1067.y, x_1067.z), x_1069);
  u_xlat8 = x_1070;
  let x_1072 : f32 = u_xlat8.w;
  u_xlat45 = (x_1072 + -1.0f);
  let x_1075 : f32 = x_77.unity_SpecCube0_HDR.w;
  let x_1076 : f32 = u_xlat45;
  u_xlat45 = ((x_1075 * x_1076) + 1.0f);
  let x_1079 : f32 = u_xlat45;
  u_xlat45 = max(x_1079, 0.0f);
  let x_1081 : f32 = u_xlat45;
  u_xlat45 = log2(x_1081);
  let x_1083 : f32 = u_xlat45;
  let x_1085 : f32 = x_77.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_1083 * x_1085);
  let x_1087 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1087);
  let x_1089 : f32 = u_xlat45;
  let x_1091 : f32 = x_77.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_1089 * x_1091);
  let x_1093 : vec4<f32> = u_xlat8;
  let x_1095 : f32 = u_xlat45;
  let x_1097 : vec3<f32> = (vec3<f32>(x_1093.x, x_1093.y, x_1093.z) * vec3<f32>(x_1095, x_1095, x_1095));
  let x_1098 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
  let x_1100 : vec3<f32> = u_xlat4;
  let x_1102 : vec3<f32> = u_xlat4;
  let x_1106 : vec2<f32> = ((vec2<f32>(x_1100.x, x_1100.x) * vec2<f32>(x_1102.x, x_1102.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1107 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
  let x_1110 : f32 = u_xlat8.y;
  u_xlat45 = (1.0f / x_1110);
  let x_1112 : f32 = u_xlat32;
  u_xlat4.x = (x_1112 + -0.03999999910593032837f);
  let x_1116 : f32 = u_xlat49;
  let x_1118 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1116 * x_1118) + 0.03999999910593032837f);
  let x_1123 : f32 = u_xlat45;
  let x_1125 : f32 = u_xlat4.x;
  u_xlat45 = (x_1123 * x_1125);
  let x_1127 : f32 = u_xlat45;
  let x_1129 : vec4<f32> = u_xlat7;
  let x_1131 : vec3<f32> = (vec3<f32>(x_1127, x_1127, x_1127) * vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1132 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
  let x_1134 : vec3<f32> = u_xlat16;
  let x_1135 : vec4<f32> = u_xlat3;
  let x_1138 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_1134 * vec3<f32>(x_1135.x, x_1135.y, x_1135.z)) + vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : f32 = u_xlat43;
  let x_1143 : f32 = x_77.unity_LightData.z;
  u_xlat43 = (x_1141 * x_1143);
  let x_1145 : vec3<f32> = u_xlat14;
  let x_1147 : vec4<f32> = x_142.x_MainLightPosition;
  u_xlat45 = dot(x_1145, vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
  let x_1150 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1150, 0.0f, 1.0f);
  let x_1152 : f32 = u_xlat43;
  let x_1153 : f32 = u_xlat45;
  u_xlat43 = (x_1152 * x_1153);
  let x_1155 : f32 = u_xlat43;
  let x_1157 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1155, x_1155, x_1155) * x_1157);
  let x_1159 : vec3<f32> = u_xlat5;
  let x_1161 : vec4<f32> = x_142.x_MainLightPosition;
  let x_1163 : vec3<f32> = (x_1159 + vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1164 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
  let x_1166 : vec4<f32> = u_xlat7;
  let x_1168 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1166.x, x_1166.y, x_1166.z), vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
  let x_1171 : f32 = u_xlat43;
  u_xlat43 = max(x_1171, 1.17549435e-38f);
  let x_1173 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1173);
  let x_1175 : f32 = u_xlat43;
  let x_1177 : vec4<f32> = u_xlat7;
  let x_1179 : vec3<f32> = (vec3<f32>(x_1175, x_1175, x_1175) * vec3<f32>(x_1177.x, x_1177.y, x_1177.z));
  let x_1180 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
  let x_1182 : vec3<f32> = u_xlat14;
  let x_1183 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(x_1182, vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1186 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1186, 0.0f, 1.0f);
  let x_1189 : vec4<f32> = x_142.x_MainLightPosition;
  let x_1191 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1189.x, x_1189.y, x_1189.z), vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
  let x_1194 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1194, 0.0f, 1.0f);
  let x_1196 : f32 = u_xlat43;
  let x_1197 : f32 = u_xlat43;
  u_xlat43 = (x_1196 * x_1197);
  let x_1199 : f32 = u_xlat43;
  let x_1201 : f32 = u_xlat8.x;
  u_xlat43 = ((x_1199 * x_1201) + 1.00001001358032226562f);
  let x_1205 : f32 = u_xlat45;
  let x_1206 : f32 = u_xlat45;
  u_xlat45 = (x_1205 * x_1206);
  let x_1208 : f32 = u_xlat43;
  let x_1209 : f32 = u_xlat43;
  u_xlat43 = (x_1208 * x_1209);
  let x_1211 : f32 = u_xlat45;
  u_xlat45 = max(x_1211, 0.10000000149011611938f);
  let x_1214 : f32 = u_xlat43;
  let x_1215 : f32 = u_xlat45;
  u_xlat43 = (x_1214 * x_1215);
  let x_1217 : f32 = u_xlat46;
  let x_1218 : f32 = u_xlat43;
  u_xlat43 = (x_1217 * x_1218);
  let x_1220 : f32 = u_xlat18;
  let x_1221 : f32 = u_xlat43;
  u_xlat43 = (x_1220 / x_1221);
  let x_1223 : f32 = u_xlat43;
  let x_1227 : vec4<f32> = u_xlat3;
  let x_1229 : vec3<f32> = ((vec3<f32>(x_1223, x_1223, x_1223) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
  let x_1230 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
  let x_1232 : vec3<f32> = u_xlat20;
  let x_1233 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1232 * vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
  let x_1238 : f32 = x_142.x_AdditionalLightsCount.x;
  let x_1240 : f32 = x_77.unity_LightData.y;
  u_xlat43 = min(x_1238, x_1240);
  let x_1243 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1243));
  let x_1247 : f32 = u_xlat6.x;
  let x_1250 : f32 = x_352.x_AdditionalShadowFadeParams.x;
  let x_1253 : f32 = x_352.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1247 * x_1250) + x_1253);
  let x_1255 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1255, 0.0f, 1.0f);
  let x_1261 : f32 = x_896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1263 : f32 = x_896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1265 : f32 = x_896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1267 : f32 = x_896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1268 : vec4<f32> = vec4<f32>(x_1261, x_1263, x_1265, x_1267);
  let x_1275 : vec4<bool> = (vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1268.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_1276 : vec2<bool> = vec2<bool>(x_1275.x, x_1275.z);
  let x_1277 : vec3<bool> = u_xlatb4;
  u_xlatb4 = vec3<bool>(x_1276.x, x_1277.y, x_1276.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1288 : u32 = u_xlatu_loop_1;
    let x_1289 : u32 = u_xlatu43;
    if ((x_1288 < x_1289)) {
    } else {
      break;
    }
    let x_1292 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_1292 >> 2u);
    let x_1295 : u32 = u_xlatu_loop_1;
    u_xlati22 = bitcast<i32>((x_1295 & 3u));
    let x_1298 : u32 = u_xlatu49;
    let x_1301 : vec4<f32> = x_77.unity_LightIndices[bitcast<i32>(x_1298)];
    let x_1311 : i32 = u_xlati22;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1316 : vec4<u32> = indexable[x_1311];
    u_xlat49 = dot(x_1301, bitcast<vec4<f32>>(x_1316));
    let x_1320 : f32 = u_xlat49;
    u_xlati49 = i32(x_1320);
    let x_1322 : vec3<f32> = vs_INTERP8;
    let x_1333 : i32 = u_xlati49;
    let x_1335 : vec4<f32> = x_1332.x_AdditionalLightsPosition[x_1333];
    let x_1338 : i32 = u_xlati49;
    let x_1340 : vec4<f32> = x_1332.x_AdditionalLightsPosition[x_1338];
    u_xlat22 = ((-(x_1322) * vec3<f32>(x_1335.w, x_1335.w, x_1335.w)) + vec3<f32>(x_1340.x, x_1340.y, x_1340.z));
    let x_1343 : vec3<f32> = u_xlat22;
    let x_1344 : vec3<f32> = u_xlat22;
    u_xlat9.x = dot(x_1343, x_1344);
    let x_1348 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_1348, 0.00006103515625f);
    let x_1354 : f32 = u_xlat9.x;
    u_xlat23 = inverseSqrt(x_1354);
    let x_1357 : vec3<f32> = u_xlat22;
    let x_1358 : f32 = u_xlat23;
    u_xlat10 = (x_1357 * vec3<f32>(x_1358, x_1358, x_1358));
    let x_1363 : f32 = u_xlat9.x;
    u_xlat37 = (1.0f / x_1363);
    let x_1366 : f32 = u_xlat9.x;
    let x_1367 : i32 = u_xlati49;
    let x_1369 : f32 = x_1332.x_AdditionalLightsAttenuation[x_1367].x;
    u_xlat9.x = (x_1366 * x_1369);
    let x_1373 : f32 = u_xlat9.x;
    let x_1376 : f32 = u_xlat9.x;
    u_xlat9.x = ((-(x_1373) * x_1376) + 1.0f);
    let x_1381 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_1381, 0.0f);
    let x_1385 : f32 = u_xlat9.x;
    let x_1387 : f32 = u_xlat9.x;
    u_xlat9.x = (x_1385 * x_1387);
    let x_1391 : f32 = u_xlat9.x;
    let x_1392 : f32 = u_xlat37;
    u_xlat9.x = (x_1391 * x_1392);
    let x_1395 : i32 = u_xlati49;
    let x_1397 : vec4<f32> = x_1332.x_AdditionalLightsSpotDir[x_1395];
    let x_1399 : vec3<f32> = u_xlat10;
    u_xlat37 = dot(vec3<f32>(x_1397.x, x_1397.y, x_1397.z), x_1399);
    let x_1401 : f32 = u_xlat37;
    let x_1402 : i32 = u_xlati49;
    let x_1404 : f32 = x_1332.x_AdditionalLightsAttenuation[x_1402].z;
    let x_1406 : i32 = u_xlati49;
    let x_1408 : f32 = x_1332.x_AdditionalLightsAttenuation[x_1406].w;
    u_xlat37 = ((x_1401 * x_1404) + x_1408);
    let x_1410 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1410, 0.0f, 1.0f);
    let x_1412 : f32 = u_xlat37;
    let x_1413 : f32 = u_xlat37;
    u_xlat37 = (x_1412 * x_1413);
    let x_1415 : f32 = u_xlat37;
    let x_1417 : f32 = u_xlat9.x;
    u_xlat9.x = (x_1415 * x_1417);
    let x_1422 : i32 = u_xlati49;
    let x_1424 : f32 = x_352.x_AdditionalShadowParams[x_1422].w;
    u_xlati37 = i32(x_1424);
    let x_1427 : i32 = u_xlati37;
    u_xlatb51 = (x_1427 >= 0i);
    let x_1429 : bool = u_xlatb51;
    if (x_1429) {
      let x_1433 : i32 = u_xlati49;
      let x_1435 : f32 = x_352.x_AdditionalShadowParams[x_1433].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1435, x_1435, x_1435, x_1435))));
      let x_1439 : bool = u_xlatb51;
      if (x_1439) {
        let x_1444 : vec3<f32> = u_xlat10;
        let x_1447 : vec3<f32> = u_xlat10;
        let x_1450 : vec4<bool> = (abs(vec4<f32>(x_1444.z, x_1444.z, x_1444.y, x_1444.z)) >= abs(vec4<f32>(x_1447.x, x_1447.y, x_1447.x, x_1447.x)));
        let x_1451 : vec3<bool> = vec3<bool>(x_1450.x, x_1450.y, x_1450.z);
        let x_1452 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1451.x, x_1451.y, x_1451.z, x_1452.w);
        let x_1455 : bool = u_xlatb11.y;
        let x_1457 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1455 & x_1457);
        let x_1459 : vec3<f32> = u_xlat10;
        let x_1462 : vec4<bool> = (-(vec4<f32>(x_1459.z, x_1459.y, x_1459.z, x_1459.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1463 : vec3<bool> = vec3<bool>(x_1462.x, x_1462.y, x_1462.w);
        let x_1464 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1463.x, x_1463.y, x_1464.z, x_1463.z);
        let x_1468 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1468);
        let x_1473 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1473);
        let x_1479 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1479);
        let x_1482 : bool = u_xlatb11.z;
        if (x_1482) {
          let x_1487 : f32 = u_xlat11.y;
          x_1483 = x_1487;
        } else {
          let x_1489 : f32 = u_xlat52;
          x_1483 = x_1489;
        }
        let x_1490 : f32 = x_1483;
        u_xlat52 = x_1490;
        let x_1492 : bool = u_xlatb51;
        if (x_1492) {
          let x_1497 : f32 = u_xlat11.x;
          x_1493 = x_1497;
        } else {
          let x_1499 : f32 = u_xlat52;
          x_1493 = x_1499;
        }
        let x_1500 : f32 = x_1493;
        u_xlat51 = x_1500;
        let x_1501 : i32 = u_xlati49;
        let x_1503 : f32 = x_352.x_AdditionalShadowParams[x_1501].w;
        u_xlat52 = trunc(x_1503);
        let x_1505 : f32 = u_xlat51;
        let x_1506 : f32 = u_xlat52;
        u_xlat51 = (x_1505 + x_1506);
        let x_1508 : f32 = u_xlat51;
        u_xlati37 = i32(x_1508);
      }
      let x_1510 : i32 = u_xlati37;
      u_xlati37 = (x_1510 << bitcast<u32>(2i));
      let x_1512 : vec3<f32> = vs_INTERP8;
      let x_1515 : i32 = u_xlati37;
      let x_1518 : i32 = u_xlati37;
      let x_1522 : vec4<f32> = x_352.x_AdditionalLightsWorldToShadow[((x_1515 + 1i) / 4i)][((x_1518 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1512.y, x_1512.y, x_1512.y, x_1512.y) * x_1522);
      let x_1524 : i32 = u_xlati37;
      let x_1526 : i32 = u_xlati37;
      let x_1529 : vec4<f32> = x_352.x_AdditionalLightsWorldToShadow[(x_1524 / 4i)][(x_1526 % 4i)];
      let x_1530 : vec3<f32> = vs_INTERP8;
      let x_1533 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1529 * vec4<f32>(x_1530.x, x_1530.x, x_1530.x, x_1530.x)) + x_1533);
      let x_1535 : i32 = u_xlati37;
      let x_1538 : i32 = u_xlati37;
      let x_1542 : vec4<f32> = x_352.x_AdditionalLightsWorldToShadow[((x_1535 + 2i) / 4i)][((x_1538 + 2i) % 4i)];
      let x_1543 : vec3<f32> = vs_INTERP8;
      let x_1546 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1542 * vec4<f32>(x_1543.z, x_1543.z, x_1543.z, x_1543.z)) + x_1546);
      let x_1548 : vec4<f32> = u_xlat11;
      let x_1549 : i32 = u_xlati37;
      let x_1552 : i32 = u_xlati37;
      let x_1556 : vec4<f32> = x_352.x_AdditionalLightsWorldToShadow[((x_1549 + 3i) / 4i)][((x_1552 + 3i) % 4i)];
      u_xlat11 = (x_1548 + x_1556);
      let x_1558 : vec4<f32> = u_xlat11;
      let x_1560 : vec4<f32> = u_xlat11;
      let x_1562 : vec3<f32> = (vec3<f32>(x_1558.x, x_1558.y, x_1558.z) / vec3<f32>(x_1560.w, x_1560.w, x_1560.w));
      let x_1563 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1563.w);
      let x_1566 : vec4<f32> = u_xlat11;
      let x_1567 : vec2<f32> = vec2<f32>(x_1566.x, x_1566.y);
      let x_1569 : f32 = u_xlat11.z;
      txVec2 = vec3<f32>(x_1567.x, x_1567.y, x_1569);
      let x_1577 : vec3<f32> = txVec2;
      let x_1579 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1577.xy, x_1577.z);
      u_xlat37 = x_1579;
      let x_1580 : i32 = u_xlati49;
      let x_1582 : f32 = x_352.x_AdditionalShadowParams[x_1580].x;
      u_xlat51 = (1.0f + -(x_1582));
      let x_1585 : f32 = u_xlat37;
      let x_1586 : i32 = u_xlati49;
      let x_1588 : f32 = x_352.x_AdditionalShadowParams[x_1586].x;
      let x_1590 : f32 = u_xlat51;
      u_xlat37 = ((x_1585 * x_1588) + x_1590);
      let x_1593 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1593);
      let x_1597 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1597 >= 1.0f);
      let x_1599 : bool = u_xlatb51;
      let x_1600 : bool = u_xlatb52;
      u_xlatb51 = (x_1599 | x_1600);
      let x_1602 : bool = u_xlatb51;
      let x_1603 : f32 = u_xlat37;
      u_xlat37 = select(x_1603, 1.0f, x_1602);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_1606 : f32 = u_xlat37;
    u_xlat51 = (-(x_1606) + 1.0f);
    let x_1609 : f32 = u_xlat45;
    let x_1610 : f32 = u_xlat51;
    let x_1612 : f32 = u_xlat37;
    u_xlat37 = ((x_1609 * x_1610) + x_1612);
    let x_1615 : i32 = u_xlati49;
    u_xlati51 = (1i << bitcast<u32>((x_1615 & 31i)));
    let x_1619 : i32 = u_xlati51;
    let x_1622 : f32 = x_896.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1619) & bitcast<u32>(x_1622)));
    let x_1626 : i32 = u_xlati51;
    if ((x_1626 != 0i)) {
      let x_1630 : i32 = u_xlati49;
      let x_1632 : f32 = x_896.x_AdditionalLightsLightTypes[x_1630].el;
      u_xlati51 = i32(x_1632);
      let x_1635 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1635 != 0i));
      let x_1639 : i32 = u_xlati49;
      u_xlati11 = (x_1639 << bitcast<u32>(2i));
      let x_1641 : i32 = u_xlati52;
      if ((x_1641 != 0i)) {
        let x_1646 : vec3<f32> = vs_INTERP8;
        let x_1648 : i32 = u_xlati11;
        let x_1651 : i32 = u_xlati11;
        let x_1655 : vec4<f32> = x_896.x_AdditionalLightsWorldToLights[((x_1648 + 1i) / 4i)][((x_1651 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1646.y, x_1646.y, x_1646.y) * vec3<f32>(x_1655.x, x_1655.y, x_1655.w));
        let x_1658 : i32 = u_xlati11;
        let x_1660 : i32 = u_xlati11;
        let x_1663 : vec4<f32> = x_896.x_AdditionalLightsWorldToLights[(x_1658 / 4i)][(x_1660 % 4i)];
        let x_1665 : vec3<f32> = vs_INTERP8;
        let x_1668 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1663.x, x_1663.y, x_1663.w) * vec3<f32>(x_1665.x, x_1665.x, x_1665.x)) + x_1668);
        let x_1670 : i32 = u_xlati11;
        let x_1673 : i32 = u_xlati11;
        let x_1677 : vec4<f32> = x_896.x_AdditionalLightsWorldToLights[((x_1670 + 2i) / 4i)][((x_1673 + 2i) % 4i)];
        let x_1679 : vec3<f32> = vs_INTERP8;
        let x_1682 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1677.x, x_1677.y, x_1677.w) * vec3<f32>(x_1679.z, x_1679.z, x_1679.z)) + x_1682);
        let x_1684 : vec3<f32> = u_xlat25;
        let x_1685 : i32 = u_xlati11;
        let x_1688 : i32 = u_xlati11;
        let x_1692 : vec4<f32> = x_896.x_AdditionalLightsWorldToLights[((x_1685 + 3i) / 4i)][((x_1688 + 3i) % 4i)];
        u_xlat25 = (x_1684 + vec3<f32>(x_1692.x, x_1692.y, x_1692.w));
        let x_1695 : vec3<f32> = u_xlat25;
        let x_1697 : vec3<f32> = u_xlat25;
        let x_1699 : vec2<f32> = (vec2<f32>(x_1695.x, x_1695.y) / vec2<f32>(x_1697.z, x_1697.z));
        let x_1700 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1699.x, x_1699.y, x_1700.z);
        let x_1702 : vec3<f32> = u_xlat25;
        let x_1705 : vec2<f32> = ((vec2<f32>(x_1702.x, x_1702.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1706 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1705.x, x_1705.y, x_1706.z);
        let x_1708 : vec3<f32> = u_xlat25;
        let x_1712 : vec2<f32> = clamp(vec2<f32>(x_1708.x, x_1708.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1713 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1712.x, x_1712.y, x_1713.z);
        let x_1715 : i32 = u_xlati49;
        let x_1717 : vec4<f32> = x_896.x_AdditionalLightsCookieAtlasUVRects[x_1715];
        let x_1719 : vec3<f32> = u_xlat25;
        let x_1722 : i32 = u_xlati49;
        let x_1724 : vec4<f32> = x_896.x_AdditionalLightsCookieAtlasUVRects[x_1722];
        let x_1726 : vec2<f32> = ((vec2<f32>(x_1717.x, x_1717.y) * vec2<f32>(x_1719.x, x_1719.y)) + vec2<f32>(x_1724.z, x_1724.w));
        let x_1727 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1726.x, x_1726.y, x_1727.z);
      } else {
        let x_1730 : i32 = u_xlati51;
        u_xlatb51 = (x_1730 == 1i);
        let x_1732 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1732);
        let x_1734 : i32 = u_xlati51;
        if ((x_1734 != 0i)) {
          let x_1739 : vec3<f32> = vs_INTERP8;
          let x_1741 : i32 = u_xlati11;
          let x_1744 : i32 = u_xlati11;
          let x_1748 : vec4<f32> = x_896.x_AdditionalLightsWorldToLights[((x_1741 + 1i) / 4i)][((x_1744 + 1i) % 4i)];
          let x_1750 : vec2<f32> = (vec2<f32>(x_1739.y, x_1739.y) * vec2<f32>(x_1748.x, x_1748.y));
          let x_1751 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1750.x, x_1750.y, x_1751.z, x_1751.w);
          let x_1753 : i32 = u_xlati11;
          let x_1755 : i32 = u_xlati11;
          let x_1758 : vec4<f32> = x_896.x_AdditionalLightsWorldToLights[(x_1753 / 4i)][(x_1755 % 4i)];
          let x_1760 : vec3<f32> = vs_INTERP8;
          let x_1763 : vec4<f32> = u_xlat12;
          let x_1765 : vec2<f32> = ((vec2<f32>(x_1758.x, x_1758.y) * vec2<f32>(x_1760.x, x_1760.x)) + vec2<f32>(x_1763.x, x_1763.y));
          let x_1766 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1765.x, x_1765.y, x_1766.z, x_1766.w);
          let x_1768 : i32 = u_xlati11;
          let x_1771 : i32 = u_xlati11;
          let x_1775 : vec4<f32> = x_896.x_AdditionalLightsWorldToLights[((x_1768 + 2i) / 4i)][((x_1771 + 2i) % 4i)];
          let x_1777 : vec3<f32> = vs_INTERP8;
          let x_1780 : vec4<f32> = u_xlat12;
          let x_1782 : vec2<f32> = ((vec2<f32>(x_1775.x, x_1775.y) * vec2<f32>(x_1777.z, x_1777.z)) + vec2<f32>(x_1780.x, x_1780.y));
          let x_1783 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1782.x, x_1782.y, x_1783.z, x_1783.w);
          let x_1785 : vec4<f32> = u_xlat12;
          let x_1787 : i32 = u_xlati11;
          let x_1790 : i32 = u_xlati11;
          let x_1794 : vec4<f32> = x_896.x_AdditionalLightsWorldToLights[((x_1787 + 3i) / 4i)][((x_1790 + 3i) % 4i)];
          let x_1796 : vec2<f32> = (vec2<f32>(x_1785.x, x_1785.y) + vec2<f32>(x_1794.x, x_1794.y));
          let x_1797 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1796.x, x_1796.y, x_1797.z, x_1797.w);
          let x_1799 : vec4<f32> = u_xlat12;
          let x_1802 : vec2<f32> = ((vec2<f32>(x_1799.x, x_1799.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1803 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1802.x, x_1802.y, x_1803.z, x_1803.w);
          let x_1805 : vec4<f32> = u_xlat12;
          let x_1807 : vec2<f32> = fract(vec2<f32>(x_1805.x, x_1805.y));
          let x_1808 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1807.x, x_1807.y, x_1808.z, x_1808.w);
          let x_1810 : i32 = u_xlati49;
          let x_1812 : vec4<f32> = x_896.x_AdditionalLightsCookieAtlasUVRects[x_1810];
          let x_1814 : vec4<f32> = u_xlat12;
          let x_1817 : i32 = u_xlati49;
          let x_1819 : vec4<f32> = x_896.x_AdditionalLightsCookieAtlasUVRects[x_1817];
          let x_1821 : vec2<f32> = ((vec2<f32>(x_1812.x, x_1812.y) * vec2<f32>(x_1814.x, x_1814.y)) + vec2<f32>(x_1819.z, x_1819.w));
          let x_1822 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1821.x, x_1821.y, x_1822.z);
        } else {
          let x_1825 : vec3<f32> = vs_INTERP8;
          let x_1827 : i32 = u_xlati11;
          let x_1830 : i32 = u_xlati11;
          let x_1834 : vec4<f32> = x_896.x_AdditionalLightsWorldToLights[((x_1827 + 1i) / 4i)][((x_1830 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1825.y, x_1825.y, x_1825.y, x_1825.y) * x_1834);
          let x_1836 : i32 = u_xlati11;
          let x_1838 : i32 = u_xlati11;
          let x_1841 : vec4<f32> = x_896.x_AdditionalLightsWorldToLights[(x_1836 / 4i)][(x_1838 % 4i)];
          let x_1842 : vec3<f32> = vs_INTERP8;
          let x_1845 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1841 * vec4<f32>(x_1842.x, x_1842.x, x_1842.x, x_1842.x)) + x_1845);
          let x_1847 : i32 = u_xlati11;
          let x_1850 : i32 = u_xlati11;
          let x_1854 : vec4<f32> = x_896.x_AdditionalLightsWorldToLights[((x_1847 + 2i) / 4i)][((x_1850 + 2i) % 4i)];
          let x_1855 : vec3<f32> = vs_INTERP8;
          let x_1858 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1854 * vec4<f32>(x_1855.z, x_1855.z, x_1855.z, x_1855.z)) + x_1858);
          let x_1860 : vec4<f32> = u_xlat12;
          let x_1861 : i32 = u_xlati11;
          let x_1864 : i32 = u_xlati11;
          let x_1868 : vec4<f32> = x_896.x_AdditionalLightsWorldToLights[((x_1861 + 3i) / 4i)][((x_1864 + 3i) % 4i)];
          u_xlat12 = (x_1860 + x_1868);
          let x_1870 : vec4<f32> = u_xlat12;
          let x_1872 : vec4<f32> = u_xlat12;
          let x_1874 : vec3<f32> = (vec3<f32>(x_1870.x, x_1870.y, x_1870.z) / vec3<f32>(x_1872.w, x_1872.w, x_1872.w));
          let x_1875 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1874.x, x_1874.y, x_1874.z, x_1875.w);
          let x_1877 : vec4<f32> = u_xlat12;
          let x_1879 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1877.x, x_1877.y, x_1877.z), vec3<f32>(x_1879.x, x_1879.y, x_1879.z));
          let x_1882 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1882);
          let x_1884 : f32 = u_xlat51;
          let x_1886 : vec4<f32> = u_xlat12;
          let x_1888 : vec3<f32> = (vec3<f32>(x_1884, x_1884, x_1884) * vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
          let x_1889 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1888.x, x_1888.y, x_1888.z, x_1889.w);
          let x_1891 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1891.x, x_1891.y, x_1891.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1896 : f32 = u_xlat51;
          u_xlat51 = max(x_1896, 0.00000099999999747524f);
          let x_1899 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1899);
          let x_1902 : f32 = u_xlat51;
          let x_1904 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1902, x_1902, x_1902) * vec3<f32>(x_1904.z, x_1904.x, x_1904.y));
          let x_1908 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1908);
          let x_1912 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1912, 0.0f, 1.0f);
          let x_1915 : vec3<f32> = u_xlat13;
          let x_1917 : vec4<bool> = (vec4<f32>(x_1915.y, x_1915.y, x_1915.y, x_1915.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1918 : vec2<bool> = vec2<bool>(x_1917.x, x_1917.w);
          let x_1919 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1918.x, x_1919.y, x_1919.z, x_1918.y);
          let x_1922 : bool = u_xlatb11.x;
          if (x_1922) {
            let x_1927 : f32 = u_xlat13.x;
            x_1923 = x_1927;
          } else {
            let x_1930 : f32 = u_xlat13.x;
            x_1923 = -(x_1930);
          }
          let x_1932 : f32 = x_1923;
          u_xlat11.x = x_1932;
          let x_1935 : bool = u_xlatb11.w;
          if (x_1935) {
            let x_1940 : f32 = u_xlat13.x;
            x_1936 = x_1940;
          } else {
            let x_1943 : f32 = u_xlat13.x;
            x_1936 = -(x_1943);
          }
          let x_1945 : f32 = x_1936;
          u_xlat11.w = x_1945;
          let x_1947 : vec4<f32> = u_xlat12;
          let x_1949 : f32 = u_xlat51;
          let x_1952 : vec4<f32> = u_xlat11;
          let x_1954 : vec2<f32> = ((vec2<f32>(x_1947.x, x_1947.y) * vec2<f32>(x_1949, x_1949)) + vec2<f32>(x_1952.x, x_1952.w));
          let x_1955 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1954.x, x_1955.y, x_1955.z, x_1954.y);
          let x_1957 : vec4<f32> = u_xlat11;
          let x_1960 : vec2<f32> = ((vec2<f32>(x_1957.x, x_1957.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1961 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1960.x, x_1961.y, x_1961.z, x_1960.y);
          let x_1963 : vec4<f32> = u_xlat11;
          let x_1967 : vec2<f32> = clamp(vec2<f32>(x_1963.x, x_1963.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1968 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1967.x, x_1968.y, x_1968.z, x_1967.y);
          let x_1970 : i32 = u_xlati49;
          let x_1972 : vec4<f32> = x_896.x_AdditionalLightsCookieAtlasUVRects[x_1970];
          let x_1974 : vec4<f32> = u_xlat11;
          let x_1977 : i32 = u_xlati49;
          let x_1979 : vec4<f32> = x_896.x_AdditionalLightsCookieAtlasUVRects[x_1977];
          let x_1981 : vec2<f32> = ((vec2<f32>(x_1972.x, x_1972.y) * vec2<f32>(x_1974.x, x_1974.w)) + vec2<f32>(x_1979.z, x_1979.w));
          let x_1982 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1981.x, x_1981.y, x_1982.z);
        }
      }
      let x_1989 : vec3<f32> = u_xlat25;
      let x_1991 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1989.x, x_1989.y), 0.0f);
      u_xlat11 = x_1991;
      let x_1993 : bool = u_xlatb4.z;
      if (x_1993) {
        let x_1998 : f32 = u_xlat11.w;
        x_1994 = x_1998;
      } else {
        let x_2001 : f32 = u_xlat11.x;
        x_1994 = x_2001;
      }
      let x_2002 : f32 = x_1994;
      u_xlat51 = x_2002;
      let x_2004 : bool = u_xlatb4.x;
      if (x_2004) {
        let x_2008 : vec4<f32> = u_xlat11;
        x_2005 = vec3<f32>(x_2008.x, x_2008.y, x_2008.z);
      } else {
        let x_2011 : f32 = u_xlat51;
        x_2005 = vec3<f32>(x_2011, x_2011, x_2011);
      }
      let x_2013 : vec3<f32> = x_2005;
      let x_2014 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2013.x, x_2013.y, x_2013.z, x_2014.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2020 : vec4<f32> = u_xlat11;
    let x_2022 : i32 = u_xlati49;
    let x_2024 : vec4<f32> = x_1332.x_AdditionalLightsColor[x_2022];
    let x_2026 : vec3<f32> = (vec3<f32>(x_2020.x, x_2020.y, x_2020.z) * vec3<f32>(x_2024.x, x_2024.y, x_2024.z));
    let x_2027 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2026.x, x_2026.y, x_2026.z, x_2027.w);
    let x_2029 : f32 = u_xlat37;
    let x_2031 : f32 = u_xlat9.x;
    u_xlat49 = (x_2029 * x_2031);
    let x_2033 : vec3<f32> = u_xlat14;
    let x_2034 : vec3<f32> = u_xlat10;
    u_xlat9.x = dot(x_2033, x_2034);
    let x_2038 : f32 = u_xlat9.x;
    u_xlat9.x = clamp(x_2038, 0.0f, 1.0f);
    let x_2041 : f32 = u_xlat49;
    let x_2043 : f32 = u_xlat9.x;
    u_xlat49 = (x_2041 * x_2043);
    let x_2045 : f32 = u_xlat49;
    let x_2047 : vec4<f32> = u_xlat11;
    let x_2049 : vec3<f32> = (vec3<f32>(x_2045, x_2045, x_2045) * vec3<f32>(x_2047.x, x_2047.y, x_2047.z));
    let x_2050 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2049.x, x_2050.y, x_2049.y, x_2049.z);
    let x_2052 : vec3<f32> = u_xlat22;
    let x_2053 : f32 = u_xlat23;
    let x_2056 : vec3<f32> = u_xlat5;
    u_xlat22 = ((x_2052 * vec3<f32>(x_2053, x_2053, x_2053)) + x_2056);
    let x_2058 : vec3<f32> = u_xlat22;
    let x_2059 : vec3<f32> = u_xlat22;
    u_xlat49 = dot(x_2058, x_2059);
    let x_2061 : f32 = u_xlat49;
    u_xlat49 = max(x_2061, 1.17549435e-38f);
    let x_2063 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_2063);
    let x_2065 : f32 = u_xlat49;
    let x_2067 : vec3<f32> = u_xlat22;
    u_xlat22 = (vec3<f32>(x_2065, x_2065, x_2065) * x_2067);
    let x_2069 : vec3<f32> = u_xlat14;
    let x_2070 : vec3<f32> = u_xlat22;
    u_xlat49 = dot(x_2069, x_2070);
    let x_2072 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2072, 0.0f, 1.0f);
    let x_2074 : vec3<f32> = u_xlat10;
    let x_2075 : vec3<f32> = u_xlat22;
    u_xlat22.x = dot(x_2074, x_2075);
    let x_2079 : f32 = u_xlat22.x;
    u_xlat22.x = clamp(x_2079, 0.0f, 1.0f);
    let x_2082 : f32 = u_xlat49;
    let x_2083 : f32 = u_xlat49;
    u_xlat49 = (x_2082 * x_2083);
    let x_2085 : f32 = u_xlat49;
    let x_2087 : f32 = u_xlat8.x;
    u_xlat49 = ((x_2085 * x_2087) + 1.00001001358032226562f);
    let x_2091 : f32 = u_xlat22.x;
    let x_2093 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2091 * x_2093);
    let x_2096 : f32 = u_xlat49;
    let x_2097 : f32 = u_xlat49;
    u_xlat49 = (x_2096 * x_2097);
    let x_2100 : f32 = u_xlat22.x;
    u_xlat22.x = max(x_2100, 0.10000000149011611938f);
    let x_2103 : f32 = u_xlat49;
    let x_2105 : f32 = u_xlat22.x;
    u_xlat49 = (x_2103 * x_2105);
    let x_2107 : f32 = u_xlat46;
    let x_2108 : f32 = u_xlat49;
    u_xlat49 = (x_2107 * x_2108);
    let x_2110 : f32 = u_xlat18;
    let x_2111 : f32 = u_xlat49;
    u_xlat49 = (x_2110 / x_2111);
    let x_2113 : f32 = u_xlat49;
    let x_2116 : vec4<f32> = u_xlat3;
    u_xlat22 = ((vec3<f32>(x_2113, x_2113, x_2113) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_2116.x, x_2116.y, x_2116.z));
    let x_2119 : vec3<f32> = u_xlat22;
    let x_2120 : vec4<f32> = u_xlat9;
    let x_2123 : vec4<f32> = u_xlat7;
    let x_2125 : vec3<f32> = ((x_2119 * vec3<f32>(x_2120.x, x_2120.z, x_2120.w)) + vec3<f32>(x_2123.x, x_2123.y, x_2123.z));
    let x_2126 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2125.x, x_2125.y, x_2125.z, x_2126.w);

    continuing {
      let x_2128 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2128 + bitcast<u32>(1i));
    }
  }
  let x_2130 : vec3<f32> = u_xlat16;
  let x_2131 : f32 = u_xlat47;
  let x_2134 : vec3<f32> = u_xlat20;
  u_xlat14 = ((x_2130 * vec3<f32>(x_2131, x_2131, x_2131)) + x_2134);
  let x_2136 : vec4<f32> = u_xlat7;
  let x_2138 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_2136.x, x_2136.y, x_2136.z) + x_2138);
  let x_2142 : vec4<f32> = vs_INTERP6;
  let x_2144 : vec3<f32> = u_xlat1;
  let x_2146 : vec3<f32> = u_xlat14;
  let x_2147 : vec3<f32> = ((vec3<f32>(x_2142.w, x_2142.w, x_2142.w) * x_2144) + x_2146);
  let x_2148 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2147.x, x_2147.y, x_2147.z, x_2148.w);
  let x_2150 : bool = u_xlatb2;
  let x_2151 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_2151, x_2150);
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


