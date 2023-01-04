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

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_215 : UnityPerMaterial;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_272 : MainLightShadows;

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

@group(1) @binding(4) var<uniform> x_955 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1429 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1532 : AdditionalLightsCookies;

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
  var x_1040 : f32;
  var x_1051 : vec3<f32>;
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
  var x_1826 : f32;
  var x_1839 : f32;
  var x_1891 : f32;
  var x_1902 : vec3<f32>;
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
  let x_728 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_725, x_727);
  u_xlat6 = x_728;
  let x_733 : vec2<f32> = vs_INTERP5;
  let x_735 : f32 = x_90.x_GlobalMipBias.x;
  let x_736 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_733, x_735);
  u_xlat19 = vec3<f32>(x_736.x, x_736.y, x_736.z);
  let x_738 : vec4<f32> = u_xlat6;
  let x_742 : vec3<f32> = (vec3<f32>(x_738.x, x_738.y, x_738.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_743 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec4<f32> = u_xlat3;
  let x_747 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_745.x, x_745.y, x_745.z), vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_752 : f32 = u_xlat15.x;
  u_xlat15.x = (x_752 + 0.5f);
  let x_755 : vec3<f32> = u_xlat15;
  let x_757 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_755.x, x_755.x, x_755.x) * x_757);
  let x_760 : f32 = u_xlat6.w;
  u_xlat15.x = max(x_760, 0.0001f);
  let x_763 : vec3<f32> = u_xlat19;
  let x_764 : vec3<f32> = u_xlat15;
  u_xlat19 = (x_763 / vec3<f32>(x_764.x, x_764.x, x_764.x));
  let x_769 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_770 : vec2<f32> = vec2<f32>(x_769.x, x_769.y);
  let x_774 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_770.x, x_770.y));
  let x_775 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_774.x, x_774.y, x_775.z);
  let x_777 : vec3<f32> = u_xlat15;
  let x_779 : vec4<f32> = hlslcc_FragCoord;
  let x_781 : vec2<f32> = (vec2<f32>(x_777.x, x_777.y) * vec2<f32>(x_779.x, x_779.y));
  let x_782 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
  let x_785 : f32 = u_xlat6.y;
  let x_788 : f32 = x_90.x_ScaleBiasRt.x;
  let x_791 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_785 * x_788) + x_791);
  let x_795 : f32 = u_xlat15.x;
  u_xlat6.z = (-(x_795) + 1.0f);
  let x_800 : f32 = u_xlat5.x;
  u_xlat5.x = x_800;
  let x_803 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_803, 0.0f, 1.0f);
  let x_806 : f32 = u_xlat42;
  u_xlat42 = x_806;
  let x_807 : f32 = u_xlat42;
  u_xlat42 = clamp(x_807, 0.0f, 1.0f);
  let x_809 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_809 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_814 : f32 = u_xlat5.x;
  u_xlat15.x = (-(x_814) + 1.0f);
  let x_819 : f32 = u_xlat15.x;
  let x_821 : f32 = u_xlat15.x;
  u_xlat29.x = (x_819 * x_821);
  let x_825 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_825, 0.0078125f);
  let x_830 : f32 = u_xlat29.x;
  let x_832 : f32 = u_xlat29.x;
  u_xlat44 = (x_830 * x_832);
  let x_836 : f32 = u_xlat5.x;
  u_xlat45 = (x_836 + 0.040000021f);
  let x_839 : f32 = u_xlat45;
  u_xlat45 = min(x_839, 1.0f);
  let x_843 : f32 = u_xlat29.x;
  u_xlat46 = ((x_843 * 4.0f) + 2.0f);
  let x_852 : vec4<f32> = u_xlat6;
  let x_855 : f32 = x_90.x_GlobalMipBias.x;
  let x_856 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_852.x, x_852.z), x_855);
  u_xlat5.x = x_856.x;
  let x_860 : f32 = u_xlat5.x;
  u_xlat6.x = (x_860 + -1.0f);
  let x_865 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_867 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_865 * x_867) + 1.0f);
  let x_872 : f32 = u_xlat5.x;
  let x_874 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_872, x_874);
  let x_879 : vec4<f32> = vs_INTERP9;
  let x_880 : vec2<f32> = vec2<f32>(x_879.x, x_879.y);
  let x_882 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_880.x, x_880.y, x_882);
  let x_890 : vec3<f32> = txVec1;
  let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_890.xy, x_890.z);
  u_xlat20.x = x_892;
  let x_895 : f32 = u_xlat20.x;
  let x_897 : f32 = x_272.x_MainLightShadowParams.x;
  let x_899 : f32 = u_xlat43;
  u_xlat43 = ((x_895 * x_897) + x_899);
  let x_903 : f32 = vs_INTERP9.z;
  u_xlatb20.x = (0.0f >= x_903);
  let x_908 : f32 = vs_INTERP9.z;
  u_xlatb34 = (x_908 >= 1.0f);
  let x_910 : bool = u_xlatb34;
  let x_912 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_910 | x_912);
  let x_916 : bool = u_xlatb20.x;
  let x_917 : f32 = u_xlat43;
  u_xlat43 = select(x_917, 1.0f, x_916);
  let x_919 : vec3<f32> = vs_INTERP0;
  let x_921 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat20 = (x_919 + -(x_921));
  let x_924 : vec3<f32> = u_xlat20;
  let x_925 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_924, x_925);
  let x_929 : f32 = u_xlat20.x;
  let x_931 : f32 = x_272.x_MainLightShadowParams.z;
  let x_934 : f32 = x_272.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_929 * x_931) + x_934);
  let x_938 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_938, 0.0f, 1.0f);
  let x_942 : f32 = u_xlat43;
  u_xlat34 = (-(x_942) + 1.0f);
  let x_946 : f32 = u_xlat20.x;
  let x_947 : f32 = u_xlat34;
  let x_949 : f32 = u_xlat43;
  u_xlat43 = ((x_946 * x_947) + x_949);
  let x_957 : f32 = x_955.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_957 == -1.0f));
  let x_961 : bool = u_xlatb20.x;
  if (x_961) {
    let x_964 : vec3<f32> = vs_INTERP0;
    let x_967 : vec4<f32> = x_955.x_MainLightWorldToLight[1i];
    let x_969 : vec2<f32> = (vec2<f32>(x_964.y, x_964.y) * vec2<f32>(x_967.x, x_967.y));
    let x_970 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_969.x, x_969.y, x_970.z);
    let x_973 : vec4<f32> = x_955.x_MainLightWorldToLight[0i];
    let x_975 : vec3<f32> = vs_INTERP0;
    let x_978 : vec3<f32> = u_xlat20;
    let x_980 : vec2<f32> = ((vec2<f32>(x_973.x, x_973.y) * vec2<f32>(x_975.x, x_975.x)) + vec2<f32>(x_978.x, x_978.y));
    let x_981 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_980.x, x_980.y, x_981.z);
    let x_984 : vec4<f32> = x_955.x_MainLightWorldToLight[2i];
    let x_986 : vec3<f32> = vs_INTERP0;
    let x_989 : vec3<f32> = u_xlat20;
    let x_991 : vec2<f32> = ((vec2<f32>(x_984.x, x_984.y) * vec2<f32>(x_986.z, x_986.z)) + vec2<f32>(x_989.x, x_989.y));
    let x_992 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_991.x, x_991.y, x_992.z);
    let x_994 : vec3<f32> = u_xlat20;
    let x_997 : vec4<f32> = x_955.x_MainLightWorldToLight[3i];
    let x_999 : vec2<f32> = (vec2<f32>(x_994.x, x_994.y) + vec2<f32>(x_997.x, x_997.y));
    let x_1000 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_999.x, x_999.y, x_1000.z);
    let x_1002 : vec3<f32> = u_xlat20;
    let x_1006 : vec2<f32> = ((vec2<f32>(x_1002.x, x_1002.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1007 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1006.x, x_1006.y, x_1007.z);
    let x_1015 : vec3<f32> = u_xlat20;
    let x_1018 : f32 = x_90.x_GlobalMipBias.x;
    let x_1019 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1015.x, x_1015.y), x_1018);
    u_xlat7 = x_1019;
    let x_1021 : f32 = x_955.x_MainLightCookieTextureFormat;
    let x_1023 : f32 = x_955.x_MainLightCookieTextureFormat;
    let x_1025 : f32 = x_955.x_MainLightCookieTextureFormat;
    let x_1027 : f32 = x_955.x_MainLightCookieTextureFormat;
    let x_1028 : vec4<f32> = vec4<f32>(x_1021, x_1023, x_1025, x_1027);
    let x_1036 : vec4<bool> = (vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1028.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1036.x, x_1036.y);
    let x_1039 : bool = u_xlatb20.y;
    if (x_1039) {
      let x_1044 : f32 = u_xlat7.w;
      x_1040 = x_1044;
    } else {
      let x_1047 : f32 = u_xlat7.x;
      x_1040 = x_1047;
    }
    let x_1048 : f32 = x_1040;
    u_xlat34 = x_1048;
    let x_1050 : bool = u_xlatb20.x;
    if (x_1050) {
      let x_1054 : vec4<f32> = u_xlat7;
      x_1051 = vec3<f32>(x_1054.x, x_1054.y, x_1054.z);
    } else {
      let x_1057 : f32 = u_xlat34;
      x_1051 = vec3<f32>(x_1057, x_1057, x_1057);
    }
    let x_1059 : vec3<f32> = x_1051;
    u_xlat20 = x_1059;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1064 : vec3<f32> = u_xlat20;
  let x_1066 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat20 = (x_1064 * vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : vec4<f32> = u_xlat6;
  let x_1071 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1069.x, x_1069.x, x_1069.x) * x_1071);
  let x_1073 : vec3<f32> = u_xlat2;
  let x_1075 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1073), vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
  let x_1080 : f32 = u_xlat7.x;
  let x_1082 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1080 + x_1082);
  let x_1085 : vec4<f32> = u_xlat3;
  let x_1087 : vec4<f32> = u_xlat7;
  let x_1091 : vec3<f32> = u_xlat2;
  let x_1093 : vec3<f32> = ((vec3<f32>(x_1085.x, x_1085.y, x_1085.z) * -(vec3<f32>(x_1087.x, x_1087.x, x_1087.x))) + -(x_1091));
  let x_1094 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
  let x_1097 : vec4<f32> = u_xlat3;
  let x_1099 : vec3<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_1097.x, x_1097.y, x_1097.z), x_1099);
  let x_1101 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1101, 0.0f, 1.0f);
  let x_1103 : f32 = u_xlat49;
  u_xlat49 = (-(x_1103) + 1.0f);
  let x_1106 : f32 = u_xlat49;
  let x_1107 : f32 = u_xlat49;
  u_xlat49 = (x_1106 * x_1107);
  let x_1109 : f32 = u_xlat49;
  let x_1110 : f32 = u_xlat49;
  u_xlat49 = (x_1109 * x_1110);
  let x_1114 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_1114) * 0.699999988f) + 1.700000048f);
  let x_1122 : f32 = u_xlat15.x;
  let x_1124 : f32 = u_xlat8.x;
  u_xlat15.x = (x_1122 * x_1124);
  let x_1128 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1128 * 6.0f);
  let x_1140 : vec4<f32> = u_xlat7;
  let x_1143 : f32 = u_xlat15.x;
  let x_1144 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1140.x, x_1140.y, x_1140.z), x_1143);
  u_xlat8 = x_1144;
  let x_1146 : f32 = u_xlat8.w;
  u_xlat15.x = (x_1146 + -1.0f);
  let x_1150 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1152 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_1150 * x_1152) + 1.0f);
  let x_1157 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_1157, 0.0f);
  let x_1161 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_1161);
  let x_1165 : f32 = u_xlat15.x;
  let x_1167 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_1165 * x_1167);
  let x_1171 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_1171);
  let x_1175 : f32 = u_xlat15.x;
  let x_1177 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_1175 * x_1177);
  let x_1180 : vec4<f32> = u_xlat8;
  let x_1182 : vec3<f32> = u_xlat15;
  let x_1184 : vec3<f32> = (vec3<f32>(x_1180.x, x_1180.y, x_1180.z) * vec3<f32>(x_1182.x, x_1182.x, x_1182.x));
  let x_1185 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
  let x_1187 : vec2<f32> = u_xlat29;
  let x_1189 : vec2<f32> = u_xlat29;
  let x_1193 : vec2<f32> = ((vec2<f32>(x_1187.x, x_1187.x) * vec2<f32>(x_1189.x, x_1189.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1194 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1193.x, x_1193.y, x_1194.z);
  let x_1197 : f32 = u_xlat15.y;
  u_xlat29.x = (1.0f / x_1197);
  let x_1200 : f32 = u_xlat45;
  u_xlat45 = (x_1200 + -0.039999999f);
  let x_1203 : f32 = u_xlat49;
  let x_1204 : f32 = u_xlat45;
  u_xlat45 = ((x_1203 * x_1204) + 0.039999999f);
  let x_1209 : f32 = u_xlat29.x;
  let x_1210 : f32 = u_xlat45;
  u_xlat29.x = (x_1209 * x_1210);
  let x_1213 : vec2<f32> = u_xlat29;
  let x_1215 : vec4<f32> = u_xlat7;
  let x_1217 : vec3<f32> = (vec3<f32>(x_1213.x, x_1213.x, x_1213.x) * vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1218 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1220 : vec3<f32> = u_xlat19;
  let x_1221 : vec3<f32> = u_xlat4;
  let x_1223 : vec4<f32> = u_xlat7;
  u_xlat19 = ((x_1220 * x_1221) + vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
  let x_1226 : f32 = u_xlat43;
  let x_1228 : f32 = x_161.unity_LightData.z;
  u_xlat29.x = (x_1226 * x_1228);
  let x_1231 : vec4<f32> = u_xlat3;
  let x_1234 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1231.x, x_1231.y, x_1231.z), vec3<f32>(x_1234.x, x_1234.y, x_1234.z));
  let x_1237 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1237, 0.0f, 1.0f);
  let x_1239 : f32 = u_xlat43;
  let x_1241 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1239 * x_1241);
  let x_1244 : vec2<f32> = u_xlat29;
  let x_1246 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1244.x, x_1244.x, x_1244.x) * x_1246);
  let x_1248 : vec3<f32> = u_xlat2;
  let x_1250 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1252 : vec3<f32> = (x_1248 + vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
  let x_1253 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
  let x_1255 : vec4<f32> = u_xlat7;
  let x_1257 : vec4<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_1255.x, x_1255.y, x_1255.z), vec3<f32>(x_1257.x, x_1257.y, x_1257.z));
  let x_1262 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_1262, 1.17549435e-37f);
  let x_1267 : f32 = u_xlat29.x;
  u_xlat29.x = inverseSqrt(x_1267);
  let x_1270 : vec2<f32> = u_xlat29;
  let x_1272 : vec4<f32> = u_xlat7;
  let x_1274 : vec3<f32> = (vec3<f32>(x_1270.x, x_1270.x, x_1270.x) * vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
  let x_1275 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
  let x_1277 : vec4<f32> = u_xlat3;
  let x_1279 : vec4<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_1277.x, x_1277.y, x_1277.z), vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
  let x_1284 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_1284, 0.0f, 1.0f);
  let x_1288 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1290 : vec4<f32> = u_xlat7;
  u_xlat29.y = dot(vec3<f32>(x_1288.x, x_1288.y, x_1288.z), vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
  let x_1295 : f32 = u_xlat29.y;
  u_xlat29.y = clamp(x_1295, 0.0f, 1.0f);
  let x_1298 : vec2<f32> = u_xlat29;
  let x_1299 : vec2<f32> = u_xlat29;
  u_xlat29 = (x_1298 * x_1299);
  let x_1302 : f32 = u_xlat29.x;
  let x_1304 : f32 = u_xlat15.x;
  u_xlat29.x = ((x_1302 * x_1304) + 1.000010014f);
  let x_1310 : f32 = u_xlat29.x;
  let x_1312 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1310 * x_1312);
  let x_1316 : f32 = u_xlat29.y;
  u_xlat43 = max(x_1316, 0.100000001f);
  let x_1319 : f32 = u_xlat43;
  let x_1321 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1319 * x_1321);
  let x_1324 : f32 = u_xlat46;
  let x_1326 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1324 * x_1326);
  let x_1329 : f32 = u_xlat44;
  let x_1331 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1329 / x_1331);
  let x_1334 : vec2<f32> = u_xlat29;
  let x_1338 : vec3<f32> = u_xlat4;
  let x_1339 : vec3<f32> = ((vec3<f32>(x_1334.x, x_1334.x, x_1334.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1338);
  let x_1340 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
  let x_1342 : vec3<f32> = u_xlat20;
  let x_1343 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1342 * vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
  let x_1348 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1350 : f32 = x_161.unity_LightData.y;
  u_xlat29.x = min(x_1348, x_1350);
  let x_1354 : f32 = u_xlat29.x;
  u_xlatu29 = bitcast<u32>(i32(x_1354));
  let x_1359 : f32 = x_955.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1361 : f32 = x_955.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1363 : f32 = x_955.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1365 : f32 = x_955.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1366 : vec4<f32> = vec4<f32>(x_1359, x_1361, x_1363, x_1365);
  let x_1372 : vec4<bool> = (vec4<f32>(x_1366.x, x_1366.y, x_1366.z, x_1366.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1372.x, x_1372.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1383 : u32 = u_xlatu_loop_1;
    let x_1384 : u32 = u_xlatu29;
    if ((x_1383 < x_1384)) {
    } else {
      break;
    }
    let x_1387 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1387 >> 2u);
    let x_1390 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1390 & 3u));
    let x_1393 : u32 = u_xlatu45;
    let x_1396 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1393)];
    let x_1406 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1411 : vec4<u32> = indexable[x_1406];
    u_xlat45 = dot(x_1396, bitcast<vec4<f32>>(x_1411));
    let x_1414 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1414));
    let x_1418 : vec3<f32> = vs_INTERP0;
    let x_1430 : u32 = u_xlatu45;
    let x_1433 : vec4<f32> = x_1429.x_AdditionalLightsPosition[bitcast<i32>(x_1430)];
    let x_1436 : u32 = u_xlatu45;
    let x_1439 : vec4<f32> = x_1429.x_AdditionalLightsPosition[bitcast<i32>(x_1436)];
    u_xlat9 = ((-(x_1418) * vec3<f32>(x_1433.w, x_1433.w, x_1433.w)) + vec3<f32>(x_1439.x, x_1439.y, x_1439.z));
    let x_1443 : vec3<f32> = u_xlat9;
    let x_1444 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1443, x_1444);
    let x_1446 : f32 = u_xlat35;
    u_xlat35 = max(x_1446, 6.10351562e-05f);
    let x_1449 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1449);
    let x_1452 : f32 = u_xlat49;
    let x_1454 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1452, x_1452, x_1452) * x_1454);
    let x_1457 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1457);
    let x_1459 : f32 = u_xlat35;
    let x_1460 : u32 = u_xlatu45;
    let x_1463 : f32 = x_1429.x_AdditionalLightsAttenuation[bitcast<i32>(x_1460)].x;
    u_xlat35 = (x_1459 * x_1463);
    let x_1465 : f32 = u_xlat35;
    let x_1467 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1465) * x_1467) + 1.0f);
    let x_1470 : f32 = u_xlat35;
    u_xlat35 = max(x_1470, 0.0f);
    let x_1472 : f32 = u_xlat35;
    let x_1473 : f32 = u_xlat35;
    u_xlat35 = (x_1472 * x_1473);
    let x_1475 : f32 = u_xlat35;
    let x_1476 : f32 = u_xlat50;
    u_xlat35 = (x_1475 * x_1476);
    let x_1478 : u32 = u_xlatu45;
    let x_1481 : vec4<f32> = x_1429.x_AdditionalLightsSpotDir[bitcast<i32>(x_1478)];
    let x_1483 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1481.x, x_1481.y, x_1481.z), x_1483);
    let x_1485 : f32 = u_xlat50;
    let x_1486 : u32 = u_xlatu45;
    let x_1489 : f32 = x_1429.x_AdditionalLightsAttenuation[bitcast<i32>(x_1486)].z;
    let x_1491 : u32 = u_xlatu45;
    let x_1494 : f32 = x_1429.x_AdditionalLightsAttenuation[bitcast<i32>(x_1491)].w;
    u_xlat50 = ((x_1485 * x_1489) + x_1494);
    let x_1496 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1496, 0.0f, 1.0f);
    let x_1498 : f32 = u_xlat50;
    let x_1499 : f32 = u_xlat50;
    u_xlat50 = (x_1498 * x_1499);
    let x_1501 : f32 = u_xlat35;
    let x_1502 : f32 = u_xlat50;
    u_xlat35 = (x_1501 * x_1502);
    let x_1505 : u32 = u_xlatu45;
    u_xlatu50 = (x_1505 >> 5u);
    let x_1508 : u32 = u_xlatu45;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1508) & 31i)));
    let x_1514 : i32 = u_xlati51;
    let x_1516 : u32 = u_xlatu50;
    let x_1519 : f32 = x_955.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1516)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1514) & bitcast<u32>(x_1519)));
    let x_1523 : i32 = u_xlati50;
    if ((x_1523 != 0i)) {
      let x_1533 : u32 = u_xlatu45;
      let x_1536 : f32 = x_1532.x_AdditionalLightsLightTypes[bitcast<i32>(x_1533)].el;
      u_xlati50 = i32(x_1536);
      let x_1538 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1538 != 0i));
      let x_1542 : u32 = u_xlatu45;
      u_xlati52 = (bitcast<i32>(x_1542) << bitcast<u32>(2i));
      let x_1545 : i32 = u_xlati51;
      if ((x_1545 != 0i)) {
        let x_1550 : vec3<f32> = vs_INTERP0;
        let x_1552 : i32 = u_xlati52;
        let x_1555 : i32 = u_xlati52;
        let x_1559 : vec4<f32> = x_1532.x_AdditionalLightsWorldToLights[((x_1552 + 1i) / 4i)][((x_1555 + 1i) % 4i)];
        let x_1561 : vec3<f32> = (vec3<f32>(x_1550.y, x_1550.y, x_1550.y) * vec3<f32>(x_1559.x, x_1559.y, x_1559.w));
        let x_1562 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1561.x, x_1561.y, x_1561.z, x_1562.w);
        let x_1564 : i32 = u_xlati52;
        let x_1566 : i32 = u_xlati52;
        let x_1569 : vec4<f32> = x_1532.x_AdditionalLightsWorldToLights[(x_1564 / 4i)][(x_1566 % 4i)];
        let x_1571 : vec3<f32> = vs_INTERP0;
        let x_1574 : vec4<f32> = u_xlat11;
        let x_1576 : vec3<f32> = ((vec3<f32>(x_1569.x, x_1569.y, x_1569.w) * vec3<f32>(x_1571.x, x_1571.x, x_1571.x)) + vec3<f32>(x_1574.x, x_1574.y, x_1574.z));
        let x_1577 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1576.x, x_1576.y, x_1576.z, x_1577.w);
        let x_1579 : i32 = u_xlati52;
        let x_1582 : i32 = u_xlati52;
        let x_1586 : vec4<f32> = x_1532.x_AdditionalLightsWorldToLights[((x_1579 + 2i) / 4i)][((x_1582 + 2i) % 4i)];
        let x_1588 : vec3<f32> = vs_INTERP0;
        let x_1591 : vec4<f32> = u_xlat11;
        let x_1593 : vec3<f32> = ((vec3<f32>(x_1586.x, x_1586.y, x_1586.w) * vec3<f32>(x_1588.z, x_1588.z, x_1588.z)) + vec3<f32>(x_1591.x, x_1591.y, x_1591.z));
        let x_1594 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1593.x, x_1593.y, x_1593.z, x_1594.w);
        let x_1596 : vec4<f32> = u_xlat11;
        let x_1598 : i32 = u_xlati52;
        let x_1601 : i32 = u_xlati52;
        let x_1605 : vec4<f32> = x_1532.x_AdditionalLightsWorldToLights[((x_1598 + 3i) / 4i)][((x_1601 + 3i) % 4i)];
        let x_1607 : vec3<f32> = (vec3<f32>(x_1596.x, x_1596.y, x_1596.z) + vec3<f32>(x_1605.x, x_1605.y, x_1605.w));
        let x_1608 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1607.x, x_1607.y, x_1607.z, x_1608.w);
        let x_1610 : vec4<f32> = u_xlat11;
        let x_1612 : vec4<f32> = u_xlat11;
        let x_1614 : vec2<f32> = (vec2<f32>(x_1610.x, x_1610.y) / vec2<f32>(x_1612.z, x_1612.z));
        let x_1615 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1614.x, x_1614.y, x_1615.z, x_1615.w);
        let x_1617 : vec4<f32> = u_xlat11;
        let x_1620 : vec2<f32> = ((vec2<f32>(x_1617.x, x_1617.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1621 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1620.x, x_1620.y, x_1621.z, x_1621.w);
        let x_1623 : vec4<f32> = u_xlat11;
        let x_1627 : vec2<f32> = clamp(vec2<f32>(x_1623.x, x_1623.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1628 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1627.x, x_1627.y, x_1628.z, x_1628.w);
        let x_1630 : u32 = u_xlatu45;
        let x_1633 : vec4<f32> = x_1532.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1630)];
        let x_1635 : vec4<f32> = u_xlat11;
        let x_1638 : u32 = u_xlatu45;
        let x_1641 : vec4<f32> = x_1532.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1638)];
        let x_1643 : vec2<f32> = ((vec2<f32>(x_1633.x, x_1633.y) * vec2<f32>(x_1635.x, x_1635.y)) + vec2<f32>(x_1641.z, x_1641.w));
        let x_1644 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1643.x, x_1643.y, x_1644.z, x_1644.w);
      } else {
        let x_1648 : i32 = u_xlati50;
        u_xlatb50 = (x_1648 == 1i);
        let x_1650 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1650);
        let x_1652 : i32 = u_xlati50;
        if ((x_1652 != 0i)) {
          let x_1657 : vec3<f32> = vs_INTERP0;
          let x_1659 : i32 = u_xlati52;
          let x_1662 : i32 = u_xlati52;
          let x_1666 : vec4<f32> = x_1532.x_AdditionalLightsWorldToLights[((x_1659 + 1i) / 4i)][((x_1662 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1657.y, x_1657.y) * vec2<f32>(x_1666.x, x_1666.y));
          let x_1669 : i32 = u_xlati52;
          let x_1671 : i32 = u_xlati52;
          let x_1674 : vec4<f32> = x_1532.x_AdditionalLightsWorldToLights[(x_1669 / 4i)][(x_1671 % 4i)];
          let x_1676 : vec3<f32> = vs_INTERP0;
          let x_1679 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1674.x, x_1674.y) * vec2<f32>(x_1676.x, x_1676.x)) + x_1679);
          let x_1681 : i32 = u_xlati52;
          let x_1684 : i32 = u_xlati52;
          let x_1688 : vec4<f32> = x_1532.x_AdditionalLightsWorldToLights[((x_1681 + 2i) / 4i)][((x_1684 + 2i) % 4i)];
          let x_1690 : vec3<f32> = vs_INTERP0;
          let x_1693 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1688.x, x_1688.y) * vec2<f32>(x_1690.z, x_1690.z)) + x_1693);
          let x_1695 : vec2<f32> = u_xlat39;
          let x_1696 : i32 = u_xlati52;
          let x_1699 : i32 = u_xlati52;
          let x_1703 : vec4<f32> = x_1532.x_AdditionalLightsWorldToLights[((x_1696 + 3i) / 4i)][((x_1699 + 3i) % 4i)];
          u_xlat39 = (x_1695 + vec2<f32>(x_1703.x, x_1703.y));
          let x_1706 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1706 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1709 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1709);
          let x_1711 : u32 = u_xlatu45;
          let x_1714 : vec4<f32> = x_1532.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1711)];
          let x_1716 : vec2<f32> = u_xlat39;
          let x_1718 : u32 = u_xlatu45;
          let x_1721 : vec4<f32> = x_1532.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1718)];
          let x_1723 : vec2<f32> = ((vec2<f32>(x_1714.x, x_1714.y) * x_1716) + vec2<f32>(x_1721.z, x_1721.w));
          let x_1724 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1723.x, x_1723.y, x_1724.z, x_1724.w);
        } else {
          let x_1728 : vec3<f32> = vs_INTERP0;
          let x_1730 : i32 = u_xlati52;
          let x_1733 : i32 = u_xlati52;
          let x_1737 : vec4<f32> = x_1532.x_AdditionalLightsWorldToLights[((x_1730 + 1i) / 4i)][((x_1733 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1728.y, x_1728.y, x_1728.y, x_1728.y) * x_1737);
          let x_1739 : i32 = u_xlati52;
          let x_1741 : i32 = u_xlati52;
          let x_1744 : vec4<f32> = x_1532.x_AdditionalLightsWorldToLights[(x_1739 / 4i)][(x_1741 % 4i)];
          let x_1745 : vec3<f32> = vs_INTERP0;
          let x_1748 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1744 * vec4<f32>(x_1745.x, x_1745.x, x_1745.x, x_1745.x)) + x_1748);
          let x_1750 : i32 = u_xlati52;
          let x_1753 : i32 = u_xlati52;
          let x_1757 : vec4<f32> = x_1532.x_AdditionalLightsWorldToLights[((x_1750 + 2i) / 4i)][((x_1753 + 2i) % 4i)];
          let x_1758 : vec3<f32> = vs_INTERP0;
          let x_1761 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1757 * vec4<f32>(x_1758.z, x_1758.z, x_1758.z, x_1758.z)) + x_1761);
          let x_1763 : vec4<f32> = u_xlat12;
          let x_1764 : i32 = u_xlati52;
          let x_1767 : i32 = u_xlati52;
          let x_1771 : vec4<f32> = x_1532.x_AdditionalLightsWorldToLights[((x_1764 + 3i) / 4i)][((x_1767 + 3i) % 4i)];
          u_xlat12 = (x_1763 + x_1771);
          let x_1773 : vec4<f32> = u_xlat12;
          let x_1775 : vec4<f32> = u_xlat12;
          let x_1777 : vec3<f32> = (vec3<f32>(x_1773.x, x_1773.y, x_1773.z) / vec3<f32>(x_1775.w, x_1775.w, x_1775.w));
          let x_1778 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1778.w);
          let x_1780 : vec4<f32> = u_xlat12;
          let x_1782 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1780.x, x_1780.y, x_1780.z), vec3<f32>(x_1782.x, x_1782.y, x_1782.z));
          let x_1785 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1785);
          let x_1787 : f32 = u_xlat50;
          let x_1789 : vec4<f32> = u_xlat12;
          let x_1791 : vec3<f32> = (vec3<f32>(x_1787, x_1787, x_1787) * vec3<f32>(x_1789.x, x_1789.y, x_1789.z));
          let x_1792 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1791.x, x_1791.y, x_1791.z, x_1792.w);
          let x_1794 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1794.x, x_1794.y, x_1794.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1799 : f32 = u_xlat50;
          u_xlat50 = max(x_1799, 0.000001f);
          let x_1802 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1802);
          let x_1805 : f32 = u_xlat50;
          let x_1807 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1805, x_1805, x_1805) * vec3<f32>(x_1807.z, x_1807.x, x_1807.y));
          let x_1811 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1811);
          let x_1815 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1815, 0.0f, 1.0f);
          let x_1819 : vec3<f32> = u_xlat13;
          let x_1822 : vec4<bool> = (vec4<f32>(x_1819.y, x_1819.z, x_1819.y, x_1819.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1822.x, x_1822.y);
          let x_1825 : bool = u_xlatb39.x;
          if (x_1825) {
            let x_1830 : f32 = u_xlat13.x;
            x_1826 = x_1830;
          } else {
            let x_1833 : f32 = u_xlat13.x;
            x_1826 = -(x_1833);
          }
          let x_1835 : f32 = x_1826;
          u_xlat39.x = x_1835;
          let x_1838 : bool = u_xlatb39.y;
          if (x_1838) {
            let x_1843 : f32 = u_xlat13.x;
            x_1839 = x_1843;
          } else {
            let x_1846 : f32 = u_xlat13.x;
            x_1839 = -(x_1846);
          }
          let x_1848 : f32 = x_1839;
          u_xlat39.y = x_1848;
          let x_1850 : vec4<f32> = u_xlat12;
          let x_1852 : f32 = u_xlat50;
          let x_1855 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1850.x, x_1850.y) * vec2<f32>(x_1852, x_1852)) + x_1855);
          let x_1857 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1857 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1860 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1860, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1864 : u32 = u_xlatu45;
          let x_1867 : vec4<f32> = x_1532.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1864)];
          let x_1869 : vec2<f32> = u_xlat39;
          let x_1871 : u32 = u_xlatu45;
          let x_1874 : vec4<f32> = x_1532.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1871)];
          let x_1876 : vec2<f32> = ((vec2<f32>(x_1867.x, x_1867.y) * x_1869) + vec2<f32>(x_1874.z, x_1874.w));
          let x_1877 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1876.x, x_1876.y, x_1877.z, x_1877.w);
        }
      }
      let x_1884 : vec4<f32> = u_xlat11;
      let x_1887 : f32 = x_90.x_GlobalMipBias.x;
      let x_1888 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1884.x, x_1884.y), x_1887);
      u_xlat11 = x_1888;
      let x_1890 : bool = u_xlatb7.y;
      if (x_1890) {
        let x_1895 : f32 = u_xlat11.w;
        x_1891 = x_1895;
      } else {
        let x_1898 : f32 = u_xlat11.x;
        x_1891 = x_1898;
      }
      let x_1899 : f32 = x_1891;
      u_xlat50 = x_1899;
      let x_1901 : bool = u_xlatb7.x;
      if (x_1901) {
        let x_1905 : vec4<f32> = u_xlat11;
        x_1902 = vec3<f32>(x_1905.x, x_1905.y, x_1905.z);
      } else {
        let x_1908 : f32 = u_xlat50;
        x_1902 = vec3<f32>(x_1908, x_1908, x_1908);
      }
      let x_1910 : vec3<f32> = x_1902;
      let x_1911 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1917 : vec4<f32> = u_xlat11;
    let x_1919 : u32 = u_xlatu45;
    let x_1922 : vec4<f32> = x_1429.x_AdditionalLightsColor[bitcast<i32>(x_1919)];
    let x_1924 : vec3<f32> = (vec3<f32>(x_1917.x, x_1917.y, x_1917.z) * vec3<f32>(x_1922.x, x_1922.y, x_1922.z));
    let x_1925 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
    let x_1927 : vec4<f32> = u_xlat6;
    let x_1929 : vec4<f32> = u_xlat11;
    let x_1931 : vec3<f32> = (vec3<f32>(x_1927.x, x_1927.x, x_1927.x) * vec3<f32>(x_1929.x, x_1929.y, x_1929.z));
    let x_1932 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1931.x, x_1931.y, x_1931.z, x_1932.w);
    let x_1934 : vec4<f32> = u_xlat3;
    let x_1936 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1934.x, x_1934.y, x_1934.z), x_1936);
    let x_1938 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1938, 0.0f, 1.0f);
    let x_1940 : f32 = u_xlat45;
    let x_1941 : f32 = u_xlat35;
    u_xlat45 = (x_1940 * x_1941);
    let x_1943 : f32 = u_xlat45;
    let x_1945 : vec4<f32> = u_xlat11;
    let x_1947 : vec3<f32> = (vec3<f32>(x_1943, x_1943, x_1943) * vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
    let x_1948 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);
    let x_1950 : vec3<f32> = u_xlat9;
    let x_1951 : f32 = u_xlat49;
    let x_1954 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_1950 * vec3<f32>(x_1951, x_1951, x_1951)) + x_1954);
    let x_1956 : vec3<f32> = u_xlat9;
    let x_1957 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1956, x_1957);
    let x_1959 : f32 = u_xlat45;
    u_xlat45 = max(x_1959, 1.17549435e-37f);
    let x_1961 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1961);
    let x_1963 : f32 = u_xlat45;
    let x_1965 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1963, x_1963, x_1963) * x_1965);
    let x_1967 : vec4<f32> = u_xlat3;
    let x_1969 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1967.x, x_1967.y, x_1967.z), x_1969);
    let x_1971 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1971, 0.0f, 1.0f);
    let x_1973 : vec3<f32> = u_xlat10;
    let x_1974 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1973, x_1974);
    let x_1976 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1976, 0.0f, 1.0f);
    let x_1978 : f32 = u_xlat45;
    let x_1979 : f32 = u_xlat45;
    u_xlat45 = (x_1978 * x_1979);
    let x_1981 : f32 = u_xlat45;
    let x_1983 : f32 = u_xlat15.x;
    u_xlat45 = ((x_1981 * x_1983) + 1.000010014f);
    let x_1986 : f32 = u_xlat35;
    let x_1987 : f32 = u_xlat35;
    u_xlat35 = (x_1986 * x_1987);
    let x_1989 : f32 = u_xlat45;
    let x_1990 : f32 = u_xlat45;
    u_xlat45 = (x_1989 * x_1990);
    let x_1992 : f32 = u_xlat35;
    u_xlat35 = max(x_1992, 0.100000001f);
    let x_1994 : f32 = u_xlat45;
    let x_1995 : f32 = u_xlat35;
    u_xlat45 = (x_1994 * x_1995);
    let x_1997 : f32 = u_xlat46;
    let x_1998 : f32 = u_xlat45;
    u_xlat45 = (x_1997 * x_1998);
    let x_2000 : f32 = u_xlat44;
    let x_2001 : f32 = u_xlat45;
    u_xlat45 = (x_2000 / x_2001);
    let x_2003 : f32 = u_xlat45;
    let x_2006 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_2003, x_2003, x_2003) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_2006);
    let x_2008 : vec3<f32> = u_xlat9;
    let x_2009 : vec4<f32> = u_xlat11;
    let x_2012 : vec4<f32> = u_xlat8;
    let x_2014 : vec3<f32> = ((x_2008 * vec3<f32>(x_2009.x, x_2009.y, x_2009.z)) + vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
    let x_2015 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2014.x, x_2014.y, x_2014.z, x_2015.w);

    continuing {
      let x_2017 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2017 + bitcast<u32>(1i));
    }
  }
  let x_2019 : vec3<f32> = u_xlat19;
  let x_2020 : vec4<f32> = u_xlat5;
  let x_2023 : vec3<f32> = u_xlat20;
  u_xlat15 = ((x_2019 * vec3<f32>(x_2020.x, x_2020.x, x_2020.x)) + x_2023);
  let x_2025 : vec4<f32> = u_xlat8;
  let x_2027 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_2025.x, x_2025.y, x_2025.z) + x_2027);
  let x_2031 : vec4<f32> = vs_INTERP4;
  let x_2033 : vec3<f32> = u_xlat0;
  let x_2035 : vec3<f32> = u_xlat15;
  let x_2036 : vec3<f32> = ((vec3<f32>(x_2031.w, x_2031.w, x_2031.w) * x_2033) + x_2035);
  let x_2037 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2036.x, x_2036.y, x_2036.z, x_2037.w);
  let x_2039 : bool = u_xlatb1;
  let x_2040 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_2040, x_2039);
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

