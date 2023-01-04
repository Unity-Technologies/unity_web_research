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

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_94 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_160 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_263 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_367 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_1165 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1641 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1743 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat0 : vec4<f32>;
  var u_xlatb15 : vec2<bool>;
  var u_xlat15 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat5 : vec3<f32>;
  var x_199 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb46 : bool;
  var x_596 : f32;
  var u_xlat16 : vec3<f32>;
  var x_638 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlatu17 : vec3<u32>;
  var u_xlatu47 : u32;
  var u_xlatu3 : u32;
  var u_xlati47 : i32;
  var u_xlati32 : i32;
  var u_xlatu32 : u32;
  var u_xlati17 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat32 : f32;
  var x_774 : f32;
  var u_xlatb17 : bool;
  var x_800 : f32;
  var x_847 : f32;
  var u_xlat30 : vec2<f32>;
  var u_xlat45 : f32;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat20 : f32;
  var u_xlat35 : f32;
  var u_xlat50 : f32;
  var u_xlat51 : f32;
  var u_xlatb50 : bool;
  var u_xlatb8 : vec2<bool>;
  var x_1247 : f32;
  var x_1258 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu49 : u32;
  var u_xlati50 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat11 : vec3<f32>;
  var u_xlat52 : f32;
  var u_xlatu52 : u32;
  var u_xlati38 : i32;
  var u_xlati52 : i32;
  var u_xlati53 : i32;
  var u_xlat12 : vec4<f32>;
  var u_xlatb52 : bool;
  var u_xlat42 : vec2<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb38 : vec2<bool>;
  var u_xlat38 : vec2<f32>;
  var x_2038 : f32;
  var x_2051 : f32;
  var x_2103 : f32;
  var x_2114 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec4<f32> = gl_FragCoord;
  let x_50 : vec3<f32> = vec3<f32>(x_49.x, x_49.y, x_49.z);
  let x_55 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_50.x, x_50.y, x_50.z, (1.0f / x_55));
  let x_64 : vec3<f32> = vs_INTERP1;
  let x_65 : vec3<f32> = vs_INTERP1;
  u_xlat0.x = dot(x_64, x_65);
  let x_71 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_71);
  let x_75 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_75);
  let x_85 : f32 = vs_INTERP2.w;
  u_xlatb15.x = (0.0f < x_85);
  let x_98 : f32 = x_94.unity_WorldTransformParams.w;
  u_xlatb15.y = (x_98 >= 0.0f);
  let x_105 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_105);
  let x_110 : bool = u_xlatb15.y;
  u_xlat15.y = select(-1.0f, 1.0f, x_110);
  let x_114 : f32 = u_xlat15.y;
  let x_116 : f32 = u_xlat15.x;
  u_xlat15.x = (x_114 * x_116);
  let x_120 : vec3<f32> = vs_INTERP1;
  let x_122 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_120.z, x_120.x, x_120.y) * vec3<f32>(x_122.y, x_122.z, x_122.x));
  let x_125 : vec3<f32> = vs_INTERP1;
  let x_127 : vec4<f32> = vs_INTERP2;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_125.y, x_125.z, x_125.x) * vec3<f32>(x_127.z, x_127.x, x_127.y)) + -(x_130));
  let x_133 : vec3<f32> = u_xlat15;
  let x_135 : vec3<f32> = u_xlat1;
  u_xlat15 = (vec3<f32>(x_133.x, x_133.x, x_133.x) * x_135);
  let x_137 : vec4<f32> = u_xlat0;
  let x_139 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_137.x, x_137.x, x_137.x) * x_139);
  let x_142 : vec4<f32> = u_xlat0;
  let x_144 : vec4<f32> = vs_INTERP2;
  let x_146 : vec3<f32> = (vec3<f32>(x_142.x, x_142.x, x_142.x) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec3<f32> = u_xlat15;
  let x_151 : vec4<f32> = u_xlat0;
  let x_153 : vec3<f32> = (x_150 * vec3<f32>(x_151.x, x_151.x, x_151.x));
  let x_154 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_163 : f32 = x_160.unity_OrthoParams.w;
  u_xlatb0 = (x_163 == 0.0f);
  let x_167 : vec3<f32> = vs_INTERP0;
  let x_172 : vec3<f32> = x_160.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_167) + x_172);
  let x_175 : vec3<f32> = u_xlat4;
  let x_176 : vec3<f32> = u_xlat4;
  u_xlat46 = dot(x_175, x_176);
  let x_178 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_178);
  let x_180 : f32 = u_xlat46;
  let x_182 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_180, x_180, x_180) * x_182);
  let x_188 : f32 = x_160.unity_MatrixV[0i].z;
  u_xlat5.x = x_188;
  let x_192 : f32 = x_160.unity_MatrixV[1i].z;
  u_xlat5.y = x_192;
  let x_196 : f32 = x_160.unity_MatrixV[2i].z;
  u_xlat5.z = x_196;
  let x_198 : bool = u_xlatb0;
  if (x_198) {
    let x_202 : vec3<f32> = u_xlat4;
    x_199 = x_202;
  } else {
    let x_204 : vec3<f32> = u_xlat5;
    x_199 = x_204;
  }
  let x_205 : vec3<f32> = x_199;
  u_xlat4 = x_205;
  let x_206 : vec3<f32> = u_xlat4;
  let x_210 : vec4<f32> = x_94.unity_WorldToObject[1i];
  u_xlat5 = (vec3<f32>(x_206.y, x_206.y, x_206.y) * vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_214 : vec4<f32> = x_94.unity_WorldToObject[0i];
  let x_216 : vec3<f32> = u_xlat4;
  let x_219 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.x, x_216.x, x_216.x)) + x_219);
  let x_222 : vec4<f32> = x_94.unity_WorldToObject[2i];
  let x_224 : vec3<f32> = u_xlat4;
  let x_227 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(x_224.z, x_224.z, x_224.z)) + x_227);
  let x_229 : vec3<f32> = u_xlat5;
  let x_230 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_229, x_230);
  let x_234 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_234);
  let x_237 : vec4<f32> = u_xlat0;
  let x_239 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_237.x, x_237.x, x_237.x) * x_239);
  let x_253 : vec4<f32> = vs_INTERP3;
  let x_256 : f32 = x_160.x_GlobalMipBias.x;
  let x_257 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_253.x, x_253.y), x_256);
  u_xlat6 = x_257;
  let x_259 : vec4<f32> = u_xlat6;
  let x_265 : vec4<f32> = x_263.Color_C30C7CA3;
  let x_267 : vec3<f32> = (vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_276 : vec4<f32> = vs_INTERP3;
  let x_279 : f32 = x_160.x_GlobalMipBias.x;
  let x_280 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_276.x, x_276.y), x_279);
  u_xlat8 = vec4<f32>(x_280.w, x_280.x, x_280.y, x_280.z);
  let x_283 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_283.y, x_283.z, x_283.w, x_283.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_290 : vec4<f32> = u_xlat9;
  let x_291 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_290, x_291);
  let x_295 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_295);
  let x_299 : vec4<f32> = u_xlat0;
  let x_301 : vec4<f32> = u_xlat9;
  u_xlat23 = (vec3<f32>(x_299.x, x_299.x, x_299.x) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_306 : f32 = vs_INTERP4.y;
  u_xlat0.x = (x_306 * 200.0f);
  let x_311 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_311, 1.0f);
  let x_314 : vec4<f32> = u_xlat0;
  let x_316 : vec4<f32> = u_xlat6;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.x, x_314.x) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat3;
  let x_323 : vec3<f32> = u_xlat23;
  let x_325 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.y, x_323.y, x_323.y));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec3<f32> = u_xlat23;
  let x_330 : vec4<f32> = u_xlat2;
  let x_333 : vec4<f32> = u_xlat3;
  let x_335 : vec3<f32> = ((vec3<f32>(x_328.x, x_328.x, x_328.x) * vec3<f32>(x_330.x, x_330.y, x_330.z)) + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec3<f32> = u_xlat23;
  let x_340 : vec3<f32> = u_xlat1;
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_338.z, x_338.z, x_338.z) * x_340) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec3<f32> = u_xlat1;
  let x_346 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_345, x_346);
  let x_350 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_350, 1.17549435e-37f);
  let x_355 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_355);
  let x_358 : vec4<f32> = u_xlat0;
  let x_360 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_358.x, x_358.x, x_358.x) * x_360);
  let x_362 : vec3<f32> = vs_INTERP0;
  let x_369 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres0;
  let x_372 : vec3<f32> = (x_362 + -(vec3<f32>(x_369.x, x_369.y, x_369.z)));
  let x_373 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_375 : vec3<f32> = vs_INTERP0;
  let x_377 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres1;
  let x_380 : vec3<f32> = (x_375 + -(vec3<f32>(x_377.x, x_377.y, x_377.z)));
  let x_381 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec3<f32> = vs_INTERP0;
  let x_385 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres2;
  let x_388 : vec3<f32> = (x_383 + -(vec3<f32>(x_385.x, x_385.y, x_385.z)));
  let x_389 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : vec3<f32> = vs_INTERP0;
  let x_395 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres3;
  u_xlat10 = (x_392 + -(vec3<f32>(x_395.x, x_395.y, x_395.z)));
  let x_399 : vec4<f32> = u_xlat2;
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_399.x, x_399.y, x_399.z), vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_405 : vec4<f32> = u_xlat3;
  let x_407 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_405.x, x_405.y, x_405.z), vec3<f32>(x_407.x, x_407.y, x_407.z));
  let x_411 : vec4<f32> = u_xlat9;
  let x_413 : vec4<f32> = u_xlat9;
  u_xlat2.z = dot(vec3<f32>(x_411.x, x_411.y, x_411.z), vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_417 : vec3<f32> = u_xlat10;
  let x_418 : vec3<f32> = u_xlat10;
  u_xlat2.w = dot(x_417, x_418);
  let x_424 : vec4<f32> = u_xlat2;
  let x_427 : vec4<f32> = x_367.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_424 < x_427);
  let x_430 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_430);
  let x_434 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_434);
  let x_438 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_438);
  let x_442 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_442);
  let x_446 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_446);
  let x_451 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_451);
  let x_455 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_455);
  let x_458 : vec4<f32> = u_xlat2;
  let x_460 : vec4<f32> = u_xlat3;
  let x_462 : vec3<f32> = (vec3<f32>(x_458.x, x_458.y, x_458.z) + vec3<f32>(x_460.y, x_460.z, x_460.w));
  let x_463 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat2;
  let x_468 : vec3<f32> = max(vec3<f32>(x_465.x, x_465.y, x_465.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_469 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_469.x, x_468.x, x_468.y, x_468.z);
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_471, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_478 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_478) + 4.0f);
  let x_484 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_484);
  let x_487 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_487) << bitcast<u32>(2i));
  let x_490 : vec3<f32> = vs_INTERP0;
  let x_492 : i32 = u_xlati0;
  let x_495 : i32 = u_xlati0;
  let x_499 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_492 + 1i) / 4i)][((x_495 + 1i) % 4i)];
  let x_501 : vec3<f32> = (vec3<f32>(x_490.y, x_490.y, x_490.y) * vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_502 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_504 : i32 = u_xlati0;
  let x_506 : i32 = u_xlati0;
  let x_509 : vec4<f32> = x_367.x_MainLightWorldToShadow[(x_504 / 4i)][(x_506 % 4i)];
  let x_511 : vec3<f32> = vs_INTERP0;
  let x_514 : vec4<f32> = u_xlat2;
  let x_516 : vec3<f32> = ((vec3<f32>(x_509.x, x_509.y, x_509.z) * vec3<f32>(x_511.x, x_511.x, x_511.x)) + vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_519 : i32 = u_xlati0;
  let x_522 : i32 = u_xlati0;
  let x_526 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_519 + 2i) / 4i)][((x_522 + 2i) % 4i)];
  let x_528 : vec3<f32> = vs_INTERP0;
  let x_531 : vec4<f32> = u_xlat2;
  let x_533 : vec3<f32> = ((vec3<f32>(x_526.x, x_526.y, x_526.z) * vec3<f32>(x_528.z, x_528.z, x_528.z)) + vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec4<f32> = u_xlat2;
  let x_538 : i32 = u_xlati0;
  let x_541 : i32 = u_xlati0;
  let x_545 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_538 + 3i) / 4i)][((x_541 + 3i) % 4i)];
  let x_547 : vec3<f32> = (vec3<f32>(x_536.x, x_536.y, x_536.z) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_551 : vec4<f32> = u_xlat2;
  let x_552 : vec2<f32> = vec2<f32>(x_551.x, x_551.y);
  let x_554 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_552.x, x_552.y, x_554);
  let x_566 : vec3<f32> = txVec0;
  let x_568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_566.xy, x_566.z);
  u_xlat0.x = x_568;
  let x_572 : f32 = x_367.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_572) + 1.0f);
  let x_576 : f32 = u_xlat0.x;
  let x_578 : f32 = x_367.x_MainLightShadowParams.x;
  let x_580 : f32 = u_xlat46;
  u_xlat0.x = ((x_576 * x_578) + x_580);
  let x_585 : f32 = u_xlat2.z;
  u_xlatb46 = (0.0f >= x_585);
  let x_588 : f32 = u_xlat2.z;
  u_xlatb2.x = (x_588 >= 1.0f);
  let x_591 : bool = u_xlatb46;
  let x_593 : bool = u_xlatb2.x;
  u_xlatb46 = (x_591 | x_593);
  let x_595 : bool = u_xlatb46;
  if (x_595) {
    x_596 = 1.0f;
  } else {
    let x_601 : f32 = u_xlat0.x;
    x_596 = x_601;
  }
  let x_602 : f32 = x_596;
  u_xlat0.x = x_602;
  let x_604 : vec3<f32> = u_xlat1;
  let x_606 : vec4<f32> = x_160.x_MainLightPosition;
  u_xlat1.x = dot(x_604, -(vec3<f32>(x_606.x, x_606.y, x_606.z)));
  let x_612 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_612, 0.0f, 1.0f);
  let x_616 : vec4<f32> = u_xlat0;
  let x_619 : vec4<f32> = x_160.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_616.x, x_616.x, x_616.x) * vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec3<f32> = u_xlat16;
  let x_623 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_622 * vec3<f32>(x_623.x, x_623.x, x_623.x));
  let x_626 : vec3<f32> = u_xlat1;
  let x_627 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_626 * vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_631 : f32 = x_94.unity_LODFade.x;
  u_xlatb46 = (x_631 < 0.0f);
  let x_634 : f32 = x_94.unity_LODFade.x;
  u_xlat2.x = (x_634 + 1.0f);
  let x_637 : bool = u_xlatb46;
  if (x_637) {
    let x_642 : f32 = u_xlat2.x;
    x_638 = x_642;
  } else {
    let x_645 : f32 = x_94.unity_LODFade.x;
    x_638 = x_645;
  }
  let x_646 : f32 = x_638;
  u_xlat46 = x_646;
  let x_648 : f32 = u_xlat46;
  u_xlatb2.x = (0.5f >= x_648);
  let x_652 : vec3<f32> = u_xlat5;
  let x_656 : vec4<f32> = x_160.x_ScreenParams;
  u_xlat17 = (abs(x_652) * vec3<f32>(x_656.x, x_656.y, x_656.x));
  let x_662 : vec3<f32> = u_xlat17;
  u_xlatu17 = vec3<u32>(x_662);
  let x_666 : u32 = u_xlatu17.z;
  u_xlatu47 = (x_666 * 1025u);
  let x_670 : u32 = u_xlatu47;
  u_xlatu3 = (x_670 >> 6u);
  let x_674 : u32 = u_xlatu47;
  let x_675 : u32 = u_xlatu3;
  u_xlati47 = bitcast<i32>((x_674 ^ x_675));
  let x_678 : i32 = u_xlati47;
  u_xlatu47 = (bitcast<u32>(x_678) * 9u);
  let x_682 : u32 = u_xlatu47;
  u_xlatu3 = (x_682 >> 11u);
  let x_685 : u32 = u_xlatu47;
  let x_686 : u32 = u_xlatu3;
  u_xlati47 = bitcast<i32>((x_685 ^ x_686));
  let x_689 : i32 = u_xlati47;
  u_xlati47 = (x_689 * 32769i);
  let x_693 : i32 = u_xlati47;
  let x_696 : u32 = u_xlatu17.y;
  u_xlati32 = bitcast<i32>((bitcast<u32>(x_693) ^ x_696));
  let x_700 : i32 = u_xlati32;
  u_xlatu32 = (bitcast<u32>(x_700) * 1025u);
  let x_703 : u32 = u_xlatu32;
  u_xlatu47 = (x_703 >> 6u);
  let x_705 : u32 = u_xlatu47;
  let x_706 : u32 = u_xlatu32;
  u_xlati32 = bitcast<i32>((x_705 ^ x_706));
  let x_709 : i32 = u_xlati32;
  u_xlatu32 = (bitcast<u32>(x_709) * 9u);
  let x_712 : u32 = u_xlatu32;
  u_xlatu47 = (x_712 >> 11u);
  let x_714 : u32 = u_xlatu47;
  let x_715 : u32 = u_xlatu32;
  u_xlati32 = bitcast<i32>((x_714 ^ x_715));
  let x_718 : i32 = u_xlati32;
  u_xlati32 = (x_718 * 32769i);
  let x_721 : i32 = u_xlati32;
  let x_724 : u32 = u_xlatu17.x;
  u_xlati17 = bitcast<i32>((bitcast<u32>(x_721) ^ x_724));
  let x_727 : i32 = u_xlati17;
  u_xlatu17.x = (bitcast<u32>(x_727) * 1025u);
  let x_732 : u32 = u_xlatu17.x;
  u_xlatu32 = (x_732 >> 6u);
  let x_734 : u32 = u_xlatu32;
  let x_736 : u32 = u_xlatu17.x;
  u_xlati17 = bitcast<i32>((x_734 ^ x_736));
  let x_739 : i32 = u_xlati17;
  u_xlatu17.x = (bitcast<u32>(x_739) * 9u);
  let x_744 : u32 = u_xlatu17.x;
  u_xlatu32 = (x_744 >> 11u);
  let x_746 : u32 = u_xlatu32;
  let x_748 : u32 = u_xlatu17.x;
  u_xlati17 = bitcast<i32>((x_746 ^ x_748));
  let x_751 : i32 = u_xlati17;
  u_xlati17 = (x_751 * 32769i);
  param = 1065353216i;
  let x_757 : i32 = u_xlati17;
  param_1 = x_757;
  param_2 = 0i;
  param_3 = 23i;
  let x_760 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat17.x = bitcast<f32>(x_760);
  let x_764 : f32 = u_xlat17.x;
  u_xlat17.x = (x_764 + -1.0f);
  let x_769 : f32 = u_xlat17.x;
  u_xlat32 = (-(x_769) + 1.0f);
  let x_773 : bool = u_xlatb2.x;
  if (x_773) {
    let x_778 : f32 = u_xlat17.x;
    x_774 = x_778;
  } else {
    let x_780 : f32 = u_xlat32;
    x_774 = x_780;
  }
  let x_781 : f32 = x_774;
  u_xlat2.x = x_781;
  let x_783 : f32 = u_xlat46;
  let x_786 : f32 = u_xlat2.x;
  u_xlat46 = ((x_783 * 2.0f) + -(x_786));
  let x_789 : f32 = u_xlat46;
  let x_791 : f32 = u_xlat6.w;
  u_xlat2.x = (x_789 * x_791);
  let x_796 : f32 = u_xlat2.x;
  u_xlatb17 = (x_796 >= 0.400000006f);
  let x_799 : bool = u_xlatb17;
  if (x_799) {
    let x_804 : f32 = u_xlat2.x;
    x_800 = x_804;
  } else {
    x_800 = 0.0f;
  }
  let x_806 : f32 = x_800;
  u_xlat17.x = x_806;
  let x_809 : f32 = u_xlat6.w;
  let x_810 : f32 = u_xlat46;
  u_xlat46 = ((x_809 * x_810) + -0.400000006f);
  let x_815 : f32 = u_xlat2.x;
  u_xlat32 = dpdxCoarse(x_815);
  let x_818 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_818);
  let x_822 : f32 = u_xlat2.x;
  let x_824 : f32 = u_xlat32;
  u_xlat2.x = (abs(x_822) + abs(x_824));
  let x_829 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_829, 0.0001f);
  let x_833 : f32 = u_xlat46;
  let x_835 : f32 = u_xlat2.x;
  u_xlat46 = (x_833 / x_835);
  let x_837 : f32 = u_xlat46;
  u_xlat46 = (x_837 + 0.5f);
  let x_839 : f32 = u_xlat46;
  u_xlat46 = clamp(x_839, 0.0f, 1.0f);
  let x_842 : f32 = x_160.x_AlphaToMaskAvailable;
  u_xlatb2.x = !((x_842 == 0.0f));
  let x_846 : bool = u_xlatb2.x;
  if (x_846) {
    let x_850 : f32 = u_xlat46;
    x_847 = x_850;
  } else {
    let x_853 : f32 = u_xlat17.x;
    x_847 = x_853;
  }
  let x_854 : f32 = x_847;
  u_xlat46 = x_854;
  let x_855 : f32 = u_xlat46;
  u_xlat17.x = (x_855 + -0.0001f);
  let x_860 : f32 = u_xlat17.x;
  u_xlatb17 = (x_860 < 0.0f);
  let x_862 : bool = u_xlatb17;
  if (((select(0i, 1i, x_862) * -1i) != 0i)) {
    discard;
  }
  let x_870 : vec3<f32> = u_xlat15;
  let x_871 : vec3<f32> = u_xlat23;
  u_xlat15 = (x_870 * vec3<f32>(x_871.y, x_871.y, x_871.y));
  let x_874 : vec3<f32> = u_xlat23;
  let x_876 : vec4<f32> = vs_INTERP2;
  let x_879 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_874.x, x_874.x, x_874.x) * vec3<f32>(x_876.x, x_876.y, x_876.z)) + x_879);
  let x_881 : vec3<f32> = u_xlat23;
  let x_883 : vec3<f32> = vs_INTERP1;
  let x_885 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_881.z, x_881.z, x_881.z) * x_883) + x_885);
  let x_887 : vec3<f32> = u_xlat15;
  let x_888 : vec3<f32> = u_xlat15;
  u_xlat17.x = dot(x_887, x_888);
  let x_892 : f32 = u_xlat17.x;
  u_xlat17.x = inverseSqrt(x_892);
  let x_895 : vec3<f32> = u_xlat15;
  let x_896 : vec3<f32> = u_xlat17;
  let x_898 : vec3<f32> = (x_895 * vec3<f32>(x_896.x, x_896.x, x_896.x));
  let x_899 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_902 : f32 = vs_INTERP0.y;
  let x_904 : f32 = x_160.unity_MatrixV[1i].z;
  u_xlat15.x = (x_902 * x_904);
  let x_908 : f32 = x_160.unity_MatrixV[0i].z;
  let x_910 : f32 = vs_INTERP0.x;
  let x_913 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_908 * x_910) + x_913);
  let x_917 : f32 = x_160.unity_MatrixV[2i].z;
  let x_919 : f32 = vs_INTERP0.z;
  let x_922 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_917 * x_919) + x_922);
  let x_926 : f32 = u_xlat15.x;
  let x_928 : f32 = x_160.unity_MatrixV[3i].z;
  u_xlat15.x = (x_926 + x_928);
  let x_932 : f32 = u_xlat15.x;
  let x_935 : f32 = x_160.x_ProjectionParams.y;
  u_xlat15.x = (-(x_932) + -(x_935));
  let x_940 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_940, 0.0f);
  let x_944 : f32 = u_xlat15.x;
  let x_947 : f32 = x_160.unity_FogParams.x;
  u_xlat15.x = (x_944 * x_947);
  u_xlat3.w = 1.0f;
  let x_953 : vec4<f32> = x_94.unity_SHAr;
  let x_954 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_953, x_954);
  let x_959 : vec4<f32> = x_94.unity_SHAg;
  let x_960 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_959, x_960);
  let x_965 : vec4<f32> = x_94.unity_SHAb;
  let x_966 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_965, x_966);
  let x_969 : vec4<f32> = u_xlat3;
  let x_971 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_969.y, x_969.z, x_969.z, x_969.x) * vec4<f32>(x_971.x, x_971.y, x_971.z, x_971.z));
  let x_976 : vec4<f32> = x_94.unity_SHBr;
  let x_977 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_976, x_977);
  let x_982 : vec4<f32> = x_94.unity_SHBg;
  let x_983 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_982, x_983);
  let x_987 : vec4<f32> = x_94.unity_SHBb;
  let x_988 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_987, x_988);
  let x_994 : f32 = u_xlat3.y;
  let x_996 : f32 = u_xlat3.y;
  u_xlat30.x = (x_994 * x_996);
  let x_1000 : f32 = u_xlat3.x;
  let x_1002 : f32 = u_xlat3.x;
  let x_1005 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1000 * x_1002) + -(x_1005));
  let x_1011 : vec4<f32> = x_94.unity_SHC;
  let x_1013 : vec2<f32> = u_xlat30;
  let x_1016 : vec4<f32> = u_xlat9;
  u_xlat17 = ((vec3<f32>(x_1011.x, x_1011.y, x_1011.z) * vec3<f32>(x_1013.x, x_1013.x, x_1013.x)) + vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : vec3<f32> = u_xlat17;
  let x_1020 : vec3<f32> = u_xlat5;
  u_xlat17 = (x_1019 + x_1020);
  let x_1022 : vec3<f32> = u_xlat17;
  u_xlat17 = max(x_1022, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1026 : vec4<f32> = x_160.x_ScaledScreenParams;
  let x_1027 : vec2<f32> = vec2<f32>(x_1026.x, x_1026.y);
  u_xlat30 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1027.x, x_1027.y));
  let x_1032 : vec2<f32> = u_xlat30;
  let x_1033 : vec4<f32> = hlslcc_FragCoord;
  let x_1035 : vec2<f32> = (x_1032 * vec2<f32>(x_1033.x, x_1033.y));
  let x_1036 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_1035.x, x_1035.y, x_1036.z);
  let x_1039 : f32 = u_xlat5.y;
  let x_1042 : f32 = x_160.x_ScaleBiasRt.x;
  let x_1045 : f32 = x_160.x_ScaleBiasRt.y;
  u_xlat30.x = ((x_1039 * x_1042) + x_1045);
  let x_1049 : f32 = u_xlat30.x;
  u_xlat5.z = (-(x_1049) + 1.0f);
  let x_1054 : f32 = u_xlat8.x;
  u_xlat8.x = x_1054;
  let x_1057 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_1057, 0.0f, 1.0f);
  let x_1060 : f32 = u_xlat46;
  u_xlat46 = x_1060;
  let x_1061 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1061, 0.0f, 1.0f);
  let x_1063 : vec4<f32> = u_xlat7;
  let x_1067 : vec3<f32> = (vec3<f32>(x_1063.x, x_1063.y, x_1063.z) * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_1068 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1071 : f32 = u_xlat8.x;
  u_xlat30.x = (-(x_1071) + 1.0f);
  let x_1077 : f32 = u_xlat30.x;
  let x_1079 : f32 = u_xlat30.x;
  u_xlat45 = (x_1077 * x_1079);
  let x_1081 : f32 = u_xlat45;
  u_xlat45 = max(x_1081, 0.0078125f);
  let x_1085 : f32 = u_xlat45;
  let x_1086 : f32 = u_xlat45;
  u_xlat48 = (x_1085 * x_1086);
  let x_1090 : f32 = u_xlat8.x;
  u_xlat49 = (x_1090 + 0.040000021f);
  let x_1093 : f32 = u_xlat49;
  u_xlat49 = min(x_1093, 1.0f);
  let x_1096 : f32 = u_xlat45;
  u_xlat20 = ((x_1096 * 4.0f) + 2.0f);
  let x_1104 : vec3<f32> = u_xlat5;
  let x_1107 : f32 = x_160.x_GlobalMipBias.x;
  let x_1108 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1104.x, x_1104.z), x_1107);
  u_xlat5.x = x_1108.x;
  let x_1113 : f32 = u_xlat5.x;
  u_xlat35 = (x_1113 + -1.0f);
  let x_1116 : f32 = x_160.x_AmbientOcclusionParam.w;
  let x_1117 : f32 = u_xlat35;
  u_xlat35 = ((x_1116 * x_1117) + 1.0f);
  let x_1121 : f32 = u_xlat5.x;
  let x_1123 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_1121, x_1123);
  let x_1126 : vec3<f32> = vs_INTERP0;
  let x_1128 : vec3<f32> = x_160.x_WorldSpaceCameraPos;
  let x_1130 : vec3<f32> = (x_1126 + -(x_1128));
  let x_1131 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
  let x_1134 : vec4<f32> = u_xlat7;
  let x_1136 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_1134.x, x_1134.y, x_1134.z), vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
  let x_1139 : f32 = u_xlat50;
  let x_1141 : f32 = x_367.x_MainLightShadowParams.z;
  let x_1144 : f32 = x_367.x_MainLightShadowParams.w;
  u_xlat50 = ((x_1139 * x_1141) + x_1144);
  let x_1146 : f32 = u_xlat50;
  u_xlat50 = clamp(x_1146, 0.0f, 1.0f);
  let x_1150 : f32 = u_xlat0.x;
  u_xlat51 = (-(x_1150) + 1.0f);
  let x_1153 : f32 = u_xlat50;
  let x_1154 : f32 = u_xlat51;
  let x_1157 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1153 * x_1154) + x_1157);
  let x_1167 : f32 = x_1165.x_MainLightCookieTextureFormat;
  u_xlatb50 = !((x_1167 == -1.0f));
  let x_1169 : bool = u_xlatb50;
  if (x_1169) {
    let x_1172 : vec3<f32> = vs_INTERP0;
    let x_1175 : vec4<f32> = x_1165.x_MainLightWorldToLight[1i];
    let x_1177 : vec2<f32> = (vec2<f32>(x_1172.y, x_1172.y) * vec2<f32>(x_1175.x, x_1175.y));
    let x_1178 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
    let x_1181 : vec4<f32> = x_1165.x_MainLightWorldToLight[0i];
    let x_1183 : vec3<f32> = vs_INTERP0;
    let x_1186 : vec4<f32> = u_xlat7;
    let x_1188 : vec2<f32> = ((vec2<f32>(x_1181.x, x_1181.y) * vec2<f32>(x_1183.x, x_1183.x)) + vec2<f32>(x_1186.x, x_1186.y));
    let x_1189 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1189.w);
    let x_1192 : vec4<f32> = x_1165.x_MainLightWorldToLight[2i];
    let x_1194 : vec3<f32> = vs_INTERP0;
    let x_1197 : vec4<f32> = u_xlat7;
    let x_1199 : vec2<f32> = ((vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(x_1194.z, x_1194.z)) + vec2<f32>(x_1197.x, x_1197.y));
    let x_1200 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1199.x, x_1199.y, x_1200.z, x_1200.w);
    let x_1202 : vec4<f32> = u_xlat7;
    let x_1205 : vec4<f32> = x_1165.x_MainLightWorldToLight[3i];
    let x_1207 : vec2<f32> = (vec2<f32>(x_1202.x, x_1202.y) + vec2<f32>(x_1205.x, x_1205.y));
    let x_1208 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1207.x, x_1207.y, x_1208.z, x_1208.w);
    let x_1210 : vec4<f32> = u_xlat7;
    let x_1214 : vec2<f32> = ((vec2<f32>(x_1210.x, x_1210.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1215 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1214.x, x_1214.y, x_1215.z, x_1215.w);
    let x_1222 : vec4<f32> = u_xlat7;
    let x_1225 : f32 = x_160.x_GlobalMipBias.x;
    let x_1226 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1222.x, x_1222.y), x_1225);
    u_xlat7 = x_1226;
    let x_1229 : f32 = x_1165.x_MainLightCookieTextureFormat;
    let x_1231 : f32 = x_1165.x_MainLightCookieTextureFormat;
    let x_1233 : f32 = x_1165.x_MainLightCookieTextureFormat;
    let x_1235 : f32 = x_1165.x_MainLightCookieTextureFormat;
    let x_1236 : vec4<f32> = vec4<f32>(x_1229, x_1231, x_1233, x_1235);
    let x_1243 : vec4<bool> = (vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1236.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1243.x, x_1243.y);
    let x_1246 : bool = u_xlatb8.y;
    if (x_1246) {
      let x_1251 : f32 = u_xlat7.w;
      x_1247 = x_1251;
    } else {
      let x_1254 : f32 = u_xlat7.x;
      x_1247 = x_1254;
    }
    let x_1255 : f32 = x_1247;
    u_xlat50 = x_1255;
    let x_1257 : bool = u_xlatb8.x;
    if (x_1257) {
      let x_1261 : vec4<f32> = u_xlat7;
      x_1258 = vec3<f32>(x_1261.x, x_1261.y, x_1261.z);
    } else {
      let x_1264 : f32 = u_xlat50;
      x_1258 = vec3<f32>(x_1264, x_1264, x_1264);
    }
    let x_1266 : vec3<f32> = x_1258;
    let x_1267 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1273 : vec4<f32> = u_xlat7;
  let x_1276 : vec4<f32> = x_160.x_MainLightColor;
  let x_1278 : vec3<f32> = (vec3<f32>(x_1273.x, x_1273.y, x_1273.z) * vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
  let x_1279 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
  let x_1281 : f32 = u_xlat35;
  let x_1283 : vec4<f32> = u_xlat7;
  let x_1285 : vec3<f32> = (vec3<f32>(x_1281, x_1281, x_1281) * vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
  let x_1286 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);
  let x_1288 : vec3<f32> = u_xlat4;
  let x_1290 : vec4<f32> = u_xlat3;
  u_xlat50 = dot(-(x_1288), vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
  let x_1293 : f32 = u_xlat50;
  let x_1294 : f32 = u_xlat50;
  u_xlat50 = (x_1293 + x_1294);
  let x_1296 : vec4<f32> = u_xlat3;
  let x_1298 : f32 = u_xlat50;
  let x_1302 : vec3<f32> = u_xlat4;
  let x_1304 : vec3<f32> = ((vec3<f32>(x_1296.x, x_1296.y, x_1296.z) * -(vec3<f32>(x_1298, x_1298, x_1298))) + -(x_1302));
  let x_1305 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1304.x, x_1304.y, x_1304.z, x_1305.w);
  let x_1307 : vec4<f32> = u_xlat3;
  let x_1309 : vec3<f32> = u_xlat4;
  u_xlat50 = dot(vec3<f32>(x_1307.x, x_1307.y, x_1307.z), x_1309);
  let x_1311 : f32 = u_xlat50;
  u_xlat50 = clamp(x_1311, 0.0f, 1.0f);
  let x_1313 : f32 = u_xlat50;
  u_xlat50 = (-(x_1313) + 1.0f);
  let x_1316 : f32 = u_xlat50;
  let x_1317 : f32 = u_xlat50;
  u_xlat50 = (x_1316 * x_1317);
  let x_1319 : f32 = u_xlat50;
  let x_1320 : f32 = u_xlat50;
  u_xlat50 = (x_1319 * x_1320);
  let x_1323 : f32 = u_xlat30.x;
  u_xlat51 = ((-(x_1323) * 0.699999988f) + 1.700000048f);
  let x_1330 : f32 = u_xlat30.x;
  let x_1331 : f32 = u_xlat51;
  u_xlat30.x = (x_1330 * x_1331);
  let x_1335 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1335 * 6.0f);
  let x_1347 : vec4<f32> = u_xlat8;
  let x_1350 : f32 = u_xlat30.x;
  let x_1351 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1347.x, x_1347.y, x_1347.z), x_1350);
  u_xlat8 = x_1351;
  let x_1353 : f32 = u_xlat8.w;
  u_xlat30.x = (x_1353 + -1.0f);
  let x_1357 : f32 = x_94.unity_SpecCube0_HDR.w;
  let x_1359 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1357 * x_1359) + 1.0f);
  let x_1364 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1364, 0.0f);
  let x_1368 : f32 = u_xlat30.x;
  u_xlat30.x = log2(x_1368);
  let x_1372 : f32 = u_xlat30.x;
  let x_1374 : f32 = x_94.unity_SpecCube0_HDR.y;
  u_xlat30.x = (x_1372 * x_1374);
  let x_1378 : f32 = u_xlat30.x;
  u_xlat30.x = exp2(x_1378);
  let x_1382 : f32 = u_xlat30.x;
  let x_1384 : f32 = x_94.unity_SpecCube0_HDR.x;
  u_xlat30.x = (x_1382 * x_1384);
  let x_1387 : vec4<f32> = u_xlat8;
  let x_1389 : vec2<f32> = u_xlat30;
  let x_1391 : vec3<f32> = (vec3<f32>(x_1387.x, x_1387.y, x_1387.z) * vec3<f32>(x_1389.x, x_1389.x, x_1389.x));
  let x_1392 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1391.x, x_1391.y, x_1391.z, x_1392.w);
  let x_1394 : f32 = u_xlat45;
  let x_1396 : f32 = u_xlat45;
  u_xlat30 = ((vec2<f32>(x_1394, x_1394) * vec2<f32>(x_1396, x_1396)) + vec2<f32>(-1.0f, 1.0f));
  let x_1402 : f32 = u_xlat30.y;
  u_xlat45 = (1.0f / x_1402);
  let x_1404 : f32 = u_xlat49;
  u_xlat49 = (x_1404 + -0.039999999f);
  let x_1407 : f32 = u_xlat50;
  let x_1408 : f32 = u_xlat49;
  u_xlat49 = ((x_1407 * x_1408) + 0.039999999f);
  let x_1412 : f32 = u_xlat45;
  let x_1413 : f32 = u_xlat49;
  u_xlat45 = (x_1412 * x_1413);
  let x_1415 : f32 = u_xlat45;
  let x_1417 : vec4<f32> = u_xlat8;
  let x_1419 : vec3<f32> = (vec3<f32>(x_1415, x_1415, x_1415) * vec3<f32>(x_1417.x, x_1417.y, x_1417.z));
  let x_1420 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1419.x, x_1419.y, x_1419.z, x_1420.w);
  let x_1422 : vec3<f32> = u_xlat17;
  let x_1423 : vec4<f32> = u_xlat6;
  let x_1426 : vec4<f32> = u_xlat8;
  u_xlat17 = ((x_1422 * vec3<f32>(x_1423.x, x_1423.y, x_1423.z)) + vec3<f32>(x_1426.x, x_1426.y, x_1426.z));
  let x_1430 : f32 = u_xlat0.x;
  let x_1432 : f32 = x_94.unity_LightData.z;
  u_xlat0.x = (x_1430 * x_1432);
  let x_1435 : vec4<f32> = u_xlat3;
  let x_1438 : vec4<f32> = x_160.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_1435.x, x_1435.y, x_1435.z), vec3<f32>(x_1438.x, x_1438.y, x_1438.z));
  let x_1441 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1441, 0.0f, 1.0f);
  let x_1443 : f32 = u_xlat45;
  let x_1445 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1443 * x_1445);
  let x_1448 : vec4<f32> = u_xlat0;
  let x_1450 : vec4<f32> = u_xlat7;
  let x_1452 : vec3<f32> = (vec3<f32>(x_1448.x, x_1448.x, x_1448.x) * vec3<f32>(x_1450.x, x_1450.y, x_1450.z));
  let x_1453 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1453.w);
  let x_1455 : vec3<f32> = u_xlat4;
  let x_1457 : vec4<f32> = x_160.x_MainLightPosition;
  let x_1459 : vec3<f32> = (x_1455 + vec3<f32>(x_1457.x, x_1457.y, x_1457.z));
  let x_1460 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1459.x, x_1459.y, x_1459.z, x_1460.w);
  let x_1462 : vec4<f32> = u_xlat8;
  let x_1464 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1462.x, x_1462.y, x_1462.z), vec3<f32>(x_1464.x, x_1464.y, x_1464.z));
  let x_1469 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1469, 1.17549435e-37f);
  let x_1473 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1473);
  let x_1476 : vec4<f32> = u_xlat0;
  let x_1478 : vec4<f32> = u_xlat8;
  let x_1480 : vec3<f32> = (vec3<f32>(x_1476.x, x_1476.x, x_1476.x) * vec3<f32>(x_1478.x, x_1478.y, x_1478.z));
  let x_1481 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1481.w);
  let x_1483 : vec4<f32> = u_xlat3;
  let x_1485 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1483.x, x_1483.y, x_1483.z), vec3<f32>(x_1485.x, x_1485.y, x_1485.z));
  let x_1490 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1490, 0.0f, 1.0f);
  let x_1494 : vec4<f32> = x_160.x_MainLightPosition;
  let x_1496 : vec4<f32> = u_xlat8;
  u_xlat0.w = dot(vec3<f32>(x_1494.x, x_1494.y, x_1494.z), vec3<f32>(x_1496.x, x_1496.y, x_1496.z));
  let x_1501 : f32 = u_xlat0.w;
  u_xlat0.w = clamp(x_1501, 0.0f, 1.0f);
  let x_1504 : vec4<f32> = u_xlat0;
  let x_1506 : vec4<f32> = u_xlat0;
  let x_1508 : vec2<f32> = (vec2<f32>(x_1504.x, x_1504.w) * vec2<f32>(x_1506.x, x_1506.w));
  let x_1509 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1508.x, x_1509.y, x_1509.z, x_1508.y);
  let x_1512 : f32 = u_xlat0.x;
  let x_1514 : f32 = u_xlat30.x;
  u_xlat0.x = ((x_1512 * x_1514) + 1.000010014f);
  let x_1520 : f32 = u_xlat0.x;
  let x_1522 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1520 * x_1522);
  let x_1526 : f32 = u_xlat0.w;
  u_xlat45 = max(x_1526, 0.100000001f);
  let x_1529 : f32 = u_xlat45;
  let x_1531 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1529 * x_1531);
  let x_1534 : f32 = u_xlat20;
  let x_1536 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1534 * x_1536);
  let x_1539 : f32 = u_xlat48;
  let x_1541 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1539 / x_1541);
  let x_1544 : vec4<f32> = u_xlat0;
  let x_1548 : vec4<f32> = u_xlat6;
  let x_1550 : vec3<f32> = ((vec3<f32>(x_1544.x, x_1544.x, x_1544.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
  let x_1551 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1551.w);
  let x_1553 : vec4<f32> = u_xlat7;
  let x_1555 : vec4<f32> = u_xlat8;
  let x_1557 : vec3<f32> = (vec3<f32>(x_1553.x, x_1553.y, x_1553.z) * vec3<f32>(x_1555.x, x_1555.y, x_1555.z));
  let x_1558 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1557.x, x_1557.y, x_1557.z, x_1558.w);
  let x_1562 : f32 = x_160.x_AdditionalLightsCount.x;
  let x_1564 : f32 = x_94.unity_LightData.y;
  u_xlat0.x = min(x_1562, x_1564);
  let x_1568 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1568));
  let x_1572 : f32 = x_1165.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1574 : f32 = x_1165.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1576 : f32 = x_1165.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1578 : f32 = x_1165.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1579 : vec4<f32> = vec4<f32>(x_1572, x_1574, x_1576, x_1578);
  let x_1585 : vec4<bool> = (vec4<f32>(x_1579.x, x_1579.y, x_1579.z, x_1579.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_1585.x, x_1585.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1596 : u32 = u_xlatu_loop_1;
    let x_1597 : u32 = u_xlatu0;
    if ((x_1596 < x_1597)) {
    } else {
      break;
    }
    let x_1600 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_1600 >> 2u);
    let x_1603 : u32 = u_xlatu_loop_1;
    u_xlati50 = bitcast<i32>((x_1603 & 3u));
    let x_1606 : u32 = u_xlatu49;
    let x_1609 : vec4<f32> = x_94.unity_LightIndices[bitcast<i32>(x_1606)];
    let x_1619 : i32 = u_xlati50;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1624 : vec4<u32> = indexable[x_1619];
    u_xlat49 = dot(x_1609, bitcast<vec4<f32>>(x_1624));
    let x_1627 : f32 = u_xlat49;
    u_xlatu49 = bitcast<u32>(i32(x_1627));
    let x_1630 : vec3<f32> = vs_INTERP0;
    let x_1642 : u32 = u_xlatu49;
    let x_1645 : vec4<f32> = x_1641.x_AdditionalLightsPosition[bitcast<i32>(x_1642)];
    let x_1648 : u32 = u_xlatu49;
    let x_1651 : vec4<f32> = x_1641.x_AdditionalLightsPosition[bitcast<i32>(x_1648)];
    u_xlat10 = ((-(x_1630) * vec3<f32>(x_1645.w, x_1645.w, x_1645.w)) + vec3<f32>(x_1651.x, x_1651.y, x_1651.z));
    let x_1654 : vec3<f32> = u_xlat10;
    let x_1655 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(x_1654, x_1655);
    let x_1657 : f32 = u_xlat50;
    u_xlat50 = max(x_1657, 6.10351562e-05f);
    let x_1660 : f32 = u_xlat50;
    u_xlat51 = inverseSqrt(x_1660);
    let x_1663 : f32 = u_xlat51;
    let x_1665 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_1663, x_1663, x_1663) * x_1665);
    let x_1668 : f32 = u_xlat50;
    u_xlat52 = (1.0f / x_1668);
    let x_1670 : f32 = u_xlat50;
    let x_1671 : u32 = u_xlatu49;
    let x_1674 : f32 = x_1641.x_AdditionalLightsAttenuation[bitcast<i32>(x_1671)].x;
    u_xlat50 = (x_1670 * x_1674);
    let x_1676 : f32 = u_xlat50;
    let x_1678 : f32 = u_xlat50;
    u_xlat50 = ((-(x_1676) * x_1678) + 1.0f);
    let x_1681 : f32 = u_xlat50;
    u_xlat50 = max(x_1681, 0.0f);
    let x_1683 : f32 = u_xlat50;
    let x_1684 : f32 = u_xlat50;
    u_xlat50 = (x_1683 * x_1684);
    let x_1686 : f32 = u_xlat50;
    let x_1687 : f32 = u_xlat52;
    u_xlat50 = (x_1686 * x_1687);
    let x_1689 : u32 = u_xlatu49;
    let x_1692 : vec4<f32> = x_1641.x_AdditionalLightsSpotDir[bitcast<i32>(x_1689)];
    let x_1694 : vec3<f32> = u_xlat11;
    u_xlat52 = dot(vec3<f32>(x_1692.x, x_1692.y, x_1692.z), x_1694);
    let x_1696 : f32 = u_xlat52;
    let x_1697 : u32 = u_xlatu49;
    let x_1700 : f32 = x_1641.x_AdditionalLightsAttenuation[bitcast<i32>(x_1697)].z;
    let x_1702 : u32 = u_xlatu49;
    let x_1705 : f32 = x_1641.x_AdditionalLightsAttenuation[bitcast<i32>(x_1702)].w;
    u_xlat52 = ((x_1696 * x_1700) + x_1705);
    let x_1707 : f32 = u_xlat52;
    u_xlat52 = clamp(x_1707, 0.0f, 1.0f);
    let x_1709 : f32 = u_xlat52;
    let x_1710 : f32 = u_xlat52;
    u_xlat52 = (x_1709 * x_1710);
    let x_1712 : f32 = u_xlat50;
    let x_1713 : f32 = u_xlat52;
    u_xlat50 = (x_1712 * x_1713);
    let x_1716 : u32 = u_xlatu49;
    u_xlatu52 = (x_1716 >> 5u);
    let x_1719 : u32 = u_xlatu49;
    u_xlati38 = (1i << bitcast<u32>((bitcast<i32>(x_1719) & 31i)));
    let x_1725 : i32 = u_xlati38;
    let x_1727 : u32 = u_xlatu52;
    let x_1730 : f32 = x_1165.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1727)].el;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1725) & bitcast<u32>(x_1730)));
    let x_1734 : i32 = u_xlati52;
    if ((x_1734 != 0i)) {
      let x_1744 : u32 = u_xlatu49;
      let x_1747 : f32 = x_1743.x_AdditionalLightsLightTypes[bitcast<i32>(x_1744)].el;
      u_xlati52 = i32(x_1747);
      let x_1749 : i32 = u_xlati52;
      u_xlati38 = select(1i, 0i, (x_1749 != 0i));
      let x_1753 : u32 = u_xlatu49;
      u_xlati53 = (bitcast<i32>(x_1753) << bitcast<u32>(2i));
      let x_1756 : i32 = u_xlati38;
      if ((x_1756 != 0i)) {
        let x_1761 : vec3<f32> = vs_INTERP0;
        let x_1763 : i32 = u_xlati53;
        let x_1766 : i32 = u_xlati53;
        let x_1770 : vec4<f32> = x_1743.x_AdditionalLightsWorldToLights[((x_1763 + 1i) / 4i)][((x_1766 + 1i) % 4i)];
        let x_1772 : vec3<f32> = (vec3<f32>(x_1761.y, x_1761.y, x_1761.y) * vec3<f32>(x_1770.x, x_1770.y, x_1770.w));
        let x_1773 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1773.w);
        let x_1775 : i32 = u_xlati53;
        let x_1777 : i32 = u_xlati53;
        let x_1780 : vec4<f32> = x_1743.x_AdditionalLightsWorldToLights[(x_1775 / 4i)][(x_1777 % 4i)];
        let x_1782 : vec3<f32> = vs_INTERP0;
        let x_1785 : vec4<f32> = u_xlat12;
        let x_1787 : vec3<f32> = ((vec3<f32>(x_1780.x, x_1780.y, x_1780.w) * vec3<f32>(x_1782.x, x_1782.x, x_1782.x)) + vec3<f32>(x_1785.x, x_1785.y, x_1785.z));
        let x_1788 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1788.w);
        let x_1790 : i32 = u_xlati53;
        let x_1793 : i32 = u_xlati53;
        let x_1797 : vec4<f32> = x_1743.x_AdditionalLightsWorldToLights[((x_1790 + 2i) / 4i)][((x_1793 + 2i) % 4i)];
        let x_1799 : vec3<f32> = vs_INTERP0;
        let x_1802 : vec4<f32> = u_xlat12;
        let x_1804 : vec3<f32> = ((vec3<f32>(x_1797.x, x_1797.y, x_1797.w) * vec3<f32>(x_1799.z, x_1799.z, x_1799.z)) + vec3<f32>(x_1802.x, x_1802.y, x_1802.z));
        let x_1805 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1805.w);
        let x_1807 : vec4<f32> = u_xlat12;
        let x_1809 : i32 = u_xlati53;
        let x_1812 : i32 = u_xlati53;
        let x_1816 : vec4<f32> = x_1743.x_AdditionalLightsWorldToLights[((x_1809 + 3i) / 4i)][((x_1812 + 3i) % 4i)];
        let x_1818 : vec3<f32> = (vec3<f32>(x_1807.x, x_1807.y, x_1807.z) + vec3<f32>(x_1816.x, x_1816.y, x_1816.w));
        let x_1819 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1818.x, x_1818.y, x_1818.z, x_1819.w);
        let x_1821 : vec4<f32> = u_xlat12;
        let x_1823 : vec4<f32> = u_xlat12;
        let x_1825 : vec2<f32> = (vec2<f32>(x_1821.x, x_1821.y) / vec2<f32>(x_1823.z, x_1823.z));
        let x_1826 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1825.x, x_1825.y, x_1826.z, x_1826.w);
        let x_1828 : vec4<f32> = u_xlat12;
        let x_1831 : vec2<f32> = ((vec2<f32>(x_1828.x, x_1828.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1832 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1831.x, x_1831.y, x_1832.z, x_1832.w);
        let x_1834 : vec4<f32> = u_xlat12;
        let x_1838 : vec2<f32> = clamp(vec2<f32>(x_1834.x, x_1834.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1839 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1838.x, x_1838.y, x_1839.z, x_1839.w);
        let x_1841 : u32 = u_xlatu49;
        let x_1844 : vec4<f32> = x_1743.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1841)];
        let x_1846 : vec4<f32> = u_xlat12;
        let x_1849 : u32 = u_xlatu49;
        let x_1852 : vec4<f32> = x_1743.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1849)];
        let x_1854 : vec2<f32> = ((vec2<f32>(x_1844.x, x_1844.y) * vec2<f32>(x_1846.x, x_1846.y)) + vec2<f32>(x_1852.z, x_1852.w));
        let x_1855 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1854.x, x_1854.y, x_1855.z, x_1855.w);
      } else {
        let x_1859 : i32 = u_xlati52;
        u_xlatb52 = (x_1859 == 1i);
        let x_1861 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1861);
        let x_1863 : i32 = u_xlati52;
        if ((x_1863 != 0i)) {
          let x_1868 : vec3<f32> = vs_INTERP0;
          let x_1870 : i32 = u_xlati53;
          let x_1873 : i32 = u_xlati53;
          let x_1877 : vec4<f32> = x_1743.x_AdditionalLightsWorldToLights[((x_1870 + 1i) / 4i)][((x_1873 + 1i) % 4i)];
          u_xlat42 = (vec2<f32>(x_1868.y, x_1868.y) * vec2<f32>(x_1877.x, x_1877.y));
          let x_1880 : i32 = u_xlati53;
          let x_1882 : i32 = u_xlati53;
          let x_1885 : vec4<f32> = x_1743.x_AdditionalLightsWorldToLights[(x_1880 / 4i)][(x_1882 % 4i)];
          let x_1887 : vec3<f32> = vs_INTERP0;
          let x_1890 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1885.x, x_1885.y) * vec2<f32>(x_1887.x, x_1887.x)) + x_1890);
          let x_1892 : i32 = u_xlati53;
          let x_1895 : i32 = u_xlati53;
          let x_1899 : vec4<f32> = x_1743.x_AdditionalLightsWorldToLights[((x_1892 + 2i) / 4i)][((x_1895 + 2i) % 4i)];
          let x_1901 : vec3<f32> = vs_INTERP0;
          let x_1904 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1899.x, x_1899.y) * vec2<f32>(x_1901.z, x_1901.z)) + x_1904);
          let x_1906 : vec2<f32> = u_xlat42;
          let x_1907 : i32 = u_xlati53;
          let x_1910 : i32 = u_xlati53;
          let x_1914 : vec4<f32> = x_1743.x_AdditionalLightsWorldToLights[((x_1907 + 3i) / 4i)][((x_1910 + 3i) % 4i)];
          u_xlat42 = (x_1906 + vec2<f32>(x_1914.x, x_1914.y));
          let x_1917 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_1917 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1920 : vec2<f32> = u_xlat42;
          u_xlat42 = fract(x_1920);
          let x_1922 : u32 = u_xlatu49;
          let x_1925 : vec4<f32> = x_1743.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1922)];
          let x_1927 : vec2<f32> = u_xlat42;
          let x_1929 : u32 = u_xlatu49;
          let x_1932 : vec4<f32> = x_1743.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1929)];
          let x_1934 : vec2<f32> = ((vec2<f32>(x_1925.x, x_1925.y) * x_1927) + vec2<f32>(x_1932.z, x_1932.w));
          let x_1935 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1934.x, x_1934.y, x_1935.z, x_1935.w);
        } else {
          let x_1939 : vec3<f32> = vs_INTERP0;
          let x_1941 : i32 = u_xlati53;
          let x_1944 : i32 = u_xlati53;
          let x_1948 : vec4<f32> = x_1743.x_AdditionalLightsWorldToLights[((x_1941 + 1i) / 4i)][((x_1944 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1939.y, x_1939.y, x_1939.y, x_1939.y) * x_1948);
          let x_1950 : i32 = u_xlati53;
          let x_1952 : i32 = u_xlati53;
          let x_1955 : vec4<f32> = x_1743.x_AdditionalLightsWorldToLights[(x_1950 / 4i)][(x_1952 % 4i)];
          let x_1956 : vec3<f32> = vs_INTERP0;
          let x_1959 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1955 * vec4<f32>(x_1956.x, x_1956.x, x_1956.x, x_1956.x)) + x_1959);
          let x_1961 : i32 = u_xlati53;
          let x_1964 : i32 = u_xlati53;
          let x_1968 : vec4<f32> = x_1743.x_AdditionalLightsWorldToLights[((x_1961 + 2i) / 4i)][((x_1964 + 2i) % 4i)];
          let x_1969 : vec3<f32> = vs_INTERP0;
          let x_1972 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1968 * vec4<f32>(x_1969.z, x_1969.z, x_1969.z, x_1969.z)) + x_1972);
          let x_1974 : vec4<f32> = u_xlat13;
          let x_1975 : i32 = u_xlati53;
          let x_1978 : i32 = u_xlati53;
          let x_1982 : vec4<f32> = x_1743.x_AdditionalLightsWorldToLights[((x_1975 + 3i) / 4i)][((x_1978 + 3i) % 4i)];
          u_xlat13 = (x_1974 + x_1982);
          let x_1984 : vec4<f32> = u_xlat13;
          let x_1986 : vec4<f32> = u_xlat13;
          let x_1988 : vec3<f32> = (vec3<f32>(x_1984.x, x_1984.y, x_1984.z) / vec3<f32>(x_1986.w, x_1986.w, x_1986.w));
          let x_1989 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1988.x, x_1988.y, x_1988.z, x_1989.w);
          let x_1991 : vec4<f32> = u_xlat13;
          let x_1993 : vec4<f32> = u_xlat13;
          u_xlat52 = dot(vec3<f32>(x_1991.x, x_1991.y, x_1991.z), vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
          let x_1996 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1996);
          let x_1998 : f32 = u_xlat52;
          let x_2000 : vec4<f32> = u_xlat13;
          let x_2002 : vec3<f32> = (vec3<f32>(x_1998, x_1998, x_1998) * vec3<f32>(x_2000.x, x_2000.y, x_2000.z));
          let x_2003 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2002.x, x_2002.y, x_2002.z, x_2003.w);
          let x_2005 : vec4<f32> = u_xlat13;
          u_xlat52 = dot(abs(vec3<f32>(x_2005.x, x_2005.y, x_2005.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2010 : f32 = u_xlat52;
          u_xlat52 = max(x_2010, 0.000001f);
          let x_2013 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_2013);
          let x_2016 : f32 = u_xlat52;
          let x_2018 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_2016, x_2016, x_2016) * vec3<f32>(x_2018.z, x_2018.x, x_2018.y));
          let x_2022 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_2022);
          let x_2026 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_2026, 0.0f, 1.0f);
          let x_2030 : vec3<f32> = u_xlat14;
          let x_2033 : vec4<bool> = (vec4<f32>(x_2030.y, x_2030.z, x_2030.y, x_2030.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb38 = vec2<bool>(x_2033.x, x_2033.y);
          let x_2037 : bool = u_xlatb38.x;
          if (x_2037) {
            let x_2042 : f32 = u_xlat14.x;
            x_2038 = x_2042;
          } else {
            let x_2045 : f32 = u_xlat14.x;
            x_2038 = -(x_2045);
          }
          let x_2047 : f32 = x_2038;
          u_xlat38.x = x_2047;
          let x_2050 : bool = u_xlatb38.y;
          if (x_2050) {
            let x_2055 : f32 = u_xlat14.x;
            x_2051 = x_2055;
          } else {
            let x_2058 : f32 = u_xlat14.x;
            x_2051 = -(x_2058);
          }
          let x_2060 : f32 = x_2051;
          u_xlat38.y = x_2060;
          let x_2062 : vec4<f32> = u_xlat13;
          let x_2064 : f32 = u_xlat52;
          let x_2067 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_2062.x, x_2062.y) * vec2<f32>(x_2064, x_2064)) + x_2067);
          let x_2069 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_2069 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2072 : vec2<f32> = u_xlat38;
          u_xlat38 = clamp(x_2072, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2076 : u32 = u_xlatu49;
          let x_2079 : vec4<f32> = x_1743.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2076)];
          let x_2081 : vec2<f32> = u_xlat38;
          let x_2083 : u32 = u_xlatu49;
          let x_2086 : vec4<f32> = x_1743.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2083)];
          let x_2088 : vec2<f32> = ((vec2<f32>(x_2079.x, x_2079.y) * x_2081) + vec2<f32>(x_2086.z, x_2086.w));
          let x_2089 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2088.x, x_2088.y, x_2089.z, x_2089.w);
        }
      }
      let x_2096 : vec4<f32> = u_xlat12;
      let x_2099 : f32 = x_160.x_GlobalMipBias.x;
      let x_2100 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2096.x, x_2096.y), x_2099);
      u_xlat12 = x_2100;
      let x_2102 : bool = u_xlatb8.y;
      if (x_2102) {
        let x_2107 : f32 = u_xlat12.w;
        x_2103 = x_2107;
      } else {
        let x_2110 : f32 = u_xlat12.x;
        x_2103 = x_2110;
      }
      let x_2111 : f32 = x_2103;
      u_xlat52 = x_2111;
      let x_2113 : bool = u_xlatb8.x;
      if (x_2113) {
        let x_2117 : vec4<f32> = u_xlat12;
        x_2114 = vec3<f32>(x_2117.x, x_2117.y, x_2117.z);
      } else {
        let x_2120 : f32 = u_xlat52;
        x_2114 = vec3<f32>(x_2120, x_2120, x_2120);
      }
      let x_2122 : vec3<f32> = x_2114;
      let x_2123 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2122.x, x_2122.y, x_2122.z, x_2123.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_2129 : vec4<f32> = u_xlat12;
    let x_2131 : u32 = u_xlatu49;
    let x_2134 : vec4<f32> = x_1641.x_AdditionalLightsColor[bitcast<i32>(x_2131)];
    let x_2136 : vec3<f32> = (vec3<f32>(x_2129.x, x_2129.y, x_2129.z) * vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
    let x_2137 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2136.x, x_2136.y, x_2136.z, x_2137.w);
    let x_2139 : f32 = u_xlat35;
    let x_2141 : vec4<f32> = u_xlat12;
    let x_2143 : vec3<f32> = (vec3<f32>(x_2139, x_2139, x_2139) * vec3<f32>(x_2141.x, x_2141.y, x_2141.z));
    let x_2144 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2143.x, x_2143.y, x_2143.z, x_2144.w);
    let x_2146 : vec4<f32> = u_xlat3;
    let x_2148 : vec3<f32> = u_xlat11;
    u_xlat49 = dot(vec3<f32>(x_2146.x, x_2146.y, x_2146.z), x_2148);
    let x_2150 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2150, 0.0f, 1.0f);
    let x_2152 : f32 = u_xlat49;
    let x_2153 : f32 = u_xlat50;
    u_xlat49 = (x_2152 * x_2153);
    let x_2155 : f32 = u_xlat49;
    let x_2157 : vec4<f32> = u_xlat12;
    let x_2159 : vec3<f32> = (vec3<f32>(x_2155, x_2155, x_2155) * vec3<f32>(x_2157.x, x_2157.y, x_2157.z));
    let x_2160 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
    let x_2162 : vec3<f32> = u_xlat10;
    let x_2163 : f32 = u_xlat51;
    let x_2166 : vec3<f32> = u_xlat4;
    u_xlat10 = ((x_2162 * vec3<f32>(x_2163, x_2163, x_2163)) + x_2166);
    let x_2168 : vec3<f32> = u_xlat10;
    let x_2169 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_2168, x_2169);
    let x_2171 : f32 = u_xlat49;
    u_xlat49 = max(x_2171, 1.17549435e-37f);
    let x_2173 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_2173);
    let x_2175 : f32 = u_xlat49;
    let x_2177 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_2175, x_2175, x_2175) * x_2177);
    let x_2179 : vec4<f32> = u_xlat3;
    let x_2181 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_2179.x, x_2179.y, x_2179.z), x_2181);
    let x_2183 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2183, 0.0f, 1.0f);
    let x_2185 : vec3<f32> = u_xlat11;
    let x_2186 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(x_2185, x_2186);
    let x_2188 : f32 = u_xlat50;
    u_xlat50 = clamp(x_2188, 0.0f, 1.0f);
    let x_2190 : f32 = u_xlat49;
    let x_2191 : f32 = u_xlat49;
    u_xlat49 = (x_2190 * x_2191);
    let x_2193 : f32 = u_xlat49;
    let x_2195 : f32 = u_xlat30.x;
    u_xlat49 = ((x_2193 * x_2195) + 1.000010014f);
    let x_2198 : f32 = u_xlat50;
    let x_2199 : f32 = u_xlat50;
    u_xlat50 = (x_2198 * x_2199);
    let x_2201 : f32 = u_xlat49;
    let x_2202 : f32 = u_xlat49;
    u_xlat49 = (x_2201 * x_2202);
    let x_2204 : f32 = u_xlat50;
    u_xlat50 = max(x_2204, 0.100000001f);
    let x_2206 : f32 = u_xlat49;
    let x_2207 : f32 = u_xlat50;
    u_xlat49 = (x_2206 * x_2207);
    let x_2209 : f32 = u_xlat20;
    let x_2210 : f32 = u_xlat49;
    u_xlat49 = (x_2209 * x_2210);
    let x_2212 : f32 = u_xlat48;
    let x_2213 : f32 = u_xlat49;
    u_xlat49 = (x_2212 / x_2213);
    let x_2215 : f32 = u_xlat49;
    let x_2218 : vec4<f32> = u_xlat6;
    u_xlat10 = ((vec3<f32>(x_2215, x_2215, x_2215) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
    let x_2221 : vec3<f32> = u_xlat10;
    let x_2222 : vec4<f32> = u_xlat12;
    let x_2225 : vec4<f32> = u_xlat9;
    let x_2227 : vec3<f32> = ((x_2221 * vec3<f32>(x_2222.x, x_2222.y, x_2222.z)) + vec3<f32>(x_2225.x, x_2225.y, x_2225.z));
    let x_2228 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2227.x, x_2227.y, x_2227.z, x_2228.w);

    continuing {
      let x_2230 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2230 + bitcast<u32>(1i));
    }
  }
  let x_2232 : vec3<f32> = u_xlat17;
  let x_2233 : vec3<f32> = u_xlat5;
  let x_2236 : vec4<f32> = u_xlat7;
  let x_2238 : vec3<f32> = ((x_2232 * vec3<f32>(x_2233.x, x_2233.x, x_2233.x)) + vec3<f32>(x_2236.x, x_2236.y, x_2236.z));
  let x_2239 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2238.x, x_2239.y, x_2238.y, x_2238.z);
  let x_2241 : vec4<f32> = u_xlat9;
  let x_2243 : vec4<f32> = u_xlat0;
  let x_2245 : vec3<f32> = (vec3<f32>(x_2241.x, x_2241.y, x_2241.z) + vec3<f32>(x_2243.x, x_2243.z, x_2243.w));
  let x_2246 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2245.x, x_2246.y, x_2245.y, x_2245.z);
  let x_2248 : vec4<f32> = vs_INTERP4;
  let x_2250 : vec3<f32> = u_xlat1;
  let x_2252 : vec4<f32> = u_xlat0;
  let x_2254 : vec3<f32> = ((vec3<f32>(x_2248.w, x_2248.w, x_2248.w) * x_2250) + vec3<f32>(x_2252.x, x_2252.z, x_2252.w));
  let x_2255 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2254.x, x_2255.y, x_2254.y, x_2254.z);
  let x_2258 : f32 = u_xlat15.x;
  let x_2260 : f32 = u_xlat15.x;
  u_xlat15.x = (x_2258 * -(x_2260));
  let x_2265 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_2265);
  let x_2268 : vec4<f32> = u_xlat0;
  let x_2272 : vec4<f32> = x_160.unity_FogColor;
  let x_2275 : vec3<f32> = (vec3<f32>(x_2268.x, x_2268.z, x_2268.w) + -(vec3<f32>(x_2272.x, x_2272.y, x_2272.z)));
  let x_2276 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2275.x, x_2276.y, x_2275.y, x_2275.z);
  let x_2280 : vec3<f32> = u_xlat15;
  let x_2282 : vec4<f32> = u_xlat0;
  let x_2286 : vec4<f32> = x_160.unity_FogColor;
  let x_2288 : vec3<f32> = ((vec3<f32>(x_2280.x, x_2280.x, x_2280.x) * vec3<f32>(x_2282.x, x_2282.z, x_2282.w)) + vec3<f32>(x_2286.x, x_2286.y, x_2286.z));
  let x_2289 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
  let x_2292 : bool = u_xlatb2.x;
  let x_2293 : f32 = u_xlat46;
  SV_Target0.w = select(1.0f, x_2293, x_2292);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0);
}

