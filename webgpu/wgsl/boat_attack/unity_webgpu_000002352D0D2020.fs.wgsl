struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

struct UnityPerMaterial {
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  Color_C30C7CA3 : vec4<f32>,
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_90 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_145 : UnityPerDraw;

@group(0) @binding(6) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_199 : UnityPerMaterial;

@group(0) @binding(7) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_258 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_935 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1378 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1481 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

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
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlatb42 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat2 : vec3<f32>;
  var x_133 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat19 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb44 : bool;
  var u_xlatb46 : bool;
  var u_xlat14 : vec3<f32>;
  var u_xlat44 : f32;
  var x_375 : f32;
  var u_xlatu2 : vec3<u32>;
  var u_xlatu30 : u32;
  var u_xlatu3 : u32;
  var u_xlati30 : i32;
  var u_xlati16 : i32;
  var u_xlatu16 : u32;
  var u_xlati2 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat16 : vec3<f32>;
  var x_508 : f32;
  var u_xlatb16 : vec2<bool>;
  var x_539 : f32;
  var u_xlat30 : f32;
  var u_xlatb2 : bool;
  var x_586 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat33 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat34 : vec2<f32>;
  var u_xlatb34 : vec2<bool>;
  var u_xlatb48 : bool;
  var u_xlat7 : vec4<f32>;
  var u_xlat48 : f32;
  var x_1004 : f32;
  var x_1015 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlatu43 : u32;
  var u_xlatb5 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu34 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat23 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati52 : i32;
  var u_xlati50 : i32;
  var u_xlati11 : i32;
  var u_xlat25 : vec3<f32>;
  var u_xlatb50 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb11 : vec4<bool>;
  var u_xlat11 : vec4<f32>;
  var x_1785 : f32;
  var x_1798 : f32;
  var x_1860 : f32;
  var x_1871 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec4<f32> = gl_FragCoord;
  let x_50 : vec3<f32> = vec3<f32>(x_49.x, x_49.y, x_49.z);
  let x_55 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_50.x, x_50.y, x_50.z, (1.0f / x_55));
  let x_65 : vec3<f32> = vs_INTERP1;
  let x_66 : vec3<f32> = vs_INTERP1;
  u_xlat0.x = dot(x_65, x_66);
  let x_72 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_72);
  let x_76 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_76);
  let x_79 : vec3<f32> = u_xlat0;
  let x_81 : vec3<f32> = vs_INTERP1;
  u_xlat0 = (vec3<f32>(x_79.x, x_79.x, x_79.x) * x_81);
  let x_94 : f32 = x_90.unity_OrthoParams.w;
  u_xlatb42 = (x_94 == 0.0f);
  let x_99 : vec3<f32> = vs_INTERP0;
  let x_104 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_99) + x_104);
  let x_107 : vec3<f32> = u_xlat1;
  let x_108 : vec3<f32> = u_xlat1;
  u_xlat43 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_110);
  let x_112 : f32 = u_xlat43;
  let x_114 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_112, x_112, x_112) * x_114);
  let x_121 : f32 = x_90.unity_MatrixV[0i].z;
  u_xlat2.x = x_121;
  let x_125 : f32 = x_90.unity_MatrixV[1i].z;
  u_xlat2.y = x_125;
  let x_130 : f32 = x_90.unity_MatrixV[2i].z;
  u_xlat2.z = x_130;
  let x_132 : bool = u_xlatb42;
  if (x_132) {
    let x_136 : vec3<f32> = u_xlat1;
    x_133 = x_136;
  } else {
    let x_138 : vec3<f32> = u_xlat2;
    x_133 = x_138;
  }
  let x_139 : vec3<f32> = x_133;
  u_xlat1 = x_139;
  let x_140 : vec3<f32> = u_xlat1;
  let x_148 : vec4<f32> = x_145.unity_WorldToObject[1i];
  u_xlat2 = (vec3<f32>(x_140.y, x_140.y, x_140.y) * vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_152 : vec4<f32> = x_145.unity_WorldToObject[0i];
  let x_154 : vec3<f32> = u_xlat1;
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154.x, x_154.x, x_154.x)) + x_157);
  let x_160 : vec4<f32> = x_145.unity_WorldToObject[2i];
  let x_162 : vec3<f32> = u_xlat1;
  let x_165 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_162.z, x_162.z, x_162.z)) + x_165);
  let x_168 : vec3<f32> = u_xlat2;
  let x_169 : vec3<f32> = u_xlat2;
  u_xlat42 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat42;
  let x_175 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_173, x_173, x_173) * x_175);
  let x_189 : vec4<f32> = vs_INTERP3;
  let x_192 : f32 = x_90.x_GlobalMipBias.x;
  let x_193 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_189.x, x_189.y), x_192);
  u_xlat3 = x_193;
  let x_195 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = x_199.Color_C30C7CA3;
  let x_203 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_212 : vec4<f32> = vs_INTERP3;
  let x_215 : f32 = x_90.x_GlobalMipBias.x;
  let x_216 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_212.x, x_212.y), x_215);
  u_xlat5 = vec4<f32>(x_216.w, x_216.x, x_216.y, x_216.z);
  let x_219 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_219.y, x_219.z, x_219.w, x_219.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_227 : vec4<f32> = u_xlat6;
  let x_228 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_227, x_228);
  let x_230 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_230);
  let x_233 : f32 = u_xlat42;
  let x_235 : vec4<f32> = u_xlat6;
  u_xlat19 = (vec3<f32>(x_233, x_233, x_233) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_240 : f32 = vs_INTERP4.y;
  u_xlat42 = (x_240 * 200.0f);
  let x_243 : f32 = u_xlat42;
  u_xlat42 = min(x_243, 1.0f);
  let x_245 : f32 = u_xlat42;
  let x_247 : vec4<f32> = u_xlat3;
  let x_249 : vec3<f32> = (vec3<f32>(x_245, x_245, x_245) * vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec3<f32> = vs_INTERP0;
  let x_260 : vec4<f32> = x_258.x_MainLightWorldToShadow[0i][1i];
  let x_262 : vec3<f32> = (vec3<f32>(x_252.y, x_252.y, x_252.y) * vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : vec4<f32> = x_258.x_MainLightWorldToShadow[0i][0i];
  let x_268 : vec3<f32> = vs_INTERP0;
  let x_271 : vec4<f32> = u_xlat6;
  let x_273 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_268.x, x_268.x, x_268.x)) + vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : vec4<f32> = x_258.x_MainLightWorldToShadow[0i][2i];
  let x_279 : vec3<f32> = vs_INTERP0;
  let x_282 : vec4<f32> = u_xlat6;
  let x_284 : vec3<f32> = ((vec3<f32>(x_277.x, x_277.y, x_277.z) * vec3<f32>(x_279.z, x_279.z, x_279.z)) + vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : vec4<f32> = u_xlat6;
  let x_291 : vec4<f32> = x_258.x_MainLightWorldToShadow[0i][3i];
  let x_293 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) + vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_297 : vec4<f32> = u_xlat6;
  let x_298 : vec2<f32> = vec2<f32>(x_297.x, x_297.y);
  let x_300 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_298.x, x_298.y, x_300);
  let x_312 : vec3<f32> = txVec0;
  let x_314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_312.xy, x_312.z);
  u_xlat42 = x_314;
  let x_317 : f32 = x_258.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_317) + 1.0f);
  let x_320 : f32 = u_xlat42;
  let x_322 : f32 = x_258.x_MainLightShadowParams.x;
  let x_324 : f32 = u_xlat43;
  u_xlat42 = ((x_320 * x_322) + x_324);
  let x_328 : f32 = u_xlat6.z;
  u_xlatb44 = (0.0f >= x_328);
  let x_332 : f32 = u_xlat6.z;
  u_xlatb46 = (x_332 >= 1.0f);
  let x_334 : bool = u_xlatb44;
  let x_335 : bool = u_xlatb46;
  u_xlatb44 = (x_334 | x_335);
  let x_337 : bool = u_xlatb44;
  let x_338 : f32 = u_xlat42;
  u_xlat42 = select(x_338, 1.0f, x_337);
  let x_340 : vec3<f32> = u_xlat0;
  let x_342 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat0.x = dot(x_340, -(vec3<f32>(x_342.x, x_342.y, x_342.z)));
  let x_348 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_348, 0.0f, 1.0f);
  let x_352 : f32 = u_xlat42;
  let x_356 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat14 = (vec3<f32>(x_352, x_352, x_352) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec3<f32> = u_xlat14;
  let x_360 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_359 * vec3<f32>(x_360.x, x_360.x, x_360.x));
  let x_363 : vec3<f32> = u_xlat0;
  let x_364 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_363 * vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_368 : f32 = x_145.unity_LODFade.x;
  u_xlatb42 = (x_368 < 0.0f);
  let x_372 : f32 = x_145.unity_LODFade.x;
  u_xlat44 = (x_372 + 1.0f);
  let x_374 : bool = u_xlatb42;
  if (x_374) {
    let x_378 : f32 = u_xlat44;
    x_375 = x_378;
  } else {
    let x_381 : f32 = x_145.unity_LODFade.x;
    x_375 = x_381;
  }
  let x_382 : f32 = x_375;
  u_xlat42 = x_382;
  let x_384 : f32 = u_xlat42;
  u_xlatb44 = (0.5f >= x_384);
  let x_386 : vec3<f32> = u_xlat2;
  let x_390 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat2 = (abs(x_386) * vec3<f32>(x_390.x, x_390.y, x_390.x));
  let x_396 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_396);
  let x_400 : u32 = u_xlatu2.z;
  u_xlatu30 = (x_400 * 1025u);
  let x_404 : u32 = u_xlatu30;
  u_xlatu3 = (x_404 >> 6u);
  let x_408 : u32 = u_xlatu30;
  let x_409 : u32 = u_xlatu3;
  u_xlati30 = bitcast<i32>((x_408 ^ x_409));
  let x_412 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_412) * 9u);
  let x_416 : u32 = u_xlatu30;
  u_xlatu3 = (x_416 >> 11u);
  let x_419 : u32 = u_xlatu30;
  let x_420 : u32 = u_xlatu3;
  u_xlati30 = bitcast<i32>((x_419 ^ x_420));
  let x_423 : i32 = u_xlati30;
  u_xlati30 = (x_423 * 32769i);
  let x_427 : i32 = u_xlati30;
  let x_430 : u32 = u_xlatu2.y;
  u_xlati16 = bitcast<i32>((bitcast<u32>(x_427) ^ x_430));
  let x_434 : i32 = u_xlati16;
  u_xlatu16 = (bitcast<u32>(x_434) * 1025u);
  let x_437 : u32 = u_xlatu16;
  u_xlatu30 = (x_437 >> 6u);
  let x_439 : u32 = u_xlatu30;
  let x_440 : u32 = u_xlatu16;
  u_xlati16 = bitcast<i32>((x_439 ^ x_440));
  let x_443 : i32 = u_xlati16;
  u_xlatu16 = (bitcast<u32>(x_443) * 9u);
  let x_446 : u32 = u_xlatu16;
  u_xlatu30 = (x_446 >> 11u);
  let x_448 : u32 = u_xlatu30;
  let x_449 : u32 = u_xlatu16;
  u_xlati16 = bitcast<i32>((x_448 ^ x_449));
  let x_452 : i32 = u_xlati16;
  u_xlati16 = (x_452 * 32769i);
  let x_455 : i32 = u_xlati16;
  let x_458 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_455) ^ x_458));
  let x_461 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_461) * 1025u);
  let x_466 : u32 = u_xlatu2.x;
  u_xlatu16 = (x_466 >> 6u);
  let x_468 : u32 = u_xlatu16;
  let x_470 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_468 ^ x_470));
  let x_473 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_473) * 9u);
  let x_478 : u32 = u_xlatu2.x;
  u_xlatu16 = (x_478 >> 11u);
  let x_480 : u32 = u_xlatu16;
  let x_482 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_480 ^ x_482));
  let x_485 : i32 = u_xlati2;
  u_xlati2 = (x_485 * 32769i);
  param = 1065353216i;
  let x_491 : i32 = u_xlati2;
  param_1 = x_491;
  param_2 = 0i;
  param_3 = 23i;
  let x_494 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_494);
  let x_498 : f32 = u_xlat2.x;
  u_xlat2.x = (x_498 + -1.0f);
  let x_503 : f32 = u_xlat2.x;
  u_xlat16.x = (-(x_503) + 1.0f);
  let x_507 : bool = u_xlatb44;
  if (x_507) {
    let x_512 : f32 = u_xlat2.x;
    x_508 = x_512;
  } else {
    let x_515 : f32 = u_xlat16.x;
    x_508 = x_515;
  }
  let x_516 : f32 = x_508;
  u_xlat2.x = x_516;
  let x_518 : f32 = u_xlat42;
  let x_521 : f32 = u_xlat2.x;
  u_xlat42 = ((x_518 * 2.0f) + -(x_521));
  let x_524 : f32 = u_xlat42;
  let x_526 : f32 = u_xlat3.w;
  u_xlat2.x = (x_524 * x_526);
  let x_533 : f32 = u_xlat2.x;
  u_xlatb16.x = (x_533 >= 0.400000006f);
  let x_538 : bool = u_xlatb16.x;
  if (x_538) {
    let x_543 : f32 = u_xlat2.x;
    x_539 = x_543;
  } else {
    x_539 = 0.0f;
  }
  let x_545 : f32 = x_539;
  u_xlat16.x = x_545;
  let x_548 : f32 = u_xlat3.w;
  let x_549 : f32 = u_xlat42;
  u_xlat42 = ((x_548 * x_549) + -0.400000006f);
  let x_555 : f32 = u_xlat2.x;
  u_xlat30 = dpdxCoarse(x_555);
  let x_558 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_558);
  let x_562 : f32 = u_xlat2.x;
  let x_564 : f32 = u_xlat30;
  u_xlat2.x = (abs(x_562) + abs(x_564));
  let x_569 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_569, 0.0001f);
  let x_573 : f32 = u_xlat42;
  let x_575 : f32 = u_xlat2.x;
  u_xlat42 = (x_573 / x_575);
  let x_577 : f32 = u_xlat42;
  u_xlat42 = (x_577 + 0.5f);
  let x_579 : f32 = u_xlat42;
  u_xlat42 = clamp(x_579, 0.0f, 1.0f);
  let x_583 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_583 == 0.0f));
  let x_585 : bool = u_xlatb2;
  if (x_585) {
    let x_589 : f32 = u_xlat42;
    x_586 = x_589;
  } else {
    let x_592 : f32 = u_xlat16.x;
    x_586 = x_592;
  }
  let x_593 : f32 = x_586;
  u_xlat42 = x_593;
  let x_594 : f32 = u_xlat42;
  u_xlat16.x = (x_594 + -0.0001f);
  let x_599 : f32 = u_xlat16.x;
  u_xlatb16.x = (x_599 < 0.0f);
  let x_603 : bool = u_xlatb16.x;
  if (((select(0i, 1i, x_603) * -1i) != 0i)) {
    discard;
  }
  let x_613 : f32 = vs_INTERP2.w;
  u_xlatb16.x = (0.0f < x_613);
  let x_617 : f32 = x_145.unity_WorldTransformParams.w;
  u_xlatb16.y = (x_617 >= 0.0f);
  let x_621 : bool = u_xlatb16.x;
  u_xlat16.x = select(-1.0f, 1.0f, x_621);
  let x_625 : bool = u_xlatb16.y;
  u_xlat16.y = select(-1.0f, 1.0f, x_625);
  let x_629 : f32 = u_xlat16.y;
  let x_631 : f32 = u_xlat16.x;
  u_xlat16.x = (x_629 * x_631);
  let x_634 : vec3<f32> = vs_INTERP1;
  let x_636 : vec4<f32> = vs_INTERP2;
  let x_638 : vec3<f32> = (vec3<f32>(x_634.z, x_634.x, x_634.y) * vec3<f32>(x_636.y, x_636.z, x_636.x));
  let x_639 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : vec3<f32> = vs_INTERP1;
  let x_643 : vec4<f32> = vs_INTERP2;
  let x_646 : vec4<f32> = u_xlat3;
  let x_649 : vec3<f32> = ((vec3<f32>(x_641.y, x_641.z, x_641.x) * vec3<f32>(x_643.z, x_643.x, x_643.y)) + -(vec3<f32>(x_646.x, x_646.y, x_646.z)));
  let x_650 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec3<f32> = u_xlat16;
  let x_654 : vec4<f32> = u_xlat3;
  u_xlat16 = (vec3<f32>(x_652.x, x_652.x, x_652.x) * vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec3<f32> = u_xlat16;
  let x_658 : vec3<f32> = u_xlat19;
  u_xlat16 = (x_657 * vec3<f32>(x_658.y, x_658.y, x_658.y));
  let x_661 : vec3<f32> = u_xlat19;
  let x_663 : vec4<f32> = vs_INTERP2;
  let x_666 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_661.x, x_661.x, x_661.x) * vec3<f32>(x_663.x, x_663.y, x_663.z)) + x_666);
  let x_668 : vec3<f32> = u_xlat19;
  let x_670 : vec3<f32> = vs_INTERP1;
  let x_672 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_668.z, x_668.z, x_668.z) * x_670) + x_672);
  let x_674 : vec3<f32> = u_xlat16;
  let x_675 : vec3<f32> = u_xlat16;
  u_xlat3.x = dot(x_674, x_675);
  let x_679 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_679);
  let x_682 : vec3<f32> = u_xlat16;
  let x_683 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_682 * vec3<f32>(x_683.x, x_683.x, x_683.x));
  let x_687 : f32 = vs_INTERP0.y;
  let x_689 : f32 = x_90.unity_MatrixV[1i].z;
  u_xlat3.x = (x_687 * x_689);
  let x_693 : f32 = x_90.unity_MatrixV[0i].z;
  let x_695 : f32 = vs_INTERP0.x;
  let x_698 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_693 * x_695) + x_698);
  let x_702 : f32 = x_90.unity_MatrixV[2i].z;
  let x_704 : f32 = vs_INTERP0.z;
  let x_707 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_702 * x_704) + x_707);
  let x_711 : f32 = u_xlat3.x;
  let x_713 : f32 = x_90.unity_MatrixV[3i].z;
  u_xlat3.x = (x_711 + x_713);
  let x_717 : f32 = u_xlat3.x;
  let x_720 : f32 = x_90.x_ProjectionParams.y;
  u_xlat3.x = (-(x_717) + -(x_720));
  let x_725 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_725, 0.0f);
  let x_729 : f32 = u_xlat3.x;
  let x_732 : f32 = x_90.unity_FogParams.x;
  u_xlat3.x = (x_729 * x_732);
  let x_743 : vec2<f32> = vs_INTERP5;
  let x_745 : f32 = x_90.x_GlobalMipBias.x;
  let x_746 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_743, x_745);
  u_xlat17 = vec3<f32>(x_746.x, x_746.y, x_746.z);
  let x_750 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_751 : vec2<f32> = vec2<f32>(x_750.x, x_750.y);
  let x_755 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_751.x, x_751.y));
  let x_756 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_755.x, x_755.y, x_756.z);
  let x_758 : vec3<f32> = u_xlat19;
  let x_760 : vec4<f32> = hlslcc_FragCoord;
  let x_762 : vec2<f32> = (vec2<f32>(x_758.x, x_758.y) * vec2<f32>(x_760.x, x_760.y));
  let x_763 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_762.x, x_762.y, x_763.z, x_763.w);
  let x_767 : f32 = u_xlat6.y;
  let x_770 : f32 = x_90.x_ScaleBiasRt.x;
  let x_773 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat46 = ((x_767 * x_770) + x_773);
  let x_775 : f32 = u_xlat46;
  u_xlat6.z = (-(x_775) + 1.0f);
  let x_780 : f32 = u_xlat5.x;
  u_xlat5.x = x_780;
  let x_783 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_783, 0.0f, 1.0f);
  let x_786 : f32 = u_xlat42;
  u_xlat42 = x_786;
  let x_787 : f32 = u_xlat42;
  u_xlat42 = clamp(x_787, 0.0f, 1.0f);
  let x_790 : f32 = u_xlat5.x;
  u_xlat46 = (-(x_790) + 1.0f);
  let x_793 : f32 = u_xlat46;
  let x_794 : f32 = u_xlat46;
  u_xlat19.x = (x_793 * x_794);
  let x_798 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_798, 0.0078125f);
  let x_804 : f32 = u_xlat19.x;
  let x_806 : f32 = u_xlat19.x;
  u_xlat33 = (x_804 * x_806);
  let x_809 : f32 = u_xlat5.x;
  u_xlat5.x = (x_809 + 0.040000021f);
  let x_814 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_814, 1.0f);
  let x_819 : f32 = u_xlat19.x;
  u_xlat47 = ((x_819 * 4.0f) + 2.0f);
  let x_828 : vec4<f32> = u_xlat6;
  let x_831 : f32 = x_90.x_GlobalMipBias.x;
  let x_832 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_828.x, x_828.z), x_831);
  u_xlat6.x = x_832.x;
  let x_837 : f32 = u_xlat6.x;
  u_xlat20 = (x_837 + -1.0f);
  let x_841 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_842 : f32 = u_xlat20;
  u_xlat20 = ((x_841 * x_842) + 1.0f);
  let x_846 : f32 = u_xlat6.x;
  let x_848 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_846, x_848);
  let x_853 : vec4<f32> = vs_INTERP9;
  let x_854 : vec2<f32> = vec2<f32>(x_853.x, x_853.y);
  let x_856 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_854.x, x_854.y, x_856);
  let x_865 : vec3<f32> = txVec1;
  let x_867 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_865.xy, x_865.z);
  u_xlat34.x = x_867;
  let x_870 : f32 = u_xlat34.x;
  let x_872 : f32 = x_258.x_MainLightShadowParams.x;
  let x_874 : f32 = u_xlat43;
  u_xlat43 = ((x_870 * x_872) + x_874);
  let x_878 : f32 = vs_INTERP9.z;
  u_xlatb34.x = (0.0f >= x_878);
  let x_883 : f32 = vs_INTERP9.z;
  u_xlatb48 = (x_883 >= 1.0f);
  let x_885 : bool = u_xlatb48;
  let x_887 : bool = u_xlatb34.x;
  u_xlatb34.x = (x_885 | x_887);
  let x_891 : bool = u_xlatb34.x;
  let x_892 : f32 = u_xlat43;
  u_xlat43 = select(x_892, 1.0f, x_891);
  let x_895 : vec3<f32> = vs_INTERP0;
  let x_897 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  let x_899 : vec3<f32> = (x_895 + -(x_897));
  let x_900 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat7;
  let x_904 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_902.x, x_902.y, x_902.z), vec3<f32>(x_904.x, x_904.y, x_904.z));
  let x_909 : f32 = u_xlat34.x;
  let x_911 : f32 = x_258.x_MainLightShadowParams.z;
  let x_914 : f32 = x_258.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_909 * x_911) + x_914);
  let x_918 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_918, 0.0f, 1.0f);
  let x_922 : f32 = u_xlat43;
  u_xlat48 = (-(x_922) + 1.0f);
  let x_926 : f32 = u_xlat34.x;
  let x_927 : f32 = u_xlat48;
  let x_929 : f32 = u_xlat43;
  u_xlat43 = ((x_926 * x_927) + x_929);
  let x_937 : f32 = x_935.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_937 == -1.0f));
  let x_941 : bool = u_xlatb34.x;
  if (x_941) {
    let x_944 : vec3<f32> = vs_INTERP0;
    let x_947 : vec4<f32> = x_935.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_944.y, x_944.y) * vec2<f32>(x_947.x, x_947.y));
    let x_951 : vec4<f32> = x_935.x_MainLightWorldToLight[0i];
    let x_953 : vec3<f32> = vs_INTERP0;
    let x_956 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_951.x, x_951.y) * vec2<f32>(x_953.x, x_953.x)) + x_956);
    let x_959 : vec4<f32> = x_935.x_MainLightWorldToLight[2i];
    let x_961 : vec3<f32> = vs_INTERP0;
    let x_964 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_959.x, x_959.y) * vec2<f32>(x_961.z, x_961.z)) + x_964);
    let x_966 : vec2<f32> = u_xlat34;
    let x_968 : vec4<f32> = x_935.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_966 + vec2<f32>(x_968.x, x_968.y));
    let x_971 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_971 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_980 : vec2<f32> = u_xlat34;
    let x_982 : f32 = x_90.x_GlobalMipBias.x;
    let x_983 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_980, x_982);
    u_xlat7 = x_983;
    let x_985 : f32 = x_935.x_MainLightCookieTextureFormat;
    let x_987 : f32 = x_935.x_MainLightCookieTextureFormat;
    let x_989 : f32 = x_935.x_MainLightCookieTextureFormat;
    let x_991 : f32 = x_935.x_MainLightCookieTextureFormat;
    let x_992 : vec4<f32> = vec4<f32>(x_985, x_987, x_989, x_991);
    let x_1000 : vec4<bool> = (vec4<f32>(x_992.x, x_992.y, x_992.z, x_992.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_1000.x, x_1000.y);
    let x_1003 : bool = u_xlatb34.y;
    if (x_1003) {
      let x_1008 : f32 = u_xlat7.w;
      x_1004 = x_1008;
    } else {
      let x_1011 : f32 = u_xlat7.x;
      x_1004 = x_1011;
    }
    let x_1012 : f32 = x_1004;
    u_xlat48 = x_1012;
    let x_1014 : bool = u_xlatb34.x;
    if (x_1014) {
      let x_1018 : vec4<f32> = u_xlat7;
      x_1015 = vec3<f32>(x_1018.x, x_1018.y, x_1018.z);
    } else {
      let x_1021 : f32 = u_xlat48;
      x_1015 = vec3<f32>(x_1021, x_1021, x_1021);
    }
    let x_1023 : vec3<f32> = x_1015;
    let x_1024 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1030 : vec4<f32> = u_xlat7;
  let x_1033 : vec4<f32> = x_90.x_MainLightColor;
  let x_1035 : vec3<f32> = (vec3<f32>(x_1030.x, x_1030.y, x_1030.z) * vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1036 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1038 : f32 = u_xlat20;
  let x_1040 : vec4<f32> = u_xlat7;
  let x_1042 : vec3<f32> = (vec3<f32>(x_1038, x_1038, x_1038) * vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
  let x_1043 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
  let x_1045 : vec3<f32> = u_xlat1;
  let x_1047 : vec3<f32> = u_xlat16;
  u_xlat34.x = dot(-(x_1045), x_1047);
  let x_1051 : f32 = u_xlat34.x;
  let x_1053 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1051 + x_1053);
  let x_1057 : vec3<f32> = u_xlat16;
  let x_1058 : vec2<f32> = u_xlat34;
  let x_1062 : vec3<f32> = u_xlat1;
  let x_1064 : vec3<f32> = ((x_1057 * -(vec3<f32>(x_1058.x, x_1058.x, x_1058.x))) + -(x_1062));
  let x_1065 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
  let x_1067 : vec3<f32> = u_xlat16;
  let x_1068 : vec3<f32> = u_xlat1;
  u_xlat34.x = dot(x_1067, x_1068);
  let x_1072 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1072, 0.0f, 1.0f);
  let x_1076 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1076) + 1.0f);
  let x_1081 : f32 = u_xlat34.x;
  let x_1083 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1081 * x_1083);
  let x_1087 : f32 = u_xlat34.x;
  let x_1089 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1087 * x_1089);
  let x_1092 : f32 = u_xlat46;
  u_xlat48 = ((-(x_1092) * 0.699999988f) + 1.700000048f);
  let x_1098 : f32 = u_xlat46;
  let x_1099 : f32 = u_xlat48;
  u_xlat4.w = (x_1098 * x_1099);
  let x_1102 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_1102 * vec4<f32>(0.959999979f, 0.959999979f, 0.959999979f, 6.0f));
  let x_1115 : vec4<f32> = u_xlat8;
  let x_1118 : f32 = u_xlat4.w;
  let x_1119 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1115.x, x_1115.y, x_1115.z), x_1118);
  u_xlat8 = x_1119;
  let x_1121 : f32 = u_xlat8.w;
  u_xlat46 = (x_1121 + -1.0f);
  let x_1124 : f32 = x_145.unity_SpecCube0_HDR.w;
  let x_1125 : f32 = u_xlat46;
  u_xlat46 = ((x_1124 * x_1125) + 1.0f);
  let x_1128 : f32 = u_xlat46;
  u_xlat46 = max(x_1128, 0.0f);
  let x_1130 : f32 = u_xlat46;
  u_xlat46 = log2(x_1130);
  let x_1132 : f32 = u_xlat46;
  let x_1134 : f32 = x_145.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_1132 * x_1134);
  let x_1136 : f32 = u_xlat46;
  u_xlat46 = exp2(x_1136);
  let x_1138 : f32 = u_xlat46;
  let x_1140 : f32 = x_145.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_1138 * x_1140);
  let x_1142 : vec4<f32> = u_xlat8;
  let x_1144 : f32 = u_xlat46;
  let x_1146 : vec3<f32> = (vec3<f32>(x_1142.x, x_1142.y, x_1142.z) * vec3<f32>(x_1144, x_1144, x_1144));
  let x_1147 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
  let x_1150 : vec3<f32> = u_xlat19;
  let x_1152 : vec3<f32> = u_xlat19;
  u_xlat9 = ((vec2<f32>(x_1150.x, x_1150.x) * vec2<f32>(x_1152.x, x_1152.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1158 : f32 = u_xlat9.y;
  u_xlat46 = (1.0f / x_1158);
  let x_1161 : f32 = u_xlat5.x;
  u_xlat5.x = (x_1161 + -0.039999999f);
  let x_1166 : f32 = u_xlat34.x;
  let x_1168 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1166 * x_1168) + 0.039999999f);
  let x_1173 : f32 = u_xlat46;
  let x_1175 : f32 = u_xlat5.x;
  u_xlat46 = (x_1173 * x_1175);
  let x_1177 : f32 = u_xlat46;
  let x_1179 : vec4<f32> = u_xlat8;
  let x_1181 : vec3<f32> = (vec3<f32>(x_1177, x_1177, x_1177) * vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
  let x_1182 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
  let x_1184 : vec3<f32> = u_xlat17;
  let x_1185 : vec4<f32> = u_xlat4;
  let x_1188 : vec4<f32> = u_xlat8;
  u_xlat17 = ((x_1184 * vec3<f32>(x_1185.x, x_1185.y, x_1185.z)) + vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
  let x_1191 : f32 = u_xlat43;
  let x_1193 : f32 = x_145.unity_LightData.z;
  u_xlat43 = (x_1191 * x_1193);
  let x_1195 : vec3<f32> = u_xlat16;
  let x_1197 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat46 = dot(x_1195, vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
  let x_1200 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1200, 0.0f, 1.0f);
  let x_1202 : f32 = u_xlat43;
  let x_1203 : f32 = u_xlat46;
  u_xlat43 = (x_1202 * x_1203);
  let x_1205 : f32 = u_xlat43;
  let x_1207 : vec4<f32> = u_xlat7;
  let x_1209 : vec3<f32> = (vec3<f32>(x_1205, x_1205, x_1205) * vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1210 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1212 : vec3<f32> = u_xlat1;
  let x_1214 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1216 : vec3<f32> = (x_1212 + vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1217 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
  let x_1219 : vec4<f32> = u_xlat8;
  let x_1221 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_1219.x, x_1219.y, x_1219.z), vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
  let x_1224 : f32 = u_xlat43;
  u_xlat43 = max(x_1224, 1.17549435e-37f);
  let x_1227 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1227);
  let x_1229 : f32 = u_xlat43;
  let x_1231 : vec4<f32> = u_xlat8;
  let x_1233 : vec3<f32> = (vec3<f32>(x_1229, x_1229, x_1229) * vec3<f32>(x_1231.x, x_1231.y, x_1231.z));
  let x_1234 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
  let x_1236 : vec3<f32> = u_xlat16;
  let x_1237 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(x_1236, vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
  let x_1240 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1240, 0.0f, 1.0f);
  let x_1243 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1245 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_1243.x, x_1243.y, x_1243.z), vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
  let x_1248 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1248, 0.0f, 1.0f);
  let x_1250 : f32 = u_xlat43;
  let x_1251 : f32 = u_xlat43;
  u_xlat43 = (x_1250 * x_1251);
  let x_1253 : f32 = u_xlat43;
  let x_1255 : f32 = u_xlat9.x;
  u_xlat43 = ((x_1253 * x_1255) + 1.000010014f);
  let x_1259 : f32 = u_xlat46;
  let x_1260 : f32 = u_xlat46;
  u_xlat46 = (x_1259 * x_1260);
  let x_1262 : f32 = u_xlat43;
  let x_1263 : f32 = u_xlat43;
  u_xlat43 = (x_1262 * x_1263);
  let x_1265 : f32 = u_xlat46;
  u_xlat46 = max(x_1265, 0.100000001f);
  let x_1268 : f32 = u_xlat43;
  let x_1269 : f32 = u_xlat46;
  u_xlat43 = (x_1268 * x_1269);
  let x_1271 : f32 = u_xlat47;
  let x_1272 : f32 = u_xlat43;
  u_xlat43 = (x_1271 * x_1272);
  let x_1274 : f32 = u_xlat33;
  let x_1275 : f32 = u_xlat43;
  u_xlat43 = (x_1274 / x_1275);
  let x_1277 : f32 = u_xlat43;
  let x_1281 : vec4<f32> = u_xlat4;
  let x_1283 : vec3<f32> = ((vec3<f32>(x_1277, x_1277, x_1277) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
  let x_1284 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1284.w);
  let x_1286 : vec4<f32> = u_xlat7;
  let x_1288 : vec4<f32> = u_xlat8;
  let x_1290 : vec3<f32> = (vec3<f32>(x_1286.x, x_1286.y, x_1286.z) * vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
  let x_1295 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1297 : f32 = x_145.unity_LightData.y;
  u_xlat43 = min(x_1295, x_1297);
  let x_1300 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1300));
  let x_1305 : f32 = x_935.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1307 : f32 = x_935.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1309 : f32 = x_935.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1311 : f32 = x_935.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1312 : vec4<f32> = vec4<f32>(x_1305, x_1307, x_1309, x_1311);
  let x_1319 : vec4<bool> = (vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1312.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1319.x, x_1319.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1330 : u32 = u_xlatu_loop_1;
    let x_1331 : u32 = u_xlatu43;
    if ((x_1330 < x_1331)) {
    } else {
      break;
    }
    let x_1334 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_1334 >> 2u);
    let x_1337 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1337 & 3u));
    let x_1340 : u32 = u_xlatu34;
    let x_1343 : vec4<f32> = x_145.unity_LightIndices[bitcast<i32>(x_1340)];
    let x_1353 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1358 : vec4<u32> = indexable[x_1353];
    u_xlat34.x = dot(x_1343, bitcast<vec4<f32>>(x_1358));
    let x_1363 : f32 = u_xlat34.x;
    u_xlatu34 = bitcast<u32>(i32(x_1363));
    let x_1367 : vec3<f32> = vs_INTERP0;
    let x_1379 : u32 = u_xlatu34;
    let x_1382 : vec4<f32> = x_1378.x_AdditionalLightsPosition[bitcast<i32>(x_1379)];
    let x_1385 : u32 = u_xlatu34;
    let x_1388 : vec4<f32> = x_1378.x_AdditionalLightsPosition[bitcast<i32>(x_1385)];
    u_xlat23 = ((-(x_1367) * vec3<f32>(x_1382.w, x_1382.w, x_1382.w)) + vec3<f32>(x_1388.x, x_1388.y, x_1388.z));
    let x_1391 : vec3<f32> = u_xlat23;
    let x_1392 : vec3<f32> = u_xlat23;
    u_xlat48 = dot(x_1391, x_1392);
    let x_1394 : f32 = u_xlat48;
    u_xlat48 = max(x_1394, 6.10351562e-05f);
    let x_1398 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1398);
    let x_1401 : f32 = u_xlat49;
    let x_1403 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1401, x_1401, x_1401) * x_1403);
    let x_1406 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1406);
    let x_1408 : f32 = u_xlat48;
    let x_1409 : u32 = u_xlatu34;
    let x_1412 : f32 = x_1378.x_AdditionalLightsAttenuation[bitcast<i32>(x_1409)].x;
    u_xlat48 = (x_1408 * x_1412);
    let x_1414 : f32 = u_xlat48;
    let x_1416 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1414) * x_1416) + 1.0f);
    let x_1419 : f32 = u_xlat48;
    u_xlat48 = max(x_1419, 0.0f);
    let x_1421 : f32 = u_xlat48;
    let x_1422 : f32 = u_xlat48;
    u_xlat48 = (x_1421 * x_1422);
    let x_1424 : f32 = u_xlat48;
    let x_1425 : f32 = u_xlat50;
    u_xlat48 = (x_1424 * x_1425);
    let x_1427 : u32 = u_xlatu34;
    let x_1430 : vec4<f32> = x_1378.x_AdditionalLightsSpotDir[bitcast<i32>(x_1427)];
    let x_1432 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1430.x, x_1430.y, x_1430.z), x_1432);
    let x_1434 : f32 = u_xlat50;
    let x_1435 : u32 = u_xlatu34;
    let x_1438 : f32 = x_1378.x_AdditionalLightsAttenuation[bitcast<i32>(x_1435)].z;
    let x_1440 : u32 = u_xlatu34;
    let x_1443 : f32 = x_1378.x_AdditionalLightsAttenuation[bitcast<i32>(x_1440)].w;
    u_xlat50 = ((x_1434 * x_1438) + x_1443);
    let x_1445 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1445, 0.0f, 1.0f);
    let x_1447 : f32 = u_xlat50;
    let x_1448 : f32 = u_xlat50;
    u_xlat50 = (x_1447 * x_1448);
    let x_1450 : f32 = u_xlat48;
    let x_1451 : f32 = u_xlat50;
    u_xlat48 = (x_1450 * x_1451);
    let x_1454 : u32 = u_xlatu34;
    u_xlatu50 = (x_1454 >> 5u);
    let x_1457 : u32 = u_xlatu34;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1457) & 31i)));
    let x_1463 : i32 = u_xlati52;
    let x_1465 : u32 = u_xlatu50;
    let x_1468 : f32 = x_935.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1465)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1463) & bitcast<u32>(x_1468)));
    let x_1472 : i32 = u_xlati50;
    if ((x_1472 != 0i)) {
      let x_1482 : u32 = u_xlatu34;
      let x_1485 : f32 = x_1481.x_AdditionalLightsLightTypes[bitcast<i32>(x_1482)].el;
      u_xlati50 = i32(x_1485);
      let x_1487 : i32 = u_xlati50;
      u_xlati52 = select(1i, 0i, (x_1487 != 0i));
      let x_1491 : u32 = u_xlatu34;
      u_xlati11 = (bitcast<i32>(x_1491) << bitcast<u32>(2i));
      let x_1494 : i32 = u_xlati52;
      if ((x_1494 != 0i)) {
        let x_1499 : vec3<f32> = vs_INTERP0;
        let x_1501 : i32 = u_xlati11;
        let x_1504 : i32 = u_xlati11;
        let x_1508 : vec4<f32> = x_1481.x_AdditionalLightsWorldToLights[((x_1501 + 1i) / 4i)][((x_1504 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1499.y, x_1499.y, x_1499.y) * vec3<f32>(x_1508.x, x_1508.y, x_1508.w));
        let x_1511 : i32 = u_xlati11;
        let x_1513 : i32 = u_xlati11;
        let x_1516 : vec4<f32> = x_1481.x_AdditionalLightsWorldToLights[(x_1511 / 4i)][(x_1513 % 4i)];
        let x_1518 : vec3<f32> = vs_INTERP0;
        let x_1521 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1516.x, x_1516.y, x_1516.w) * vec3<f32>(x_1518.x, x_1518.x, x_1518.x)) + x_1521);
        let x_1523 : i32 = u_xlati11;
        let x_1526 : i32 = u_xlati11;
        let x_1530 : vec4<f32> = x_1481.x_AdditionalLightsWorldToLights[((x_1523 + 2i) / 4i)][((x_1526 + 2i) % 4i)];
        let x_1532 : vec3<f32> = vs_INTERP0;
        let x_1535 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1530.x, x_1530.y, x_1530.w) * vec3<f32>(x_1532.z, x_1532.z, x_1532.z)) + x_1535);
        let x_1537 : vec3<f32> = u_xlat25;
        let x_1538 : i32 = u_xlati11;
        let x_1541 : i32 = u_xlati11;
        let x_1545 : vec4<f32> = x_1481.x_AdditionalLightsWorldToLights[((x_1538 + 3i) / 4i)][((x_1541 + 3i) % 4i)];
        u_xlat25 = (x_1537 + vec3<f32>(x_1545.x, x_1545.y, x_1545.w));
        let x_1548 : vec3<f32> = u_xlat25;
        let x_1550 : vec3<f32> = u_xlat25;
        let x_1552 : vec2<f32> = (vec2<f32>(x_1548.x, x_1548.y) / vec2<f32>(x_1550.z, x_1550.z));
        let x_1553 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1552.x, x_1552.y, x_1553.z);
        let x_1555 : vec3<f32> = u_xlat25;
        let x_1558 : vec2<f32> = ((vec2<f32>(x_1555.x, x_1555.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1559 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1558.x, x_1558.y, x_1559.z);
        let x_1561 : vec3<f32> = u_xlat25;
        let x_1565 : vec2<f32> = clamp(vec2<f32>(x_1561.x, x_1561.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1566 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1565.x, x_1565.y, x_1566.z);
        let x_1568 : u32 = u_xlatu34;
        let x_1571 : vec4<f32> = x_1481.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1568)];
        let x_1573 : vec3<f32> = u_xlat25;
        let x_1576 : u32 = u_xlatu34;
        let x_1579 : vec4<f32> = x_1481.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1576)];
        let x_1581 : vec2<f32> = ((vec2<f32>(x_1571.x, x_1571.y) * vec2<f32>(x_1573.x, x_1573.y)) + vec2<f32>(x_1579.z, x_1579.w));
        let x_1582 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1581.x, x_1581.y, x_1582.z);
      } else {
        let x_1586 : i32 = u_xlati50;
        u_xlatb50 = (x_1586 == 1i);
        let x_1588 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1588);
        let x_1590 : i32 = u_xlati50;
        if ((x_1590 != 0i)) {
          let x_1595 : vec3<f32> = vs_INTERP0;
          let x_1597 : i32 = u_xlati11;
          let x_1600 : i32 = u_xlati11;
          let x_1604 : vec4<f32> = x_1481.x_AdditionalLightsWorldToLights[((x_1597 + 1i) / 4i)][((x_1600 + 1i) % 4i)];
          let x_1606 : vec2<f32> = (vec2<f32>(x_1595.y, x_1595.y) * vec2<f32>(x_1604.x, x_1604.y));
          let x_1607 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1606.x, x_1606.y, x_1607.z, x_1607.w);
          let x_1609 : i32 = u_xlati11;
          let x_1611 : i32 = u_xlati11;
          let x_1614 : vec4<f32> = x_1481.x_AdditionalLightsWorldToLights[(x_1609 / 4i)][(x_1611 % 4i)];
          let x_1616 : vec3<f32> = vs_INTERP0;
          let x_1619 : vec4<f32> = u_xlat12;
          let x_1621 : vec2<f32> = ((vec2<f32>(x_1614.x, x_1614.y) * vec2<f32>(x_1616.x, x_1616.x)) + vec2<f32>(x_1619.x, x_1619.y));
          let x_1622 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1621.x, x_1621.y, x_1622.z, x_1622.w);
          let x_1624 : i32 = u_xlati11;
          let x_1627 : i32 = u_xlati11;
          let x_1631 : vec4<f32> = x_1481.x_AdditionalLightsWorldToLights[((x_1624 + 2i) / 4i)][((x_1627 + 2i) % 4i)];
          let x_1633 : vec3<f32> = vs_INTERP0;
          let x_1636 : vec4<f32> = u_xlat12;
          let x_1638 : vec2<f32> = ((vec2<f32>(x_1631.x, x_1631.y) * vec2<f32>(x_1633.z, x_1633.z)) + vec2<f32>(x_1636.x, x_1636.y));
          let x_1639 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1638.x, x_1638.y, x_1639.z, x_1639.w);
          let x_1641 : vec4<f32> = u_xlat12;
          let x_1643 : i32 = u_xlati11;
          let x_1646 : i32 = u_xlati11;
          let x_1650 : vec4<f32> = x_1481.x_AdditionalLightsWorldToLights[((x_1643 + 3i) / 4i)][((x_1646 + 3i) % 4i)];
          let x_1652 : vec2<f32> = (vec2<f32>(x_1641.x, x_1641.y) + vec2<f32>(x_1650.x, x_1650.y));
          let x_1653 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1652.x, x_1652.y, x_1653.z, x_1653.w);
          let x_1655 : vec4<f32> = u_xlat12;
          let x_1658 : vec2<f32> = ((vec2<f32>(x_1655.x, x_1655.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1659 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1658.x, x_1658.y, x_1659.z, x_1659.w);
          let x_1661 : vec4<f32> = u_xlat12;
          let x_1663 : vec2<f32> = fract(vec2<f32>(x_1661.x, x_1661.y));
          let x_1664 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1663.x, x_1663.y, x_1664.z, x_1664.w);
          let x_1666 : u32 = u_xlatu34;
          let x_1669 : vec4<f32> = x_1481.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1666)];
          let x_1671 : vec4<f32> = u_xlat12;
          let x_1674 : u32 = u_xlatu34;
          let x_1677 : vec4<f32> = x_1481.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1674)];
          let x_1679 : vec2<f32> = ((vec2<f32>(x_1669.x, x_1669.y) * vec2<f32>(x_1671.x, x_1671.y)) + vec2<f32>(x_1677.z, x_1677.w));
          let x_1680 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1679.x, x_1679.y, x_1680.z);
        } else {
          let x_1683 : vec3<f32> = vs_INTERP0;
          let x_1685 : i32 = u_xlati11;
          let x_1688 : i32 = u_xlati11;
          let x_1692 : vec4<f32> = x_1481.x_AdditionalLightsWorldToLights[((x_1685 + 1i) / 4i)][((x_1688 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1683.y, x_1683.y, x_1683.y, x_1683.y) * x_1692);
          let x_1694 : i32 = u_xlati11;
          let x_1696 : i32 = u_xlati11;
          let x_1699 : vec4<f32> = x_1481.x_AdditionalLightsWorldToLights[(x_1694 / 4i)][(x_1696 % 4i)];
          let x_1700 : vec3<f32> = vs_INTERP0;
          let x_1703 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1699 * vec4<f32>(x_1700.x, x_1700.x, x_1700.x, x_1700.x)) + x_1703);
          let x_1705 : i32 = u_xlati11;
          let x_1708 : i32 = u_xlati11;
          let x_1712 : vec4<f32> = x_1481.x_AdditionalLightsWorldToLights[((x_1705 + 2i) / 4i)][((x_1708 + 2i) % 4i)];
          let x_1713 : vec3<f32> = vs_INTERP0;
          let x_1716 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1712 * vec4<f32>(x_1713.z, x_1713.z, x_1713.z, x_1713.z)) + x_1716);
          let x_1718 : vec4<f32> = u_xlat12;
          let x_1719 : i32 = u_xlati11;
          let x_1722 : i32 = u_xlati11;
          let x_1726 : vec4<f32> = x_1481.x_AdditionalLightsWorldToLights[((x_1719 + 3i) / 4i)][((x_1722 + 3i) % 4i)];
          u_xlat12 = (x_1718 + x_1726);
          let x_1728 : vec4<f32> = u_xlat12;
          let x_1730 : vec4<f32> = u_xlat12;
          let x_1732 : vec3<f32> = (vec3<f32>(x_1728.x, x_1728.y, x_1728.z) / vec3<f32>(x_1730.w, x_1730.w, x_1730.w));
          let x_1733 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
          let x_1735 : vec4<f32> = u_xlat12;
          let x_1737 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1735.x, x_1735.y, x_1735.z), vec3<f32>(x_1737.x, x_1737.y, x_1737.z));
          let x_1740 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1740);
          let x_1742 : f32 = u_xlat50;
          let x_1744 : vec4<f32> = u_xlat12;
          let x_1746 : vec3<f32> = (vec3<f32>(x_1742, x_1742, x_1742) * vec3<f32>(x_1744.x, x_1744.y, x_1744.z));
          let x_1747 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1746.x, x_1746.y, x_1746.z, x_1747.w);
          let x_1749 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1749.x, x_1749.y, x_1749.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1754 : f32 = u_xlat50;
          u_xlat50 = max(x_1754, 0.000001f);
          let x_1757 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1757);
          let x_1760 : f32 = u_xlat50;
          let x_1762 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1760, x_1760, x_1760) * vec3<f32>(x_1762.z, x_1762.x, x_1762.y));
          let x_1766 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1766);
          let x_1770 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1770, 0.0f, 1.0f);
          let x_1775 : vec3<f32> = u_xlat13;
          let x_1778 : vec4<bool> = (vec4<f32>(x_1775.y, x_1775.y, x_1775.y, x_1775.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1779 : vec2<bool> = vec2<bool>(x_1778.x, x_1778.w);
          let x_1780 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1779.x, x_1780.y, x_1780.z, x_1779.y);
          let x_1784 : bool = u_xlatb11.x;
          if (x_1784) {
            let x_1789 : f32 = u_xlat13.x;
            x_1785 = x_1789;
          } else {
            let x_1792 : f32 = u_xlat13.x;
            x_1785 = -(x_1792);
          }
          let x_1794 : f32 = x_1785;
          u_xlat11.x = x_1794;
          let x_1797 : bool = u_xlatb11.w;
          if (x_1797) {
            let x_1802 : f32 = u_xlat13.x;
            x_1798 = x_1802;
          } else {
            let x_1805 : f32 = u_xlat13.x;
            x_1798 = -(x_1805);
          }
          let x_1807 : f32 = x_1798;
          u_xlat11.w = x_1807;
          let x_1809 : vec4<f32> = u_xlat12;
          let x_1811 : f32 = u_xlat50;
          let x_1814 : vec4<f32> = u_xlat11;
          let x_1816 : vec2<f32> = ((vec2<f32>(x_1809.x, x_1809.y) * vec2<f32>(x_1811, x_1811)) + vec2<f32>(x_1814.x, x_1814.w));
          let x_1817 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1816.x, x_1817.y, x_1817.z, x_1816.y);
          let x_1819 : vec4<f32> = u_xlat11;
          let x_1822 : vec2<f32> = ((vec2<f32>(x_1819.x, x_1819.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1823 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1822.x, x_1823.y, x_1823.z, x_1822.y);
          let x_1825 : vec4<f32> = u_xlat11;
          let x_1829 : vec2<f32> = clamp(vec2<f32>(x_1825.x, x_1825.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1830 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1829.x, x_1830.y, x_1830.z, x_1829.y);
          let x_1832 : u32 = u_xlatu34;
          let x_1835 : vec4<f32> = x_1481.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1832)];
          let x_1837 : vec4<f32> = u_xlat11;
          let x_1840 : u32 = u_xlatu34;
          let x_1843 : vec4<f32> = x_1481.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1840)];
          let x_1845 : vec2<f32> = ((vec2<f32>(x_1835.x, x_1835.y) * vec2<f32>(x_1837.x, x_1837.w)) + vec2<f32>(x_1843.z, x_1843.w));
          let x_1846 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1845.x, x_1845.y, x_1846.z);
        }
      }
      let x_1853 : vec3<f32> = u_xlat25;
      let x_1856 : f32 = x_90.x_GlobalMipBias.x;
      let x_1857 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1853.x, x_1853.y), x_1856);
      u_xlat11 = x_1857;
      let x_1859 : bool = u_xlatb5.y;
      if (x_1859) {
        let x_1864 : f32 = u_xlat11.w;
        x_1860 = x_1864;
      } else {
        let x_1867 : f32 = u_xlat11.x;
        x_1860 = x_1867;
      }
      let x_1868 : f32 = x_1860;
      u_xlat50 = x_1868;
      let x_1870 : bool = u_xlatb5.x;
      if (x_1870) {
        let x_1874 : vec4<f32> = u_xlat11;
        x_1871 = vec3<f32>(x_1874.x, x_1874.y, x_1874.z);
      } else {
        let x_1877 : f32 = u_xlat50;
        x_1871 = vec3<f32>(x_1877, x_1877, x_1877);
      }
      let x_1879 : vec3<f32> = x_1871;
      let x_1880 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1879.x, x_1879.y, x_1879.z, x_1880.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1886 : vec4<f32> = u_xlat11;
    let x_1888 : u32 = u_xlatu34;
    let x_1891 : vec4<f32> = x_1378.x_AdditionalLightsColor[bitcast<i32>(x_1888)];
    let x_1893 : vec3<f32> = (vec3<f32>(x_1886.x, x_1886.y, x_1886.z) * vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
    let x_1894 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);
    let x_1896 : f32 = u_xlat20;
    let x_1898 : vec4<f32> = u_xlat11;
    let x_1900 : vec3<f32> = (vec3<f32>(x_1896, x_1896, x_1896) * vec3<f32>(x_1898.x, x_1898.y, x_1898.z));
    let x_1901 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1900.x, x_1900.y, x_1900.z, x_1901.w);
    let x_1903 : vec3<f32> = u_xlat16;
    let x_1904 : vec3<f32> = u_xlat10;
    u_xlat34.x = dot(x_1903, x_1904);
    let x_1908 : f32 = u_xlat34.x;
    u_xlat34.x = clamp(x_1908, 0.0f, 1.0f);
    let x_1912 : f32 = u_xlat34.x;
    let x_1913 : f32 = u_xlat48;
    u_xlat34.x = (x_1912 * x_1913);
    let x_1916 : vec2<f32> = u_xlat34;
    let x_1918 : vec4<f32> = u_xlat11;
    let x_1920 : vec3<f32> = (vec3<f32>(x_1916.x, x_1916.x, x_1916.x) * vec3<f32>(x_1918.x, x_1918.y, x_1918.z));
    let x_1921 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1920.x, x_1920.y, x_1920.z, x_1921.w);
    let x_1923 : vec3<f32> = u_xlat23;
    let x_1924 : f32 = u_xlat49;
    let x_1927 : vec3<f32> = u_xlat1;
    u_xlat23 = ((x_1923 * vec3<f32>(x_1924, x_1924, x_1924)) + x_1927);
    let x_1929 : vec3<f32> = u_xlat23;
    let x_1930 : vec3<f32> = u_xlat23;
    u_xlat34.x = dot(x_1929, x_1930);
    let x_1934 : f32 = u_xlat34.x;
    u_xlat34.x = max(x_1934, 1.17549435e-37f);
    let x_1938 : f32 = u_xlat34.x;
    u_xlat34.x = inverseSqrt(x_1938);
    let x_1941 : vec2<f32> = u_xlat34;
    let x_1943 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1941.x, x_1941.x, x_1941.x) * x_1943);
    let x_1945 : vec3<f32> = u_xlat16;
    let x_1946 : vec3<f32> = u_xlat23;
    u_xlat34.x = dot(x_1945, x_1946);
    let x_1950 : f32 = u_xlat34.x;
    u_xlat34.x = clamp(x_1950, 0.0f, 1.0f);
    let x_1953 : vec3<f32> = u_xlat10;
    let x_1954 : vec3<f32> = u_xlat23;
    u_xlat34.y = dot(x_1953, x_1954);
    let x_1958 : f32 = u_xlat34.y;
    u_xlat34.y = clamp(x_1958, 0.0f, 1.0f);
    let x_1961 : vec2<f32> = u_xlat34;
    let x_1962 : vec2<f32> = u_xlat34;
    u_xlat34 = (x_1961 * x_1962);
    let x_1965 : f32 = u_xlat34.x;
    let x_1967 : f32 = u_xlat9.x;
    u_xlat34.x = ((x_1965 * x_1967) + 1.000010014f);
    let x_1972 : f32 = u_xlat34.x;
    let x_1974 : f32 = u_xlat34.x;
    u_xlat34.x = (x_1972 * x_1974);
    let x_1978 : f32 = u_xlat34.y;
    u_xlat48 = max(x_1978, 0.100000001f);
    let x_1980 : f32 = u_xlat48;
    let x_1982 : f32 = u_xlat34.x;
    u_xlat34.x = (x_1980 * x_1982);
    let x_1985 : f32 = u_xlat47;
    let x_1987 : f32 = u_xlat34.x;
    u_xlat34.x = (x_1985 * x_1987);
    let x_1990 : f32 = u_xlat33;
    let x_1992 : f32 = u_xlat34.x;
    u_xlat34.x = (x_1990 / x_1992);
    let x_1995 : vec2<f32> = u_xlat34;
    let x_1998 : vec4<f32> = u_xlat4;
    u_xlat23 = ((vec3<f32>(x_1995.x, x_1995.x, x_1995.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1998.x, x_1998.y, x_1998.z));
    let x_2001 : vec3<f32> = u_xlat23;
    let x_2002 : vec4<f32> = u_xlat11;
    let x_2005 : vec4<f32> = u_xlat8;
    let x_2007 : vec3<f32> = ((x_2001 * vec3<f32>(x_2002.x, x_2002.y, x_2002.z)) + vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
    let x_2008 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2007.x, x_2007.y, x_2007.z, x_2008.w);

    continuing {
      let x_2010 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2010 + bitcast<u32>(1i));
    }
  }
  let x_2012 : vec3<f32> = u_xlat17;
  let x_2013 : vec4<f32> = u_xlat6;
  let x_2016 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_2012 * vec3<f32>(x_2013.x, x_2013.x, x_2013.x)) + vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
  let x_2019 : vec4<f32> = u_xlat8;
  let x_2021 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_2019.x, x_2019.y, x_2019.z) + x_2021);
  let x_2023 : vec4<f32> = vs_INTERP4;
  let x_2025 : vec3<f32> = u_xlat0;
  let x_2027 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_2023.w, x_2023.w, x_2023.w) * x_2025) + x_2027);
  let x_2030 : f32 = u_xlat3.x;
  let x_2032 : f32 = u_xlat3.x;
  u_xlat1.x = (x_2030 * -(x_2032));
  let x_2037 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2037);
  let x_2040 : vec3<f32> = u_xlat0;
  let x_2043 : vec4<f32> = x_90.unity_FogColor;
  u_xlat0 = (x_2040 + -(vec3<f32>(x_2043.x, x_2043.y, x_2043.z)));
  let x_2049 : vec3<f32> = u_xlat1;
  let x_2051 : vec3<f32> = u_xlat0;
  let x_2054 : vec4<f32> = x_90.unity_FogColor;
  let x_2056 : vec3<f32> = ((vec3<f32>(x_2049.x, x_2049.x, x_2049.x) * x_2051) + vec3<f32>(x_2054.x, x_2054.y, x_2054.z));
  let x_2057 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
  let x_2059 : bool = u_xlatb2;
  let x_2060 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_2060, x_2059);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>, @location(6) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0);
}

