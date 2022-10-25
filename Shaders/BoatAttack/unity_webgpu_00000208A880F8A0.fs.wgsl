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
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_160 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(6) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_279 : UnityPerMaterial;

@group(0) @binding(7) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_383 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_1071 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1536 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1643 : AdditionalLightsCookies;

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
  var u_xlatb14 : vec2<bool>;
  var u_xlat14 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat5 : vec3<f32>;
  var x_186 : f32;
  var x_199 : f32;
  var x_211 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb43 : bool;
  var x_612 : f32;
  var u_xlat15 : vec3<f32>;
  var x_654 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlatu16 : vec3<u32>;
  var u_xlatu44 : u32;
  var u_xlatu3 : u32;
  var u_xlati44 : i32;
  var u_xlati30 : i32;
  var u_xlatu30 : u32;
  var u_xlati16 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat30 : f32;
  var x_789 : f32;
  var u_xlatb16 : bool;
  var x_815 : f32;
  var x_862 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat31 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlatb20 : vec2<bool>;
  var x_1154 : f32;
  var x_1165 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati35 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat35 : f32;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati51 : i32;
  var u_xlati50 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb50 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1938 : f32;
  var x_1951 : f32;
  var x_2003 : f32;
  var x_2014 : vec3<f32>;
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
  let x_86 : f32 = vs_INTERP2.w;
  u_xlatb14.x = (0.0f < x_86);
  let x_99 : f32 = x_95.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_99 >= 0.0f);
  let x_105 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_105);
  let x_110 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_110);
  let x_114 : f32 = u_xlat14.y;
  let x_116 : f32 = u_xlat14.x;
  u_xlat14.x = (x_114 * x_116);
  let x_120 : vec3<f32> = vs_INTERP1;
  let x_122 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_120.z, x_120.x, x_120.y) * vec3<f32>(x_122.y, x_122.z, x_122.x));
  let x_125 : vec3<f32> = vs_INTERP1;
  let x_127 : vec4<f32> = vs_INTERP2;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_125.y, x_125.z, x_125.x) * vec3<f32>(x_127.z, x_127.x, x_127.y)) + -(x_130));
  let x_133 : vec3<f32> = u_xlat14;
  let x_135 : vec3<f32> = u_xlat1;
  u_xlat14 = (vec3<f32>(x_133.x, x_133.x, x_133.x) * x_135);
  let x_137 : vec3<f32> = u_xlat0;
  let x_139 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_137.x, x_137.x, x_137.x) * x_139);
  let x_142 : vec3<f32> = u_xlat0;
  let x_144 : vec4<f32> = vs_INTERP2;
  let x_146 : vec3<f32> = (vec3<f32>(x_142.x, x_142.x, x_142.x) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec3<f32> = u_xlat14;
  let x_151 : vec3<f32> = u_xlat0;
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
  u_xlat43 = dot(x_175, x_176);
  let x_178 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_178);
  let x_180 : f32 = u_xlat43;
  let x_182 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_180, x_180, x_180) * x_182);
  let x_185 : bool = u_xlatb0;
  if (x_185) {
    let x_190 : f32 = u_xlat4.x;
    x_186 = x_190;
  } else {
    let x_195 : f32 = x_160.unity_MatrixV[0i].z;
    x_186 = x_195;
  }
  let x_196 : f32 = x_186;
  u_xlat5.x = x_196;
  let x_198 : bool = u_xlatb0;
  if (x_198) {
    let x_203 : f32 = u_xlat4.y;
    x_199 = x_203;
  } else {
    let x_207 : f32 = x_160.unity_MatrixV[1i].z;
    x_199 = x_207;
  }
  let x_208 : f32 = x_199;
  u_xlat5.y = x_208;
  let x_210 : bool = u_xlatb0;
  if (x_210) {
    let x_215 : f32 = u_xlat4.z;
    x_211 = x_215;
  } else {
    let x_219 : f32 = x_160.unity_MatrixV[2i].z;
    x_211 = x_219;
  }
  let x_220 : f32 = x_211;
  u_xlat5.z = x_220;
  let x_222 : vec3<f32> = u_xlat5;
  let x_226 : vec4<f32> = x_95.unity_WorldToObject[1i];
  u_xlat4 = (vec3<f32>(x_222.y, x_222.y, x_222.y) * vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_230 : vec4<f32> = x_95.unity_WorldToObject[0i];
  let x_232 : vec3<f32> = u_xlat5;
  let x_235 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(x_232.x, x_232.x, x_232.x)) + x_235);
  let x_238 : vec4<f32> = x_95.unity_WorldToObject[2i];
  let x_240 : vec3<f32> = u_xlat5;
  let x_243 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.z, x_240.z, x_240.z)) + x_243);
  let x_245 : vec3<f32> = u_xlat4;
  let x_246 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_245, x_246);
  let x_250 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_250);
  let x_253 : vec3<f32> = u_xlat0;
  let x_255 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_253.x, x_253.x, x_253.x) * x_255);
  let x_269 : vec4<f32> = vs_INTERP3;
  let x_272 : f32 = x_160.x_GlobalMipBias.x;
  let x_273 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_269.x, x_269.y), x_272);
  u_xlat6 = x_273;
  let x_275 : vec4<f32> = u_xlat6;
  let x_281 : vec4<f32> = x_279.Color_C30C7CA3;
  let x_283 : vec3<f32> = (vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_292 : vec4<f32> = vs_INTERP3;
  let x_295 : f32 = x_160.x_GlobalMipBias.x;
  let x_296 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_292.x, x_292.y), x_295);
  u_xlat8 = vec4<f32>(x_296.w, x_296.x, x_296.y, x_296.z);
  let x_299 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_299.y, x_299.z, x_299.w, x_299.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_306 : vec4<f32> = u_xlat9;
  let x_307 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_306, x_307);
  let x_311 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_311);
  let x_315 : vec3<f32> = u_xlat0;
  let x_317 : vec4<f32> = u_xlat9;
  u_xlat22 = (vec3<f32>(x_315.x, x_315.x, x_315.x) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_322 : f32 = vs_INTERP4.y;
  u_xlat0.x = (x_322 * 200.0f);
  let x_327 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_327, 1.0f);
  let x_330 : vec3<f32> = u_xlat0;
  let x_332 : vec4<f32> = u_xlat6;
  let x_334 : vec3<f32> = (vec3<f32>(x_330.x, x_330.x, x_330.x) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat3;
  let x_339 : vec3<f32> = u_xlat22;
  let x_341 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.y, x_339.y, x_339.y));
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec3<f32> = u_xlat22;
  let x_346 : vec4<f32> = u_xlat2;
  let x_349 : vec4<f32> = u_xlat3;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.x, x_344.x) * vec3<f32>(x_346.x, x_346.y, x_346.z)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec3<f32> = u_xlat22;
  let x_356 : vec3<f32> = u_xlat1;
  let x_358 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_354.z, x_354.z, x_354.z) * x_356) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec3<f32> = u_xlat1;
  let x_362 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_361, x_362);
  let x_366 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_366, 1.17549435e-37f);
  let x_371 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_371);
  let x_374 : vec3<f32> = u_xlat0;
  let x_376 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_374.x, x_374.x, x_374.x) * x_376);
  let x_378 : vec3<f32> = vs_INTERP0;
  let x_385 : vec4<f32> = x_383.x_CascadeShadowSplitSpheres0;
  let x_388 : vec3<f32> = (x_378 + -(vec3<f32>(x_385.x, x_385.y, x_385.z)));
  let x_389 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec3<f32> = vs_INTERP0;
  let x_393 : vec4<f32> = x_383.x_CascadeShadowSplitSpheres1;
  let x_396 : vec3<f32> = (x_391 + -(vec3<f32>(x_393.x, x_393.y, x_393.z)));
  let x_397 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec3<f32> = vs_INTERP0;
  let x_401 : vec4<f32> = x_383.x_CascadeShadowSplitSpheres2;
  let x_404 : vec3<f32> = (x_399 + -(vec3<f32>(x_401.x, x_401.y, x_401.z)));
  let x_405 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_408 : vec3<f32> = vs_INTERP0;
  let x_411 : vec4<f32> = x_383.x_CascadeShadowSplitSpheres3;
  u_xlat10 = (x_408 + -(vec3<f32>(x_411.x, x_411.y, x_411.z)));
  let x_415 : vec4<f32> = u_xlat2;
  let x_417 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_415.x, x_415.y, x_415.z), vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_421 : vec4<f32> = u_xlat3;
  let x_423 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_421.x, x_421.y, x_421.z), vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_427 : vec4<f32> = u_xlat9;
  let x_429 : vec4<f32> = u_xlat9;
  u_xlat2.z = dot(vec3<f32>(x_427.x, x_427.y, x_427.z), vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_433 : vec3<f32> = u_xlat10;
  let x_434 : vec3<f32> = u_xlat10;
  u_xlat2.w = dot(x_433, x_434);
  let x_440 : vec4<f32> = u_xlat2;
  let x_443 : vec4<f32> = x_383.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_440 < x_443);
  let x_446 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_446);
  let x_450 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_450);
  let x_454 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_454);
  let x_458 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_458);
  let x_462 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_462);
  let x_467 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_467);
  let x_471 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_471);
  let x_474 : vec4<f32> = u_xlat2;
  let x_476 : vec4<f32> = u_xlat3;
  let x_478 : vec3<f32> = (vec3<f32>(x_474.x, x_474.y, x_474.z) + vec3<f32>(x_476.y, x_476.z, x_476.w));
  let x_479 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_481 : vec4<f32> = u_xlat2;
  let x_484 : vec3<f32> = max(vec3<f32>(x_481.x, x_481.y, x_481.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_485 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_485.x, x_484.x, x_484.y, x_484.z);
  let x_487 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_487, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_494 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_494) + 4.0f);
  let x_500 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_500);
  let x_503 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_503) << bitcast<u32>(2i));
  let x_506 : vec3<f32> = vs_INTERP0;
  let x_508 : i32 = u_xlati0;
  let x_511 : i32 = u_xlati0;
  let x_515 : vec4<f32> = x_383.x_MainLightWorldToShadow[((x_508 + 1i) / 4i)][((x_511 + 1i) % 4i)];
  let x_517 : vec3<f32> = (vec3<f32>(x_506.y, x_506.y, x_506.y) * vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : i32 = u_xlati0;
  let x_522 : i32 = u_xlati0;
  let x_525 : vec4<f32> = x_383.x_MainLightWorldToShadow[(x_520 / 4i)][(x_522 % 4i)];
  let x_527 : vec3<f32> = vs_INTERP0;
  let x_530 : vec4<f32> = u_xlat2;
  let x_532 : vec3<f32> = ((vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_527.x, x_527.x, x_527.x)) + vec3<f32>(x_530.x, x_530.y, x_530.z));
  let x_533 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_535 : i32 = u_xlati0;
  let x_538 : i32 = u_xlati0;
  let x_542 : vec4<f32> = x_383.x_MainLightWorldToShadow[((x_535 + 2i) / 4i)][((x_538 + 2i) % 4i)];
  let x_544 : vec3<f32> = vs_INTERP0;
  let x_547 : vec4<f32> = u_xlat2;
  let x_549 : vec3<f32> = ((vec3<f32>(x_542.x, x_542.y, x_542.z) * vec3<f32>(x_544.z, x_544.z, x_544.z)) + vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_550 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_552 : vec4<f32> = u_xlat2;
  let x_554 : i32 = u_xlati0;
  let x_557 : i32 = u_xlati0;
  let x_561 : vec4<f32> = x_383.x_MainLightWorldToShadow[((x_554 + 3i) / 4i)][((x_557 + 3i) % 4i)];
  let x_563 : vec3<f32> = (vec3<f32>(x_552.x, x_552.y, x_552.z) + vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_564 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_567 : vec4<f32> = u_xlat2;
  let x_568 : vec2<f32> = vec2<f32>(x_567.x, x_567.y);
  let x_570 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_568.x, x_568.y, x_570);
  let x_582 : vec3<f32> = txVec0;
  let x_584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_582.xy, x_582.z);
  u_xlat0.x = x_584;
  let x_588 : f32 = x_383.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_588) + 1.0f);
  let x_592 : f32 = u_xlat0.x;
  let x_594 : f32 = x_383.x_MainLightShadowParams.x;
  let x_596 : f32 = u_xlat43;
  u_xlat0.x = ((x_592 * x_594) + x_596);
  let x_601 : f32 = u_xlat2.z;
  u_xlatb43 = (0.0f >= x_601);
  let x_604 : f32 = u_xlat2.z;
  u_xlatb2.x = (x_604 >= 1.0f);
  let x_607 : bool = u_xlatb43;
  let x_609 : bool = u_xlatb2.x;
  u_xlatb43 = (x_607 | x_609);
  let x_611 : bool = u_xlatb43;
  if (x_611) {
    x_612 = 1.0f;
  } else {
    let x_617 : f32 = u_xlat0.x;
    x_612 = x_617;
  }
  let x_618 : f32 = x_612;
  u_xlat0.x = x_618;
  let x_620 : vec3<f32> = u_xlat1;
  let x_622 : vec4<f32> = x_160.x_MainLightPosition;
  u_xlat1.x = dot(x_620, -(vec3<f32>(x_622.x, x_622.y, x_622.z)));
  let x_628 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_628, 0.0f, 1.0f);
  let x_632 : vec3<f32> = u_xlat0;
  let x_635 : vec4<f32> = x_160.x_MainLightColor;
  u_xlat15 = (vec3<f32>(x_632.x, x_632.x, x_632.x) * vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec3<f32> = u_xlat15;
  let x_639 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_638 * vec3<f32>(x_639.x, x_639.x, x_639.x));
  let x_642 : vec3<f32> = u_xlat1;
  let x_643 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_642 * vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_647 : f32 = x_95.unity_LODFade.x;
  u_xlatb43 = (x_647 < 0.0f);
  let x_650 : f32 = x_95.unity_LODFade.x;
  u_xlat2.x = (x_650 + 1.0f);
  let x_653 : bool = u_xlatb43;
  if (x_653) {
    let x_658 : f32 = u_xlat2.x;
    x_654 = x_658;
  } else {
    let x_661 : f32 = x_95.unity_LODFade.x;
    x_654 = x_661;
  }
  let x_662 : f32 = x_654;
  u_xlat43 = x_662;
  let x_664 : f32 = u_xlat43;
  u_xlatb2.x = (0.5f >= x_664);
  let x_668 : vec3<f32> = u_xlat4;
  let x_671 : vec4<f32> = x_160.x_ScreenParams;
  u_xlat16 = (abs(x_668) * vec3<f32>(x_671.x, x_671.y, x_671.x));
  let x_677 : vec3<f32> = u_xlat16;
  u_xlatu16 = vec3<u32>(x_677);
  let x_681 : u32 = u_xlatu16.z;
  u_xlatu44 = (x_681 * 1025u);
  let x_685 : u32 = u_xlatu44;
  u_xlatu3 = (x_685 >> 6u);
  let x_689 : u32 = u_xlatu44;
  let x_690 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_689 ^ x_690));
  let x_693 : i32 = u_xlati44;
  u_xlatu44 = (bitcast<u32>(x_693) * 9u);
  let x_697 : u32 = u_xlatu44;
  u_xlatu3 = (x_697 >> 11u);
  let x_700 : u32 = u_xlatu44;
  let x_701 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_700 ^ x_701));
  let x_704 : i32 = u_xlati44;
  u_xlati44 = (x_704 * 32769i);
  let x_708 : i32 = u_xlati44;
  let x_711 : u32 = u_xlatu16.y;
  u_xlati30 = bitcast<i32>((bitcast<u32>(x_708) ^ x_711));
  let x_715 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_715) * 1025u);
  let x_718 : u32 = u_xlatu30;
  u_xlatu44 = (x_718 >> 6u);
  let x_720 : u32 = u_xlatu44;
  let x_721 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_720 ^ x_721));
  let x_724 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_724) * 9u);
  let x_727 : u32 = u_xlatu30;
  u_xlatu44 = (x_727 >> 11u);
  let x_729 : u32 = u_xlatu44;
  let x_730 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_729 ^ x_730));
  let x_733 : i32 = u_xlati30;
  u_xlati30 = (x_733 * 32769i);
  let x_736 : i32 = u_xlati30;
  let x_739 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((bitcast<u32>(x_736) ^ x_739));
  let x_742 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_742) * 1025u);
  let x_747 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_747 >> 6u);
  let x_749 : u32 = u_xlatu30;
  let x_751 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_749 ^ x_751));
  let x_754 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_754) * 9u);
  let x_759 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_759 >> 11u);
  let x_761 : u32 = u_xlatu30;
  let x_763 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_761 ^ x_763));
  let x_766 : i32 = u_xlati16;
  u_xlati16 = (x_766 * 32769i);
  param = 1065353216i;
  let x_772 : i32 = u_xlati16;
  param_1 = x_772;
  param_2 = 0i;
  param_3 = 23i;
  let x_775 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat16.x = bitcast<f32>(x_775);
  let x_779 : f32 = u_xlat16.x;
  u_xlat16.x = (x_779 + -1.0f);
  let x_784 : f32 = u_xlat16.x;
  u_xlat30 = (-(x_784) + 1.0f);
  let x_788 : bool = u_xlatb2.x;
  if (x_788) {
    let x_793 : f32 = u_xlat16.x;
    x_789 = x_793;
  } else {
    let x_795 : f32 = u_xlat30;
    x_789 = x_795;
  }
  let x_796 : f32 = x_789;
  u_xlat2.x = x_796;
  let x_798 : f32 = u_xlat43;
  let x_801 : f32 = u_xlat2.x;
  u_xlat43 = ((x_798 * 2.0f) + -(x_801));
  let x_804 : f32 = u_xlat43;
  let x_806 : f32 = u_xlat6.w;
  u_xlat2.x = (x_804 * x_806);
  let x_811 : f32 = u_xlat2.x;
  u_xlatb16 = (x_811 >= 0.400000006f);
  let x_814 : bool = u_xlatb16;
  if (x_814) {
    let x_819 : f32 = u_xlat2.x;
    x_815 = x_819;
  } else {
    x_815 = 0.0f;
  }
  let x_821 : f32 = x_815;
  u_xlat16.x = x_821;
  let x_824 : f32 = u_xlat6.w;
  let x_825 : f32 = u_xlat43;
  u_xlat43 = ((x_824 * x_825) + -0.400000006f);
  let x_830 : f32 = u_xlat2.x;
  u_xlat30 = dpdxCoarse(x_830);
  let x_833 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_833);
  let x_837 : f32 = u_xlat2.x;
  let x_839 : f32 = u_xlat30;
  u_xlat2.x = (abs(x_837) + abs(x_839));
  let x_844 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_844, 0.0001f);
  let x_848 : f32 = u_xlat43;
  let x_850 : f32 = u_xlat2.x;
  u_xlat43 = (x_848 / x_850);
  let x_852 : f32 = u_xlat43;
  u_xlat43 = (x_852 + 0.5f);
  let x_854 : f32 = u_xlat43;
  u_xlat43 = clamp(x_854, 0.0f, 1.0f);
  let x_857 : f32 = x_160.x_AlphaToMaskAvailable;
  u_xlatb2.x = !((x_857 == 0.0f));
  let x_861 : bool = u_xlatb2.x;
  if (x_861) {
    let x_865 : f32 = u_xlat43;
    x_862 = x_865;
  } else {
    let x_868 : f32 = u_xlat16.x;
    x_862 = x_868;
  }
  let x_869 : f32 = x_862;
  u_xlat43 = x_869;
  let x_870 : f32 = u_xlat43;
  u_xlat16.x = (x_870 + -0.0001f);
  let x_875 : f32 = u_xlat16.x;
  u_xlatb16 = (x_875 < 0.0f);
  let x_877 : bool = u_xlatb16;
  if (((select(0i, 1i, x_877) * -1i) != 0i)) {
    discard;
  }
  let x_885 : vec3<f32> = u_xlat14;
  let x_886 : vec3<f32> = u_xlat22;
  u_xlat14 = (x_885 * vec3<f32>(x_886.y, x_886.y, x_886.y));
  let x_889 : vec3<f32> = u_xlat22;
  let x_891 : vec4<f32> = vs_INTERP2;
  let x_894 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_889.x, x_889.x, x_889.x) * vec3<f32>(x_891.x, x_891.y, x_891.z)) + x_894);
  let x_896 : vec3<f32> = u_xlat22;
  let x_898 : vec3<f32> = vs_INTERP1;
  let x_900 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_896.z, x_896.z, x_896.z) * x_898) + x_900);
  let x_902 : vec3<f32> = u_xlat14;
  let x_903 : vec3<f32> = u_xlat14;
  u_xlat16.x = dot(x_902, x_903);
  let x_907 : f32 = u_xlat16.x;
  u_xlat16.x = inverseSqrt(x_907);
  let x_910 : vec3<f32> = u_xlat14;
  let x_911 : vec3<f32> = u_xlat16;
  u_xlat14 = (x_910 * vec3<f32>(x_911.x, x_911.x, x_911.x));
  let x_921 : vec2<f32> = vs_INTERP5;
  let x_923 : f32 = x_160.x_GlobalMipBias.x;
  let x_924 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_921, x_923);
  u_xlat16 = vec3<f32>(x_924.x, x_924.y, x_924.z);
  let x_928 : vec4<f32> = x_160.x_ScaledScreenParams;
  let x_929 : vec2<f32> = vec2<f32>(x_928.x, x_928.y);
  let x_933 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_929.x, x_929.y));
  let x_934 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_933.x, x_933.y, x_934.z, x_934.w);
  let x_936 : vec4<f32> = u_xlat3;
  let x_938 : vec4<f32> = hlslcc_FragCoord;
  let x_940 : vec2<f32> = (vec2<f32>(x_936.x, x_936.y) * vec2<f32>(x_938.x, x_938.y));
  let x_941 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
  let x_945 : f32 = u_xlat3.y;
  let x_948 : f32 = x_160.x_ScaleBiasRt.x;
  let x_951 : f32 = x_160.x_ScaleBiasRt.y;
  u_xlat17.x = ((x_945 * x_948) + x_951);
  let x_955 : f32 = u_xlat17.x;
  u_xlat3.z = (-(x_955) + 1.0f);
  let x_960 : f32 = u_xlat8.x;
  u_xlat8.x = x_960;
  let x_963 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_963, 0.0f, 1.0f);
  let x_966 : f32 = u_xlat43;
  u_xlat43 = x_966;
  let x_967 : f32 = u_xlat43;
  u_xlat43 = clamp(x_967, 0.0f, 1.0f);
  let x_969 : vec4<f32> = u_xlat7;
  u_xlat4 = (vec3<f32>(x_969.x, x_969.y, x_969.z) * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_975 : f32 = u_xlat8.x;
  u_xlat17.x = (-(x_975) + 1.0f);
  let x_981 : f32 = u_xlat17.x;
  let x_983 : f32 = u_xlat17.x;
  u_xlat45 = (x_981 * x_983);
  let x_985 : f32 = u_xlat45;
  u_xlat45 = max(x_985, 0.0078125f);
  let x_989 : f32 = u_xlat45;
  let x_990 : f32 = u_xlat45;
  u_xlat46 = (x_989 * x_990);
  let x_994 : f32 = u_xlat8.x;
  u_xlat47 = (x_994 + 0.040000021f);
  let x_997 : f32 = u_xlat47;
  u_xlat47 = min(x_997, 1.0f);
  let x_999 : f32 = u_xlat45;
  u_xlat6.x = ((x_999 * 4.0f) + 2.0f);
  let x_1008 : vec4<f32> = u_xlat3;
  let x_1011 : f32 = x_160.x_GlobalMipBias.x;
  let x_1012 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1008.x, x_1008.z), x_1011);
  u_xlat3.x = x_1012.x;
  let x_1017 : f32 = u_xlat3.x;
  u_xlat31 = (x_1017 + -1.0f);
  let x_1020 : f32 = x_160.x_AmbientOcclusionParam.w;
  let x_1021 : f32 = u_xlat31;
  u_xlat31 = ((x_1020 * x_1021) + 1.0f);
  let x_1025 : f32 = u_xlat3.x;
  let x_1027 : f32 = vs_INTERP4.w;
  u_xlat3.x = min(x_1025, x_1027);
  let x_1031 : vec3<f32> = vs_INTERP0;
  let x_1033 : vec3<f32> = x_160.x_WorldSpaceCameraPos;
  u_xlat20 = (x_1031 + -(x_1033));
  let x_1036 : vec3<f32> = u_xlat20;
  let x_1037 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_1036, x_1037);
  let x_1041 : f32 = u_xlat20.x;
  let x_1043 : f32 = x_383.x_MainLightShadowParams.z;
  let x_1046 : f32 = x_383.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_1041 * x_1043) + x_1046);
  let x_1050 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_1050, 0.0f, 1.0f);
  let x_1055 : f32 = u_xlat0.x;
  u_xlat34 = (-(x_1055) + 1.0f);
  let x_1059 : f32 = u_xlat20.x;
  let x_1060 : f32 = u_xlat34;
  let x_1063 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1059 * x_1060) + x_1063);
  let x_1073 : f32 = x_1071.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_1073 == -1.0f));
  let x_1077 : bool = u_xlatb20.x;
  if (x_1077) {
    let x_1080 : vec3<f32> = vs_INTERP0;
    let x_1083 : vec4<f32> = x_1071.x_MainLightWorldToLight[1i];
    let x_1085 : vec2<f32> = (vec2<f32>(x_1080.y, x_1080.y) * vec2<f32>(x_1083.x, x_1083.y));
    let x_1086 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1085.x, x_1085.y, x_1086.z);
    let x_1089 : vec4<f32> = x_1071.x_MainLightWorldToLight[0i];
    let x_1091 : vec3<f32> = vs_INTERP0;
    let x_1094 : vec3<f32> = u_xlat20;
    let x_1096 : vec2<f32> = ((vec2<f32>(x_1089.x, x_1089.y) * vec2<f32>(x_1091.x, x_1091.x)) + vec2<f32>(x_1094.x, x_1094.y));
    let x_1097 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1096.x, x_1096.y, x_1097.z);
    let x_1100 : vec4<f32> = x_1071.x_MainLightWorldToLight[2i];
    let x_1102 : vec3<f32> = vs_INTERP0;
    let x_1105 : vec3<f32> = u_xlat20;
    let x_1107 : vec2<f32> = ((vec2<f32>(x_1100.x, x_1100.y) * vec2<f32>(x_1102.z, x_1102.z)) + vec2<f32>(x_1105.x, x_1105.y));
    let x_1108 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1107.x, x_1107.y, x_1108.z);
    let x_1110 : vec3<f32> = u_xlat20;
    let x_1113 : vec4<f32> = x_1071.x_MainLightWorldToLight[3i];
    let x_1115 : vec2<f32> = (vec2<f32>(x_1110.x, x_1110.y) + vec2<f32>(x_1113.x, x_1113.y));
    let x_1116 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1115.x, x_1115.y, x_1116.z);
    let x_1118 : vec3<f32> = u_xlat20;
    let x_1122 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1123 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1122.x, x_1122.y, x_1123.z);
    let x_1130 : vec3<f32> = u_xlat20;
    let x_1133 : f32 = x_160.x_GlobalMipBias.x;
    let x_1134 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1130.x, x_1130.y), x_1133);
    u_xlat7 = x_1134;
    let x_1136 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1138 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1140 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1142 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1143 : vec4<f32> = vec4<f32>(x_1136, x_1138, x_1140, x_1142);
    let x_1150 : vec4<bool> = (vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1143.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1150.x, x_1150.y);
    let x_1153 : bool = u_xlatb20.y;
    if (x_1153) {
      let x_1158 : f32 = u_xlat7.w;
      x_1154 = x_1158;
    } else {
      let x_1161 : f32 = u_xlat7.x;
      x_1154 = x_1161;
    }
    let x_1162 : f32 = x_1154;
    u_xlat34 = x_1162;
    let x_1164 : bool = u_xlatb20.x;
    if (x_1164) {
      let x_1168 : vec4<f32> = u_xlat7;
      x_1165 = vec3<f32>(x_1168.x, x_1168.y, x_1168.z);
    } else {
      let x_1171 : f32 = u_xlat34;
      x_1165 = vec3<f32>(x_1171, x_1171, x_1171);
    }
    let x_1173 : vec3<f32> = x_1165;
    u_xlat20 = x_1173;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1178 : vec3<f32> = u_xlat20;
  let x_1180 : vec4<f32> = x_160.x_MainLightColor;
  u_xlat20 = (x_1178 * vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
  let x_1183 : f32 = u_xlat31;
  let x_1185 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1183, x_1183, x_1183) * x_1185);
  let x_1187 : vec3<f32> = u_xlat5;
  let x_1189 : vec3<f32> = u_xlat14;
  u_xlat7.x = dot(-(x_1187), x_1189);
  let x_1193 : f32 = u_xlat7.x;
  let x_1195 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1193 + x_1195);
  let x_1198 : vec3<f32> = u_xlat14;
  let x_1199 : vec4<f32> = u_xlat7;
  let x_1203 : vec3<f32> = u_xlat5;
  let x_1205 : vec3<f32> = ((x_1198 * -(vec3<f32>(x_1199.x, x_1199.x, x_1199.x))) + -(x_1203));
  let x_1206 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
  let x_1209 : vec3<f32> = u_xlat14;
  let x_1210 : vec3<f32> = u_xlat5;
  u_xlat49 = dot(x_1209, x_1210);
  let x_1212 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1212, 0.0f, 1.0f);
  let x_1214 : f32 = u_xlat49;
  u_xlat49 = (-(x_1214) + 1.0f);
  let x_1217 : f32 = u_xlat49;
  let x_1218 : f32 = u_xlat49;
  u_xlat49 = (x_1217 * x_1218);
  let x_1220 : f32 = u_xlat49;
  let x_1221 : f32 = u_xlat49;
  u_xlat49 = (x_1220 * x_1221);
  let x_1224 : f32 = u_xlat17.x;
  u_xlat8.x = ((-(x_1224) * 0.699999988f) + 1.700000048f);
  let x_1232 : f32 = u_xlat17.x;
  let x_1234 : f32 = u_xlat8.x;
  u_xlat17.x = (x_1232 * x_1234);
  let x_1238 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1238 * 6.0f);
  let x_1250 : vec4<f32> = u_xlat7;
  let x_1253 : f32 = u_xlat17.x;
  let x_1254 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1250.x, x_1250.y, x_1250.z), x_1253);
  u_xlat8 = x_1254;
  let x_1256 : f32 = u_xlat8.w;
  u_xlat17.x = (x_1256 + -1.0f);
  let x_1260 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_1262 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_1260 * x_1262) + 1.0f);
  let x_1267 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_1267, 0.0f);
  let x_1271 : f32 = u_xlat17.x;
  u_xlat17.x = log2(x_1271);
  let x_1275 : f32 = u_xlat17.x;
  let x_1277 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat17.x = (x_1275 * x_1277);
  let x_1281 : f32 = u_xlat17.x;
  u_xlat17.x = exp2(x_1281);
  let x_1285 : f32 = u_xlat17.x;
  let x_1287 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat17.x = (x_1285 * x_1287);
  let x_1290 : vec4<f32> = u_xlat8;
  let x_1292 : vec3<f32> = u_xlat17;
  let x_1294 : vec3<f32> = (vec3<f32>(x_1290.x, x_1290.y, x_1290.z) * vec3<f32>(x_1292.x, x_1292.x, x_1292.x));
  let x_1295 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1295.w);
  let x_1297 : f32 = u_xlat45;
  let x_1299 : f32 = u_xlat45;
  let x_1303 : vec2<f32> = ((vec2<f32>(x_1297, x_1297) * vec2<f32>(x_1299, x_1299)) + vec2<f32>(-1.0f, 1.0f));
  let x_1304 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_1303.x, x_1304.y, x_1303.y);
  let x_1307 : f32 = u_xlat17.z;
  u_xlat45 = (1.0f / x_1307);
  let x_1309 : f32 = u_xlat47;
  u_xlat47 = (x_1309 + -0.039999999f);
  let x_1312 : f32 = u_xlat49;
  let x_1313 : f32 = u_xlat47;
  u_xlat47 = ((x_1312 * x_1313) + 0.039999999f);
  let x_1317 : f32 = u_xlat45;
  let x_1318 : f32 = u_xlat47;
  u_xlat45 = (x_1317 * x_1318);
  let x_1320 : f32 = u_xlat45;
  let x_1322 : vec4<f32> = u_xlat7;
  let x_1324 : vec3<f32> = (vec3<f32>(x_1320, x_1320, x_1320) * vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
  let x_1325 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
  let x_1327 : vec3<f32> = u_xlat16;
  let x_1328 : vec3<f32> = u_xlat4;
  let x_1330 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_1327 * x_1328) + vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
  let x_1334 : f32 = u_xlat0.x;
  let x_1336 : f32 = x_95.unity_LightData.z;
  u_xlat0.x = (x_1334 * x_1336);
  let x_1339 : vec3<f32> = u_xlat14;
  let x_1341 : vec4<f32> = x_160.x_MainLightPosition;
  u_xlat45 = dot(x_1339, vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
  let x_1344 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1344, 0.0f, 1.0f);
  let x_1347 : f32 = u_xlat0.x;
  let x_1348 : f32 = u_xlat45;
  u_xlat0.x = (x_1347 * x_1348);
  let x_1351 : vec3<f32> = u_xlat0;
  let x_1353 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1351.x, x_1351.x, x_1351.x) * x_1353);
  let x_1355 : vec3<f32> = u_xlat5;
  let x_1357 : vec4<f32> = x_160.x_MainLightPosition;
  let x_1359 : vec3<f32> = (x_1355 + vec3<f32>(x_1357.x, x_1357.y, x_1357.z));
  let x_1360 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1359.x, x_1359.y, x_1359.z, x_1360.w);
  let x_1362 : vec4<f32> = u_xlat7;
  let x_1364 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1362.x, x_1362.y, x_1362.z), vec3<f32>(x_1364.x, x_1364.y, x_1364.z));
  let x_1369 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1369, 1.17549435e-37f);
  let x_1373 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1373);
  let x_1376 : vec3<f32> = u_xlat0;
  let x_1378 : vec4<f32> = u_xlat7;
  let x_1380 : vec3<f32> = (vec3<f32>(x_1376.x, x_1376.x, x_1376.x) * vec3<f32>(x_1378.x, x_1378.y, x_1378.z));
  let x_1381 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
  let x_1383 : vec3<f32> = u_xlat14;
  let x_1384 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1383, vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
  let x_1389 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1389, 0.0f, 1.0f);
  let x_1393 : vec4<f32> = x_160.x_MainLightPosition;
  let x_1395 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1393.x, x_1393.y, x_1393.z), vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
  let x_1398 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1398, 0.0f, 1.0f);
  let x_1401 : f32 = u_xlat0.x;
  let x_1403 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1401 * x_1403);
  let x_1407 : f32 = u_xlat0.x;
  let x_1409 : f32 = u_xlat17.x;
  u_xlat0.x = ((x_1407 * x_1409) + 1.000010014f);
  let x_1414 : f32 = u_xlat45;
  let x_1415 : f32 = u_xlat45;
  u_xlat45 = (x_1414 * x_1415);
  let x_1418 : f32 = u_xlat0.x;
  let x_1420 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1418 * x_1420);
  let x_1423 : f32 = u_xlat45;
  u_xlat45 = max(x_1423, 0.100000001f);
  let x_1427 : f32 = u_xlat0.x;
  let x_1428 : f32 = u_xlat45;
  u_xlat0.x = (x_1427 * x_1428);
  let x_1432 : f32 = u_xlat6.x;
  let x_1434 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1432 * x_1434);
  let x_1437 : f32 = u_xlat46;
  let x_1439 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1437 / x_1439);
  let x_1442 : vec3<f32> = u_xlat0;
  let x_1446 : vec3<f32> = u_xlat4;
  let x_1447 : vec3<f32> = ((vec3<f32>(x_1442.x, x_1442.x, x_1442.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1446);
  let x_1448 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1447.x, x_1447.y, x_1447.z, x_1448.w);
  let x_1450 : vec3<f32> = u_xlat20;
  let x_1451 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1450 * vec3<f32>(x_1451.x, x_1451.y, x_1451.z));
  let x_1456 : f32 = x_160.x_AdditionalLightsCount.x;
  let x_1458 : f32 = x_95.unity_LightData.y;
  u_xlat0.x = min(x_1456, x_1458);
  let x_1462 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1462));
  let x_1467 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1469 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1471 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1473 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1474 : vec4<f32> = vec4<f32>(x_1467, x_1469, x_1471, x_1473);
  let x_1480 : vec4<bool> = (vec4<f32>(x_1474.x, x_1474.y, x_1474.z, x_1474.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1480.x, x_1480.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1491 : u32 = u_xlatu_loop_1;
    let x_1492 : u32 = u_xlatu0;
    if ((x_1491 < x_1492)) {
    } else {
      break;
    }
    let x_1495 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1495 >> 2u);
    let x_1498 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1498 & 3u));
    let x_1501 : u32 = u_xlatu47;
    let x_1504 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1501)];
    let x_1514 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1519 : vec4<u32> = indexable[x_1514];
    u_xlat47 = dot(x_1504, bitcast<vec4<f32>>(x_1519));
    let x_1522 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1522));
    let x_1525 : vec3<f32> = vs_INTERP0;
    let x_1537 : u32 = u_xlatu47;
    let x_1540 : vec4<f32> = x_1536.x_AdditionalLightsPosition[bitcast<i32>(x_1537)];
    let x_1543 : u32 = u_xlatu47;
    let x_1546 : vec4<f32> = x_1536.x_AdditionalLightsPosition[bitcast<i32>(x_1543)];
    let x_1548 : vec3<f32> = ((-(x_1525) * vec3<f32>(x_1540.w, x_1540.w, x_1540.w)) + vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
    let x_1549 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1548.x, x_1548.y, x_1548.z, x_1549.w);
    let x_1552 : vec4<f32> = u_xlat9;
    let x_1554 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1552.x, x_1552.y, x_1552.z), vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
    let x_1557 : f32 = u_xlat35;
    u_xlat35 = max(x_1557, 6.10351562e-05f);
    let x_1560 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1560);
    let x_1562 : f32 = u_xlat49;
    let x_1564 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1562, x_1562, x_1562) * vec3<f32>(x_1564.x, x_1564.y, x_1564.z));
    let x_1568 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1568);
    let x_1570 : f32 = u_xlat35;
    let x_1571 : u32 = u_xlatu47;
    let x_1574 : f32 = x_1536.x_AdditionalLightsAttenuation[bitcast<i32>(x_1571)].x;
    u_xlat35 = (x_1570 * x_1574);
    let x_1576 : f32 = u_xlat35;
    let x_1578 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1576) * x_1578) + 1.0f);
    let x_1581 : f32 = u_xlat35;
    u_xlat35 = max(x_1581, 0.0f);
    let x_1583 : f32 = u_xlat35;
    let x_1584 : f32 = u_xlat35;
    u_xlat35 = (x_1583 * x_1584);
    let x_1586 : f32 = u_xlat35;
    let x_1587 : f32 = u_xlat50;
    u_xlat35 = (x_1586 * x_1587);
    let x_1589 : u32 = u_xlatu47;
    let x_1592 : vec4<f32> = x_1536.x_AdditionalLightsSpotDir[bitcast<i32>(x_1589)];
    let x_1594 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1592.x, x_1592.y, x_1592.z), x_1594);
    let x_1596 : f32 = u_xlat50;
    let x_1597 : u32 = u_xlatu47;
    let x_1600 : f32 = x_1536.x_AdditionalLightsAttenuation[bitcast<i32>(x_1597)].z;
    let x_1602 : u32 = u_xlatu47;
    let x_1605 : f32 = x_1536.x_AdditionalLightsAttenuation[bitcast<i32>(x_1602)].w;
    u_xlat50 = ((x_1596 * x_1600) + x_1605);
    let x_1607 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1607, 0.0f, 1.0f);
    let x_1609 : f32 = u_xlat50;
    let x_1610 : f32 = u_xlat50;
    u_xlat50 = (x_1609 * x_1610);
    let x_1612 : f32 = u_xlat35;
    let x_1613 : f32 = u_xlat50;
    u_xlat35 = (x_1612 * x_1613);
    let x_1616 : u32 = u_xlatu47;
    u_xlatu50 = (x_1616 >> 5u);
    let x_1619 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1619) & 31i)));
    let x_1625 : i32 = u_xlati51;
    let x_1627 : u32 = u_xlatu50;
    let x_1630 : f32 = x_1071.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1627)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1625) & bitcast<u32>(x_1630)));
    let x_1634 : i32 = u_xlati50;
    if ((x_1634 != 0i)) {
      let x_1644 : u32 = u_xlatu47;
      let x_1647 : f32 = x_1643.x_AdditionalLightsLightTypes[bitcast<i32>(x_1644)].el;
      u_xlati50 = i32(x_1647);
      let x_1649 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1649 != 0i));
      let x_1653 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1653) << bitcast<u32>(2i));
      let x_1656 : i32 = u_xlati51;
      if ((x_1656 != 0i)) {
        let x_1661 : vec3<f32> = vs_INTERP0;
        let x_1663 : i32 = u_xlati52;
        let x_1666 : i32 = u_xlati52;
        let x_1670 : vec4<f32> = x_1643.x_AdditionalLightsWorldToLights[((x_1663 + 1i) / 4i)][((x_1666 + 1i) % 4i)];
        let x_1672 : vec3<f32> = (vec3<f32>(x_1661.y, x_1661.y, x_1661.y) * vec3<f32>(x_1670.x, x_1670.y, x_1670.w));
        let x_1673 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1672.x, x_1672.y, x_1672.z, x_1673.w);
        let x_1675 : i32 = u_xlati52;
        let x_1677 : i32 = u_xlati52;
        let x_1680 : vec4<f32> = x_1643.x_AdditionalLightsWorldToLights[(x_1675 / 4i)][(x_1677 % 4i)];
        let x_1682 : vec3<f32> = vs_INTERP0;
        let x_1685 : vec4<f32> = u_xlat11;
        let x_1687 : vec3<f32> = ((vec3<f32>(x_1680.x, x_1680.y, x_1680.w) * vec3<f32>(x_1682.x, x_1682.x, x_1682.x)) + vec3<f32>(x_1685.x, x_1685.y, x_1685.z));
        let x_1688 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1687.x, x_1687.y, x_1687.z, x_1688.w);
        let x_1690 : i32 = u_xlati52;
        let x_1693 : i32 = u_xlati52;
        let x_1697 : vec4<f32> = x_1643.x_AdditionalLightsWorldToLights[((x_1690 + 2i) / 4i)][((x_1693 + 2i) % 4i)];
        let x_1699 : vec3<f32> = vs_INTERP0;
        let x_1702 : vec4<f32> = u_xlat11;
        let x_1704 : vec3<f32> = ((vec3<f32>(x_1697.x, x_1697.y, x_1697.w) * vec3<f32>(x_1699.z, x_1699.z, x_1699.z)) + vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
        let x_1705 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1704.x, x_1704.y, x_1704.z, x_1705.w);
        let x_1707 : vec4<f32> = u_xlat11;
        let x_1709 : i32 = u_xlati52;
        let x_1712 : i32 = u_xlati52;
        let x_1716 : vec4<f32> = x_1643.x_AdditionalLightsWorldToLights[((x_1709 + 3i) / 4i)][((x_1712 + 3i) % 4i)];
        let x_1718 : vec3<f32> = (vec3<f32>(x_1707.x, x_1707.y, x_1707.z) + vec3<f32>(x_1716.x, x_1716.y, x_1716.w));
        let x_1719 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1718.x, x_1718.y, x_1718.z, x_1719.w);
        let x_1721 : vec4<f32> = u_xlat11;
        let x_1723 : vec4<f32> = u_xlat11;
        let x_1725 : vec2<f32> = (vec2<f32>(x_1721.x, x_1721.y) / vec2<f32>(x_1723.z, x_1723.z));
        let x_1726 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1725.x, x_1725.y, x_1726.z, x_1726.w);
        let x_1728 : vec4<f32> = u_xlat11;
        let x_1731 : vec2<f32> = ((vec2<f32>(x_1728.x, x_1728.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1732 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1731.x, x_1731.y, x_1732.z, x_1732.w);
        let x_1734 : vec4<f32> = u_xlat11;
        let x_1738 : vec2<f32> = clamp(vec2<f32>(x_1734.x, x_1734.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1739 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1738.x, x_1738.y, x_1739.z, x_1739.w);
        let x_1741 : u32 = u_xlatu47;
        let x_1744 : vec4<f32> = x_1643.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1741)];
        let x_1746 : vec4<f32> = u_xlat11;
        let x_1749 : u32 = u_xlatu47;
        let x_1752 : vec4<f32> = x_1643.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1749)];
        let x_1754 : vec2<f32> = ((vec2<f32>(x_1744.x, x_1744.y) * vec2<f32>(x_1746.x, x_1746.y)) + vec2<f32>(x_1752.z, x_1752.w));
        let x_1755 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1754.x, x_1754.y, x_1755.z, x_1755.w);
      } else {
        let x_1759 : i32 = u_xlati50;
        u_xlatb50 = (x_1759 == 1i);
        let x_1761 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1761);
        let x_1763 : i32 = u_xlati50;
        if ((x_1763 != 0i)) {
          let x_1769 : vec3<f32> = vs_INTERP0;
          let x_1771 : i32 = u_xlati52;
          let x_1774 : i32 = u_xlati52;
          let x_1778 : vec4<f32> = x_1643.x_AdditionalLightsWorldToLights[((x_1771 + 1i) / 4i)][((x_1774 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1769.y, x_1769.y) * vec2<f32>(x_1778.x, x_1778.y));
          let x_1781 : i32 = u_xlati52;
          let x_1783 : i32 = u_xlati52;
          let x_1786 : vec4<f32> = x_1643.x_AdditionalLightsWorldToLights[(x_1781 / 4i)][(x_1783 % 4i)];
          let x_1788 : vec3<f32> = vs_INTERP0;
          let x_1791 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1786.x, x_1786.y) * vec2<f32>(x_1788.x, x_1788.x)) + x_1791);
          let x_1793 : i32 = u_xlati52;
          let x_1796 : i32 = u_xlati52;
          let x_1800 : vec4<f32> = x_1643.x_AdditionalLightsWorldToLights[((x_1793 + 2i) / 4i)][((x_1796 + 2i) % 4i)];
          let x_1802 : vec3<f32> = vs_INTERP0;
          let x_1805 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1800.x, x_1800.y) * vec2<f32>(x_1802.z, x_1802.z)) + x_1805);
          let x_1807 : vec2<f32> = u_xlat39;
          let x_1808 : i32 = u_xlati52;
          let x_1811 : i32 = u_xlati52;
          let x_1815 : vec4<f32> = x_1643.x_AdditionalLightsWorldToLights[((x_1808 + 3i) / 4i)][((x_1811 + 3i) % 4i)];
          u_xlat39 = (x_1807 + vec2<f32>(x_1815.x, x_1815.y));
          let x_1818 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1818 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1821 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1821);
          let x_1823 : u32 = u_xlatu47;
          let x_1826 : vec4<f32> = x_1643.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1823)];
          let x_1828 : vec2<f32> = u_xlat39;
          let x_1830 : u32 = u_xlatu47;
          let x_1833 : vec4<f32> = x_1643.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1830)];
          let x_1835 : vec2<f32> = ((vec2<f32>(x_1826.x, x_1826.y) * x_1828) + vec2<f32>(x_1833.z, x_1833.w));
          let x_1836 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1835.x, x_1835.y, x_1836.z, x_1836.w);
        } else {
          let x_1840 : vec3<f32> = vs_INTERP0;
          let x_1842 : i32 = u_xlati52;
          let x_1845 : i32 = u_xlati52;
          let x_1849 : vec4<f32> = x_1643.x_AdditionalLightsWorldToLights[((x_1842 + 1i) / 4i)][((x_1845 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1840.y, x_1840.y, x_1840.y, x_1840.y) * x_1849);
          let x_1851 : i32 = u_xlati52;
          let x_1853 : i32 = u_xlati52;
          let x_1856 : vec4<f32> = x_1643.x_AdditionalLightsWorldToLights[(x_1851 / 4i)][(x_1853 % 4i)];
          let x_1857 : vec3<f32> = vs_INTERP0;
          let x_1860 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1856 * vec4<f32>(x_1857.x, x_1857.x, x_1857.x, x_1857.x)) + x_1860);
          let x_1862 : i32 = u_xlati52;
          let x_1865 : i32 = u_xlati52;
          let x_1869 : vec4<f32> = x_1643.x_AdditionalLightsWorldToLights[((x_1862 + 2i) / 4i)][((x_1865 + 2i) % 4i)];
          let x_1870 : vec3<f32> = vs_INTERP0;
          let x_1873 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1869 * vec4<f32>(x_1870.z, x_1870.z, x_1870.z, x_1870.z)) + x_1873);
          let x_1875 : vec4<f32> = u_xlat12;
          let x_1876 : i32 = u_xlati52;
          let x_1879 : i32 = u_xlati52;
          let x_1883 : vec4<f32> = x_1643.x_AdditionalLightsWorldToLights[((x_1876 + 3i) / 4i)][((x_1879 + 3i) % 4i)];
          u_xlat12 = (x_1875 + x_1883);
          let x_1885 : vec4<f32> = u_xlat12;
          let x_1887 : vec4<f32> = u_xlat12;
          let x_1889 : vec3<f32> = (vec3<f32>(x_1885.x, x_1885.y, x_1885.z) / vec3<f32>(x_1887.w, x_1887.w, x_1887.w));
          let x_1890 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1890.w);
          let x_1892 : vec4<f32> = u_xlat12;
          let x_1894 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1892.x, x_1892.y, x_1892.z), vec3<f32>(x_1894.x, x_1894.y, x_1894.z));
          let x_1897 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1897);
          let x_1899 : f32 = u_xlat50;
          let x_1901 : vec4<f32> = u_xlat12;
          let x_1903 : vec3<f32> = (vec3<f32>(x_1899, x_1899, x_1899) * vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
          let x_1904 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
          let x_1906 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1906.x, x_1906.y, x_1906.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1911 : f32 = u_xlat50;
          u_xlat50 = max(x_1911, 0.000001f);
          let x_1914 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1914);
          let x_1917 : f32 = u_xlat50;
          let x_1919 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1917, x_1917, x_1917) * vec3<f32>(x_1919.z, x_1919.x, x_1919.y));
          let x_1923 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1923);
          let x_1927 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1927, 0.0f, 1.0f);
          let x_1931 : vec3<f32> = u_xlat13;
          let x_1934 : vec4<bool> = (vec4<f32>(x_1931.y, x_1931.z, x_1931.y, x_1931.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1934.x, x_1934.y);
          let x_1937 : bool = u_xlatb39.x;
          if (x_1937) {
            let x_1942 : f32 = u_xlat13.x;
            x_1938 = x_1942;
          } else {
            let x_1945 : f32 = u_xlat13.x;
            x_1938 = -(x_1945);
          }
          let x_1947 : f32 = x_1938;
          u_xlat39.x = x_1947;
          let x_1950 : bool = u_xlatb39.y;
          if (x_1950) {
            let x_1955 : f32 = u_xlat13.x;
            x_1951 = x_1955;
          } else {
            let x_1958 : f32 = u_xlat13.x;
            x_1951 = -(x_1958);
          }
          let x_1960 : f32 = x_1951;
          u_xlat39.y = x_1960;
          let x_1962 : vec4<f32> = u_xlat12;
          let x_1964 : f32 = u_xlat50;
          let x_1967 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1962.x, x_1962.y) * vec2<f32>(x_1964, x_1964)) + x_1967);
          let x_1969 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1969 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1972 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1972, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1976 : u32 = u_xlatu47;
          let x_1979 : vec4<f32> = x_1643.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1976)];
          let x_1981 : vec2<f32> = u_xlat39;
          let x_1983 : u32 = u_xlatu47;
          let x_1986 : vec4<f32> = x_1643.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1983)];
          let x_1988 : vec2<f32> = ((vec2<f32>(x_1979.x, x_1979.y) * x_1981) + vec2<f32>(x_1986.z, x_1986.w));
          let x_1989 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1988.x, x_1988.y, x_1989.z, x_1989.w);
        }
      }
      let x_1996 : vec4<f32> = u_xlat11;
      let x_1999 : f32 = x_160.x_GlobalMipBias.x;
      let x_2000 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1996.x, x_1996.y), x_1999);
      u_xlat11 = x_2000;
      let x_2002 : bool = u_xlatb7.y;
      if (x_2002) {
        let x_2007 : f32 = u_xlat11.w;
        x_2003 = x_2007;
      } else {
        let x_2010 : f32 = u_xlat11.x;
        x_2003 = x_2010;
      }
      let x_2011 : f32 = x_2003;
      u_xlat50 = x_2011;
      let x_2013 : bool = u_xlatb7.x;
      if (x_2013) {
        let x_2017 : vec4<f32> = u_xlat11;
        x_2014 = vec3<f32>(x_2017.x, x_2017.y, x_2017.z);
      } else {
        let x_2020 : f32 = u_xlat50;
        x_2014 = vec3<f32>(x_2020, x_2020, x_2020);
      }
      let x_2022 : vec3<f32> = x_2014;
      let x_2023 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2022.x, x_2022.y, x_2022.z, x_2023.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2029 : vec4<f32> = u_xlat11;
    let x_2031 : u32 = u_xlatu47;
    let x_2034 : vec4<f32> = x_1536.x_AdditionalLightsColor[bitcast<i32>(x_2031)];
    let x_2036 : vec3<f32> = (vec3<f32>(x_2029.x, x_2029.y, x_2029.z) * vec3<f32>(x_2034.x, x_2034.y, x_2034.z));
    let x_2037 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2036.x, x_2036.y, x_2036.z, x_2037.w);
    let x_2039 : f32 = u_xlat31;
    let x_2041 : vec4<f32> = u_xlat11;
    let x_2043 : vec3<f32> = (vec3<f32>(x_2039, x_2039, x_2039) * vec3<f32>(x_2041.x, x_2041.y, x_2041.z));
    let x_2044 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2043.x, x_2043.y, x_2043.z, x_2044.w);
    let x_2046 : vec3<f32> = u_xlat14;
    let x_2047 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(x_2046, x_2047);
    let x_2049 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2049, 0.0f, 1.0f);
    let x_2051 : f32 = u_xlat47;
    let x_2052 : f32 = u_xlat35;
    u_xlat47 = (x_2051 * x_2052);
    let x_2054 : f32 = u_xlat47;
    let x_2056 : vec4<f32> = u_xlat11;
    let x_2058 : vec3<f32> = (vec3<f32>(x_2054, x_2054, x_2054) * vec3<f32>(x_2056.x, x_2056.y, x_2056.z));
    let x_2059 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2058.x, x_2058.y, x_2058.z, x_2059.w);
    let x_2061 : vec4<f32> = u_xlat9;
    let x_2063 : f32 = u_xlat49;
    let x_2066 : vec3<f32> = u_xlat5;
    let x_2067 : vec3<f32> = ((vec3<f32>(x_2061.x, x_2061.y, x_2061.z) * vec3<f32>(x_2063, x_2063, x_2063)) + x_2066);
    let x_2068 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2067.x, x_2067.y, x_2067.z, x_2068.w);
    let x_2070 : vec4<f32> = u_xlat9;
    let x_2072 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2070.x, x_2070.y, x_2070.z), vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
    let x_2075 : f32 = u_xlat47;
    u_xlat47 = max(x_2075, 1.17549435e-37f);
    let x_2077 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2077);
    let x_2079 : f32 = u_xlat47;
    let x_2081 : vec4<f32> = u_xlat9;
    let x_2083 : vec3<f32> = (vec3<f32>(x_2079, x_2079, x_2079) * vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
    let x_2084 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2083.x, x_2083.y, x_2083.z, x_2084.w);
    let x_2086 : vec3<f32> = u_xlat14;
    let x_2087 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(x_2086, vec3<f32>(x_2087.x, x_2087.y, x_2087.z));
    let x_2090 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2090, 0.0f, 1.0f);
    let x_2092 : vec3<f32> = u_xlat10;
    let x_2093 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(x_2092, vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
    let x_2096 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2096, 0.0f, 1.0f);
    let x_2098 : f32 = u_xlat47;
    let x_2099 : f32 = u_xlat47;
    u_xlat47 = (x_2098 * x_2099);
    let x_2101 : f32 = u_xlat47;
    let x_2103 : f32 = u_xlat17.x;
    u_xlat47 = ((x_2101 * x_2103) + 1.000010014f);
    let x_2106 : f32 = u_xlat35;
    let x_2107 : f32 = u_xlat35;
    u_xlat35 = (x_2106 * x_2107);
    let x_2109 : f32 = u_xlat47;
    let x_2110 : f32 = u_xlat47;
    u_xlat47 = (x_2109 * x_2110);
    let x_2112 : f32 = u_xlat35;
    u_xlat35 = max(x_2112, 0.100000001f);
    let x_2114 : f32 = u_xlat47;
    let x_2115 : f32 = u_xlat35;
    u_xlat47 = (x_2114 * x_2115);
    let x_2118 : f32 = u_xlat6.x;
    let x_2119 : f32 = u_xlat47;
    u_xlat47 = (x_2118 * x_2119);
    let x_2121 : f32 = u_xlat46;
    let x_2122 : f32 = u_xlat47;
    u_xlat47 = (x_2121 / x_2122);
    let x_2124 : f32 = u_xlat47;
    let x_2127 : vec3<f32> = u_xlat4;
    let x_2128 : vec3<f32> = ((vec3<f32>(x_2124, x_2124, x_2124) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_2127);
    let x_2129 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2128.x, x_2128.y, x_2128.z, x_2129.w);
    let x_2131 : vec4<f32> = u_xlat9;
    let x_2133 : vec4<f32> = u_xlat11;
    let x_2136 : vec4<f32> = u_xlat8;
    let x_2138 : vec3<f32> = ((vec3<f32>(x_2131.x, x_2131.y, x_2131.z) * vec3<f32>(x_2133.x, x_2133.y, x_2133.z)) + vec3<f32>(x_2136.x, x_2136.y, x_2136.z));
    let x_2139 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2138.x, x_2138.y, x_2138.z, x_2139.w);

    continuing {
      let x_2141 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2141 + bitcast<u32>(1i));
    }
  }
  let x_2143 : vec3<f32> = u_xlat16;
  let x_2144 : vec4<f32> = u_xlat3;
  let x_2147 : vec3<f32> = u_xlat20;
  u_xlat0 = ((x_2143 * vec3<f32>(x_2144.x, x_2144.x, x_2144.x)) + x_2147);
  let x_2149 : vec4<f32> = u_xlat8;
  let x_2151 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2149.x, x_2149.y, x_2149.z) + x_2151);
  let x_2155 : vec4<f32> = vs_INTERP4;
  let x_2157 : vec3<f32> = u_xlat1;
  let x_2159 : vec3<f32> = u_xlat0;
  let x_2160 : vec3<f32> = ((vec3<f32>(x_2155.w, x_2155.w, x_2155.w) * x_2157) + x_2159);
  let x_2161 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2160.x, x_2160.y, x_2160.z, x_2161.w);
  let x_2164 : bool = u_xlatb2.x;
  let x_2165 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2165, x_2164);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  main_1();
  return main_out(SV_Target0);
}

