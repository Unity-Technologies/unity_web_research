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
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_215 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_272 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_983 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1455 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1558 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var x_522 : f32;
  var u_xlatb15 : vec2<bool>;
  var x_553 : f32;
  var u_xlat29 : vec2<f32>;
  var u_xlatb1 : bool;
  var x_603 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var x_1067 : f32;
  var x_1078 : vec3<f32>;
  var u_xlat49 : f32;
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
  var x_1852 : f32;
  var x_1865 : f32;
  var x_1917 : f32;
  var x_1928 : vec3<f32>;
  var u_xlatu0 : u32;
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
  let x_404 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat1 = (abs(x_400) * vec3<f32>(x_404.x, x_404.y, x_404.x));
  let x_410 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_410);
  let x_414 : u32 = u_xlatu1.z;
  u_xlatu29 = (x_414 * 1025u);
  let x_418 : u32 = u_xlatu29;
  u_xlatu3 = (x_418 >> 6u);
  let x_422 : u32 = u_xlatu29;
  let x_423 : u32 = u_xlatu3;
  u_xlati29 = bitcast<i32>((x_422 ^ x_423));
  let x_426 : i32 = u_xlati29;
  u_xlatu29 = (bitcast<u32>(x_426) * 9u);
  let x_430 : u32 = u_xlatu29;
  u_xlatu3 = (x_430 >> 11u);
  let x_433 : u32 = u_xlatu29;
  let x_434 : u32 = u_xlatu3;
  u_xlati29 = bitcast<i32>((x_433 ^ x_434));
  let x_437 : i32 = u_xlati29;
  u_xlati29 = (x_437 * 32769i);
  let x_441 : i32 = u_xlati29;
  let x_444 : u32 = u_xlatu1.y;
  u_xlati15 = bitcast<i32>((bitcast<u32>(x_441) ^ x_444));
  let x_448 : i32 = u_xlati15;
  u_xlatu15 = (bitcast<u32>(x_448) * 1025u);
  let x_451 : u32 = u_xlatu15;
  u_xlatu29 = (x_451 >> 6u);
  let x_453 : u32 = u_xlatu29;
  let x_454 : u32 = u_xlatu15;
  u_xlati15 = bitcast<i32>((x_453 ^ x_454));
  let x_457 : i32 = u_xlati15;
  u_xlatu15 = (bitcast<u32>(x_457) * 9u);
  let x_460 : u32 = u_xlatu15;
  u_xlatu29 = (x_460 >> 11u);
  let x_462 : u32 = u_xlatu29;
  let x_463 : u32 = u_xlatu15;
  u_xlati15 = bitcast<i32>((x_462 ^ x_463));
  let x_466 : i32 = u_xlati15;
  u_xlati15 = (x_466 * 32769i);
  let x_469 : i32 = u_xlati15;
  let x_472 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_469) ^ x_472));
  let x_475 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_475) * 1025u);
  let x_480 : u32 = u_xlatu1.x;
  u_xlatu15 = (x_480 >> 6u);
  let x_482 : u32 = u_xlatu15;
  let x_484 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_482 ^ x_484));
  let x_487 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_487) * 9u);
  let x_492 : u32 = u_xlatu1.x;
  u_xlatu15 = (x_492 >> 11u);
  let x_494 : u32 = u_xlatu15;
  let x_496 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_494 ^ x_496));
  let x_499 : i32 = u_xlati1;
  u_xlati1 = (x_499 * 32769i);
  param = 1065353216i;
  let x_505 : i32 = u_xlati1;
  param_1 = x_505;
  param_2 = 0i;
  param_3 = 23i;
  let x_508 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat1.x = bitcast<f32>(x_508);
  let x_512 : f32 = u_xlat1.x;
  u_xlat1.x = (x_512 + -1.0f);
  let x_517 : f32 = u_xlat1.x;
  u_xlat15.x = (-(x_517) + 1.0f);
  let x_521 : bool = u_xlatb44;
  if (x_521) {
    let x_526 : f32 = u_xlat1.x;
    x_522 = x_526;
  } else {
    let x_529 : f32 = u_xlat15.x;
    x_522 = x_529;
  }
  let x_530 : f32 = x_522;
  u_xlat1.x = x_530;
  let x_532 : f32 = u_xlat42;
  let x_535 : f32 = u_xlat1.x;
  u_xlat42 = ((x_532 * 2.0f) + -(x_535));
  let x_538 : f32 = u_xlat42;
  let x_540 : f32 = u_xlat3.w;
  u_xlat1.x = (x_538 * x_540);
  let x_547 : f32 = u_xlat1.x;
  u_xlatb15.x = (x_547 >= 0.400000006f);
  let x_552 : bool = u_xlatb15.x;
  if (x_552) {
    let x_557 : f32 = u_xlat1.x;
    x_553 = x_557;
  } else {
    x_553 = 0.0f;
  }
  let x_559 : f32 = x_553;
  u_xlat15.x = x_559;
  let x_562 : f32 = u_xlat3.w;
  let x_563 : f32 = u_xlat42;
  u_xlat42 = ((x_562 * x_563) + -0.400000006f);
  let x_570 : f32 = u_xlat1.x;
  u_xlat29.x = dpdxCoarse(x_570);
  let x_574 : f32 = u_xlat1.x;
  u_xlat1.x = dpdyCoarse(x_574);
  let x_578 : f32 = u_xlat1.x;
  let x_581 : f32 = u_xlat29.x;
  u_xlat1.x = (abs(x_578) + abs(x_581));
  let x_586 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_586, 0.0001f);
  let x_590 : f32 = u_xlat42;
  let x_592 : f32 = u_xlat1.x;
  u_xlat42 = (x_590 / x_592);
  let x_594 : f32 = u_xlat42;
  u_xlat42 = (x_594 + 0.5f);
  let x_596 : f32 = u_xlat42;
  u_xlat42 = clamp(x_596, 0.0f, 1.0f);
  let x_600 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb1 = !((x_600 == 0.0f));
  let x_602 : bool = u_xlatb1;
  if (x_602) {
    let x_606 : f32 = u_xlat42;
    x_603 = x_606;
  } else {
    let x_609 : f32 = u_xlat15.x;
    x_603 = x_609;
  }
  let x_610 : f32 = x_603;
  u_xlat42 = x_610;
  let x_611 : f32 = u_xlat42;
  u_xlat15.x = (x_611 + -0.0001f);
  let x_616 : f32 = u_xlat15.x;
  u_xlatb15.x = (x_616 < 0.0f);
  let x_620 : bool = u_xlatb15.x;
  if (((select(0i, 1i, x_620) * -1i) != 0i)) {
    discard;
  }
  let x_630 : f32 = vs_INTERP2.w;
  u_xlatb15.x = (0.0f < x_630);
  let x_634 : f32 = x_161.unity_WorldTransformParams.w;
  u_xlatb15.y = (x_634 >= 0.0f);
  let x_638 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_638);
  let x_642 : bool = u_xlatb15.y;
  u_xlat15.y = select(-1.0f, 1.0f, x_642);
  let x_646 : f32 = u_xlat15.y;
  let x_648 : f32 = u_xlat15.x;
  u_xlat15.x = (x_646 * x_648);
  let x_651 : vec3<f32> = vs_INTERP1;
  let x_653 : vec4<f32> = vs_INTERP2;
  let x_655 : vec3<f32> = (vec3<f32>(x_651.z, x_651.x, x_651.y) * vec3<f32>(x_653.y, x_653.z, x_653.x));
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec3<f32> = vs_INTERP1;
  let x_660 : vec4<f32> = vs_INTERP2;
  let x_663 : vec4<f32> = u_xlat3;
  let x_666 : vec3<f32> = ((vec3<f32>(x_658.y, x_658.z, x_658.x) * vec3<f32>(x_660.z, x_660.x, x_660.y)) + -(vec3<f32>(x_663.x, x_663.y, x_663.z)));
  let x_667 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec3<f32> = u_xlat15;
  let x_671 : vec4<f32> = u_xlat3;
  let x_673 : vec3<f32> = (vec3<f32>(x_669.x, x_669.x, x_669.x) * vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat3;
  let x_678 : vec3<f32> = u_xlat19;
  let x_680 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_678.y, x_678.y, x_678.y));
  let x_681 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec3<f32> = u_xlat19;
  let x_685 : vec4<f32> = vs_INTERP2;
  let x_688 : vec4<f32> = u_xlat3;
  let x_690 : vec3<f32> = ((vec3<f32>(x_683.x, x_683.x, x_683.x) * vec3<f32>(x_685.x, x_685.y, x_685.z)) + vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec3<f32> = u_xlat19;
  let x_695 : vec3<f32> = vs_INTERP1;
  let x_697 : vec4<f32> = u_xlat3;
  let x_699 : vec3<f32> = ((vec3<f32>(x_693.z, x_693.z, x_693.z) * x_695) + vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat3;
  let x_704 : vec4<f32> = u_xlat3;
  u_xlat15.x = dot(vec3<f32>(x_702.x, x_702.y, x_702.z), vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_709 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_709);
  let x_712 : vec3<f32> = u_xlat15;
  let x_714 : vec4<f32> = u_xlat3;
  let x_716 : vec3<f32> = (vec3<f32>(x_712.x, x_712.x, x_712.x) * vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  u_xlat3.w = 1.0f;
  let x_722 : vec4<f32> = x_161.unity_SHAr;
  let x_723 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_722, x_723);
  let x_728 : vec4<f32> = x_161.unity_SHAg;
  let x_729 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_728, x_729);
  let x_734 : vec4<f32> = x_161.unity_SHAb;
  let x_735 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_734, x_735);
  let x_739 : vec4<f32> = u_xlat3;
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_739.y, x_739.z, x_739.z, x_739.x) * vec4<f32>(x_741.x, x_741.y, x_741.z, x_741.z));
  let x_747 : vec4<f32> = x_161.unity_SHBr;
  let x_748 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_747, x_748);
  let x_753 : vec4<f32> = x_161.unity_SHBg;
  let x_754 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_753, x_754);
  let x_758 : vec4<f32> = x_161.unity_SHBb;
  let x_759 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_758, x_759);
  let x_763 : f32 = u_xlat3.y;
  let x_765 : f32 = u_xlat3.y;
  u_xlat15.x = (x_763 * x_765);
  let x_769 : f32 = u_xlat3.x;
  let x_771 : f32 = u_xlat3.x;
  let x_774 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_769 * x_771) + -(x_774));
  let x_780 : vec4<f32> = x_161.unity_SHC;
  let x_782 : vec3<f32> = u_xlat15;
  let x_785 : vec4<f32> = u_xlat8;
  u_xlat19 = ((vec3<f32>(x_780.x, x_780.y, x_780.z) * vec3<f32>(x_782.x, x_782.x, x_782.x)) + vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec3<f32> = u_xlat19;
  let x_789 : vec4<f32> = u_xlat6;
  u_xlat19 = (x_788 + vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : vec3<f32> = u_xlat19;
  u_xlat19 = max(x_792, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_797 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_798 : vec2<f32> = vec2<f32>(x_797.x, x_797.y);
  let x_802 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_798.x, x_798.y));
  let x_803 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_802.x, x_802.y, x_803.z);
  let x_805 : vec3<f32> = u_xlat15;
  let x_807 : vec4<f32> = hlslcc_FragCoord;
  let x_809 : vec2<f32> = (vec2<f32>(x_805.x, x_805.y) * vec2<f32>(x_807.x, x_807.y));
  let x_810 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_809.x, x_809.y, x_810.z, x_810.w);
  let x_813 : f32 = u_xlat6.y;
  let x_816 : f32 = x_90.x_ScaleBiasRt.x;
  let x_819 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_813 * x_816) + x_819);
  let x_823 : f32 = u_xlat15.x;
  u_xlat6.z = (-(x_823) + 1.0f);
  let x_828 : f32 = u_xlat5.x;
  u_xlat5.x = x_828;
  let x_831 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_831, 0.0f, 1.0f);
  let x_834 : f32 = u_xlat42;
  u_xlat42 = x_834;
  let x_835 : f32 = u_xlat42;
  u_xlat42 = clamp(x_835, 0.0f, 1.0f);
  let x_837 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_837 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_842 : f32 = u_xlat5.x;
  u_xlat15.x = (-(x_842) + 1.0f);
  let x_847 : f32 = u_xlat15.x;
  let x_849 : f32 = u_xlat15.x;
  u_xlat29.x = (x_847 * x_849);
  let x_853 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_853, 0.0078125f);
  let x_858 : f32 = u_xlat29.x;
  let x_860 : f32 = u_xlat29.x;
  u_xlat44 = (x_858 * x_860);
  let x_864 : f32 = u_xlat5.x;
  u_xlat45 = (x_864 + 0.040000021f);
  let x_867 : f32 = u_xlat45;
  u_xlat45 = min(x_867, 1.0f);
  let x_871 : f32 = u_xlat29.x;
  u_xlat46 = ((x_871 * 4.0f) + 2.0f);
  let x_880 : vec4<f32> = u_xlat6;
  let x_883 : f32 = x_90.x_GlobalMipBias.x;
  let x_884 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_880.x, x_880.z), x_883);
  u_xlat5.x = x_884.x;
  let x_888 : f32 = u_xlat5.x;
  u_xlat6.x = (x_888 + -1.0f);
  let x_893 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_895 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_893 * x_895) + 1.0f);
  let x_900 : f32 = u_xlat5.x;
  let x_902 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_900, x_902);
  let x_907 : vec4<f32> = vs_INTERP9;
  let x_908 : vec2<f32> = vec2<f32>(x_907.x, x_907.y);
  let x_910 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_908.x, x_908.y, x_910);
  let x_918 : vec3<f32> = txVec1;
  let x_920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_918.xy, x_918.z);
  u_xlat20.x = x_920;
  let x_923 : f32 = u_xlat20.x;
  let x_925 : f32 = x_272.x_MainLightShadowParams.x;
  let x_927 : f32 = u_xlat43;
  u_xlat43 = ((x_923 * x_925) + x_927);
  let x_931 : f32 = vs_INTERP9.z;
  u_xlatb20.x = (0.0f >= x_931);
  let x_936 : f32 = vs_INTERP9.z;
  u_xlatb34 = (x_936 >= 1.0f);
  let x_938 : bool = u_xlatb34;
  let x_940 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_938 | x_940);
  let x_944 : bool = u_xlatb20.x;
  let x_945 : f32 = u_xlat43;
  u_xlat43 = select(x_945, 1.0f, x_944);
  let x_947 : vec3<f32> = vs_INTERP0;
  let x_949 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat20 = (x_947 + -(x_949));
  let x_952 : vec3<f32> = u_xlat20;
  let x_953 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_952, x_953);
  let x_957 : f32 = u_xlat20.x;
  let x_959 : f32 = x_272.x_MainLightShadowParams.z;
  let x_962 : f32 = x_272.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_957 * x_959) + x_962);
  let x_966 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_966, 0.0f, 1.0f);
  let x_970 : f32 = u_xlat43;
  u_xlat34 = (-(x_970) + 1.0f);
  let x_974 : f32 = u_xlat20.x;
  let x_975 : f32 = u_xlat34;
  let x_977 : f32 = u_xlat43;
  u_xlat43 = ((x_974 * x_975) + x_977);
  let x_985 : f32 = x_983.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_985 == -1.0f));
  let x_989 : bool = u_xlatb20.x;
  if (x_989) {
    let x_992 : vec3<f32> = vs_INTERP0;
    let x_995 : vec4<f32> = x_983.x_MainLightWorldToLight[1i];
    let x_997 : vec2<f32> = (vec2<f32>(x_992.y, x_992.y) * vec2<f32>(x_995.x, x_995.y));
    let x_998 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_997.x, x_997.y, x_998.z);
    let x_1001 : vec4<f32> = x_983.x_MainLightWorldToLight[0i];
    let x_1003 : vec3<f32> = vs_INTERP0;
    let x_1006 : vec3<f32> = u_xlat20;
    let x_1008 : vec2<f32> = ((vec2<f32>(x_1001.x, x_1001.y) * vec2<f32>(x_1003.x, x_1003.x)) + vec2<f32>(x_1006.x, x_1006.y));
    let x_1009 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1008.x, x_1008.y, x_1009.z);
    let x_1012 : vec4<f32> = x_983.x_MainLightWorldToLight[2i];
    let x_1014 : vec3<f32> = vs_INTERP0;
    let x_1017 : vec3<f32> = u_xlat20;
    let x_1019 : vec2<f32> = ((vec2<f32>(x_1012.x, x_1012.y) * vec2<f32>(x_1014.z, x_1014.z)) + vec2<f32>(x_1017.x, x_1017.y));
    let x_1020 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1019.x, x_1019.y, x_1020.z);
    let x_1022 : vec3<f32> = u_xlat20;
    let x_1025 : vec4<f32> = x_983.x_MainLightWorldToLight[3i];
    let x_1027 : vec2<f32> = (vec2<f32>(x_1022.x, x_1022.y) + vec2<f32>(x_1025.x, x_1025.y));
    let x_1028 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1027.x, x_1027.y, x_1028.z);
    let x_1030 : vec3<f32> = u_xlat20;
    let x_1034 : vec2<f32> = ((vec2<f32>(x_1030.x, x_1030.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1035 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1034.x, x_1034.y, x_1035.z);
    let x_1042 : vec3<f32> = u_xlat20;
    let x_1045 : f32 = x_90.x_GlobalMipBias.x;
    let x_1046 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1042.x, x_1042.y), x_1045);
    u_xlat7 = x_1046;
    let x_1048 : f32 = x_983.x_MainLightCookieTextureFormat;
    let x_1050 : f32 = x_983.x_MainLightCookieTextureFormat;
    let x_1052 : f32 = x_983.x_MainLightCookieTextureFormat;
    let x_1054 : f32 = x_983.x_MainLightCookieTextureFormat;
    let x_1055 : vec4<f32> = vec4<f32>(x_1048, x_1050, x_1052, x_1054);
    let x_1063 : vec4<bool> = (vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1055.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1063.x, x_1063.y);
    let x_1066 : bool = u_xlatb20.y;
    if (x_1066) {
      let x_1071 : f32 = u_xlat7.w;
      x_1067 = x_1071;
    } else {
      let x_1074 : f32 = u_xlat7.x;
      x_1067 = x_1074;
    }
    let x_1075 : f32 = x_1067;
    u_xlat34 = x_1075;
    let x_1077 : bool = u_xlatb20.x;
    if (x_1077) {
      let x_1081 : vec4<f32> = u_xlat7;
      x_1078 = vec3<f32>(x_1081.x, x_1081.y, x_1081.z);
    } else {
      let x_1084 : f32 = u_xlat34;
      x_1078 = vec3<f32>(x_1084, x_1084, x_1084);
    }
    let x_1086 : vec3<f32> = x_1078;
    u_xlat20 = x_1086;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1091 : vec3<f32> = u_xlat20;
  let x_1093 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat20 = (x_1091 * vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
  let x_1096 : vec4<f32> = u_xlat6;
  let x_1098 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1096.x, x_1096.x, x_1096.x) * x_1098);
  let x_1100 : vec3<f32> = u_xlat2;
  let x_1102 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1100), vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
  let x_1107 : f32 = u_xlat7.x;
  let x_1109 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1107 + x_1109);
  let x_1112 : vec4<f32> = u_xlat3;
  let x_1114 : vec4<f32> = u_xlat7;
  let x_1118 : vec3<f32> = u_xlat2;
  let x_1120 : vec3<f32> = ((vec3<f32>(x_1112.x, x_1112.y, x_1112.z) * -(vec3<f32>(x_1114.x, x_1114.x, x_1114.x))) + -(x_1118));
  let x_1121 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1124 : vec4<f32> = u_xlat3;
  let x_1126 : vec3<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_1124.x, x_1124.y, x_1124.z), x_1126);
  let x_1128 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1128, 0.0f, 1.0f);
  let x_1130 : f32 = u_xlat49;
  u_xlat49 = (-(x_1130) + 1.0f);
  let x_1133 : f32 = u_xlat49;
  let x_1134 : f32 = u_xlat49;
  u_xlat49 = (x_1133 * x_1134);
  let x_1136 : f32 = u_xlat49;
  let x_1137 : f32 = u_xlat49;
  u_xlat49 = (x_1136 * x_1137);
  let x_1140 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_1140) * 0.699999988f) + 1.700000048f);
  let x_1148 : f32 = u_xlat15.x;
  let x_1150 : f32 = u_xlat8.x;
  u_xlat15.x = (x_1148 * x_1150);
  let x_1154 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1154 * 6.0f);
  let x_1166 : vec4<f32> = u_xlat7;
  let x_1169 : f32 = u_xlat15.x;
  let x_1170 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1166.x, x_1166.y, x_1166.z), x_1169);
  u_xlat8 = x_1170;
  let x_1172 : f32 = u_xlat8.w;
  u_xlat15.x = (x_1172 + -1.0f);
  let x_1176 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1178 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_1176 * x_1178) + 1.0f);
  let x_1183 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_1183, 0.0f);
  let x_1187 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_1187);
  let x_1191 : f32 = u_xlat15.x;
  let x_1193 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_1191 * x_1193);
  let x_1197 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_1197);
  let x_1201 : f32 = u_xlat15.x;
  let x_1203 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_1201 * x_1203);
  let x_1206 : vec4<f32> = u_xlat8;
  let x_1208 : vec3<f32> = u_xlat15;
  let x_1210 : vec3<f32> = (vec3<f32>(x_1206.x, x_1206.y, x_1206.z) * vec3<f32>(x_1208.x, x_1208.x, x_1208.x));
  let x_1211 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1213 : vec2<f32> = u_xlat29;
  let x_1215 : vec2<f32> = u_xlat29;
  let x_1219 : vec2<f32> = ((vec2<f32>(x_1213.x, x_1213.x) * vec2<f32>(x_1215.x, x_1215.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1220 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1219.x, x_1219.y, x_1220.z);
  let x_1223 : f32 = u_xlat15.y;
  u_xlat29.x = (1.0f / x_1223);
  let x_1226 : f32 = u_xlat45;
  u_xlat45 = (x_1226 + -0.039999999f);
  let x_1229 : f32 = u_xlat49;
  let x_1230 : f32 = u_xlat45;
  u_xlat45 = ((x_1229 * x_1230) + 0.039999999f);
  let x_1235 : f32 = u_xlat29.x;
  let x_1236 : f32 = u_xlat45;
  u_xlat29.x = (x_1235 * x_1236);
  let x_1239 : vec2<f32> = u_xlat29;
  let x_1241 : vec4<f32> = u_xlat7;
  let x_1243 : vec3<f32> = (vec3<f32>(x_1239.x, x_1239.x, x_1239.x) * vec3<f32>(x_1241.x, x_1241.y, x_1241.z));
  let x_1244 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1244.w);
  let x_1246 : vec3<f32> = u_xlat19;
  let x_1247 : vec3<f32> = u_xlat4;
  let x_1249 : vec4<f32> = u_xlat7;
  u_xlat19 = ((x_1246 * x_1247) + vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
  let x_1252 : f32 = u_xlat43;
  let x_1254 : f32 = x_161.unity_LightData.z;
  u_xlat29.x = (x_1252 * x_1254);
  let x_1257 : vec4<f32> = u_xlat3;
  let x_1260 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1257.x, x_1257.y, x_1257.z), vec3<f32>(x_1260.x, x_1260.y, x_1260.z));
  let x_1263 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1263, 0.0f, 1.0f);
  let x_1265 : f32 = u_xlat43;
  let x_1267 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1265 * x_1267);
  let x_1270 : vec2<f32> = u_xlat29;
  let x_1272 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1270.x, x_1270.x, x_1270.x) * x_1272);
  let x_1274 : vec3<f32> = u_xlat2;
  let x_1276 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1278 : vec3<f32> = (x_1274 + vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
  let x_1279 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
  let x_1281 : vec4<f32> = u_xlat7;
  let x_1283 : vec4<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_1281.x, x_1281.y, x_1281.z), vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
  let x_1288 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_1288, 1.17549435e-37f);
  let x_1293 : f32 = u_xlat29.x;
  u_xlat29.x = inverseSqrt(x_1293);
  let x_1296 : vec2<f32> = u_xlat29;
  let x_1298 : vec4<f32> = u_xlat7;
  let x_1300 : vec3<f32> = (vec3<f32>(x_1296.x, x_1296.x, x_1296.x) * vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
  let x_1301 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1301.w);
  let x_1303 : vec4<f32> = u_xlat3;
  let x_1305 : vec4<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_1303.x, x_1303.y, x_1303.z), vec3<f32>(x_1305.x, x_1305.y, x_1305.z));
  let x_1310 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_1310, 0.0f, 1.0f);
  let x_1314 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1316 : vec4<f32> = u_xlat7;
  u_xlat29.y = dot(vec3<f32>(x_1314.x, x_1314.y, x_1314.z), vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
  let x_1321 : f32 = u_xlat29.y;
  u_xlat29.y = clamp(x_1321, 0.0f, 1.0f);
  let x_1324 : vec2<f32> = u_xlat29;
  let x_1325 : vec2<f32> = u_xlat29;
  u_xlat29 = (x_1324 * x_1325);
  let x_1328 : f32 = u_xlat29.x;
  let x_1330 : f32 = u_xlat15.x;
  u_xlat29.x = ((x_1328 * x_1330) + 1.000010014f);
  let x_1336 : f32 = u_xlat29.x;
  let x_1338 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1336 * x_1338);
  let x_1342 : f32 = u_xlat29.y;
  u_xlat43 = max(x_1342, 0.100000001f);
  let x_1345 : f32 = u_xlat43;
  let x_1347 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1345 * x_1347);
  let x_1350 : f32 = u_xlat46;
  let x_1352 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1350 * x_1352);
  let x_1355 : f32 = u_xlat44;
  let x_1357 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1355 / x_1357);
  let x_1360 : vec2<f32> = u_xlat29;
  let x_1364 : vec3<f32> = u_xlat4;
  let x_1365 : vec3<f32> = ((vec3<f32>(x_1360.x, x_1360.x, x_1360.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1364);
  let x_1366 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
  let x_1368 : vec3<f32> = u_xlat20;
  let x_1369 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1368 * vec3<f32>(x_1369.x, x_1369.y, x_1369.z));
  let x_1374 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1376 : f32 = x_161.unity_LightData.y;
  u_xlat29.x = min(x_1374, x_1376);
  let x_1380 : f32 = u_xlat29.x;
  u_xlatu29 = bitcast<u32>(i32(x_1380));
  let x_1385 : f32 = x_983.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1387 : f32 = x_983.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1389 : f32 = x_983.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1391 : f32 = x_983.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1392 : vec4<f32> = vec4<f32>(x_1385, x_1387, x_1389, x_1391);
  let x_1398 : vec4<bool> = (vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1392.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1398.x, x_1398.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1409 : u32 = u_xlatu_loop_1;
    let x_1410 : u32 = u_xlatu29;
    if ((x_1409 < x_1410)) {
    } else {
      break;
    }
    let x_1413 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1413 >> 2u);
    let x_1416 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1416 & 3u));
    let x_1419 : u32 = u_xlatu45;
    let x_1422 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1419)];
    let x_1432 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1437 : vec4<u32> = indexable[x_1432];
    u_xlat45 = dot(x_1422, bitcast<vec4<f32>>(x_1437));
    let x_1440 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1440));
    let x_1444 : vec3<f32> = vs_INTERP0;
    let x_1456 : u32 = u_xlatu45;
    let x_1459 : vec4<f32> = x_1455.x_AdditionalLightsPosition[bitcast<i32>(x_1456)];
    let x_1462 : u32 = u_xlatu45;
    let x_1465 : vec4<f32> = x_1455.x_AdditionalLightsPosition[bitcast<i32>(x_1462)];
    u_xlat9 = ((-(x_1444) * vec3<f32>(x_1459.w, x_1459.w, x_1459.w)) + vec3<f32>(x_1465.x, x_1465.y, x_1465.z));
    let x_1469 : vec3<f32> = u_xlat9;
    let x_1470 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1469, x_1470);
    let x_1472 : f32 = u_xlat35;
    u_xlat35 = max(x_1472, 6.10351562e-05f);
    let x_1475 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1475);
    let x_1478 : f32 = u_xlat49;
    let x_1480 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1478, x_1478, x_1478) * x_1480);
    let x_1483 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1483);
    let x_1485 : f32 = u_xlat35;
    let x_1486 : u32 = u_xlatu45;
    let x_1489 : f32 = x_1455.x_AdditionalLightsAttenuation[bitcast<i32>(x_1486)].x;
    u_xlat35 = (x_1485 * x_1489);
    let x_1491 : f32 = u_xlat35;
    let x_1493 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1491) * x_1493) + 1.0f);
    let x_1496 : f32 = u_xlat35;
    u_xlat35 = max(x_1496, 0.0f);
    let x_1498 : f32 = u_xlat35;
    let x_1499 : f32 = u_xlat35;
    u_xlat35 = (x_1498 * x_1499);
    let x_1501 : f32 = u_xlat35;
    let x_1502 : f32 = u_xlat50;
    u_xlat35 = (x_1501 * x_1502);
    let x_1504 : u32 = u_xlatu45;
    let x_1507 : vec4<f32> = x_1455.x_AdditionalLightsSpotDir[bitcast<i32>(x_1504)];
    let x_1509 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1507.x, x_1507.y, x_1507.z), x_1509);
    let x_1511 : f32 = u_xlat50;
    let x_1512 : u32 = u_xlatu45;
    let x_1515 : f32 = x_1455.x_AdditionalLightsAttenuation[bitcast<i32>(x_1512)].z;
    let x_1517 : u32 = u_xlatu45;
    let x_1520 : f32 = x_1455.x_AdditionalLightsAttenuation[bitcast<i32>(x_1517)].w;
    u_xlat50 = ((x_1511 * x_1515) + x_1520);
    let x_1522 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1522, 0.0f, 1.0f);
    let x_1524 : f32 = u_xlat50;
    let x_1525 : f32 = u_xlat50;
    u_xlat50 = (x_1524 * x_1525);
    let x_1527 : f32 = u_xlat35;
    let x_1528 : f32 = u_xlat50;
    u_xlat35 = (x_1527 * x_1528);
    let x_1531 : u32 = u_xlatu45;
    u_xlatu50 = (x_1531 >> 5u);
    let x_1534 : u32 = u_xlatu45;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1534) & 31i)));
    let x_1540 : i32 = u_xlati51;
    let x_1542 : u32 = u_xlatu50;
    let x_1545 : f32 = x_983.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1542)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1540) & bitcast<u32>(x_1545)));
    let x_1549 : i32 = u_xlati50;
    if ((x_1549 != 0i)) {
      let x_1559 : u32 = u_xlatu45;
      let x_1562 : f32 = x_1558.x_AdditionalLightsLightTypes[bitcast<i32>(x_1559)].el;
      u_xlati50 = i32(x_1562);
      let x_1564 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1564 != 0i));
      let x_1568 : u32 = u_xlatu45;
      u_xlati52 = (bitcast<i32>(x_1568) << bitcast<u32>(2i));
      let x_1571 : i32 = u_xlati51;
      if ((x_1571 != 0i)) {
        let x_1576 : vec3<f32> = vs_INTERP0;
        let x_1578 : i32 = u_xlati52;
        let x_1581 : i32 = u_xlati52;
        let x_1585 : vec4<f32> = x_1558.x_AdditionalLightsWorldToLights[((x_1578 + 1i) / 4i)][((x_1581 + 1i) % 4i)];
        let x_1587 : vec3<f32> = (vec3<f32>(x_1576.y, x_1576.y, x_1576.y) * vec3<f32>(x_1585.x, x_1585.y, x_1585.w));
        let x_1588 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1588.w);
        let x_1590 : i32 = u_xlati52;
        let x_1592 : i32 = u_xlati52;
        let x_1595 : vec4<f32> = x_1558.x_AdditionalLightsWorldToLights[(x_1590 / 4i)][(x_1592 % 4i)];
        let x_1597 : vec3<f32> = vs_INTERP0;
        let x_1600 : vec4<f32> = u_xlat11;
        let x_1602 : vec3<f32> = ((vec3<f32>(x_1595.x, x_1595.y, x_1595.w) * vec3<f32>(x_1597.x, x_1597.x, x_1597.x)) + vec3<f32>(x_1600.x, x_1600.y, x_1600.z));
        let x_1603 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1602.x, x_1602.y, x_1602.z, x_1603.w);
        let x_1605 : i32 = u_xlati52;
        let x_1608 : i32 = u_xlati52;
        let x_1612 : vec4<f32> = x_1558.x_AdditionalLightsWorldToLights[((x_1605 + 2i) / 4i)][((x_1608 + 2i) % 4i)];
        let x_1614 : vec3<f32> = vs_INTERP0;
        let x_1617 : vec4<f32> = u_xlat11;
        let x_1619 : vec3<f32> = ((vec3<f32>(x_1612.x, x_1612.y, x_1612.w) * vec3<f32>(x_1614.z, x_1614.z, x_1614.z)) + vec3<f32>(x_1617.x, x_1617.y, x_1617.z));
        let x_1620 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1619.x, x_1619.y, x_1619.z, x_1620.w);
        let x_1622 : vec4<f32> = u_xlat11;
        let x_1624 : i32 = u_xlati52;
        let x_1627 : i32 = u_xlati52;
        let x_1631 : vec4<f32> = x_1558.x_AdditionalLightsWorldToLights[((x_1624 + 3i) / 4i)][((x_1627 + 3i) % 4i)];
        let x_1633 : vec3<f32> = (vec3<f32>(x_1622.x, x_1622.y, x_1622.z) + vec3<f32>(x_1631.x, x_1631.y, x_1631.w));
        let x_1634 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1633.x, x_1633.y, x_1633.z, x_1634.w);
        let x_1636 : vec4<f32> = u_xlat11;
        let x_1638 : vec4<f32> = u_xlat11;
        let x_1640 : vec2<f32> = (vec2<f32>(x_1636.x, x_1636.y) / vec2<f32>(x_1638.z, x_1638.z));
        let x_1641 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1640.x, x_1640.y, x_1641.z, x_1641.w);
        let x_1643 : vec4<f32> = u_xlat11;
        let x_1646 : vec2<f32> = ((vec2<f32>(x_1643.x, x_1643.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1647 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1646.x, x_1646.y, x_1647.z, x_1647.w);
        let x_1649 : vec4<f32> = u_xlat11;
        let x_1653 : vec2<f32> = clamp(vec2<f32>(x_1649.x, x_1649.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1654 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1653.x, x_1653.y, x_1654.z, x_1654.w);
        let x_1656 : u32 = u_xlatu45;
        let x_1659 : vec4<f32> = x_1558.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1656)];
        let x_1661 : vec4<f32> = u_xlat11;
        let x_1664 : u32 = u_xlatu45;
        let x_1667 : vec4<f32> = x_1558.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1664)];
        let x_1669 : vec2<f32> = ((vec2<f32>(x_1659.x, x_1659.y) * vec2<f32>(x_1661.x, x_1661.y)) + vec2<f32>(x_1667.z, x_1667.w));
        let x_1670 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1669.x, x_1669.y, x_1670.z, x_1670.w);
      } else {
        let x_1674 : i32 = u_xlati50;
        u_xlatb50 = (x_1674 == 1i);
        let x_1676 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1676);
        let x_1678 : i32 = u_xlati50;
        if ((x_1678 != 0i)) {
          let x_1683 : vec3<f32> = vs_INTERP0;
          let x_1685 : i32 = u_xlati52;
          let x_1688 : i32 = u_xlati52;
          let x_1692 : vec4<f32> = x_1558.x_AdditionalLightsWorldToLights[((x_1685 + 1i) / 4i)][((x_1688 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1683.y, x_1683.y) * vec2<f32>(x_1692.x, x_1692.y));
          let x_1695 : i32 = u_xlati52;
          let x_1697 : i32 = u_xlati52;
          let x_1700 : vec4<f32> = x_1558.x_AdditionalLightsWorldToLights[(x_1695 / 4i)][(x_1697 % 4i)];
          let x_1702 : vec3<f32> = vs_INTERP0;
          let x_1705 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1700.x, x_1700.y) * vec2<f32>(x_1702.x, x_1702.x)) + x_1705);
          let x_1707 : i32 = u_xlati52;
          let x_1710 : i32 = u_xlati52;
          let x_1714 : vec4<f32> = x_1558.x_AdditionalLightsWorldToLights[((x_1707 + 2i) / 4i)][((x_1710 + 2i) % 4i)];
          let x_1716 : vec3<f32> = vs_INTERP0;
          let x_1719 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1714.x, x_1714.y) * vec2<f32>(x_1716.z, x_1716.z)) + x_1719);
          let x_1721 : vec2<f32> = u_xlat39;
          let x_1722 : i32 = u_xlati52;
          let x_1725 : i32 = u_xlati52;
          let x_1729 : vec4<f32> = x_1558.x_AdditionalLightsWorldToLights[((x_1722 + 3i) / 4i)][((x_1725 + 3i) % 4i)];
          u_xlat39 = (x_1721 + vec2<f32>(x_1729.x, x_1729.y));
          let x_1732 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1732 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1735 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1735);
          let x_1737 : u32 = u_xlatu45;
          let x_1740 : vec4<f32> = x_1558.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1737)];
          let x_1742 : vec2<f32> = u_xlat39;
          let x_1744 : u32 = u_xlatu45;
          let x_1747 : vec4<f32> = x_1558.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1744)];
          let x_1749 : vec2<f32> = ((vec2<f32>(x_1740.x, x_1740.y) * x_1742) + vec2<f32>(x_1747.z, x_1747.w));
          let x_1750 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1749.x, x_1749.y, x_1750.z, x_1750.w);
        } else {
          let x_1754 : vec3<f32> = vs_INTERP0;
          let x_1756 : i32 = u_xlati52;
          let x_1759 : i32 = u_xlati52;
          let x_1763 : vec4<f32> = x_1558.x_AdditionalLightsWorldToLights[((x_1756 + 1i) / 4i)][((x_1759 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1754.y, x_1754.y, x_1754.y, x_1754.y) * x_1763);
          let x_1765 : i32 = u_xlati52;
          let x_1767 : i32 = u_xlati52;
          let x_1770 : vec4<f32> = x_1558.x_AdditionalLightsWorldToLights[(x_1765 / 4i)][(x_1767 % 4i)];
          let x_1771 : vec3<f32> = vs_INTERP0;
          let x_1774 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1770 * vec4<f32>(x_1771.x, x_1771.x, x_1771.x, x_1771.x)) + x_1774);
          let x_1776 : i32 = u_xlati52;
          let x_1779 : i32 = u_xlati52;
          let x_1783 : vec4<f32> = x_1558.x_AdditionalLightsWorldToLights[((x_1776 + 2i) / 4i)][((x_1779 + 2i) % 4i)];
          let x_1784 : vec3<f32> = vs_INTERP0;
          let x_1787 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1783 * vec4<f32>(x_1784.z, x_1784.z, x_1784.z, x_1784.z)) + x_1787);
          let x_1789 : vec4<f32> = u_xlat12;
          let x_1790 : i32 = u_xlati52;
          let x_1793 : i32 = u_xlati52;
          let x_1797 : vec4<f32> = x_1558.x_AdditionalLightsWorldToLights[((x_1790 + 3i) / 4i)][((x_1793 + 3i) % 4i)];
          u_xlat12 = (x_1789 + x_1797);
          let x_1799 : vec4<f32> = u_xlat12;
          let x_1801 : vec4<f32> = u_xlat12;
          let x_1803 : vec3<f32> = (vec3<f32>(x_1799.x, x_1799.y, x_1799.z) / vec3<f32>(x_1801.w, x_1801.w, x_1801.w));
          let x_1804 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1803.x, x_1803.y, x_1803.z, x_1804.w);
          let x_1806 : vec4<f32> = u_xlat12;
          let x_1808 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1806.x, x_1806.y, x_1806.z), vec3<f32>(x_1808.x, x_1808.y, x_1808.z));
          let x_1811 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1811);
          let x_1813 : f32 = u_xlat50;
          let x_1815 : vec4<f32> = u_xlat12;
          let x_1817 : vec3<f32> = (vec3<f32>(x_1813, x_1813, x_1813) * vec3<f32>(x_1815.x, x_1815.y, x_1815.z));
          let x_1818 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
          let x_1820 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1820.x, x_1820.y, x_1820.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1825 : f32 = u_xlat50;
          u_xlat50 = max(x_1825, 0.000001f);
          let x_1828 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1828);
          let x_1831 : f32 = u_xlat50;
          let x_1833 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1831, x_1831, x_1831) * vec3<f32>(x_1833.z, x_1833.x, x_1833.y));
          let x_1837 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1837);
          let x_1841 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1841, 0.0f, 1.0f);
          let x_1845 : vec3<f32> = u_xlat13;
          let x_1848 : vec4<bool> = (vec4<f32>(x_1845.y, x_1845.z, x_1845.y, x_1845.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1848.x, x_1848.y);
          let x_1851 : bool = u_xlatb39.x;
          if (x_1851) {
            let x_1856 : f32 = u_xlat13.x;
            x_1852 = x_1856;
          } else {
            let x_1859 : f32 = u_xlat13.x;
            x_1852 = -(x_1859);
          }
          let x_1861 : f32 = x_1852;
          u_xlat39.x = x_1861;
          let x_1864 : bool = u_xlatb39.y;
          if (x_1864) {
            let x_1869 : f32 = u_xlat13.x;
            x_1865 = x_1869;
          } else {
            let x_1872 : f32 = u_xlat13.x;
            x_1865 = -(x_1872);
          }
          let x_1874 : f32 = x_1865;
          u_xlat39.y = x_1874;
          let x_1876 : vec4<f32> = u_xlat12;
          let x_1878 : f32 = u_xlat50;
          let x_1881 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1876.x, x_1876.y) * vec2<f32>(x_1878, x_1878)) + x_1881);
          let x_1883 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1883 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1886 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1886, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1890 : u32 = u_xlatu45;
          let x_1893 : vec4<f32> = x_1558.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1890)];
          let x_1895 : vec2<f32> = u_xlat39;
          let x_1897 : u32 = u_xlatu45;
          let x_1900 : vec4<f32> = x_1558.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1897)];
          let x_1902 : vec2<f32> = ((vec2<f32>(x_1893.x, x_1893.y) * x_1895) + vec2<f32>(x_1900.z, x_1900.w));
          let x_1903 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1902.x, x_1902.y, x_1903.z, x_1903.w);
        }
      }
      let x_1910 : vec4<f32> = u_xlat11;
      let x_1913 : f32 = x_90.x_GlobalMipBias.x;
      let x_1914 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1910.x, x_1910.y), x_1913);
      u_xlat11 = x_1914;
      let x_1916 : bool = u_xlatb7.y;
      if (x_1916) {
        let x_1921 : f32 = u_xlat11.w;
        x_1917 = x_1921;
      } else {
        let x_1924 : f32 = u_xlat11.x;
        x_1917 = x_1924;
      }
      let x_1925 : f32 = x_1917;
      u_xlat50 = x_1925;
      let x_1927 : bool = u_xlatb7.x;
      if (x_1927) {
        let x_1931 : vec4<f32> = u_xlat11;
        x_1928 = vec3<f32>(x_1931.x, x_1931.y, x_1931.z);
      } else {
        let x_1934 : f32 = u_xlat50;
        x_1928 = vec3<f32>(x_1934, x_1934, x_1934);
      }
      let x_1936 : vec3<f32> = x_1928;
      let x_1937 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1936.x, x_1936.y, x_1936.z, x_1937.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1943 : vec4<f32> = u_xlat11;
    let x_1945 : u32 = u_xlatu45;
    let x_1948 : vec4<f32> = x_1455.x_AdditionalLightsColor[bitcast<i32>(x_1945)];
    let x_1950 : vec3<f32> = (vec3<f32>(x_1943.x, x_1943.y, x_1943.z) * vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
    let x_1951 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
    let x_1953 : vec4<f32> = u_xlat6;
    let x_1955 : vec4<f32> = u_xlat11;
    let x_1957 : vec3<f32> = (vec3<f32>(x_1953.x, x_1953.x, x_1953.x) * vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
    let x_1958 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1957.x, x_1957.y, x_1957.z, x_1958.w);
    let x_1960 : vec4<f32> = u_xlat3;
    let x_1962 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1960.x, x_1960.y, x_1960.z), x_1962);
    let x_1964 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1964, 0.0f, 1.0f);
    let x_1966 : f32 = u_xlat45;
    let x_1967 : f32 = u_xlat35;
    u_xlat45 = (x_1966 * x_1967);
    let x_1969 : f32 = u_xlat45;
    let x_1971 : vec4<f32> = u_xlat11;
    let x_1973 : vec3<f32> = (vec3<f32>(x_1969, x_1969, x_1969) * vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
    let x_1974 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
    let x_1976 : vec3<f32> = u_xlat9;
    let x_1977 : f32 = u_xlat49;
    let x_1980 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_1976 * vec3<f32>(x_1977, x_1977, x_1977)) + x_1980);
    let x_1982 : vec3<f32> = u_xlat9;
    let x_1983 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1982, x_1983);
    let x_1985 : f32 = u_xlat45;
    u_xlat45 = max(x_1985, 1.17549435e-37f);
    let x_1987 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1987);
    let x_1989 : f32 = u_xlat45;
    let x_1991 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1989, x_1989, x_1989) * x_1991);
    let x_1993 : vec4<f32> = u_xlat3;
    let x_1995 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1993.x, x_1993.y, x_1993.z), x_1995);
    let x_1997 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1997, 0.0f, 1.0f);
    let x_1999 : vec3<f32> = u_xlat10;
    let x_2000 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1999, x_2000);
    let x_2002 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2002, 0.0f, 1.0f);
    let x_2004 : f32 = u_xlat45;
    let x_2005 : f32 = u_xlat45;
    u_xlat45 = (x_2004 * x_2005);
    let x_2007 : f32 = u_xlat45;
    let x_2009 : f32 = u_xlat15.x;
    u_xlat45 = ((x_2007 * x_2009) + 1.000010014f);
    let x_2012 : f32 = u_xlat35;
    let x_2013 : f32 = u_xlat35;
    u_xlat35 = (x_2012 * x_2013);
    let x_2015 : f32 = u_xlat45;
    let x_2016 : f32 = u_xlat45;
    u_xlat45 = (x_2015 * x_2016);
    let x_2018 : f32 = u_xlat35;
    u_xlat35 = max(x_2018, 0.100000001f);
    let x_2020 : f32 = u_xlat45;
    let x_2021 : f32 = u_xlat35;
    u_xlat45 = (x_2020 * x_2021);
    let x_2023 : f32 = u_xlat46;
    let x_2024 : f32 = u_xlat45;
    u_xlat45 = (x_2023 * x_2024);
    let x_2026 : f32 = u_xlat44;
    let x_2027 : f32 = u_xlat45;
    u_xlat45 = (x_2026 / x_2027);
    let x_2029 : f32 = u_xlat45;
    let x_2032 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_2029, x_2029, x_2029) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_2032);
    let x_2034 : vec3<f32> = u_xlat9;
    let x_2035 : vec4<f32> = u_xlat11;
    let x_2038 : vec4<f32> = u_xlat8;
    let x_2040 : vec3<f32> = ((x_2034 * vec3<f32>(x_2035.x, x_2035.y, x_2035.z)) + vec3<f32>(x_2038.x, x_2038.y, x_2038.z));
    let x_2041 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2040.x, x_2040.y, x_2040.z, x_2041.w);

    continuing {
      let x_2043 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2043 + bitcast<u32>(1i));
    }
  }
  let x_2045 : vec3<f32> = u_xlat19;
  let x_2046 : vec4<f32> = u_xlat5;
  let x_2049 : vec3<f32> = u_xlat20;
  u_xlat15 = ((x_2045 * vec3<f32>(x_2046.x, x_2046.x, x_2046.x)) + x_2049);
  let x_2051 : vec4<f32> = u_xlat8;
  let x_2053 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_2051.x, x_2051.y, x_2051.z) + x_2053);
  let x_2057 : vec4<f32> = vs_INTERP4;
  let x_2059 : vec3<f32> = u_xlat0;
  let x_2061 : vec3<f32> = u_xlat15;
  let x_2062 : vec3<f32> = ((vec3<f32>(x_2057.w, x_2057.w, x_2057.w) * x_2059) + x_2061);
  let x_2063 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
  let x_2065 : bool = u_xlatb1;
  let x_2066 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_2066, x_2065);
  let x_2074 : u32 = x_90.x_RenderingLayerMaxInt;
  let x_2076 : f32 = x_161.unity_RenderingLayer.x;
  u_xlatu0 = (x_2074 & bitcast<u32>(x_2076));
  let x_2079 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2079);
  let x_2084 : f32 = u_xlat0.x;
  let x_2086 : f32 = x_90.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2084 * x_2086);
  let x_2090 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2090, 0.0f, 1.0f);
  let x_2093 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2093.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(5) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

