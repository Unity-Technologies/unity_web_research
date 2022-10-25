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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_279 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_383 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_1130 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1581 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1687 : AdditionalLightsCookies;

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
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat32 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlatb20 : vec2<bool>;
  var x_1213 : f32;
  var x_1224 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu18 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat35 : f32;
  var u_xlatu49 : u32;
  var u_xlati51 : i32;
  var u_xlati49 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb49 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1982 : f32;
  var x_1995 : f32;
  var x_2047 : f32;
  var x_2058 : vec3<f32>;
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
  let x_913 : vec3<f32> = (x_910 * vec3<f32>(x_911.x, x_911.x, x_911.x));
  let x_914 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  u_xlat3.w = 1.0f;
  let x_919 : vec4<f32> = x_95.unity_SHAr;
  let x_920 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_919, x_920);
  let x_925 : vec4<f32> = x_95.unity_SHAg;
  let x_926 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_925, x_926);
  let x_931 : vec4<f32> = x_95.unity_SHAb;
  let x_932 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_931, x_932);
  let x_935 : vec4<f32> = u_xlat3;
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_935.y, x_935.z, x_935.z, x_935.x) * vec4<f32>(x_937.x, x_937.y, x_937.z, x_937.z));
  let x_942 : vec4<f32> = x_95.unity_SHBr;
  let x_943 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_942, x_943);
  let x_948 : vec4<f32> = x_95.unity_SHBg;
  let x_949 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_948, x_949);
  let x_953 : vec4<f32> = x_95.unity_SHBb;
  let x_954 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_953, x_954);
  let x_958 : f32 = u_xlat3.y;
  let x_960 : f32 = u_xlat3.y;
  u_xlat14.x = (x_958 * x_960);
  let x_964 : f32 = u_xlat3.x;
  let x_966 : f32 = u_xlat3.x;
  let x_969 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_964 * x_966) + -(x_969));
  let x_975 : vec4<f32> = x_95.unity_SHC;
  let x_977 : vec3<f32> = u_xlat14;
  let x_980 : vec4<f32> = u_xlat9;
  u_xlat14 = ((vec3<f32>(x_975.x, x_975.y, x_975.z) * vec3<f32>(x_977.x, x_977.x, x_977.x)) + vec3<f32>(x_980.x, x_980.y, x_980.z));
  let x_983 : vec3<f32> = u_xlat14;
  let x_984 : vec3<f32> = u_xlat4;
  u_xlat14 = (x_983 + x_984);
  let x_986 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_986, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_990 : vec4<f32> = x_160.x_ScaledScreenParams;
  let x_991 : vec2<f32> = vec2<f32>(x_990.x, x_990.y);
  let x_995 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_991.x, x_991.y));
  let x_996 : vec3<f32> = u_xlat16;
  u_xlat16 = vec3<f32>(x_995.x, x_995.y, x_996.z);
  let x_998 : vec3<f32> = u_xlat16;
  let x_1000 : vec4<f32> = hlslcc_FragCoord;
  let x_1002 : vec2<f32> = (vec2<f32>(x_998.x, x_998.y) * vec2<f32>(x_1000.x, x_1000.y));
  let x_1003 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_1002.x, x_1002.y, x_1003.z);
  let x_1006 : f32 = u_xlat4.y;
  let x_1009 : f32 = x_160.x_ScaleBiasRt.x;
  let x_1012 : f32 = x_160.x_ScaleBiasRt.y;
  u_xlat16.x = ((x_1006 * x_1009) + x_1012);
  let x_1016 : f32 = u_xlat16.x;
  u_xlat4.z = (-(x_1016) + 1.0f);
  let x_1021 : f32 = u_xlat8.x;
  u_xlat8.x = x_1021;
  let x_1024 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_1024, 0.0f, 1.0f);
  let x_1027 : f32 = u_xlat43;
  u_xlat43 = x_1027;
  let x_1028 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1028, 0.0f, 1.0f);
  let x_1030 : vec4<f32> = u_xlat7;
  u_xlat16 = (vec3<f32>(x_1030.x, x_1030.y, x_1030.z) * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_1037 : f32 = u_xlat8.x;
  u_xlat45 = (-(x_1037) + 1.0f);
  let x_1041 : f32 = u_xlat45;
  let x_1042 : f32 = u_xlat45;
  u_xlat18 = (x_1041 * x_1042);
  let x_1044 : f32 = u_xlat18;
  u_xlat18 = max(x_1044, 0.0078125f);
  let x_1048 : f32 = u_xlat18;
  let x_1049 : f32 = u_xlat18;
  u_xlat46 = (x_1048 * x_1049);
  let x_1053 : f32 = u_xlat8.x;
  u_xlat47 = (x_1053 + 0.040000021f);
  let x_1056 : f32 = u_xlat47;
  u_xlat47 = min(x_1056, 1.0f);
  let x_1058 : f32 = u_xlat18;
  u_xlat6.x = ((x_1058 * 4.0f) + 2.0f);
  let x_1067 : vec3<f32> = u_xlat4;
  let x_1070 : f32 = x_160.x_GlobalMipBias.x;
  let x_1071 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1067.x, x_1067.z), x_1070);
  u_xlat4.x = x_1071.x;
  let x_1076 : f32 = u_xlat4.x;
  u_xlat32 = (x_1076 + -1.0f);
  let x_1079 : f32 = x_160.x_AmbientOcclusionParam.w;
  let x_1080 : f32 = u_xlat32;
  u_xlat32 = ((x_1079 * x_1080) + 1.0f);
  let x_1084 : f32 = u_xlat4.x;
  let x_1086 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_1084, x_1086);
  let x_1090 : vec3<f32> = vs_INTERP0;
  let x_1092 : vec3<f32> = x_160.x_WorldSpaceCameraPos;
  u_xlat20 = (x_1090 + -(x_1092));
  let x_1095 : vec3<f32> = u_xlat20;
  let x_1096 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_1095, x_1096);
  let x_1100 : f32 = u_xlat20.x;
  let x_1102 : f32 = x_383.x_MainLightShadowParams.z;
  let x_1105 : f32 = x_383.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_1100 * x_1102) + x_1105);
  let x_1109 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_1109, 0.0f, 1.0f);
  let x_1114 : f32 = u_xlat0.x;
  u_xlat34 = (-(x_1114) + 1.0f);
  let x_1118 : f32 = u_xlat20.x;
  let x_1119 : f32 = u_xlat34;
  let x_1122 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1118 * x_1119) + x_1122);
  let x_1132 : f32 = x_1130.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_1132 == -1.0f));
  let x_1136 : bool = u_xlatb20.x;
  if (x_1136) {
    let x_1139 : vec3<f32> = vs_INTERP0;
    let x_1142 : vec4<f32> = x_1130.x_MainLightWorldToLight[1i];
    let x_1144 : vec2<f32> = (vec2<f32>(x_1139.y, x_1139.y) * vec2<f32>(x_1142.x, x_1142.y));
    let x_1145 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1144.x, x_1144.y, x_1145.z);
    let x_1148 : vec4<f32> = x_1130.x_MainLightWorldToLight[0i];
    let x_1150 : vec3<f32> = vs_INTERP0;
    let x_1153 : vec3<f32> = u_xlat20;
    let x_1155 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(x_1150.x, x_1150.x)) + vec2<f32>(x_1153.x, x_1153.y));
    let x_1156 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1155.x, x_1155.y, x_1156.z);
    let x_1159 : vec4<f32> = x_1130.x_MainLightWorldToLight[2i];
    let x_1161 : vec3<f32> = vs_INTERP0;
    let x_1164 : vec3<f32> = u_xlat20;
    let x_1166 : vec2<f32> = ((vec2<f32>(x_1159.x, x_1159.y) * vec2<f32>(x_1161.z, x_1161.z)) + vec2<f32>(x_1164.x, x_1164.y));
    let x_1167 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1166.x, x_1166.y, x_1167.z);
    let x_1169 : vec3<f32> = u_xlat20;
    let x_1172 : vec4<f32> = x_1130.x_MainLightWorldToLight[3i];
    let x_1174 : vec2<f32> = (vec2<f32>(x_1169.x, x_1169.y) + vec2<f32>(x_1172.x, x_1172.y));
    let x_1175 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1174.x, x_1174.y, x_1175.z);
    let x_1177 : vec3<f32> = u_xlat20;
    let x_1181 : vec2<f32> = ((vec2<f32>(x_1177.x, x_1177.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1182 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1181.x, x_1181.y, x_1182.z);
    let x_1189 : vec3<f32> = u_xlat20;
    let x_1192 : f32 = x_160.x_GlobalMipBias.x;
    let x_1193 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1189.x, x_1189.y), x_1192);
    u_xlat7 = x_1193;
    let x_1195 : f32 = x_1130.x_MainLightCookieTextureFormat;
    let x_1197 : f32 = x_1130.x_MainLightCookieTextureFormat;
    let x_1199 : f32 = x_1130.x_MainLightCookieTextureFormat;
    let x_1201 : f32 = x_1130.x_MainLightCookieTextureFormat;
    let x_1202 : vec4<f32> = vec4<f32>(x_1195, x_1197, x_1199, x_1201);
    let x_1209 : vec4<bool> = (vec4<f32>(x_1202.x, x_1202.y, x_1202.z, x_1202.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1209.x, x_1209.y);
    let x_1212 : bool = u_xlatb20.y;
    if (x_1212) {
      let x_1217 : f32 = u_xlat7.w;
      x_1213 = x_1217;
    } else {
      let x_1220 : f32 = u_xlat7.x;
      x_1213 = x_1220;
    }
    let x_1221 : f32 = x_1213;
    u_xlat34 = x_1221;
    let x_1223 : bool = u_xlatb20.x;
    if (x_1223) {
      let x_1227 : vec4<f32> = u_xlat7;
      x_1224 = vec3<f32>(x_1227.x, x_1227.y, x_1227.z);
    } else {
      let x_1230 : f32 = u_xlat34;
      x_1224 = vec3<f32>(x_1230, x_1230, x_1230);
    }
    let x_1232 : vec3<f32> = x_1224;
    u_xlat20 = x_1232;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1237 : vec3<f32> = u_xlat20;
  let x_1239 : vec4<f32> = x_160.x_MainLightColor;
  u_xlat20 = (x_1237 * vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1242 : f32 = u_xlat32;
  let x_1244 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1242, x_1242, x_1242) * x_1244);
  let x_1246 : vec3<f32> = u_xlat5;
  let x_1248 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1246), vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
  let x_1253 : f32 = u_xlat7.x;
  let x_1255 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1253 + x_1255);
  let x_1258 : vec4<f32> = u_xlat3;
  let x_1260 : vec4<f32> = u_xlat7;
  let x_1264 : vec3<f32> = u_xlat5;
  let x_1266 : vec3<f32> = ((vec3<f32>(x_1258.x, x_1258.y, x_1258.z) * -(vec3<f32>(x_1260.x, x_1260.x, x_1260.x))) + -(x_1264));
  let x_1267 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
  let x_1270 : vec4<f32> = u_xlat3;
  let x_1272 : vec3<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_1270.x, x_1270.y, x_1270.z), x_1272);
  let x_1274 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1274, 0.0f, 1.0f);
  let x_1276 : f32 = u_xlat49;
  u_xlat49 = (-(x_1276) + 1.0f);
  let x_1279 : f32 = u_xlat49;
  let x_1280 : f32 = u_xlat49;
  u_xlat49 = (x_1279 * x_1280);
  let x_1282 : f32 = u_xlat49;
  let x_1283 : f32 = u_xlat49;
  u_xlat49 = (x_1282 * x_1283);
  let x_1285 : f32 = u_xlat45;
  u_xlat8.x = ((-(x_1285) * 0.699999988f) + 1.700000048f);
  let x_1292 : f32 = u_xlat45;
  let x_1294 : f32 = u_xlat8.x;
  u_xlat45 = (x_1292 * x_1294);
  let x_1296 : f32 = u_xlat45;
  u_xlat45 = (x_1296 * 6.0f);
  let x_1307 : vec4<f32> = u_xlat7;
  let x_1309 : f32 = u_xlat45;
  let x_1310 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1307.x, x_1307.y, x_1307.z), x_1309);
  u_xlat8 = x_1310;
  let x_1312 : f32 = u_xlat8.w;
  u_xlat45 = (x_1312 + -1.0f);
  let x_1315 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_1316 : f32 = u_xlat45;
  u_xlat45 = ((x_1315 * x_1316) + 1.0f);
  let x_1319 : f32 = u_xlat45;
  u_xlat45 = max(x_1319, 0.0f);
  let x_1321 : f32 = u_xlat45;
  u_xlat45 = log2(x_1321);
  let x_1323 : f32 = u_xlat45;
  let x_1325 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_1323 * x_1325);
  let x_1327 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1327);
  let x_1329 : f32 = u_xlat45;
  let x_1331 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_1329 * x_1331);
  let x_1333 : vec4<f32> = u_xlat8;
  let x_1335 : f32 = u_xlat45;
  let x_1337 : vec3<f32> = (vec3<f32>(x_1333.x, x_1333.y, x_1333.z) * vec3<f32>(x_1335, x_1335, x_1335));
  let x_1338 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
  let x_1340 : f32 = u_xlat18;
  let x_1342 : f32 = u_xlat18;
  let x_1346 : vec2<f32> = ((vec2<f32>(x_1340, x_1340) * vec2<f32>(x_1342, x_1342)) + vec2<f32>(-1.0f, 1.0f));
  let x_1347 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1346.x, x_1346.y, x_1347.z, x_1347.w);
  let x_1350 : f32 = u_xlat8.y;
  u_xlat45 = (1.0f / x_1350);
  let x_1352 : f32 = u_xlat47;
  u_xlat18 = (x_1352 + -0.039999999f);
  let x_1355 : f32 = u_xlat49;
  let x_1356 : f32 = u_xlat18;
  u_xlat18 = ((x_1355 * x_1356) + 0.039999999f);
  let x_1360 : f32 = u_xlat45;
  let x_1361 : f32 = u_xlat18;
  u_xlat45 = (x_1360 * x_1361);
  let x_1363 : f32 = u_xlat45;
  let x_1365 : vec4<f32> = u_xlat7;
  let x_1367 : vec3<f32> = (vec3<f32>(x_1363, x_1363, x_1363) * vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
  let x_1368 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
  let x_1370 : vec3<f32> = u_xlat14;
  let x_1371 : vec3<f32> = u_xlat16;
  let x_1373 : vec4<f32> = u_xlat7;
  u_xlat14 = ((x_1370 * x_1371) + vec3<f32>(x_1373.x, x_1373.y, x_1373.z));
  let x_1377 : f32 = u_xlat0.x;
  let x_1379 : f32 = x_95.unity_LightData.z;
  u_xlat0.x = (x_1377 * x_1379);
  let x_1382 : vec4<f32> = u_xlat3;
  let x_1385 : vec4<f32> = x_160.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_1382.x, x_1382.y, x_1382.z), vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
  let x_1388 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1388, 0.0f, 1.0f);
  let x_1391 : f32 = u_xlat0.x;
  let x_1392 : f32 = u_xlat45;
  u_xlat0.x = (x_1391 * x_1392);
  let x_1395 : vec3<f32> = u_xlat0;
  let x_1397 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1395.x, x_1395.x, x_1395.x) * x_1397);
  let x_1399 : vec3<f32> = u_xlat5;
  let x_1401 : vec4<f32> = x_160.x_MainLightPosition;
  let x_1403 : vec3<f32> = (x_1399 + vec3<f32>(x_1401.x, x_1401.y, x_1401.z));
  let x_1404 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1403.x, x_1403.y, x_1403.z, x_1404.w);
  let x_1406 : vec4<f32> = u_xlat7;
  let x_1408 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1406.x, x_1406.y, x_1406.z), vec3<f32>(x_1408.x, x_1408.y, x_1408.z));
  let x_1413 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1413, 1.17549435e-37f);
  let x_1417 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1417);
  let x_1420 : vec3<f32> = u_xlat0;
  let x_1422 : vec4<f32> = u_xlat7;
  let x_1424 : vec3<f32> = (vec3<f32>(x_1420.x, x_1420.x, x_1420.x) * vec3<f32>(x_1422.x, x_1422.y, x_1422.z));
  let x_1425 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);
  let x_1427 : vec4<f32> = u_xlat3;
  let x_1429 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1427.x, x_1427.y, x_1427.z), vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
  let x_1434 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1434, 0.0f, 1.0f);
  let x_1438 : vec4<f32> = x_160.x_MainLightPosition;
  let x_1440 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1438.x, x_1438.y, x_1438.z), vec3<f32>(x_1440.x, x_1440.y, x_1440.z));
  let x_1443 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1443, 0.0f, 1.0f);
  let x_1446 : f32 = u_xlat0.x;
  let x_1448 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1446 * x_1448);
  let x_1452 : f32 = u_xlat0.x;
  let x_1454 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1452 * x_1454) + 1.000010014f);
  let x_1459 : f32 = u_xlat45;
  let x_1460 : f32 = u_xlat45;
  u_xlat45 = (x_1459 * x_1460);
  let x_1463 : f32 = u_xlat0.x;
  let x_1465 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1463 * x_1465);
  let x_1468 : f32 = u_xlat45;
  u_xlat45 = max(x_1468, 0.100000001f);
  let x_1472 : f32 = u_xlat0.x;
  let x_1473 : f32 = u_xlat45;
  u_xlat0.x = (x_1472 * x_1473);
  let x_1477 : f32 = u_xlat6.x;
  let x_1479 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1477 * x_1479);
  let x_1482 : f32 = u_xlat46;
  let x_1484 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1482 / x_1484);
  let x_1487 : vec3<f32> = u_xlat0;
  let x_1491 : vec3<f32> = u_xlat16;
  let x_1492 : vec3<f32> = ((vec3<f32>(x_1487.x, x_1487.x, x_1487.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1491);
  let x_1493 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1492.x, x_1492.y, x_1492.z, x_1493.w);
  let x_1495 : vec3<f32> = u_xlat20;
  let x_1496 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1495 * vec3<f32>(x_1496.x, x_1496.y, x_1496.z));
  let x_1501 : f32 = x_160.x_AdditionalLightsCount.x;
  let x_1503 : f32 = x_95.unity_LightData.y;
  u_xlat0.x = min(x_1501, x_1503);
  let x_1507 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1507));
  let x_1512 : f32 = x_1130.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1514 : f32 = x_1130.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1516 : f32 = x_1130.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1518 : f32 = x_1130.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1519 : vec4<f32> = vec4<f32>(x_1512, x_1514, x_1516, x_1518);
  let x_1525 : vec4<bool> = (vec4<f32>(x_1519.x, x_1519.y, x_1519.z, x_1519.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1525.x, x_1525.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1536 : u32 = u_xlatu_loop_1;
    let x_1537 : u32 = u_xlatu0;
    if ((x_1536 < x_1537)) {
    } else {
      break;
    }
    let x_1540 : u32 = u_xlatu_loop_1;
    u_xlatu18 = (x_1540 >> 2u);
    let x_1543 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1543 & 3u));
    let x_1546 : u32 = u_xlatu18;
    let x_1549 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1546)];
    let x_1559 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1564 : vec4<u32> = indexable[x_1559];
    u_xlat18 = dot(x_1549, bitcast<vec4<f32>>(x_1564));
    let x_1567 : f32 = u_xlat18;
    u_xlatu18 = bitcast<u32>(i32(x_1567));
    let x_1570 : vec3<f32> = vs_INTERP0;
    let x_1582 : u32 = u_xlatu18;
    let x_1585 : vec4<f32> = x_1581.x_AdditionalLightsPosition[bitcast<i32>(x_1582)];
    let x_1588 : u32 = u_xlatu18;
    let x_1591 : vec4<f32> = x_1581.x_AdditionalLightsPosition[bitcast<i32>(x_1588)];
    let x_1593 : vec3<f32> = ((-(x_1570) * vec3<f32>(x_1585.w, x_1585.w, x_1585.w)) + vec3<f32>(x_1591.x, x_1591.y, x_1591.z));
    let x_1594 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1593.x, x_1593.y, x_1593.z, x_1594.w);
    let x_1596 : vec4<f32> = u_xlat9;
    let x_1598 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1596.x, x_1596.y, x_1596.z), vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
    let x_1601 : f32 = u_xlat47;
    u_xlat47 = max(x_1601, 6.10351562e-05f);
    let x_1605 : f32 = u_xlat47;
    u_xlat35 = inverseSqrt(x_1605);
    let x_1607 : f32 = u_xlat35;
    let x_1609 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1607, x_1607, x_1607) * vec3<f32>(x_1609.x, x_1609.y, x_1609.z));
    let x_1612 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1612);
    let x_1614 : f32 = u_xlat47;
    let x_1615 : u32 = u_xlatu18;
    let x_1618 : f32 = x_1581.x_AdditionalLightsAttenuation[bitcast<i32>(x_1615)].x;
    u_xlat47 = (x_1614 * x_1618);
    let x_1620 : f32 = u_xlat47;
    let x_1622 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1620) * x_1622) + 1.0f);
    let x_1625 : f32 = u_xlat47;
    u_xlat47 = max(x_1625, 0.0f);
    let x_1627 : f32 = u_xlat47;
    let x_1628 : f32 = u_xlat47;
    u_xlat47 = (x_1627 * x_1628);
    let x_1630 : f32 = u_xlat47;
    let x_1631 : f32 = u_xlat49;
    u_xlat47 = (x_1630 * x_1631);
    let x_1633 : u32 = u_xlatu18;
    let x_1636 : vec4<f32> = x_1581.x_AdditionalLightsSpotDir[bitcast<i32>(x_1633)];
    let x_1638 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1636.x, x_1636.y, x_1636.z), x_1638);
    let x_1640 : f32 = u_xlat49;
    let x_1641 : u32 = u_xlatu18;
    let x_1644 : f32 = x_1581.x_AdditionalLightsAttenuation[bitcast<i32>(x_1641)].z;
    let x_1646 : u32 = u_xlatu18;
    let x_1649 : f32 = x_1581.x_AdditionalLightsAttenuation[bitcast<i32>(x_1646)].w;
    u_xlat49 = ((x_1640 * x_1644) + x_1649);
    let x_1651 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1651, 0.0f, 1.0f);
    let x_1653 : f32 = u_xlat49;
    let x_1654 : f32 = u_xlat49;
    u_xlat49 = (x_1653 * x_1654);
    let x_1656 : f32 = u_xlat47;
    let x_1657 : f32 = u_xlat49;
    u_xlat47 = (x_1656 * x_1657);
    let x_1660 : u32 = u_xlatu18;
    u_xlatu49 = (x_1660 >> 5u);
    let x_1663 : u32 = u_xlatu18;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1663) & 31i)));
    let x_1669 : i32 = u_xlati51;
    let x_1671 : u32 = u_xlatu49;
    let x_1674 : f32 = x_1130.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1671)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1669) & bitcast<u32>(x_1674)));
    let x_1678 : i32 = u_xlati49;
    if ((x_1678 != 0i)) {
      let x_1688 : u32 = u_xlatu18;
      let x_1691 : f32 = x_1687.x_AdditionalLightsLightTypes[bitcast<i32>(x_1688)].el;
      u_xlati49 = i32(x_1691);
      let x_1693 : i32 = u_xlati49;
      u_xlati51 = select(1i, 0i, (x_1693 != 0i));
      let x_1697 : u32 = u_xlatu18;
      u_xlati52 = (bitcast<i32>(x_1697) << bitcast<u32>(2i));
      let x_1700 : i32 = u_xlati51;
      if ((x_1700 != 0i)) {
        let x_1705 : vec3<f32> = vs_INTERP0;
        let x_1707 : i32 = u_xlati52;
        let x_1710 : i32 = u_xlati52;
        let x_1714 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_1707 + 1i) / 4i)][((x_1710 + 1i) % 4i)];
        let x_1716 : vec3<f32> = (vec3<f32>(x_1705.y, x_1705.y, x_1705.y) * vec3<f32>(x_1714.x, x_1714.y, x_1714.w));
        let x_1717 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1716.x, x_1716.y, x_1716.z, x_1717.w);
        let x_1719 : i32 = u_xlati52;
        let x_1721 : i32 = u_xlati52;
        let x_1724 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[(x_1719 / 4i)][(x_1721 % 4i)];
        let x_1726 : vec3<f32> = vs_INTERP0;
        let x_1729 : vec4<f32> = u_xlat11;
        let x_1731 : vec3<f32> = ((vec3<f32>(x_1724.x, x_1724.y, x_1724.w) * vec3<f32>(x_1726.x, x_1726.x, x_1726.x)) + vec3<f32>(x_1729.x, x_1729.y, x_1729.z));
        let x_1732 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1732.w);
        let x_1734 : i32 = u_xlati52;
        let x_1737 : i32 = u_xlati52;
        let x_1741 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_1734 + 2i) / 4i)][((x_1737 + 2i) % 4i)];
        let x_1743 : vec3<f32> = vs_INTERP0;
        let x_1746 : vec4<f32> = u_xlat11;
        let x_1748 : vec3<f32> = ((vec3<f32>(x_1741.x, x_1741.y, x_1741.w) * vec3<f32>(x_1743.z, x_1743.z, x_1743.z)) + vec3<f32>(x_1746.x, x_1746.y, x_1746.z));
        let x_1749 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1749.w);
        let x_1751 : vec4<f32> = u_xlat11;
        let x_1753 : i32 = u_xlati52;
        let x_1756 : i32 = u_xlati52;
        let x_1760 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_1753 + 3i) / 4i)][((x_1756 + 3i) % 4i)];
        let x_1762 : vec3<f32> = (vec3<f32>(x_1751.x, x_1751.y, x_1751.z) + vec3<f32>(x_1760.x, x_1760.y, x_1760.w));
        let x_1763 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1762.x, x_1762.y, x_1762.z, x_1763.w);
        let x_1765 : vec4<f32> = u_xlat11;
        let x_1767 : vec4<f32> = u_xlat11;
        let x_1769 : vec2<f32> = (vec2<f32>(x_1765.x, x_1765.y) / vec2<f32>(x_1767.z, x_1767.z));
        let x_1770 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1769.x, x_1769.y, x_1770.z, x_1770.w);
        let x_1772 : vec4<f32> = u_xlat11;
        let x_1775 : vec2<f32> = ((vec2<f32>(x_1772.x, x_1772.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1776 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1775.x, x_1775.y, x_1776.z, x_1776.w);
        let x_1778 : vec4<f32> = u_xlat11;
        let x_1782 : vec2<f32> = clamp(vec2<f32>(x_1778.x, x_1778.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1783 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1782.x, x_1782.y, x_1783.z, x_1783.w);
        let x_1785 : u32 = u_xlatu18;
        let x_1788 : vec4<f32> = x_1687.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1785)];
        let x_1790 : vec4<f32> = u_xlat11;
        let x_1793 : u32 = u_xlatu18;
        let x_1796 : vec4<f32> = x_1687.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1793)];
        let x_1798 : vec2<f32> = ((vec2<f32>(x_1788.x, x_1788.y) * vec2<f32>(x_1790.x, x_1790.y)) + vec2<f32>(x_1796.z, x_1796.w));
        let x_1799 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1798.x, x_1798.y, x_1799.z, x_1799.w);
      } else {
        let x_1803 : i32 = u_xlati49;
        u_xlatb49 = (x_1803 == 1i);
        let x_1805 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1805);
        let x_1807 : i32 = u_xlati49;
        if ((x_1807 != 0i)) {
          let x_1813 : vec3<f32> = vs_INTERP0;
          let x_1815 : i32 = u_xlati52;
          let x_1818 : i32 = u_xlati52;
          let x_1822 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_1815 + 1i) / 4i)][((x_1818 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1813.y, x_1813.y) * vec2<f32>(x_1822.x, x_1822.y));
          let x_1825 : i32 = u_xlati52;
          let x_1827 : i32 = u_xlati52;
          let x_1830 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[(x_1825 / 4i)][(x_1827 % 4i)];
          let x_1832 : vec3<f32> = vs_INTERP0;
          let x_1835 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1830.x, x_1830.y) * vec2<f32>(x_1832.x, x_1832.x)) + x_1835);
          let x_1837 : i32 = u_xlati52;
          let x_1840 : i32 = u_xlati52;
          let x_1844 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_1837 + 2i) / 4i)][((x_1840 + 2i) % 4i)];
          let x_1846 : vec3<f32> = vs_INTERP0;
          let x_1849 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1844.x, x_1844.y) * vec2<f32>(x_1846.z, x_1846.z)) + x_1849);
          let x_1851 : vec2<f32> = u_xlat39;
          let x_1852 : i32 = u_xlati52;
          let x_1855 : i32 = u_xlati52;
          let x_1859 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_1852 + 3i) / 4i)][((x_1855 + 3i) % 4i)];
          u_xlat39 = (x_1851 + vec2<f32>(x_1859.x, x_1859.y));
          let x_1862 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1862 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1865 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1865);
          let x_1867 : u32 = u_xlatu18;
          let x_1870 : vec4<f32> = x_1687.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1867)];
          let x_1872 : vec2<f32> = u_xlat39;
          let x_1874 : u32 = u_xlatu18;
          let x_1877 : vec4<f32> = x_1687.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1874)];
          let x_1879 : vec2<f32> = ((vec2<f32>(x_1870.x, x_1870.y) * x_1872) + vec2<f32>(x_1877.z, x_1877.w));
          let x_1880 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1879.x, x_1879.y, x_1880.z, x_1880.w);
        } else {
          let x_1884 : vec3<f32> = vs_INTERP0;
          let x_1886 : i32 = u_xlati52;
          let x_1889 : i32 = u_xlati52;
          let x_1893 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_1886 + 1i) / 4i)][((x_1889 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1884.y, x_1884.y, x_1884.y, x_1884.y) * x_1893);
          let x_1895 : i32 = u_xlati52;
          let x_1897 : i32 = u_xlati52;
          let x_1900 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[(x_1895 / 4i)][(x_1897 % 4i)];
          let x_1901 : vec3<f32> = vs_INTERP0;
          let x_1904 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1900 * vec4<f32>(x_1901.x, x_1901.x, x_1901.x, x_1901.x)) + x_1904);
          let x_1906 : i32 = u_xlati52;
          let x_1909 : i32 = u_xlati52;
          let x_1913 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_1906 + 2i) / 4i)][((x_1909 + 2i) % 4i)];
          let x_1914 : vec3<f32> = vs_INTERP0;
          let x_1917 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1913 * vec4<f32>(x_1914.z, x_1914.z, x_1914.z, x_1914.z)) + x_1917);
          let x_1919 : vec4<f32> = u_xlat12;
          let x_1920 : i32 = u_xlati52;
          let x_1923 : i32 = u_xlati52;
          let x_1927 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_1920 + 3i) / 4i)][((x_1923 + 3i) % 4i)];
          u_xlat12 = (x_1919 + x_1927);
          let x_1929 : vec4<f32> = u_xlat12;
          let x_1931 : vec4<f32> = u_xlat12;
          let x_1933 : vec3<f32> = (vec3<f32>(x_1929.x, x_1929.y, x_1929.z) / vec3<f32>(x_1931.w, x_1931.w, x_1931.w));
          let x_1934 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
          let x_1936 : vec4<f32> = u_xlat12;
          let x_1938 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1936.x, x_1936.y, x_1936.z), vec3<f32>(x_1938.x, x_1938.y, x_1938.z));
          let x_1941 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1941);
          let x_1943 : f32 = u_xlat49;
          let x_1945 : vec4<f32> = u_xlat12;
          let x_1947 : vec3<f32> = (vec3<f32>(x_1943, x_1943, x_1943) * vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
          let x_1948 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);
          let x_1950 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1950.x, x_1950.y, x_1950.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1955 : f32 = u_xlat49;
          u_xlat49 = max(x_1955, 0.000001f);
          let x_1958 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1958);
          let x_1961 : f32 = u_xlat49;
          let x_1963 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1961, x_1961, x_1961) * vec3<f32>(x_1963.z, x_1963.x, x_1963.y));
          let x_1967 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1967);
          let x_1971 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1971, 0.0f, 1.0f);
          let x_1975 : vec3<f32> = u_xlat13;
          let x_1978 : vec4<bool> = (vec4<f32>(x_1975.y, x_1975.z, x_1975.y, x_1975.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1978.x, x_1978.y);
          let x_1981 : bool = u_xlatb39.x;
          if (x_1981) {
            let x_1986 : f32 = u_xlat13.x;
            x_1982 = x_1986;
          } else {
            let x_1989 : f32 = u_xlat13.x;
            x_1982 = -(x_1989);
          }
          let x_1991 : f32 = x_1982;
          u_xlat39.x = x_1991;
          let x_1994 : bool = u_xlatb39.y;
          if (x_1994) {
            let x_1999 : f32 = u_xlat13.x;
            x_1995 = x_1999;
          } else {
            let x_2002 : f32 = u_xlat13.x;
            x_1995 = -(x_2002);
          }
          let x_2004 : f32 = x_1995;
          u_xlat39.y = x_2004;
          let x_2006 : vec4<f32> = u_xlat12;
          let x_2008 : f32 = u_xlat49;
          let x_2011 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2006.x, x_2006.y) * vec2<f32>(x_2008, x_2008)) + x_2011);
          let x_2013 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2013 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2016 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2016, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2020 : u32 = u_xlatu18;
          let x_2023 : vec4<f32> = x_1687.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2020)];
          let x_2025 : vec2<f32> = u_xlat39;
          let x_2027 : u32 = u_xlatu18;
          let x_2030 : vec4<f32> = x_1687.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2027)];
          let x_2032 : vec2<f32> = ((vec2<f32>(x_2023.x, x_2023.y) * x_2025) + vec2<f32>(x_2030.z, x_2030.w));
          let x_2033 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2032.x, x_2032.y, x_2033.z, x_2033.w);
        }
      }
      let x_2040 : vec4<f32> = u_xlat11;
      let x_2043 : f32 = x_160.x_GlobalMipBias.x;
      let x_2044 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2040.x, x_2040.y), x_2043);
      u_xlat11 = x_2044;
      let x_2046 : bool = u_xlatb7.y;
      if (x_2046) {
        let x_2051 : f32 = u_xlat11.w;
        x_2047 = x_2051;
      } else {
        let x_2054 : f32 = u_xlat11.x;
        x_2047 = x_2054;
      }
      let x_2055 : f32 = x_2047;
      u_xlat49 = x_2055;
      let x_2057 : bool = u_xlatb7.x;
      if (x_2057) {
        let x_2061 : vec4<f32> = u_xlat11;
        x_2058 = vec3<f32>(x_2061.x, x_2061.y, x_2061.z);
      } else {
        let x_2064 : f32 = u_xlat49;
        x_2058 = vec3<f32>(x_2064, x_2064, x_2064);
      }
      let x_2066 : vec3<f32> = x_2058;
      let x_2067 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2073 : vec4<f32> = u_xlat11;
    let x_2075 : u32 = u_xlatu18;
    let x_2078 : vec4<f32> = x_1581.x_AdditionalLightsColor[bitcast<i32>(x_2075)];
    let x_2080 : vec3<f32> = (vec3<f32>(x_2073.x, x_2073.y, x_2073.z) * vec3<f32>(x_2078.x, x_2078.y, x_2078.z));
    let x_2081 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2080.x, x_2080.y, x_2080.z, x_2081.w);
    let x_2083 : f32 = u_xlat32;
    let x_2085 : vec4<f32> = u_xlat11;
    let x_2087 : vec3<f32> = (vec3<f32>(x_2083, x_2083, x_2083) * vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
    let x_2088 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2087.x, x_2087.y, x_2087.z, x_2088.w);
    let x_2090 : vec4<f32> = u_xlat3;
    let x_2092 : vec3<f32> = u_xlat10;
    u_xlat18 = dot(vec3<f32>(x_2090.x, x_2090.y, x_2090.z), x_2092);
    let x_2094 : f32 = u_xlat18;
    u_xlat18 = clamp(x_2094, 0.0f, 1.0f);
    let x_2096 : f32 = u_xlat18;
    let x_2097 : f32 = u_xlat47;
    u_xlat18 = (x_2096 * x_2097);
    let x_2099 : f32 = u_xlat18;
    let x_2101 : vec4<f32> = u_xlat11;
    let x_2103 : vec3<f32> = (vec3<f32>(x_2099, x_2099, x_2099) * vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
    let x_2104 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
    let x_2106 : vec4<f32> = u_xlat9;
    let x_2108 : f32 = u_xlat35;
    let x_2111 : vec3<f32> = u_xlat5;
    let x_2112 : vec3<f32> = ((vec3<f32>(x_2106.x, x_2106.y, x_2106.z) * vec3<f32>(x_2108, x_2108, x_2108)) + x_2111);
    let x_2113 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2112.x, x_2112.y, x_2112.z, x_2113.w);
    let x_2115 : vec4<f32> = u_xlat9;
    let x_2117 : vec4<f32> = u_xlat9;
    u_xlat18 = dot(vec3<f32>(x_2115.x, x_2115.y, x_2115.z), vec3<f32>(x_2117.x, x_2117.y, x_2117.z));
    let x_2120 : f32 = u_xlat18;
    u_xlat18 = max(x_2120, 1.17549435e-37f);
    let x_2122 : f32 = u_xlat18;
    u_xlat18 = inverseSqrt(x_2122);
    let x_2124 : f32 = u_xlat18;
    let x_2126 : vec4<f32> = u_xlat9;
    let x_2128 : vec3<f32> = (vec3<f32>(x_2124, x_2124, x_2124) * vec3<f32>(x_2126.x, x_2126.y, x_2126.z));
    let x_2129 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2128.x, x_2128.y, x_2128.z, x_2129.w);
    let x_2131 : vec4<f32> = u_xlat3;
    let x_2133 : vec4<f32> = u_xlat9;
    u_xlat18 = dot(vec3<f32>(x_2131.x, x_2131.y, x_2131.z), vec3<f32>(x_2133.x, x_2133.y, x_2133.z));
    let x_2136 : f32 = u_xlat18;
    u_xlat18 = clamp(x_2136, 0.0f, 1.0f);
    let x_2138 : vec3<f32> = u_xlat10;
    let x_2139 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(x_2138, vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
    let x_2142 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2142, 0.0f, 1.0f);
    let x_2144 : f32 = u_xlat18;
    let x_2145 : f32 = u_xlat18;
    u_xlat18 = (x_2144 * x_2145);
    let x_2147 : f32 = u_xlat18;
    let x_2149 : f32 = u_xlat8.x;
    u_xlat18 = ((x_2147 * x_2149) + 1.000010014f);
    let x_2152 : f32 = u_xlat47;
    let x_2153 : f32 = u_xlat47;
    u_xlat47 = (x_2152 * x_2153);
    let x_2155 : f32 = u_xlat18;
    let x_2156 : f32 = u_xlat18;
    u_xlat18 = (x_2155 * x_2156);
    let x_2158 : f32 = u_xlat47;
    u_xlat47 = max(x_2158, 0.100000001f);
    let x_2160 : f32 = u_xlat18;
    let x_2161 : f32 = u_xlat47;
    u_xlat18 = (x_2160 * x_2161);
    let x_2164 : f32 = u_xlat6.x;
    let x_2165 : f32 = u_xlat18;
    u_xlat18 = (x_2164 * x_2165);
    let x_2167 : f32 = u_xlat46;
    let x_2168 : f32 = u_xlat18;
    u_xlat18 = (x_2167 / x_2168);
    let x_2170 : f32 = u_xlat18;
    let x_2173 : vec3<f32> = u_xlat16;
    let x_2174 : vec3<f32> = ((vec3<f32>(x_2170, x_2170, x_2170) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_2173);
    let x_2175 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2174.x, x_2174.y, x_2174.z, x_2175.w);
    let x_2177 : vec4<f32> = u_xlat9;
    let x_2179 : vec4<f32> = u_xlat11;
    let x_2182 : vec3<f32> = u_xlat22;
    u_xlat22 = ((vec3<f32>(x_2177.x, x_2177.y, x_2177.z) * vec3<f32>(x_2179.x, x_2179.y, x_2179.z)) + x_2182);

    continuing {
      let x_2184 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2184 + bitcast<u32>(1i));
    }
  }
  let x_2186 : vec3<f32> = u_xlat14;
  let x_2187 : vec3<f32> = u_xlat4;
  let x_2190 : vec3<f32> = u_xlat20;
  u_xlat0 = ((x_2186 * vec3<f32>(x_2187.x, x_2187.x, x_2187.x)) + x_2190);
  let x_2192 : vec3<f32> = u_xlat22;
  let x_2193 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_2192 + x_2193);
  let x_2197 : vec4<f32> = vs_INTERP4;
  let x_2199 : vec3<f32> = u_xlat1;
  let x_2201 : vec3<f32> = u_xlat0;
  let x_2202 : vec3<f32> = ((vec3<f32>(x_2197.w, x_2197.w, x_2197.w) * x_2199) + x_2201);
  let x_2203 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2202.x, x_2202.y, x_2202.z, x_2203.w);
  let x_2206 : bool = u_xlatb2.x;
  let x_2207 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2207, x_2206);
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

