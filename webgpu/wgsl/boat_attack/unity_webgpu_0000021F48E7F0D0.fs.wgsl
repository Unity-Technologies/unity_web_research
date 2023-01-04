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

@group(1) @binding(2) var<uniform> x_161 : UnityPerDraw;

@group(0) @binding(6) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_215 : UnityPerMaterial;

@group(0) @binding(7) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_272 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_918 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1392 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1495 : AdditionalLightsCookies;

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
  var x_118 : f32;
  var x_132 : f32;
  var x_145 : f32;
  var u_xlat42 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat19 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb44 : bool;
  var u_xlatb46 : bool;
  var u_xlat14 : vec3<f32>;
  var u_xlat44 : f32;
  var x_389 : f32;
  var u_xlatu1 : vec3<u32>;
  var u_xlatu29 : u32;
  var u_xlatu3 : u32;
  var u_xlati29 : i32;
  var u_xlati15 : i32;
  var u_xlatu15 : u32;
  var u_xlati1 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat15 : vec3<f32>;
  var x_521 : f32;
  var u_xlatb15 : vec2<bool>;
  var x_552 : f32;
  var u_xlat29 : vec2<f32>;
  var u_xlatb1 : bool;
  var x_602 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var u_xlat7 : vec4<f32>;
  var x_1003 : f32;
  var x_1014 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati35 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
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
  var x_1789 : f32;
  var x_1802 : f32;
  var x_1854 : f32;
  var x_1865 : vec3<f32>;
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
  let x_117 : bool = u_xlatb42;
  if (x_117) {
    let x_122 : f32 = u_xlat1.x;
    x_118 = x_122;
  } else {
    let x_128 : f32 = x_90.unity_MatrixV[0i].z;
    x_118 = x_128;
  }
  let x_129 : f32 = x_118;
  u_xlat2.x = x_129;
  let x_131 : bool = u_xlatb42;
  if (x_131) {
    let x_137 : f32 = u_xlat1.y;
    x_132 = x_137;
  } else {
    let x_141 : f32 = x_90.unity_MatrixV[1i].z;
    x_132 = x_141;
  }
  let x_142 : f32 = x_132;
  u_xlat2.y = x_142;
  let x_144 : bool = u_xlatb42;
  if (x_144) {
    let x_149 : f32 = u_xlat1.z;
    x_145 = x_149;
  } else {
    let x_153 : f32 = x_90.unity_MatrixV[2i].z;
    x_145 = x_153;
  }
  let x_154 : f32 = x_145;
  u_xlat2.z = x_154;
  let x_156 : vec3<f32> = u_xlat2;
  let x_164 : vec4<f32> = x_161.unity_WorldToObject[1i];
  u_xlat1 = (vec3<f32>(x_156.y, x_156.y, x_156.y) * vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_168 : vec4<f32> = x_161.unity_WorldToObject[0i];
  let x_170 : vec3<f32> = u_xlat2;
  let x_173 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_168.x, x_168.y, x_168.z) * vec3<f32>(x_170.x, x_170.x, x_170.x)) + x_173);
  let x_176 : vec4<f32> = x_161.unity_WorldToObject[2i];
  let x_178 : vec3<f32> = u_xlat2;
  let x_181 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_176.x, x_176.y, x_176.z) * vec3<f32>(x_178.z, x_178.z, x_178.z)) + x_181);
  let x_184 : vec3<f32> = u_xlat1;
  let x_185 : vec3<f32> = u_xlat1;
  u_xlat42 = dot(x_184, x_185);
  let x_187 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat42;
  let x_191 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_189, x_189, x_189) * x_191);
  let x_205 : vec4<f32> = vs_INTERP3;
  let x_208 : f32 = x_90.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_205.x, x_205.y), x_208);
  u_xlat3 = x_209;
  let x_211 : vec4<f32> = u_xlat3;
  let x_217 : vec4<f32> = x_215.Color_C30C7CA3;
  u_xlat4 = (vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_226 : vec4<f32> = vs_INTERP3;
  let x_229 : f32 = x_90.x_GlobalMipBias.x;
  let x_230 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_226.x, x_226.y), x_229);
  u_xlat5 = vec4<f32>(x_230.w, x_230.x, x_230.y, x_230.z);
  let x_233 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_233.y, x_233.z, x_233.w, x_233.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_241 : vec4<f32> = u_xlat6;
  let x_242 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_241, x_242);
  let x_244 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_244);
  let x_247 : f32 = u_xlat42;
  let x_249 : vec4<f32> = u_xlat6;
  u_xlat19 = (vec3<f32>(x_247, x_247, x_247) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_254 : f32 = vs_INTERP4.y;
  u_xlat42 = (x_254 * 200.0f);
  let x_257 : f32 = u_xlat42;
  u_xlat42 = min(x_257, 1.0f);
  let x_259 : f32 = u_xlat42;
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec3<f32> = (vec3<f32>(x_259, x_259, x_259) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec3<f32> = vs_INTERP0;
  let x_274 : vec4<f32> = x_272.x_MainLightWorldToShadow[0i][1i];
  let x_276 : vec3<f32> = (vec3<f32>(x_266.y, x_266.y, x_266.y) * vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_277 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_280 : vec4<f32> = x_272.x_MainLightWorldToShadow[0i][0i];
  let x_282 : vec3<f32> = vs_INTERP0;
  let x_285 : vec4<f32> = u_xlat6;
  let x_287 : vec3<f32> = ((vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_282.x, x_282.x, x_282.x)) + vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_291 : vec4<f32> = x_272.x_MainLightWorldToShadow[0i][2i];
  let x_293 : vec3<f32> = vs_INTERP0;
  let x_296 : vec4<f32> = u_xlat6;
  let x_298 : vec3<f32> = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_293.z, x_293.z, x_293.z)) + vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat6;
  let x_305 : vec4<f32> = x_272.x_MainLightWorldToShadow[0i][3i];
  let x_307 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) + vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_311 : vec4<f32> = u_xlat6;
  let x_312 : vec2<f32> = vec2<f32>(x_311.x, x_311.y);
  let x_314 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_312.x, x_312.y, x_314);
  let x_326 : vec3<f32> = txVec0;
  let x_328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_326.xy, x_326.z);
  u_xlat42 = x_328;
  let x_331 : f32 = x_272.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_331) + 1.0f);
  let x_334 : f32 = u_xlat42;
  let x_336 : f32 = x_272.x_MainLightShadowParams.x;
  let x_338 : f32 = u_xlat43;
  u_xlat42 = ((x_334 * x_336) + x_338);
  let x_342 : f32 = u_xlat6.z;
  u_xlatb44 = (0.0f >= x_342);
  let x_346 : f32 = u_xlat6.z;
  u_xlatb46 = (x_346 >= 1.0f);
  let x_348 : bool = u_xlatb44;
  let x_349 : bool = u_xlatb46;
  u_xlatb44 = (x_348 | x_349);
  let x_351 : bool = u_xlatb44;
  let x_352 : f32 = u_xlat42;
  u_xlat42 = select(x_352, 1.0f, x_351);
  let x_354 : vec3<f32> = u_xlat0;
  let x_356 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat0.x = dot(x_354, -(vec3<f32>(x_356.x, x_356.y, x_356.z)));
  let x_362 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_362, 0.0f, 1.0f);
  let x_366 : f32 = u_xlat42;
  let x_370 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat14 = (vec3<f32>(x_366, x_366, x_366) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec3<f32> = u_xlat14;
  let x_374 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_373 * vec3<f32>(x_374.x, x_374.x, x_374.x));
  let x_377 : vec3<f32> = u_xlat0;
  let x_378 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_377 * vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_382 : f32 = x_161.unity_LODFade.x;
  u_xlatb42 = (x_382 < 0.0f);
  let x_386 : f32 = x_161.unity_LODFade.x;
  u_xlat44 = (x_386 + 1.0f);
  let x_388 : bool = u_xlatb42;
  if (x_388) {
    let x_392 : f32 = u_xlat44;
    x_389 = x_392;
  } else {
    let x_395 : f32 = x_161.unity_LODFade.x;
    x_389 = x_395;
  }
  let x_396 : f32 = x_389;
  u_xlat42 = x_396;
  let x_398 : f32 = u_xlat42;
  u_xlatb44 = (0.5f >= x_398);
  let x_400 : vec3<f32> = u_xlat1;
  let x_403 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat1 = (abs(x_400) * vec3<f32>(x_403.x, x_403.y, x_403.x));
  let x_409 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_409);
  let x_413 : u32 = u_xlatu1.z;
  u_xlatu29 = (x_413 * 1025u);
  let x_417 : u32 = u_xlatu29;
  u_xlatu3 = (x_417 >> 6u);
  let x_421 : u32 = u_xlatu29;
  let x_422 : u32 = u_xlatu3;
  u_xlati29 = bitcast<i32>((x_421 ^ x_422));
  let x_425 : i32 = u_xlati29;
  u_xlatu29 = (bitcast<u32>(x_425) * 9u);
  let x_429 : u32 = u_xlatu29;
  u_xlatu3 = (x_429 >> 11u);
  let x_432 : u32 = u_xlatu29;
  let x_433 : u32 = u_xlatu3;
  u_xlati29 = bitcast<i32>((x_432 ^ x_433));
  let x_436 : i32 = u_xlati29;
  u_xlati29 = (x_436 * 32769i);
  let x_440 : i32 = u_xlati29;
  let x_443 : u32 = u_xlatu1.y;
  u_xlati15 = bitcast<i32>((bitcast<u32>(x_440) ^ x_443));
  let x_447 : i32 = u_xlati15;
  u_xlatu15 = (bitcast<u32>(x_447) * 1025u);
  let x_450 : u32 = u_xlatu15;
  u_xlatu29 = (x_450 >> 6u);
  let x_452 : u32 = u_xlatu29;
  let x_453 : u32 = u_xlatu15;
  u_xlati15 = bitcast<i32>((x_452 ^ x_453));
  let x_456 : i32 = u_xlati15;
  u_xlatu15 = (bitcast<u32>(x_456) * 9u);
  let x_459 : u32 = u_xlatu15;
  u_xlatu29 = (x_459 >> 11u);
  let x_461 : u32 = u_xlatu29;
  let x_462 : u32 = u_xlatu15;
  u_xlati15 = bitcast<i32>((x_461 ^ x_462));
  let x_465 : i32 = u_xlati15;
  u_xlati15 = (x_465 * 32769i);
  let x_468 : i32 = u_xlati15;
  let x_471 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_468) ^ x_471));
  let x_474 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_474) * 1025u);
  let x_479 : u32 = u_xlatu1.x;
  u_xlatu15 = (x_479 >> 6u);
  let x_481 : u32 = u_xlatu15;
  let x_483 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_481 ^ x_483));
  let x_486 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_486) * 9u);
  let x_491 : u32 = u_xlatu1.x;
  u_xlatu15 = (x_491 >> 11u);
  let x_493 : u32 = u_xlatu15;
  let x_495 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_493 ^ x_495));
  let x_498 : i32 = u_xlati1;
  u_xlati1 = (x_498 * 32769i);
  param = 1065353216i;
  let x_504 : i32 = u_xlati1;
  param_1 = x_504;
  param_2 = 0i;
  param_3 = 23i;
  let x_507 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat1.x = bitcast<f32>(x_507);
  let x_511 : f32 = u_xlat1.x;
  u_xlat1.x = (x_511 + -1.0f);
  let x_516 : f32 = u_xlat1.x;
  u_xlat15.x = (-(x_516) + 1.0f);
  let x_520 : bool = u_xlatb44;
  if (x_520) {
    let x_525 : f32 = u_xlat1.x;
    x_521 = x_525;
  } else {
    let x_528 : f32 = u_xlat15.x;
    x_521 = x_528;
  }
  let x_529 : f32 = x_521;
  u_xlat1.x = x_529;
  let x_531 : f32 = u_xlat42;
  let x_534 : f32 = u_xlat1.x;
  u_xlat42 = ((x_531 * 2.0f) + -(x_534));
  let x_537 : f32 = u_xlat42;
  let x_539 : f32 = u_xlat3.w;
  u_xlat1.x = (x_537 * x_539);
  let x_546 : f32 = u_xlat1.x;
  u_xlatb15.x = (x_546 >= 0.400000006f);
  let x_551 : bool = u_xlatb15.x;
  if (x_551) {
    let x_556 : f32 = u_xlat1.x;
    x_552 = x_556;
  } else {
    x_552 = 0.0f;
  }
  let x_558 : f32 = x_552;
  u_xlat15.x = x_558;
  let x_561 : f32 = u_xlat3.w;
  let x_562 : f32 = u_xlat42;
  u_xlat42 = ((x_561 * x_562) + -0.400000006f);
  let x_569 : f32 = u_xlat1.x;
  u_xlat29.x = dpdxCoarse(x_569);
  let x_573 : f32 = u_xlat1.x;
  u_xlat1.x = dpdyCoarse(x_573);
  let x_577 : f32 = u_xlat1.x;
  let x_580 : f32 = u_xlat29.x;
  u_xlat1.x = (abs(x_577) + abs(x_580));
  let x_585 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_585, 0.0001f);
  let x_589 : f32 = u_xlat42;
  let x_591 : f32 = u_xlat1.x;
  u_xlat42 = (x_589 / x_591);
  let x_593 : f32 = u_xlat42;
  u_xlat42 = (x_593 + 0.5f);
  let x_595 : f32 = u_xlat42;
  u_xlat42 = clamp(x_595, 0.0f, 1.0f);
  let x_599 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb1 = !((x_599 == 0.0f));
  let x_601 : bool = u_xlatb1;
  if (x_601) {
    let x_605 : f32 = u_xlat42;
    x_602 = x_605;
  } else {
    let x_608 : f32 = u_xlat15.x;
    x_602 = x_608;
  }
  let x_609 : f32 = x_602;
  u_xlat42 = x_609;
  let x_610 : f32 = u_xlat42;
  u_xlat15.x = (x_610 + -0.0001f);
  let x_615 : f32 = u_xlat15.x;
  u_xlatb15.x = (x_615 < 0.0f);
  let x_619 : bool = u_xlatb15.x;
  if (((select(0i, 1i, x_619) * -1i) != 0i)) {
    discard;
  }
  let x_629 : f32 = vs_INTERP2.w;
  u_xlatb15.x = (0.0f < x_629);
  let x_633 : f32 = x_161.unity_WorldTransformParams.w;
  u_xlatb15.y = (x_633 >= 0.0f);
  let x_637 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_637);
  let x_641 : bool = u_xlatb15.y;
  u_xlat15.y = select(-1.0f, 1.0f, x_641);
  let x_645 : f32 = u_xlat15.y;
  let x_647 : f32 = u_xlat15.x;
  u_xlat15.x = (x_645 * x_647);
  let x_650 : vec3<f32> = vs_INTERP1;
  let x_652 : vec4<f32> = vs_INTERP2;
  let x_654 : vec3<f32> = (vec3<f32>(x_650.z, x_650.x, x_650.y) * vec3<f32>(x_652.y, x_652.z, x_652.x));
  let x_655 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec3<f32> = vs_INTERP1;
  let x_659 : vec4<f32> = vs_INTERP2;
  let x_662 : vec4<f32> = u_xlat3;
  let x_665 : vec3<f32> = ((vec3<f32>(x_657.y, x_657.z, x_657.x) * vec3<f32>(x_659.z, x_659.x, x_659.y)) + -(vec3<f32>(x_662.x, x_662.y, x_662.z)));
  let x_666 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_668 : vec3<f32> = u_xlat15;
  let x_670 : vec4<f32> = u_xlat3;
  let x_672 : vec3<f32> = (vec3<f32>(x_668.x, x_668.x, x_668.x) * vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat3;
  let x_677 : vec3<f32> = u_xlat19;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(x_677.y, x_677.y, x_677.y));
  let x_680 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec3<f32> = u_xlat19;
  let x_684 : vec4<f32> = vs_INTERP2;
  let x_687 : vec4<f32> = u_xlat3;
  let x_689 : vec3<f32> = ((vec3<f32>(x_682.x, x_682.x, x_682.x) * vec3<f32>(x_684.x, x_684.y, x_684.z)) + vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : vec3<f32> = u_xlat19;
  let x_694 : vec3<f32> = vs_INTERP1;
  let x_696 : vec4<f32> = u_xlat3;
  let x_698 : vec3<f32> = ((vec3<f32>(x_692.z, x_692.z, x_692.z) * x_694) + vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat3;
  let x_703 : vec4<f32> = u_xlat3;
  u_xlat15.x = dot(vec3<f32>(x_701.x, x_701.y, x_701.z), vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_708 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_708);
  let x_711 : vec3<f32> = u_xlat15;
  let x_713 : vec4<f32> = u_xlat3;
  let x_715 : vec3<f32> = (vec3<f32>(x_711.x, x_711.x, x_711.x) * vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_725 : vec2<f32> = vs_INTERP5;
  let x_727 : f32 = x_90.x_GlobalMipBias.x;
  let x_728 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_725, x_727);
  u_xlat19 = vec3<f32>(x_728.x, x_728.y, x_728.z);
  let x_732 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_733 : vec2<f32> = vec2<f32>(x_732.x, x_732.y);
  let x_737 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_733.x, x_733.y));
  let x_738 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_737.x, x_737.y, x_738.z);
  let x_740 : vec3<f32> = u_xlat15;
  let x_742 : vec4<f32> = hlslcc_FragCoord;
  let x_744 : vec2<f32> = (vec2<f32>(x_740.x, x_740.y) * vec2<f32>(x_742.x, x_742.y));
  let x_745 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
  let x_748 : f32 = u_xlat6.y;
  let x_751 : f32 = x_90.x_ScaleBiasRt.x;
  let x_754 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_748 * x_751) + x_754);
  let x_758 : f32 = u_xlat15.x;
  u_xlat6.z = (-(x_758) + 1.0f);
  let x_763 : f32 = u_xlat5.x;
  u_xlat5.x = x_763;
  let x_766 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_766, 0.0f, 1.0f);
  let x_769 : f32 = u_xlat42;
  u_xlat42 = x_769;
  let x_770 : f32 = u_xlat42;
  u_xlat42 = clamp(x_770, 0.0f, 1.0f);
  let x_772 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_772 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_777 : f32 = u_xlat5.x;
  u_xlat15.x = (-(x_777) + 1.0f);
  let x_782 : f32 = u_xlat15.x;
  let x_784 : f32 = u_xlat15.x;
  u_xlat29.x = (x_782 * x_784);
  let x_788 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_788, 0.0078125f);
  let x_793 : f32 = u_xlat29.x;
  let x_795 : f32 = u_xlat29.x;
  u_xlat44 = (x_793 * x_795);
  let x_799 : f32 = u_xlat5.x;
  u_xlat45 = (x_799 + 0.040000021f);
  let x_802 : f32 = u_xlat45;
  u_xlat45 = min(x_802, 1.0f);
  let x_806 : f32 = u_xlat29.x;
  u_xlat46 = ((x_806 * 4.0f) + 2.0f);
  let x_815 : vec4<f32> = u_xlat6;
  let x_818 : f32 = x_90.x_GlobalMipBias.x;
  let x_819 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_815.x, x_815.z), x_818);
  u_xlat5.x = x_819.x;
  let x_823 : f32 = u_xlat5.x;
  u_xlat6.x = (x_823 + -1.0f);
  let x_828 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_830 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_828 * x_830) + 1.0f);
  let x_835 : f32 = u_xlat5.x;
  let x_837 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_835, x_837);
  let x_842 : vec4<f32> = vs_INTERP9;
  let x_843 : vec2<f32> = vec2<f32>(x_842.x, x_842.y);
  let x_845 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_843.x, x_843.y, x_845);
  let x_853 : vec3<f32> = txVec1;
  let x_855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_853.xy, x_853.z);
  u_xlat20.x = x_855;
  let x_858 : f32 = u_xlat20.x;
  let x_860 : f32 = x_272.x_MainLightShadowParams.x;
  let x_862 : f32 = u_xlat43;
  u_xlat43 = ((x_858 * x_860) + x_862);
  let x_866 : f32 = vs_INTERP9.z;
  u_xlatb20.x = (0.0f >= x_866);
  let x_871 : f32 = vs_INTERP9.z;
  u_xlatb34 = (x_871 >= 1.0f);
  let x_873 : bool = u_xlatb34;
  let x_875 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_873 | x_875);
  let x_879 : bool = u_xlatb20.x;
  let x_880 : f32 = u_xlat43;
  u_xlat43 = select(x_880, 1.0f, x_879);
  let x_882 : vec3<f32> = vs_INTERP0;
  let x_884 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat20 = (x_882 + -(x_884));
  let x_887 : vec3<f32> = u_xlat20;
  let x_888 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_887, x_888);
  let x_892 : f32 = u_xlat20.x;
  let x_894 : f32 = x_272.x_MainLightShadowParams.z;
  let x_897 : f32 = x_272.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_892 * x_894) + x_897);
  let x_901 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_901, 0.0f, 1.0f);
  let x_905 : f32 = u_xlat43;
  u_xlat34 = (-(x_905) + 1.0f);
  let x_909 : f32 = u_xlat20.x;
  let x_910 : f32 = u_xlat34;
  let x_912 : f32 = u_xlat43;
  u_xlat43 = ((x_909 * x_910) + x_912);
  let x_920 : f32 = x_918.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_920 == -1.0f));
  let x_924 : bool = u_xlatb20.x;
  if (x_924) {
    let x_927 : vec3<f32> = vs_INTERP0;
    let x_930 : vec4<f32> = x_918.x_MainLightWorldToLight[1i];
    let x_932 : vec2<f32> = (vec2<f32>(x_927.y, x_927.y) * vec2<f32>(x_930.x, x_930.y));
    let x_933 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_932.x, x_932.y, x_933.z);
    let x_936 : vec4<f32> = x_918.x_MainLightWorldToLight[0i];
    let x_938 : vec3<f32> = vs_INTERP0;
    let x_941 : vec3<f32> = u_xlat20;
    let x_943 : vec2<f32> = ((vec2<f32>(x_936.x, x_936.y) * vec2<f32>(x_938.x, x_938.x)) + vec2<f32>(x_941.x, x_941.y));
    let x_944 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_943.x, x_943.y, x_944.z);
    let x_947 : vec4<f32> = x_918.x_MainLightWorldToLight[2i];
    let x_949 : vec3<f32> = vs_INTERP0;
    let x_952 : vec3<f32> = u_xlat20;
    let x_954 : vec2<f32> = ((vec2<f32>(x_947.x, x_947.y) * vec2<f32>(x_949.z, x_949.z)) + vec2<f32>(x_952.x, x_952.y));
    let x_955 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_954.x, x_954.y, x_955.z);
    let x_957 : vec3<f32> = u_xlat20;
    let x_960 : vec4<f32> = x_918.x_MainLightWorldToLight[3i];
    let x_962 : vec2<f32> = (vec2<f32>(x_957.x, x_957.y) + vec2<f32>(x_960.x, x_960.y));
    let x_963 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_962.x, x_962.y, x_963.z);
    let x_965 : vec3<f32> = u_xlat20;
    let x_969 : vec2<f32> = ((vec2<f32>(x_965.x, x_965.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_970 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_969.x, x_969.y, x_970.z);
    let x_978 : vec3<f32> = u_xlat20;
    let x_981 : f32 = x_90.x_GlobalMipBias.x;
    let x_982 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_978.x, x_978.y), x_981);
    u_xlat7 = x_982;
    let x_984 : f32 = x_918.x_MainLightCookieTextureFormat;
    let x_986 : f32 = x_918.x_MainLightCookieTextureFormat;
    let x_988 : f32 = x_918.x_MainLightCookieTextureFormat;
    let x_990 : f32 = x_918.x_MainLightCookieTextureFormat;
    let x_991 : vec4<f32> = vec4<f32>(x_984, x_986, x_988, x_990);
    let x_999 : vec4<bool> = (vec4<f32>(x_991.x, x_991.y, x_991.z, x_991.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_999.x, x_999.y);
    let x_1002 : bool = u_xlatb20.y;
    if (x_1002) {
      let x_1007 : f32 = u_xlat7.w;
      x_1003 = x_1007;
    } else {
      let x_1010 : f32 = u_xlat7.x;
      x_1003 = x_1010;
    }
    let x_1011 : f32 = x_1003;
    u_xlat34 = x_1011;
    let x_1013 : bool = u_xlatb20.x;
    if (x_1013) {
      let x_1017 : vec4<f32> = u_xlat7;
      x_1014 = vec3<f32>(x_1017.x, x_1017.y, x_1017.z);
    } else {
      let x_1020 : f32 = u_xlat34;
      x_1014 = vec3<f32>(x_1020, x_1020, x_1020);
    }
    let x_1022 : vec3<f32> = x_1014;
    u_xlat20 = x_1022;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1027 : vec3<f32> = u_xlat20;
  let x_1029 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat20 = (x_1027 * vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1032 : vec4<f32> = u_xlat6;
  let x_1034 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1032.x, x_1032.x, x_1032.x) * x_1034);
  let x_1036 : vec3<f32> = u_xlat2;
  let x_1038 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1036), vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1043 : f32 = u_xlat7.x;
  let x_1045 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1043 + x_1045);
  let x_1048 : vec4<f32> = u_xlat3;
  let x_1050 : vec4<f32> = u_xlat7;
  let x_1054 : vec3<f32> = u_xlat2;
  let x_1056 : vec3<f32> = ((vec3<f32>(x_1048.x, x_1048.y, x_1048.z) * -(vec3<f32>(x_1050.x, x_1050.x, x_1050.x))) + -(x_1054));
  let x_1057 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
  let x_1060 : vec4<f32> = u_xlat3;
  let x_1062 : vec3<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_1060.x, x_1060.y, x_1060.z), x_1062);
  let x_1064 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1064, 0.0f, 1.0f);
  let x_1066 : f32 = u_xlat49;
  u_xlat49 = (-(x_1066) + 1.0f);
  let x_1069 : f32 = u_xlat49;
  let x_1070 : f32 = u_xlat49;
  u_xlat49 = (x_1069 * x_1070);
  let x_1072 : f32 = u_xlat49;
  let x_1073 : f32 = u_xlat49;
  u_xlat49 = (x_1072 * x_1073);
  let x_1077 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_1077) * 0.699999988f) + 1.700000048f);
  let x_1085 : f32 = u_xlat15.x;
  let x_1087 : f32 = u_xlat8.x;
  u_xlat15.x = (x_1085 * x_1087);
  let x_1091 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1091 * 6.0f);
  let x_1103 : vec4<f32> = u_xlat7;
  let x_1106 : f32 = u_xlat15.x;
  let x_1107 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1103.x, x_1103.y, x_1103.z), x_1106);
  u_xlat8 = x_1107;
  let x_1109 : f32 = u_xlat8.w;
  u_xlat15.x = (x_1109 + -1.0f);
  let x_1113 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1115 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_1113 * x_1115) + 1.0f);
  let x_1120 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_1120, 0.0f);
  let x_1124 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_1124);
  let x_1128 : f32 = u_xlat15.x;
  let x_1130 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_1128 * x_1130);
  let x_1134 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_1134);
  let x_1138 : f32 = u_xlat15.x;
  let x_1140 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_1138 * x_1140);
  let x_1143 : vec4<f32> = u_xlat8;
  let x_1145 : vec3<f32> = u_xlat15;
  let x_1147 : vec3<f32> = (vec3<f32>(x_1143.x, x_1143.y, x_1143.z) * vec3<f32>(x_1145.x, x_1145.x, x_1145.x));
  let x_1148 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
  let x_1150 : vec2<f32> = u_xlat29;
  let x_1152 : vec2<f32> = u_xlat29;
  let x_1156 : vec2<f32> = ((vec2<f32>(x_1150.x, x_1150.x) * vec2<f32>(x_1152.x, x_1152.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1157 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1156.x, x_1156.y, x_1157.z);
  let x_1160 : f32 = u_xlat15.y;
  u_xlat29.x = (1.0f / x_1160);
  let x_1163 : f32 = u_xlat45;
  u_xlat45 = (x_1163 + -0.039999999f);
  let x_1166 : f32 = u_xlat49;
  let x_1167 : f32 = u_xlat45;
  u_xlat45 = ((x_1166 * x_1167) + 0.039999999f);
  let x_1172 : f32 = u_xlat29.x;
  let x_1173 : f32 = u_xlat45;
  u_xlat29.x = (x_1172 * x_1173);
  let x_1176 : vec2<f32> = u_xlat29;
  let x_1178 : vec4<f32> = u_xlat7;
  let x_1180 : vec3<f32> = (vec3<f32>(x_1176.x, x_1176.x, x_1176.x) * vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
  let x_1181 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
  let x_1183 : vec3<f32> = u_xlat19;
  let x_1184 : vec3<f32> = u_xlat4;
  let x_1186 : vec4<f32> = u_xlat7;
  u_xlat19 = ((x_1183 * x_1184) + vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
  let x_1189 : f32 = u_xlat43;
  let x_1191 : f32 = x_161.unity_LightData.z;
  u_xlat29.x = (x_1189 * x_1191);
  let x_1194 : vec4<f32> = u_xlat3;
  let x_1197 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1194.x, x_1194.y, x_1194.z), vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
  let x_1200 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1200, 0.0f, 1.0f);
  let x_1202 : f32 = u_xlat43;
  let x_1204 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1202 * x_1204);
  let x_1207 : vec2<f32> = u_xlat29;
  let x_1209 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1207.x, x_1207.x, x_1207.x) * x_1209);
  let x_1211 : vec3<f32> = u_xlat2;
  let x_1213 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1215 : vec3<f32> = (x_1211 + vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1216 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
  let x_1218 : vec4<f32> = u_xlat7;
  let x_1220 : vec4<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_1218.x, x_1218.y, x_1218.z), vec3<f32>(x_1220.x, x_1220.y, x_1220.z));
  let x_1225 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_1225, 1.17549435e-37f);
  let x_1230 : f32 = u_xlat29.x;
  u_xlat29.x = inverseSqrt(x_1230);
  let x_1233 : vec2<f32> = u_xlat29;
  let x_1235 : vec4<f32> = u_xlat7;
  let x_1237 : vec3<f32> = (vec3<f32>(x_1233.x, x_1233.x, x_1233.x) * vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
  let x_1238 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);
  let x_1240 : vec4<f32> = u_xlat3;
  let x_1242 : vec4<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_1240.x, x_1240.y, x_1240.z), vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
  let x_1247 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_1247, 0.0f, 1.0f);
  let x_1251 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1253 : vec4<f32> = u_xlat7;
  u_xlat29.y = dot(vec3<f32>(x_1251.x, x_1251.y, x_1251.z), vec3<f32>(x_1253.x, x_1253.y, x_1253.z));
  let x_1258 : f32 = u_xlat29.y;
  u_xlat29.y = clamp(x_1258, 0.0f, 1.0f);
  let x_1261 : vec2<f32> = u_xlat29;
  let x_1262 : vec2<f32> = u_xlat29;
  u_xlat29 = (x_1261 * x_1262);
  let x_1265 : f32 = u_xlat29.x;
  let x_1267 : f32 = u_xlat15.x;
  u_xlat29.x = ((x_1265 * x_1267) + 1.000010014f);
  let x_1273 : f32 = u_xlat29.x;
  let x_1275 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1273 * x_1275);
  let x_1279 : f32 = u_xlat29.y;
  u_xlat43 = max(x_1279, 0.100000001f);
  let x_1282 : f32 = u_xlat43;
  let x_1284 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1282 * x_1284);
  let x_1287 : f32 = u_xlat46;
  let x_1289 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1287 * x_1289);
  let x_1292 : f32 = u_xlat44;
  let x_1294 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1292 / x_1294);
  let x_1297 : vec2<f32> = u_xlat29;
  let x_1301 : vec3<f32> = u_xlat4;
  let x_1302 : vec3<f32> = ((vec3<f32>(x_1297.x, x_1297.x, x_1297.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1301);
  let x_1303 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1303.w);
  let x_1305 : vec3<f32> = u_xlat20;
  let x_1306 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1305 * vec3<f32>(x_1306.x, x_1306.y, x_1306.z));
  let x_1311 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1313 : f32 = x_161.unity_LightData.y;
  u_xlat29.x = min(x_1311, x_1313);
  let x_1317 : f32 = u_xlat29.x;
  u_xlatu29 = bitcast<u32>(i32(x_1317));
  let x_1322 : f32 = x_918.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1324 : f32 = x_918.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1326 : f32 = x_918.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1328 : f32 = x_918.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1329 : vec4<f32> = vec4<f32>(x_1322, x_1324, x_1326, x_1328);
  let x_1335 : vec4<bool> = (vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1329.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1335.x, x_1335.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1346 : u32 = u_xlatu_loop_1;
    let x_1347 : u32 = u_xlatu29;
    if ((x_1346 < x_1347)) {
    } else {
      break;
    }
    let x_1350 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1350 >> 2u);
    let x_1353 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1353 & 3u));
    let x_1356 : u32 = u_xlatu45;
    let x_1359 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1356)];
    let x_1369 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1374 : vec4<u32> = indexable[x_1369];
    u_xlat45 = dot(x_1359, bitcast<vec4<f32>>(x_1374));
    let x_1377 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1377));
    let x_1381 : vec3<f32> = vs_INTERP0;
    let x_1393 : u32 = u_xlatu45;
    let x_1396 : vec4<f32> = x_1392.x_AdditionalLightsPosition[bitcast<i32>(x_1393)];
    let x_1399 : u32 = u_xlatu45;
    let x_1402 : vec4<f32> = x_1392.x_AdditionalLightsPosition[bitcast<i32>(x_1399)];
    u_xlat9 = ((-(x_1381) * vec3<f32>(x_1396.w, x_1396.w, x_1396.w)) + vec3<f32>(x_1402.x, x_1402.y, x_1402.z));
    let x_1406 : vec3<f32> = u_xlat9;
    let x_1407 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1406, x_1407);
    let x_1409 : f32 = u_xlat35;
    u_xlat35 = max(x_1409, 6.10351562e-05f);
    let x_1412 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1412);
    let x_1415 : f32 = u_xlat49;
    let x_1417 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1415, x_1415, x_1415) * x_1417);
    let x_1420 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1420);
    let x_1422 : f32 = u_xlat35;
    let x_1423 : u32 = u_xlatu45;
    let x_1426 : f32 = x_1392.x_AdditionalLightsAttenuation[bitcast<i32>(x_1423)].x;
    u_xlat35 = (x_1422 * x_1426);
    let x_1428 : f32 = u_xlat35;
    let x_1430 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1428) * x_1430) + 1.0f);
    let x_1433 : f32 = u_xlat35;
    u_xlat35 = max(x_1433, 0.0f);
    let x_1435 : f32 = u_xlat35;
    let x_1436 : f32 = u_xlat35;
    u_xlat35 = (x_1435 * x_1436);
    let x_1438 : f32 = u_xlat35;
    let x_1439 : f32 = u_xlat50;
    u_xlat35 = (x_1438 * x_1439);
    let x_1441 : u32 = u_xlatu45;
    let x_1444 : vec4<f32> = x_1392.x_AdditionalLightsSpotDir[bitcast<i32>(x_1441)];
    let x_1446 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1444.x, x_1444.y, x_1444.z), x_1446);
    let x_1448 : f32 = u_xlat50;
    let x_1449 : u32 = u_xlatu45;
    let x_1452 : f32 = x_1392.x_AdditionalLightsAttenuation[bitcast<i32>(x_1449)].z;
    let x_1454 : u32 = u_xlatu45;
    let x_1457 : f32 = x_1392.x_AdditionalLightsAttenuation[bitcast<i32>(x_1454)].w;
    u_xlat50 = ((x_1448 * x_1452) + x_1457);
    let x_1459 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1459, 0.0f, 1.0f);
    let x_1461 : f32 = u_xlat50;
    let x_1462 : f32 = u_xlat50;
    u_xlat50 = (x_1461 * x_1462);
    let x_1464 : f32 = u_xlat35;
    let x_1465 : f32 = u_xlat50;
    u_xlat35 = (x_1464 * x_1465);
    let x_1468 : u32 = u_xlatu45;
    u_xlatu50 = (x_1468 >> 5u);
    let x_1471 : u32 = u_xlatu45;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1471) & 31i)));
    let x_1477 : i32 = u_xlati51;
    let x_1479 : u32 = u_xlatu50;
    let x_1482 : f32 = x_918.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1479)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1477) & bitcast<u32>(x_1482)));
    let x_1486 : i32 = u_xlati50;
    if ((x_1486 != 0i)) {
      let x_1496 : u32 = u_xlatu45;
      let x_1499 : f32 = x_1495.x_AdditionalLightsLightTypes[bitcast<i32>(x_1496)].el;
      u_xlati50 = i32(x_1499);
      let x_1501 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1501 != 0i));
      let x_1505 : u32 = u_xlatu45;
      u_xlati52 = (bitcast<i32>(x_1505) << bitcast<u32>(2i));
      let x_1508 : i32 = u_xlati51;
      if ((x_1508 != 0i)) {
        let x_1513 : vec3<f32> = vs_INTERP0;
        let x_1515 : i32 = u_xlati52;
        let x_1518 : i32 = u_xlati52;
        let x_1522 : vec4<f32> = x_1495.x_AdditionalLightsWorldToLights[((x_1515 + 1i) / 4i)][((x_1518 + 1i) % 4i)];
        let x_1524 : vec3<f32> = (vec3<f32>(x_1513.y, x_1513.y, x_1513.y) * vec3<f32>(x_1522.x, x_1522.y, x_1522.w));
        let x_1525 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1524.x, x_1524.y, x_1524.z, x_1525.w);
        let x_1527 : i32 = u_xlati52;
        let x_1529 : i32 = u_xlati52;
        let x_1532 : vec4<f32> = x_1495.x_AdditionalLightsWorldToLights[(x_1527 / 4i)][(x_1529 % 4i)];
        let x_1534 : vec3<f32> = vs_INTERP0;
        let x_1537 : vec4<f32> = u_xlat11;
        let x_1539 : vec3<f32> = ((vec3<f32>(x_1532.x, x_1532.y, x_1532.w) * vec3<f32>(x_1534.x, x_1534.x, x_1534.x)) + vec3<f32>(x_1537.x, x_1537.y, x_1537.z));
        let x_1540 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1539.x, x_1539.y, x_1539.z, x_1540.w);
        let x_1542 : i32 = u_xlati52;
        let x_1545 : i32 = u_xlati52;
        let x_1549 : vec4<f32> = x_1495.x_AdditionalLightsWorldToLights[((x_1542 + 2i) / 4i)][((x_1545 + 2i) % 4i)];
        let x_1551 : vec3<f32> = vs_INTERP0;
        let x_1554 : vec4<f32> = u_xlat11;
        let x_1556 : vec3<f32> = ((vec3<f32>(x_1549.x, x_1549.y, x_1549.w) * vec3<f32>(x_1551.z, x_1551.z, x_1551.z)) + vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
        let x_1557 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
        let x_1559 : vec4<f32> = u_xlat11;
        let x_1561 : i32 = u_xlati52;
        let x_1564 : i32 = u_xlati52;
        let x_1568 : vec4<f32> = x_1495.x_AdditionalLightsWorldToLights[((x_1561 + 3i) / 4i)][((x_1564 + 3i) % 4i)];
        let x_1570 : vec3<f32> = (vec3<f32>(x_1559.x, x_1559.y, x_1559.z) + vec3<f32>(x_1568.x, x_1568.y, x_1568.w));
        let x_1571 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1570.x, x_1570.y, x_1570.z, x_1571.w);
        let x_1573 : vec4<f32> = u_xlat11;
        let x_1575 : vec4<f32> = u_xlat11;
        let x_1577 : vec2<f32> = (vec2<f32>(x_1573.x, x_1573.y) / vec2<f32>(x_1575.z, x_1575.z));
        let x_1578 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1577.x, x_1577.y, x_1578.z, x_1578.w);
        let x_1580 : vec4<f32> = u_xlat11;
        let x_1583 : vec2<f32> = ((vec2<f32>(x_1580.x, x_1580.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1584 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1583.x, x_1583.y, x_1584.z, x_1584.w);
        let x_1586 : vec4<f32> = u_xlat11;
        let x_1590 : vec2<f32> = clamp(vec2<f32>(x_1586.x, x_1586.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1591 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1590.x, x_1590.y, x_1591.z, x_1591.w);
        let x_1593 : u32 = u_xlatu45;
        let x_1596 : vec4<f32> = x_1495.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1593)];
        let x_1598 : vec4<f32> = u_xlat11;
        let x_1601 : u32 = u_xlatu45;
        let x_1604 : vec4<f32> = x_1495.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1601)];
        let x_1606 : vec2<f32> = ((vec2<f32>(x_1596.x, x_1596.y) * vec2<f32>(x_1598.x, x_1598.y)) + vec2<f32>(x_1604.z, x_1604.w));
        let x_1607 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1606.x, x_1606.y, x_1607.z, x_1607.w);
      } else {
        let x_1611 : i32 = u_xlati50;
        u_xlatb50 = (x_1611 == 1i);
        let x_1613 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1613);
        let x_1615 : i32 = u_xlati50;
        if ((x_1615 != 0i)) {
          let x_1620 : vec3<f32> = vs_INTERP0;
          let x_1622 : i32 = u_xlati52;
          let x_1625 : i32 = u_xlati52;
          let x_1629 : vec4<f32> = x_1495.x_AdditionalLightsWorldToLights[((x_1622 + 1i) / 4i)][((x_1625 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1620.y, x_1620.y) * vec2<f32>(x_1629.x, x_1629.y));
          let x_1632 : i32 = u_xlati52;
          let x_1634 : i32 = u_xlati52;
          let x_1637 : vec4<f32> = x_1495.x_AdditionalLightsWorldToLights[(x_1632 / 4i)][(x_1634 % 4i)];
          let x_1639 : vec3<f32> = vs_INTERP0;
          let x_1642 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1637.x, x_1637.y) * vec2<f32>(x_1639.x, x_1639.x)) + x_1642);
          let x_1644 : i32 = u_xlati52;
          let x_1647 : i32 = u_xlati52;
          let x_1651 : vec4<f32> = x_1495.x_AdditionalLightsWorldToLights[((x_1644 + 2i) / 4i)][((x_1647 + 2i) % 4i)];
          let x_1653 : vec3<f32> = vs_INTERP0;
          let x_1656 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1651.x, x_1651.y) * vec2<f32>(x_1653.z, x_1653.z)) + x_1656);
          let x_1658 : vec2<f32> = u_xlat39;
          let x_1659 : i32 = u_xlati52;
          let x_1662 : i32 = u_xlati52;
          let x_1666 : vec4<f32> = x_1495.x_AdditionalLightsWorldToLights[((x_1659 + 3i) / 4i)][((x_1662 + 3i) % 4i)];
          u_xlat39 = (x_1658 + vec2<f32>(x_1666.x, x_1666.y));
          let x_1669 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1669 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1672 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1672);
          let x_1674 : u32 = u_xlatu45;
          let x_1677 : vec4<f32> = x_1495.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1674)];
          let x_1679 : vec2<f32> = u_xlat39;
          let x_1681 : u32 = u_xlatu45;
          let x_1684 : vec4<f32> = x_1495.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1681)];
          let x_1686 : vec2<f32> = ((vec2<f32>(x_1677.x, x_1677.y) * x_1679) + vec2<f32>(x_1684.z, x_1684.w));
          let x_1687 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1686.x, x_1686.y, x_1687.z, x_1687.w);
        } else {
          let x_1691 : vec3<f32> = vs_INTERP0;
          let x_1693 : i32 = u_xlati52;
          let x_1696 : i32 = u_xlati52;
          let x_1700 : vec4<f32> = x_1495.x_AdditionalLightsWorldToLights[((x_1693 + 1i) / 4i)][((x_1696 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1691.y, x_1691.y, x_1691.y, x_1691.y) * x_1700);
          let x_1702 : i32 = u_xlati52;
          let x_1704 : i32 = u_xlati52;
          let x_1707 : vec4<f32> = x_1495.x_AdditionalLightsWorldToLights[(x_1702 / 4i)][(x_1704 % 4i)];
          let x_1708 : vec3<f32> = vs_INTERP0;
          let x_1711 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1707 * vec4<f32>(x_1708.x, x_1708.x, x_1708.x, x_1708.x)) + x_1711);
          let x_1713 : i32 = u_xlati52;
          let x_1716 : i32 = u_xlati52;
          let x_1720 : vec4<f32> = x_1495.x_AdditionalLightsWorldToLights[((x_1713 + 2i) / 4i)][((x_1716 + 2i) % 4i)];
          let x_1721 : vec3<f32> = vs_INTERP0;
          let x_1724 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1720 * vec4<f32>(x_1721.z, x_1721.z, x_1721.z, x_1721.z)) + x_1724);
          let x_1726 : vec4<f32> = u_xlat12;
          let x_1727 : i32 = u_xlati52;
          let x_1730 : i32 = u_xlati52;
          let x_1734 : vec4<f32> = x_1495.x_AdditionalLightsWorldToLights[((x_1727 + 3i) / 4i)][((x_1730 + 3i) % 4i)];
          u_xlat12 = (x_1726 + x_1734);
          let x_1736 : vec4<f32> = u_xlat12;
          let x_1738 : vec4<f32> = u_xlat12;
          let x_1740 : vec3<f32> = (vec3<f32>(x_1736.x, x_1736.y, x_1736.z) / vec3<f32>(x_1738.w, x_1738.w, x_1738.w));
          let x_1741 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1740.x, x_1740.y, x_1740.z, x_1741.w);
          let x_1743 : vec4<f32> = u_xlat12;
          let x_1745 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1743.x, x_1743.y, x_1743.z), vec3<f32>(x_1745.x, x_1745.y, x_1745.z));
          let x_1748 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1748);
          let x_1750 : f32 = u_xlat50;
          let x_1752 : vec4<f32> = u_xlat12;
          let x_1754 : vec3<f32> = (vec3<f32>(x_1750, x_1750, x_1750) * vec3<f32>(x_1752.x, x_1752.y, x_1752.z));
          let x_1755 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1755.w);
          let x_1757 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1757.x, x_1757.y, x_1757.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1762 : f32 = u_xlat50;
          u_xlat50 = max(x_1762, 0.000001f);
          let x_1765 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1765);
          let x_1768 : f32 = u_xlat50;
          let x_1770 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1768, x_1768, x_1768) * vec3<f32>(x_1770.z, x_1770.x, x_1770.y));
          let x_1774 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1774);
          let x_1778 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1778, 0.0f, 1.0f);
          let x_1782 : vec3<f32> = u_xlat13;
          let x_1785 : vec4<bool> = (vec4<f32>(x_1782.y, x_1782.z, x_1782.y, x_1782.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1785.x, x_1785.y);
          let x_1788 : bool = u_xlatb39.x;
          if (x_1788) {
            let x_1793 : f32 = u_xlat13.x;
            x_1789 = x_1793;
          } else {
            let x_1796 : f32 = u_xlat13.x;
            x_1789 = -(x_1796);
          }
          let x_1798 : f32 = x_1789;
          u_xlat39.x = x_1798;
          let x_1801 : bool = u_xlatb39.y;
          if (x_1801) {
            let x_1806 : f32 = u_xlat13.x;
            x_1802 = x_1806;
          } else {
            let x_1809 : f32 = u_xlat13.x;
            x_1802 = -(x_1809);
          }
          let x_1811 : f32 = x_1802;
          u_xlat39.y = x_1811;
          let x_1813 : vec4<f32> = u_xlat12;
          let x_1815 : f32 = u_xlat50;
          let x_1818 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1813.x, x_1813.y) * vec2<f32>(x_1815, x_1815)) + x_1818);
          let x_1820 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1820 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1823 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1823, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1827 : u32 = u_xlatu45;
          let x_1830 : vec4<f32> = x_1495.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1827)];
          let x_1832 : vec2<f32> = u_xlat39;
          let x_1834 : u32 = u_xlatu45;
          let x_1837 : vec4<f32> = x_1495.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1834)];
          let x_1839 : vec2<f32> = ((vec2<f32>(x_1830.x, x_1830.y) * x_1832) + vec2<f32>(x_1837.z, x_1837.w));
          let x_1840 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1839.x, x_1839.y, x_1840.z, x_1840.w);
        }
      }
      let x_1847 : vec4<f32> = u_xlat11;
      let x_1850 : f32 = x_90.x_GlobalMipBias.x;
      let x_1851 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1847.x, x_1847.y), x_1850);
      u_xlat11 = x_1851;
      let x_1853 : bool = u_xlatb7.y;
      if (x_1853) {
        let x_1858 : f32 = u_xlat11.w;
        x_1854 = x_1858;
      } else {
        let x_1861 : f32 = u_xlat11.x;
        x_1854 = x_1861;
      }
      let x_1862 : f32 = x_1854;
      u_xlat50 = x_1862;
      let x_1864 : bool = u_xlatb7.x;
      if (x_1864) {
        let x_1868 : vec4<f32> = u_xlat11;
        x_1865 = vec3<f32>(x_1868.x, x_1868.y, x_1868.z);
      } else {
        let x_1871 : f32 = u_xlat50;
        x_1865 = vec3<f32>(x_1871, x_1871, x_1871);
      }
      let x_1873 : vec3<f32> = x_1865;
      let x_1874 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1873.x, x_1873.y, x_1873.z, x_1874.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1880 : vec4<f32> = u_xlat11;
    let x_1882 : u32 = u_xlatu45;
    let x_1885 : vec4<f32> = x_1392.x_AdditionalLightsColor[bitcast<i32>(x_1882)];
    let x_1887 : vec3<f32> = (vec3<f32>(x_1880.x, x_1880.y, x_1880.z) * vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
    let x_1888 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
    let x_1890 : vec4<f32> = u_xlat6;
    let x_1892 : vec4<f32> = u_xlat11;
    let x_1894 : vec3<f32> = (vec3<f32>(x_1890.x, x_1890.x, x_1890.x) * vec3<f32>(x_1892.x, x_1892.y, x_1892.z));
    let x_1895 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1894.x, x_1894.y, x_1894.z, x_1895.w);
    let x_1897 : vec4<f32> = u_xlat3;
    let x_1899 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1897.x, x_1897.y, x_1897.z), x_1899);
    let x_1901 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1901, 0.0f, 1.0f);
    let x_1903 : f32 = u_xlat45;
    let x_1904 : f32 = u_xlat35;
    u_xlat45 = (x_1903 * x_1904);
    let x_1906 : f32 = u_xlat45;
    let x_1908 : vec4<f32> = u_xlat11;
    let x_1910 : vec3<f32> = (vec3<f32>(x_1906, x_1906, x_1906) * vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
    let x_1911 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
    let x_1913 : vec3<f32> = u_xlat9;
    let x_1914 : f32 = u_xlat49;
    let x_1917 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_1913 * vec3<f32>(x_1914, x_1914, x_1914)) + x_1917);
    let x_1919 : vec3<f32> = u_xlat9;
    let x_1920 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1919, x_1920);
    let x_1922 : f32 = u_xlat45;
    u_xlat45 = max(x_1922, 1.17549435e-37f);
    let x_1924 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1924);
    let x_1926 : f32 = u_xlat45;
    let x_1928 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1926, x_1926, x_1926) * x_1928);
    let x_1930 : vec4<f32> = u_xlat3;
    let x_1932 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1930.x, x_1930.y, x_1930.z), x_1932);
    let x_1934 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1934, 0.0f, 1.0f);
    let x_1936 : vec3<f32> = u_xlat10;
    let x_1937 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1936, x_1937);
    let x_1939 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1939, 0.0f, 1.0f);
    let x_1941 : f32 = u_xlat45;
    let x_1942 : f32 = u_xlat45;
    u_xlat45 = (x_1941 * x_1942);
    let x_1944 : f32 = u_xlat45;
    let x_1946 : f32 = u_xlat15.x;
    u_xlat45 = ((x_1944 * x_1946) + 1.000010014f);
    let x_1949 : f32 = u_xlat35;
    let x_1950 : f32 = u_xlat35;
    u_xlat35 = (x_1949 * x_1950);
    let x_1952 : f32 = u_xlat45;
    let x_1953 : f32 = u_xlat45;
    u_xlat45 = (x_1952 * x_1953);
    let x_1955 : f32 = u_xlat35;
    u_xlat35 = max(x_1955, 0.100000001f);
    let x_1957 : f32 = u_xlat45;
    let x_1958 : f32 = u_xlat35;
    u_xlat45 = (x_1957 * x_1958);
    let x_1960 : f32 = u_xlat46;
    let x_1961 : f32 = u_xlat45;
    u_xlat45 = (x_1960 * x_1961);
    let x_1963 : f32 = u_xlat44;
    let x_1964 : f32 = u_xlat45;
    u_xlat45 = (x_1963 / x_1964);
    let x_1966 : f32 = u_xlat45;
    let x_1969 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_1966, x_1966, x_1966) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1969);
    let x_1971 : vec3<f32> = u_xlat9;
    let x_1972 : vec4<f32> = u_xlat11;
    let x_1975 : vec4<f32> = u_xlat8;
    let x_1977 : vec3<f32> = ((x_1971 * vec3<f32>(x_1972.x, x_1972.y, x_1972.z)) + vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
    let x_1978 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);

    continuing {
      let x_1980 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1980 + bitcast<u32>(1i));
    }
  }
  let x_1982 : vec3<f32> = u_xlat19;
  let x_1983 : vec4<f32> = u_xlat5;
  let x_1986 : vec3<f32> = u_xlat20;
  u_xlat15 = ((x_1982 * vec3<f32>(x_1983.x, x_1983.x, x_1983.x)) + x_1986);
  let x_1988 : vec4<f32> = u_xlat8;
  let x_1990 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_1988.x, x_1988.y, x_1988.z) + x_1990);
  let x_1994 : vec4<f32> = vs_INTERP4;
  let x_1996 : vec3<f32> = u_xlat0;
  let x_1998 : vec3<f32> = u_xlat15;
  let x_1999 : vec3<f32> = ((vec3<f32>(x_1994.w, x_1994.w, x_1994.w) * x_1996) + x_1998);
  let x_2000 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
  let x_2002 : bool = u_xlatb1;
  let x_2003 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_2003, x_2002);
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

