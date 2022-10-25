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

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_199 : UnityPerMaterial;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_258 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_964 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1407 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1510 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_1033 : f32;
  var x_1044 : vec3<f32>;
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
  var x_1814 : f32;
  var x_1827 : f32;
  var x_1889 : f32;
  var x_1900 : vec3<f32>;
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
  let x_742 : vec2<f32> = vs_INTERP5;
  let x_744 : f32 = x_90.x_GlobalMipBias.x;
  let x_745 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_742, x_744);
  u_xlat6 = x_745;
  let x_751 : vec2<f32> = vs_INTERP5;
  let x_753 : f32 = x_90.x_GlobalMipBias.x;
  let x_754 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_751, x_753);
  u_xlat17 = vec3<f32>(x_754.x, x_754.y, x_754.z);
  let x_756 : vec4<f32> = u_xlat6;
  u_xlat19 = (vec3<f32>(x_756.x, x_756.y, x_756.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_762 : vec3<f32> = u_xlat16;
  let x_763 : vec3<f32> = u_xlat19;
  u_xlat46 = dot(x_762, x_763);
  let x_765 : f32 = u_xlat46;
  u_xlat46 = (x_765 + 0.5f);
  let x_767 : vec3<f32> = u_xlat17;
  let x_768 : f32 = u_xlat46;
  u_xlat17 = (x_767 * vec3<f32>(x_768, x_768, x_768));
  let x_772 : f32 = u_xlat6.w;
  u_xlat46 = max(x_772, 0.0001f);
  let x_774 : vec3<f32> = u_xlat17;
  let x_775 : f32 = u_xlat46;
  u_xlat17 = (x_774 / vec3<f32>(x_775, x_775, x_775));
  let x_780 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_781 : vec2<f32> = vec2<f32>(x_780.x, x_780.y);
  let x_785 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_781.x, x_781.y));
  let x_786 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_785.x, x_785.y, x_786.z);
  let x_788 : vec3<f32> = u_xlat19;
  let x_790 : vec4<f32> = hlslcc_FragCoord;
  let x_792 : vec2<f32> = (vec2<f32>(x_788.x, x_788.y) * vec2<f32>(x_790.x, x_790.y));
  let x_793 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_792.x, x_792.y, x_793.z, x_793.w);
  let x_796 : f32 = u_xlat6.y;
  let x_799 : f32 = x_90.x_ScaleBiasRt.x;
  let x_802 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat46 = ((x_796 * x_799) + x_802);
  let x_804 : f32 = u_xlat46;
  u_xlat6.z = (-(x_804) + 1.0f);
  let x_809 : f32 = u_xlat5.x;
  u_xlat5.x = x_809;
  let x_812 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_812, 0.0f, 1.0f);
  let x_815 : f32 = u_xlat42;
  u_xlat42 = x_815;
  let x_816 : f32 = u_xlat42;
  u_xlat42 = clamp(x_816, 0.0f, 1.0f);
  let x_819 : f32 = u_xlat5.x;
  u_xlat46 = (-(x_819) + 1.0f);
  let x_822 : f32 = u_xlat46;
  let x_823 : f32 = u_xlat46;
  u_xlat19.x = (x_822 * x_823);
  let x_827 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_827, 0.0078125f);
  let x_833 : f32 = u_xlat19.x;
  let x_835 : f32 = u_xlat19.x;
  u_xlat33 = (x_833 * x_835);
  let x_838 : f32 = u_xlat5.x;
  u_xlat5.x = (x_838 + 0.040000021f);
  let x_843 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_843, 1.0f);
  let x_848 : f32 = u_xlat19.x;
  u_xlat47 = ((x_848 * 4.0f) + 2.0f);
  let x_857 : vec4<f32> = u_xlat6;
  let x_860 : f32 = x_90.x_GlobalMipBias.x;
  let x_861 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_857.x, x_857.z), x_860);
  u_xlat6.x = x_861.x;
  let x_866 : f32 = u_xlat6.x;
  u_xlat20 = (x_866 + -1.0f);
  let x_870 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_871 : f32 = u_xlat20;
  u_xlat20 = ((x_870 * x_871) + 1.0f);
  let x_875 : f32 = u_xlat6.x;
  let x_877 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_875, x_877);
  let x_882 : vec4<f32> = vs_INTERP9;
  let x_883 : vec2<f32> = vec2<f32>(x_882.x, x_882.y);
  let x_885 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_883.x, x_883.y, x_885);
  let x_894 : vec3<f32> = txVec1;
  let x_896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_894.xy, x_894.z);
  u_xlat34.x = x_896;
  let x_899 : f32 = u_xlat34.x;
  let x_901 : f32 = x_258.x_MainLightShadowParams.x;
  let x_903 : f32 = u_xlat43;
  u_xlat43 = ((x_899 * x_901) + x_903);
  let x_907 : f32 = vs_INTERP9.z;
  u_xlatb34.x = (0.0f >= x_907);
  let x_912 : f32 = vs_INTERP9.z;
  u_xlatb48 = (x_912 >= 1.0f);
  let x_914 : bool = u_xlatb48;
  let x_916 : bool = u_xlatb34.x;
  u_xlatb34.x = (x_914 | x_916);
  let x_920 : bool = u_xlatb34.x;
  let x_921 : f32 = u_xlat43;
  u_xlat43 = select(x_921, 1.0f, x_920);
  let x_924 : vec3<f32> = vs_INTERP0;
  let x_926 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  let x_928 : vec3<f32> = (x_924 + -(x_926));
  let x_929 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec4<f32> = u_xlat7;
  let x_933 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_931.x, x_931.y, x_931.z), vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_938 : f32 = u_xlat34.x;
  let x_940 : f32 = x_258.x_MainLightShadowParams.z;
  let x_943 : f32 = x_258.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_938 * x_940) + x_943);
  let x_947 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_947, 0.0f, 1.0f);
  let x_951 : f32 = u_xlat43;
  u_xlat48 = (-(x_951) + 1.0f);
  let x_955 : f32 = u_xlat34.x;
  let x_956 : f32 = u_xlat48;
  let x_958 : f32 = u_xlat43;
  u_xlat43 = ((x_955 * x_956) + x_958);
  let x_966 : f32 = x_964.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_966 == -1.0f));
  let x_970 : bool = u_xlatb34.x;
  if (x_970) {
    let x_973 : vec3<f32> = vs_INTERP0;
    let x_976 : vec4<f32> = x_964.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_973.y, x_973.y) * vec2<f32>(x_976.x, x_976.y));
    let x_980 : vec4<f32> = x_964.x_MainLightWorldToLight[0i];
    let x_982 : vec3<f32> = vs_INTERP0;
    let x_985 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_980.x, x_980.y) * vec2<f32>(x_982.x, x_982.x)) + x_985);
    let x_988 : vec4<f32> = x_964.x_MainLightWorldToLight[2i];
    let x_990 : vec3<f32> = vs_INTERP0;
    let x_993 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_988.x, x_988.y) * vec2<f32>(x_990.z, x_990.z)) + x_993);
    let x_995 : vec2<f32> = u_xlat34;
    let x_997 : vec4<f32> = x_964.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_995 + vec2<f32>(x_997.x, x_997.y));
    let x_1000 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_1000 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1009 : vec2<f32> = u_xlat34;
    let x_1011 : f32 = x_90.x_GlobalMipBias.x;
    let x_1012 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1009, x_1011);
    u_xlat7 = x_1012;
    let x_1014 : f32 = x_964.x_MainLightCookieTextureFormat;
    let x_1016 : f32 = x_964.x_MainLightCookieTextureFormat;
    let x_1018 : f32 = x_964.x_MainLightCookieTextureFormat;
    let x_1020 : f32 = x_964.x_MainLightCookieTextureFormat;
    let x_1021 : vec4<f32> = vec4<f32>(x_1014, x_1016, x_1018, x_1020);
    let x_1029 : vec4<bool> = (vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1021.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_1029.x, x_1029.y);
    let x_1032 : bool = u_xlatb34.y;
    if (x_1032) {
      let x_1037 : f32 = u_xlat7.w;
      x_1033 = x_1037;
    } else {
      let x_1040 : f32 = u_xlat7.x;
      x_1033 = x_1040;
    }
    let x_1041 : f32 = x_1033;
    u_xlat48 = x_1041;
    let x_1043 : bool = u_xlatb34.x;
    if (x_1043) {
      let x_1047 : vec4<f32> = u_xlat7;
      x_1044 = vec3<f32>(x_1047.x, x_1047.y, x_1047.z);
    } else {
      let x_1050 : f32 = u_xlat48;
      x_1044 = vec3<f32>(x_1050, x_1050, x_1050);
    }
    let x_1052 : vec3<f32> = x_1044;
    let x_1053 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1059 : vec4<f32> = u_xlat7;
  let x_1062 : vec4<f32> = x_90.x_MainLightColor;
  let x_1064 : vec3<f32> = (vec3<f32>(x_1059.x, x_1059.y, x_1059.z) * vec3<f32>(x_1062.x, x_1062.y, x_1062.z));
  let x_1065 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
  let x_1067 : f32 = u_xlat20;
  let x_1069 : vec4<f32> = u_xlat7;
  let x_1071 : vec3<f32> = (vec3<f32>(x_1067, x_1067, x_1067) * vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1072 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1074 : vec3<f32> = u_xlat1;
  let x_1076 : vec3<f32> = u_xlat16;
  u_xlat34.x = dot(-(x_1074), x_1076);
  let x_1080 : f32 = u_xlat34.x;
  let x_1082 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1080 + x_1082);
  let x_1086 : vec3<f32> = u_xlat16;
  let x_1087 : vec2<f32> = u_xlat34;
  let x_1091 : vec3<f32> = u_xlat1;
  let x_1093 : vec3<f32> = ((x_1086 * -(vec3<f32>(x_1087.x, x_1087.x, x_1087.x))) + -(x_1091));
  let x_1094 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
  let x_1096 : vec3<f32> = u_xlat16;
  let x_1097 : vec3<f32> = u_xlat1;
  u_xlat34.x = dot(x_1096, x_1097);
  let x_1101 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1101, 0.0f, 1.0f);
  let x_1105 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1105) + 1.0f);
  let x_1110 : f32 = u_xlat34.x;
  let x_1112 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1110 * x_1112);
  let x_1116 : f32 = u_xlat34.x;
  let x_1118 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1116 * x_1118);
  let x_1121 : f32 = u_xlat46;
  u_xlat48 = ((-(x_1121) * 0.699999988f) + 1.700000048f);
  let x_1127 : f32 = u_xlat46;
  let x_1128 : f32 = u_xlat48;
  u_xlat4.w = (x_1127 * x_1128);
  let x_1131 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_1131 * vec4<f32>(0.959999979f, 0.959999979f, 0.959999979f, 6.0f));
  let x_1144 : vec4<f32> = u_xlat8;
  let x_1147 : f32 = u_xlat4.w;
  let x_1148 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1144.x, x_1144.y, x_1144.z), x_1147);
  u_xlat8 = x_1148;
  let x_1150 : f32 = u_xlat8.w;
  u_xlat46 = (x_1150 + -1.0f);
  let x_1153 : f32 = x_145.unity_SpecCube0_HDR.w;
  let x_1154 : f32 = u_xlat46;
  u_xlat46 = ((x_1153 * x_1154) + 1.0f);
  let x_1157 : f32 = u_xlat46;
  u_xlat46 = max(x_1157, 0.0f);
  let x_1159 : f32 = u_xlat46;
  u_xlat46 = log2(x_1159);
  let x_1161 : f32 = u_xlat46;
  let x_1163 : f32 = x_145.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_1161 * x_1163);
  let x_1165 : f32 = u_xlat46;
  u_xlat46 = exp2(x_1165);
  let x_1167 : f32 = u_xlat46;
  let x_1169 : f32 = x_145.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_1167 * x_1169);
  let x_1171 : vec4<f32> = u_xlat8;
  let x_1173 : f32 = u_xlat46;
  let x_1175 : vec3<f32> = (vec3<f32>(x_1171.x, x_1171.y, x_1171.z) * vec3<f32>(x_1173, x_1173, x_1173));
  let x_1176 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1176.w);
  let x_1179 : vec3<f32> = u_xlat19;
  let x_1181 : vec3<f32> = u_xlat19;
  u_xlat9 = ((vec2<f32>(x_1179.x, x_1179.x) * vec2<f32>(x_1181.x, x_1181.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1187 : f32 = u_xlat9.y;
  u_xlat46 = (1.0f / x_1187);
  let x_1190 : f32 = u_xlat5.x;
  u_xlat5.x = (x_1190 + -0.039999999f);
  let x_1195 : f32 = u_xlat34.x;
  let x_1197 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1195 * x_1197) + 0.039999999f);
  let x_1202 : f32 = u_xlat46;
  let x_1204 : f32 = u_xlat5.x;
  u_xlat46 = (x_1202 * x_1204);
  let x_1206 : f32 = u_xlat46;
  let x_1208 : vec4<f32> = u_xlat8;
  let x_1210 : vec3<f32> = (vec3<f32>(x_1206, x_1206, x_1206) * vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1211 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1213 : vec3<f32> = u_xlat17;
  let x_1214 : vec4<f32> = u_xlat4;
  let x_1217 : vec4<f32> = u_xlat8;
  u_xlat17 = ((x_1213 * vec3<f32>(x_1214.x, x_1214.y, x_1214.z)) + vec3<f32>(x_1217.x, x_1217.y, x_1217.z));
  let x_1220 : f32 = u_xlat43;
  let x_1222 : f32 = x_145.unity_LightData.z;
  u_xlat43 = (x_1220 * x_1222);
  let x_1224 : vec3<f32> = u_xlat16;
  let x_1226 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat46 = dot(x_1224, vec3<f32>(x_1226.x, x_1226.y, x_1226.z));
  let x_1229 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1229, 0.0f, 1.0f);
  let x_1231 : f32 = u_xlat43;
  let x_1232 : f32 = u_xlat46;
  u_xlat43 = (x_1231 * x_1232);
  let x_1234 : f32 = u_xlat43;
  let x_1236 : vec4<f32> = u_xlat7;
  let x_1238 : vec3<f32> = (vec3<f32>(x_1234, x_1234, x_1234) * vec3<f32>(x_1236.x, x_1236.y, x_1236.z));
  let x_1239 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
  let x_1241 : vec3<f32> = u_xlat1;
  let x_1243 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1245 : vec3<f32> = (x_1241 + vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1246 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
  let x_1248 : vec4<f32> = u_xlat8;
  let x_1250 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_1248.x, x_1248.y, x_1248.z), vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
  let x_1253 : f32 = u_xlat43;
  u_xlat43 = max(x_1253, 1.17549435e-37f);
  let x_1256 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1256);
  let x_1258 : f32 = u_xlat43;
  let x_1260 : vec4<f32> = u_xlat8;
  let x_1262 : vec3<f32> = (vec3<f32>(x_1258, x_1258, x_1258) * vec3<f32>(x_1260.x, x_1260.y, x_1260.z));
  let x_1263 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
  let x_1265 : vec3<f32> = u_xlat16;
  let x_1266 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(x_1265, vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
  let x_1269 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1269, 0.0f, 1.0f);
  let x_1272 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1274 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_1272.x, x_1272.y, x_1272.z), vec3<f32>(x_1274.x, x_1274.y, x_1274.z));
  let x_1277 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1277, 0.0f, 1.0f);
  let x_1279 : f32 = u_xlat43;
  let x_1280 : f32 = u_xlat43;
  u_xlat43 = (x_1279 * x_1280);
  let x_1282 : f32 = u_xlat43;
  let x_1284 : f32 = u_xlat9.x;
  u_xlat43 = ((x_1282 * x_1284) + 1.000010014f);
  let x_1288 : f32 = u_xlat46;
  let x_1289 : f32 = u_xlat46;
  u_xlat46 = (x_1288 * x_1289);
  let x_1291 : f32 = u_xlat43;
  let x_1292 : f32 = u_xlat43;
  u_xlat43 = (x_1291 * x_1292);
  let x_1294 : f32 = u_xlat46;
  u_xlat46 = max(x_1294, 0.100000001f);
  let x_1297 : f32 = u_xlat43;
  let x_1298 : f32 = u_xlat46;
  u_xlat43 = (x_1297 * x_1298);
  let x_1300 : f32 = u_xlat47;
  let x_1301 : f32 = u_xlat43;
  u_xlat43 = (x_1300 * x_1301);
  let x_1303 : f32 = u_xlat33;
  let x_1304 : f32 = u_xlat43;
  u_xlat43 = (x_1303 / x_1304);
  let x_1306 : f32 = u_xlat43;
  let x_1310 : vec4<f32> = u_xlat4;
  let x_1312 : vec3<f32> = ((vec3<f32>(x_1306, x_1306, x_1306) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1310.x, x_1310.y, x_1310.z));
  let x_1313 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
  let x_1315 : vec4<f32> = u_xlat7;
  let x_1317 : vec4<f32> = u_xlat8;
  let x_1319 : vec3<f32> = (vec3<f32>(x_1315.x, x_1315.y, x_1315.z) * vec3<f32>(x_1317.x, x_1317.y, x_1317.z));
  let x_1320 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1320.w);
  let x_1324 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1326 : f32 = x_145.unity_LightData.y;
  u_xlat43 = min(x_1324, x_1326);
  let x_1329 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1329));
  let x_1334 : f32 = x_964.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1336 : f32 = x_964.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1338 : f32 = x_964.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1340 : f32 = x_964.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1341 : vec4<f32> = vec4<f32>(x_1334, x_1336, x_1338, x_1340);
  let x_1348 : vec4<bool> = (vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1341.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1348.x, x_1348.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1359 : u32 = u_xlatu_loop_1;
    let x_1360 : u32 = u_xlatu43;
    if ((x_1359 < x_1360)) {
    } else {
      break;
    }
    let x_1363 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_1363 >> 2u);
    let x_1366 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1366 & 3u));
    let x_1369 : u32 = u_xlatu34;
    let x_1372 : vec4<f32> = x_145.unity_LightIndices[bitcast<i32>(x_1369)];
    let x_1382 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1387 : vec4<u32> = indexable[x_1382];
    u_xlat34.x = dot(x_1372, bitcast<vec4<f32>>(x_1387));
    let x_1392 : f32 = u_xlat34.x;
    u_xlatu34 = bitcast<u32>(i32(x_1392));
    let x_1396 : vec3<f32> = vs_INTERP0;
    let x_1408 : u32 = u_xlatu34;
    let x_1411 : vec4<f32> = x_1407.x_AdditionalLightsPosition[bitcast<i32>(x_1408)];
    let x_1414 : u32 = u_xlatu34;
    let x_1417 : vec4<f32> = x_1407.x_AdditionalLightsPosition[bitcast<i32>(x_1414)];
    u_xlat23 = ((-(x_1396) * vec3<f32>(x_1411.w, x_1411.w, x_1411.w)) + vec3<f32>(x_1417.x, x_1417.y, x_1417.z));
    let x_1420 : vec3<f32> = u_xlat23;
    let x_1421 : vec3<f32> = u_xlat23;
    u_xlat48 = dot(x_1420, x_1421);
    let x_1423 : f32 = u_xlat48;
    u_xlat48 = max(x_1423, 6.10351562e-05f);
    let x_1427 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1427);
    let x_1430 : f32 = u_xlat49;
    let x_1432 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1430, x_1430, x_1430) * x_1432);
    let x_1435 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1435);
    let x_1437 : f32 = u_xlat48;
    let x_1438 : u32 = u_xlatu34;
    let x_1441 : f32 = x_1407.x_AdditionalLightsAttenuation[bitcast<i32>(x_1438)].x;
    u_xlat48 = (x_1437 * x_1441);
    let x_1443 : f32 = u_xlat48;
    let x_1445 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1443) * x_1445) + 1.0f);
    let x_1448 : f32 = u_xlat48;
    u_xlat48 = max(x_1448, 0.0f);
    let x_1450 : f32 = u_xlat48;
    let x_1451 : f32 = u_xlat48;
    u_xlat48 = (x_1450 * x_1451);
    let x_1453 : f32 = u_xlat48;
    let x_1454 : f32 = u_xlat50;
    u_xlat48 = (x_1453 * x_1454);
    let x_1456 : u32 = u_xlatu34;
    let x_1459 : vec4<f32> = x_1407.x_AdditionalLightsSpotDir[bitcast<i32>(x_1456)];
    let x_1461 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1459.x, x_1459.y, x_1459.z), x_1461);
    let x_1463 : f32 = u_xlat50;
    let x_1464 : u32 = u_xlatu34;
    let x_1467 : f32 = x_1407.x_AdditionalLightsAttenuation[bitcast<i32>(x_1464)].z;
    let x_1469 : u32 = u_xlatu34;
    let x_1472 : f32 = x_1407.x_AdditionalLightsAttenuation[bitcast<i32>(x_1469)].w;
    u_xlat50 = ((x_1463 * x_1467) + x_1472);
    let x_1474 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1474, 0.0f, 1.0f);
    let x_1476 : f32 = u_xlat50;
    let x_1477 : f32 = u_xlat50;
    u_xlat50 = (x_1476 * x_1477);
    let x_1479 : f32 = u_xlat48;
    let x_1480 : f32 = u_xlat50;
    u_xlat48 = (x_1479 * x_1480);
    let x_1483 : u32 = u_xlatu34;
    u_xlatu50 = (x_1483 >> 5u);
    let x_1486 : u32 = u_xlatu34;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1486) & 31i)));
    let x_1492 : i32 = u_xlati52;
    let x_1494 : u32 = u_xlatu50;
    let x_1497 : f32 = x_964.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1494)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1492) & bitcast<u32>(x_1497)));
    let x_1501 : i32 = u_xlati50;
    if ((x_1501 != 0i)) {
      let x_1511 : u32 = u_xlatu34;
      let x_1514 : f32 = x_1510.x_AdditionalLightsLightTypes[bitcast<i32>(x_1511)].el;
      u_xlati50 = i32(x_1514);
      let x_1516 : i32 = u_xlati50;
      u_xlati52 = select(1i, 0i, (x_1516 != 0i));
      let x_1520 : u32 = u_xlatu34;
      u_xlati11 = (bitcast<i32>(x_1520) << bitcast<u32>(2i));
      let x_1523 : i32 = u_xlati52;
      if ((x_1523 != 0i)) {
        let x_1528 : vec3<f32> = vs_INTERP0;
        let x_1530 : i32 = u_xlati11;
        let x_1533 : i32 = u_xlati11;
        let x_1537 : vec4<f32> = x_1510.x_AdditionalLightsWorldToLights[((x_1530 + 1i) / 4i)][((x_1533 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1528.y, x_1528.y, x_1528.y) * vec3<f32>(x_1537.x, x_1537.y, x_1537.w));
        let x_1540 : i32 = u_xlati11;
        let x_1542 : i32 = u_xlati11;
        let x_1545 : vec4<f32> = x_1510.x_AdditionalLightsWorldToLights[(x_1540 / 4i)][(x_1542 % 4i)];
        let x_1547 : vec3<f32> = vs_INTERP0;
        let x_1550 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1545.x, x_1545.y, x_1545.w) * vec3<f32>(x_1547.x, x_1547.x, x_1547.x)) + x_1550);
        let x_1552 : i32 = u_xlati11;
        let x_1555 : i32 = u_xlati11;
        let x_1559 : vec4<f32> = x_1510.x_AdditionalLightsWorldToLights[((x_1552 + 2i) / 4i)][((x_1555 + 2i) % 4i)];
        let x_1561 : vec3<f32> = vs_INTERP0;
        let x_1564 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1559.x, x_1559.y, x_1559.w) * vec3<f32>(x_1561.z, x_1561.z, x_1561.z)) + x_1564);
        let x_1566 : vec3<f32> = u_xlat25;
        let x_1567 : i32 = u_xlati11;
        let x_1570 : i32 = u_xlati11;
        let x_1574 : vec4<f32> = x_1510.x_AdditionalLightsWorldToLights[((x_1567 + 3i) / 4i)][((x_1570 + 3i) % 4i)];
        u_xlat25 = (x_1566 + vec3<f32>(x_1574.x, x_1574.y, x_1574.w));
        let x_1577 : vec3<f32> = u_xlat25;
        let x_1579 : vec3<f32> = u_xlat25;
        let x_1581 : vec2<f32> = (vec2<f32>(x_1577.x, x_1577.y) / vec2<f32>(x_1579.z, x_1579.z));
        let x_1582 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1581.x, x_1581.y, x_1582.z);
        let x_1584 : vec3<f32> = u_xlat25;
        let x_1587 : vec2<f32> = ((vec2<f32>(x_1584.x, x_1584.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1588 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1587.x, x_1587.y, x_1588.z);
        let x_1590 : vec3<f32> = u_xlat25;
        let x_1594 : vec2<f32> = clamp(vec2<f32>(x_1590.x, x_1590.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1595 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1594.x, x_1594.y, x_1595.z);
        let x_1597 : u32 = u_xlatu34;
        let x_1600 : vec4<f32> = x_1510.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1597)];
        let x_1602 : vec3<f32> = u_xlat25;
        let x_1605 : u32 = u_xlatu34;
        let x_1608 : vec4<f32> = x_1510.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1605)];
        let x_1610 : vec2<f32> = ((vec2<f32>(x_1600.x, x_1600.y) * vec2<f32>(x_1602.x, x_1602.y)) + vec2<f32>(x_1608.z, x_1608.w));
        let x_1611 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1610.x, x_1610.y, x_1611.z);
      } else {
        let x_1615 : i32 = u_xlati50;
        u_xlatb50 = (x_1615 == 1i);
        let x_1617 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1617);
        let x_1619 : i32 = u_xlati50;
        if ((x_1619 != 0i)) {
          let x_1624 : vec3<f32> = vs_INTERP0;
          let x_1626 : i32 = u_xlati11;
          let x_1629 : i32 = u_xlati11;
          let x_1633 : vec4<f32> = x_1510.x_AdditionalLightsWorldToLights[((x_1626 + 1i) / 4i)][((x_1629 + 1i) % 4i)];
          let x_1635 : vec2<f32> = (vec2<f32>(x_1624.y, x_1624.y) * vec2<f32>(x_1633.x, x_1633.y));
          let x_1636 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1635.x, x_1635.y, x_1636.z, x_1636.w);
          let x_1638 : i32 = u_xlati11;
          let x_1640 : i32 = u_xlati11;
          let x_1643 : vec4<f32> = x_1510.x_AdditionalLightsWorldToLights[(x_1638 / 4i)][(x_1640 % 4i)];
          let x_1645 : vec3<f32> = vs_INTERP0;
          let x_1648 : vec4<f32> = u_xlat12;
          let x_1650 : vec2<f32> = ((vec2<f32>(x_1643.x, x_1643.y) * vec2<f32>(x_1645.x, x_1645.x)) + vec2<f32>(x_1648.x, x_1648.y));
          let x_1651 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1650.x, x_1650.y, x_1651.z, x_1651.w);
          let x_1653 : i32 = u_xlati11;
          let x_1656 : i32 = u_xlati11;
          let x_1660 : vec4<f32> = x_1510.x_AdditionalLightsWorldToLights[((x_1653 + 2i) / 4i)][((x_1656 + 2i) % 4i)];
          let x_1662 : vec3<f32> = vs_INTERP0;
          let x_1665 : vec4<f32> = u_xlat12;
          let x_1667 : vec2<f32> = ((vec2<f32>(x_1660.x, x_1660.y) * vec2<f32>(x_1662.z, x_1662.z)) + vec2<f32>(x_1665.x, x_1665.y));
          let x_1668 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1667.x, x_1667.y, x_1668.z, x_1668.w);
          let x_1670 : vec4<f32> = u_xlat12;
          let x_1672 : i32 = u_xlati11;
          let x_1675 : i32 = u_xlati11;
          let x_1679 : vec4<f32> = x_1510.x_AdditionalLightsWorldToLights[((x_1672 + 3i) / 4i)][((x_1675 + 3i) % 4i)];
          let x_1681 : vec2<f32> = (vec2<f32>(x_1670.x, x_1670.y) + vec2<f32>(x_1679.x, x_1679.y));
          let x_1682 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1681.x, x_1681.y, x_1682.z, x_1682.w);
          let x_1684 : vec4<f32> = u_xlat12;
          let x_1687 : vec2<f32> = ((vec2<f32>(x_1684.x, x_1684.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1688 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1687.x, x_1687.y, x_1688.z, x_1688.w);
          let x_1690 : vec4<f32> = u_xlat12;
          let x_1692 : vec2<f32> = fract(vec2<f32>(x_1690.x, x_1690.y));
          let x_1693 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1692.x, x_1692.y, x_1693.z, x_1693.w);
          let x_1695 : u32 = u_xlatu34;
          let x_1698 : vec4<f32> = x_1510.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1695)];
          let x_1700 : vec4<f32> = u_xlat12;
          let x_1703 : u32 = u_xlatu34;
          let x_1706 : vec4<f32> = x_1510.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1703)];
          let x_1708 : vec2<f32> = ((vec2<f32>(x_1698.x, x_1698.y) * vec2<f32>(x_1700.x, x_1700.y)) + vec2<f32>(x_1706.z, x_1706.w));
          let x_1709 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1708.x, x_1708.y, x_1709.z);
        } else {
          let x_1712 : vec3<f32> = vs_INTERP0;
          let x_1714 : i32 = u_xlati11;
          let x_1717 : i32 = u_xlati11;
          let x_1721 : vec4<f32> = x_1510.x_AdditionalLightsWorldToLights[((x_1714 + 1i) / 4i)][((x_1717 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1712.y, x_1712.y, x_1712.y, x_1712.y) * x_1721);
          let x_1723 : i32 = u_xlati11;
          let x_1725 : i32 = u_xlati11;
          let x_1728 : vec4<f32> = x_1510.x_AdditionalLightsWorldToLights[(x_1723 / 4i)][(x_1725 % 4i)];
          let x_1729 : vec3<f32> = vs_INTERP0;
          let x_1732 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1728 * vec4<f32>(x_1729.x, x_1729.x, x_1729.x, x_1729.x)) + x_1732);
          let x_1734 : i32 = u_xlati11;
          let x_1737 : i32 = u_xlati11;
          let x_1741 : vec4<f32> = x_1510.x_AdditionalLightsWorldToLights[((x_1734 + 2i) / 4i)][((x_1737 + 2i) % 4i)];
          let x_1742 : vec3<f32> = vs_INTERP0;
          let x_1745 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1741 * vec4<f32>(x_1742.z, x_1742.z, x_1742.z, x_1742.z)) + x_1745);
          let x_1747 : vec4<f32> = u_xlat12;
          let x_1748 : i32 = u_xlati11;
          let x_1751 : i32 = u_xlati11;
          let x_1755 : vec4<f32> = x_1510.x_AdditionalLightsWorldToLights[((x_1748 + 3i) / 4i)][((x_1751 + 3i) % 4i)];
          u_xlat12 = (x_1747 + x_1755);
          let x_1757 : vec4<f32> = u_xlat12;
          let x_1759 : vec4<f32> = u_xlat12;
          let x_1761 : vec3<f32> = (vec3<f32>(x_1757.x, x_1757.y, x_1757.z) / vec3<f32>(x_1759.w, x_1759.w, x_1759.w));
          let x_1762 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1761.x, x_1761.y, x_1761.z, x_1762.w);
          let x_1764 : vec4<f32> = u_xlat12;
          let x_1766 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1764.x, x_1764.y, x_1764.z), vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
          let x_1769 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1769);
          let x_1771 : f32 = u_xlat50;
          let x_1773 : vec4<f32> = u_xlat12;
          let x_1775 : vec3<f32> = (vec3<f32>(x_1771, x_1771, x_1771) * vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
          let x_1776 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1775.x, x_1775.y, x_1775.z, x_1776.w);
          let x_1778 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1778.x, x_1778.y, x_1778.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1783 : f32 = u_xlat50;
          u_xlat50 = max(x_1783, 0.000001f);
          let x_1786 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1786);
          let x_1789 : f32 = u_xlat50;
          let x_1791 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1789, x_1789, x_1789) * vec3<f32>(x_1791.z, x_1791.x, x_1791.y));
          let x_1795 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1795);
          let x_1799 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1799, 0.0f, 1.0f);
          let x_1804 : vec3<f32> = u_xlat13;
          let x_1807 : vec4<bool> = (vec4<f32>(x_1804.y, x_1804.y, x_1804.y, x_1804.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1808 : vec2<bool> = vec2<bool>(x_1807.x, x_1807.w);
          let x_1809 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1808.x, x_1809.y, x_1809.z, x_1808.y);
          let x_1813 : bool = u_xlatb11.x;
          if (x_1813) {
            let x_1818 : f32 = u_xlat13.x;
            x_1814 = x_1818;
          } else {
            let x_1821 : f32 = u_xlat13.x;
            x_1814 = -(x_1821);
          }
          let x_1823 : f32 = x_1814;
          u_xlat11.x = x_1823;
          let x_1826 : bool = u_xlatb11.w;
          if (x_1826) {
            let x_1831 : f32 = u_xlat13.x;
            x_1827 = x_1831;
          } else {
            let x_1834 : f32 = u_xlat13.x;
            x_1827 = -(x_1834);
          }
          let x_1836 : f32 = x_1827;
          u_xlat11.w = x_1836;
          let x_1838 : vec4<f32> = u_xlat12;
          let x_1840 : f32 = u_xlat50;
          let x_1843 : vec4<f32> = u_xlat11;
          let x_1845 : vec2<f32> = ((vec2<f32>(x_1838.x, x_1838.y) * vec2<f32>(x_1840, x_1840)) + vec2<f32>(x_1843.x, x_1843.w));
          let x_1846 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1845.x, x_1846.y, x_1846.z, x_1845.y);
          let x_1848 : vec4<f32> = u_xlat11;
          let x_1851 : vec2<f32> = ((vec2<f32>(x_1848.x, x_1848.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1852 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1851.x, x_1852.y, x_1852.z, x_1851.y);
          let x_1854 : vec4<f32> = u_xlat11;
          let x_1858 : vec2<f32> = clamp(vec2<f32>(x_1854.x, x_1854.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1859 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1858.x, x_1859.y, x_1859.z, x_1858.y);
          let x_1861 : u32 = u_xlatu34;
          let x_1864 : vec4<f32> = x_1510.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1861)];
          let x_1866 : vec4<f32> = u_xlat11;
          let x_1869 : u32 = u_xlatu34;
          let x_1872 : vec4<f32> = x_1510.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1869)];
          let x_1874 : vec2<f32> = ((vec2<f32>(x_1864.x, x_1864.y) * vec2<f32>(x_1866.x, x_1866.w)) + vec2<f32>(x_1872.z, x_1872.w));
          let x_1875 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1874.x, x_1874.y, x_1875.z);
        }
      }
      let x_1882 : vec3<f32> = u_xlat25;
      let x_1885 : f32 = x_90.x_GlobalMipBias.x;
      let x_1886 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1882.x, x_1882.y), x_1885);
      u_xlat11 = x_1886;
      let x_1888 : bool = u_xlatb5.y;
      if (x_1888) {
        let x_1893 : f32 = u_xlat11.w;
        x_1889 = x_1893;
      } else {
        let x_1896 : f32 = u_xlat11.x;
        x_1889 = x_1896;
      }
      let x_1897 : f32 = x_1889;
      u_xlat50 = x_1897;
      let x_1899 : bool = u_xlatb5.x;
      if (x_1899) {
        let x_1903 : vec4<f32> = u_xlat11;
        x_1900 = vec3<f32>(x_1903.x, x_1903.y, x_1903.z);
      } else {
        let x_1906 : f32 = u_xlat50;
        x_1900 = vec3<f32>(x_1906, x_1906, x_1906);
      }
      let x_1908 : vec3<f32> = x_1900;
      let x_1909 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1908.x, x_1908.y, x_1908.z, x_1909.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1915 : vec4<f32> = u_xlat11;
    let x_1917 : u32 = u_xlatu34;
    let x_1920 : vec4<f32> = x_1407.x_AdditionalLightsColor[bitcast<i32>(x_1917)];
    let x_1922 : vec3<f32> = (vec3<f32>(x_1915.x, x_1915.y, x_1915.z) * vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
    let x_1923 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
    let x_1925 : f32 = u_xlat20;
    let x_1927 : vec4<f32> = u_xlat11;
    let x_1929 : vec3<f32> = (vec3<f32>(x_1925, x_1925, x_1925) * vec3<f32>(x_1927.x, x_1927.y, x_1927.z));
    let x_1930 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1929.x, x_1929.y, x_1929.z, x_1930.w);
    let x_1932 : vec3<f32> = u_xlat16;
    let x_1933 : vec3<f32> = u_xlat10;
    u_xlat34.x = dot(x_1932, x_1933);
    let x_1937 : f32 = u_xlat34.x;
    u_xlat34.x = clamp(x_1937, 0.0f, 1.0f);
    let x_1941 : f32 = u_xlat34.x;
    let x_1942 : f32 = u_xlat48;
    u_xlat34.x = (x_1941 * x_1942);
    let x_1945 : vec2<f32> = u_xlat34;
    let x_1947 : vec4<f32> = u_xlat11;
    let x_1949 : vec3<f32> = (vec3<f32>(x_1945.x, x_1945.x, x_1945.x) * vec3<f32>(x_1947.x, x_1947.y, x_1947.z));
    let x_1950 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1949.x, x_1949.y, x_1949.z, x_1950.w);
    let x_1952 : vec3<f32> = u_xlat23;
    let x_1953 : f32 = u_xlat49;
    let x_1956 : vec3<f32> = u_xlat1;
    u_xlat23 = ((x_1952 * vec3<f32>(x_1953, x_1953, x_1953)) + x_1956);
    let x_1958 : vec3<f32> = u_xlat23;
    let x_1959 : vec3<f32> = u_xlat23;
    u_xlat34.x = dot(x_1958, x_1959);
    let x_1963 : f32 = u_xlat34.x;
    u_xlat34.x = max(x_1963, 1.17549435e-37f);
    let x_1967 : f32 = u_xlat34.x;
    u_xlat34.x = inverseSqrt(x_1967);
    let x_1970 : vec2<f32> = u_xlat34;
    let x_1972 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1970.x, x_1970.x, x_1970.x) * x_1972);
    let x_1974 : vec3<f32> = u_xlat16;
    let x_1975 : vec3<f32> = u_xlat23;
    u_xlat34.x = dot(x_1974, x_1975);
    let x_1979 : f32 = u_xlat34.x;
    u_xlat34.x = clamp(x_1979, 0.0f, 1.0f);
    let x_1982 : vec3<f32> = u_xlat10;
    let x_1983 : vec3<f32> = u_xlat23;
    u_xlat34.y = dot(x_1982, x_1983);
    let x_1987 : f32 = u_xlat34.y;
    u_xlat34.y = clamp(x_1987, 0.0f, 1.0f);
    let x_1990 : vec2<f32> = u_xlat34;
    let x_1991 : vec2<f32> = u_xlat34;
    u_xlat34 = (x_1990 * x_1991);
    let x_1994 : f32 = u_xlat34.x;
    let x_1996 : f32 = u_xlat9.x;
    u_xlat34.x = ((x_1994 * x_1996) + 1.000010014f);
    let x_2001 : f32 = u_xlat34.x;
    let x_2003 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2001 * x_2003);
    let x_2007 : f32 = u_xlat34.y;
    u_xlat48 = max(x_2007, 0.100000001f);
    let x_2009 : f32 = u_xlat48;
    let x_2011 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2009 * x_2011);
    let x_2014 : f32 = u_xlat47;
    let x_2016 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2014 * x_2016);
    let x_2019 : f32 = u_xlat33;
    let x_2021 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2019 / x_2021);
    let x_2024 : vec2<f32> = u_xlat34;
    let x_2027 : vec4<f32> = u_xlat4;
    u_xlat23 = ((vec3<f32>(x_2024.x, x_2024.x, x_2024.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
    let x_2030 : vec3<f32> = u_xlat23;
    let x_2031 : vec4<f32> = u_xlat11;
    let x_2034 : vec4<f32> = u_xlat8;
    let x_2036 : vec3<f32> = ((x_2030 * vec3<f32>(x_2031.x, x_2031.y, x_2031.z)) + vec3<f32>(x_2034.x, x_2034.y, x_2034.z));
    let x_2037 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2036.x, x_2036.y, x_2036.z, x_2037.w);

    continuing {
      let x_2039 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2039 + bitcast<u32>(1i));
    }
  }
  let x_2041 : vec3<f32> = u_xlat17;
  let x_2042 : vec4<f32> = u_xlat6;
  let x_2045 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_2041 * vec3<f32>(x_2042.x, x_2042.x, x_2042.x)) + vec3<f32>(x_2045.x, x_2045.y, x_2045.z));
  let x_2048 : vec4<f32> = u_xlat8;
  let x_2050 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_2048.x, x_2048.y, x_2048.z) + x_2050);
  let x_2052 : vec4<f32> = vs_INTERP4;
  let x_2054 : vec3<f32> = u_xlat0;
  let x_2056 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_2052.w, x_2052.w, x_2052.w) * x_2054) + x_2056);
  let x_2059 : f32 = u_xlat3.x;
  let x_2061 : f32 = u_xlat3.x;
  u_xlat1.x = (x_2059 * -(x_2061));
  let x_2066 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2066);
  let x_2069 : vec3<f32> = u_xlat0;
  let x_2072 : vec4<f32> = x_90.unity_FogColor;
  u_xlat0 = (x_2069 + -(vec3<f32>(x_2072.x, x_2072.y, x_2072.z)));
  let x_2078 : vec3<f32> = u_xlat1;
  let x_2080 : vec3<f32> = u_xlat0;
  let x_2083 : vec4<f32> = x_90.unity_FogColor;
  let x_2085 : vec3<f32> = ((vec3<f32>(x_2078.x, x_2078.x, x_2078.x) * x_2080) + vec3<f32>(x_2083.x, x_2083.y, x_2083.z));
  let x_2086 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2085.x, x_2085.y, x_2085.z, x_2086.w);
  let x_2088 : bool = u_xlatb2;
  let x_2089 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_2089, x_2088);
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

