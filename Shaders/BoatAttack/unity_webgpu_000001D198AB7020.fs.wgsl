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

@group(1) @binding(4) var<uniform> x_982 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1454 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1557 : AdditionalLightsCookies;

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
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var x_1066 : f32;
  var x_1077 : vec3<f32>;
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
  var x_1851 : f32;
  var x_1864 : f32;
  var x_1916 : f32;
  var x_1927 : vec3<f32>;
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
  u_xlat3.w = 1.0f;
  let x_721 : vec4<f32> = x_161.unity_SHAr;
  let x_722 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_721, x_722);
  let x_727 : vec4<f32> = x_161.unity_SHAg;
  let x_728 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_727, x_728);
  let x_733 : vec4<f32> = x_161.unity_SHAb;
  let x_734 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_733, x_734);
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_738.y, x_738.z, x_738.z, x_738.x) * vec4<f32>(x_740.x, x_740.y, x_740.z, x_740.z));
  let x_746 : vec4<f32> = x_161.unity_SHBr;
  let x_747 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_746, x_747);
  let x_752 : vec4<f32> = x_161.unity_SHBg;
  let x_753 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_752, x_753);
  let x_757 : vec4<f32> = x_161.unity_SHBb;
  let x_758 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_757, x_758);
  let x_762 : f32 = u_xlat3.y;
  let x_764 : f32 = u_xlat3.y;
  u_xlat15.x = (x_762 * x_764);
  let x_768 : f32 = u_xlat3.x;
  let x_770 : f32 = u_xlat3.x;
  let x_773 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_768 * x_770) + -(x_773));
  let x_779 : vec4<f32> = x_161.unity_SHC;
  let x_781 : vec3<f32> = u_xlat15;
  let x_784 : vec4<f32> = u_xlat8;
  u_xlat19 = ((vec3<f32>(x_779.x, x_779.y, x_779.z) * vec3<f32>(x_781.x, x_781.x, x_781.x)) + vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_787 : vec3<f32> = u_xlat19;
  let x_788 : vec4<f32> = u_xlat6;
  u_xlat19 = (x_787 + vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_791 : vec3<f32> = u_xlat19;
  u_xlat19 = max(x_791, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_796 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_797 : vec2<f32> = vec2<f32>(x_796.x, x_796.y);
  let x_801 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_797.x, x_797.y));
  let x_802 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_801.x, x_801.y, x_802.z);
  let x_804 : vec3<f32> = u_xlat15;
  let x_806 : vec4<f32> = hlslcc_FragCoord;
  let x_808 : vec2<f32> = (vec2<f32>(x_804.x, x_804.y) * vec2<f32>(x_806.x, x_806.y));
  let x_809 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_808.x, x_808.y, x_809.z, x_809.w);
  let x_812 : f32 = u_xlat6.y;
  let x_815 : f32 = x_90.x_ScaleBiasRt.x;
  let x_818 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_812 * x_815) + x_818);
  let x_822 : f32 = u_xlat15.x;
  u_xlat6.z = (-(x_822) + 1.0f);
  let x_827 : f32 = u_xlat5.x;
  u_xlat5.x = x_827;
  let x_830 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_830, 0.0f, 1.0f);
  let x_833 : f32 = u_xlat42;
  u_xlat42 = x_833;
  let x_834 : f32 = u_xlat42;
  u_xlat42 = clamp(x_834, 0.0f, 1.0f);
  let x_836 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_836 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_841 : f32 = u_xlat5.x;
  u_xlat15.x = (-(x_841) + 1.0f);
  let x_846 : f32 = u_xlat15.x;
  let x_848 : f32 = u_xlat15.x;
  u_xlat29.x = (x_846 * x_848);
  let x_852 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_852, 0.0078125f);
  let x_857 : f32 = u_xlat29.x;
  let x_859 : f32 = u_xlat29.x;
  u_xlat44 = (x_857 * x_859);
  let x_863 : f32 = u_xlat5.x;
  u_xlat45 = (x_863 + 0.040000021f);
  let x_866 : f32 = u_xlat45;
  u_xlat45 = min(x_866, 1.0f);
  let x_870 : f32 = u_xlat29.x;
  u_xlat46 = ((x_870 * 4.0f) + 2.0f);
  let x_879 : vec4<f32> = u_xlat6;
  let x_882 : f32 = x_90.x_GlobalMipBias.x;
  let x_883 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_879.x, x_879.z), x_882);
  u_xlat5.x = x_883.x;
  let x_887 : f32 = u_xlat5.x;
  u_xlat6.x = (x_887 + -1.0f);
  let x_892 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_894 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_892 * x_894) + 1.0f);
  let x_899 : f32 = u_xlat5.x;
  let x_901 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_899, x_901);
  let x_906 : vec4<f32> = vs_INTERP9;
  let x_907 : vec2<f32> = vec2<f32>(x_906.x, x_906.y);
  let x_909 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_907.x, x_907.y, x_909);
  let x_917 : vec3<f32> = txVec1;
  let x_919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_917.xy, x_917.z);
  u_xlat20.x = x_919;
  let x_922 : f32 = u_xlat20.x;
  let x_924 : f32 = x_272.x_MainLightShadowParams.x;
  let x_926 : f32 = u_xlat43;
  u_xlat43 = ((x_922 * x_924) + x_926);
  let x_930 : f32 = vs_INTERP9.z;
  u_xlatb20.x = (0.0f >= x_930);
  let x_935 : f32 = vs_INTERP9.z;
  u_xlatb34 = (x_935 >= 1.0f);
  let x_937 : bool = u_xlatb34;
  let x_939 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_937 | x_939);
  let x_943 : bool = u_xlatb20.x;
  let x_944 : f32 = u_xlat43;
  u_xlat43 = select(x_944, 1.0f, x_943);
  let x_946 : vec3<f32> = vs_INTERP0;
  let x_948 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat20 = (x_946 + -(x_948));
  let x_951 : vec3<f32> = u_xlat20;
  let x_952 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_951, x_952);
  let x_956 : f32 = u_xlat20.x;
  let x_958 : f32 = x_272.x_MainLightShadowParams.z;
  let x_961 : f32 = x_272.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_956 * x_958) + x_961);
  let x_965 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_965, 0.0f, 1.0f);
  let x_969 : f32 = u_xlat43;
  u_xlat34 = (-(x_969) + 1.0f);
  let x_973 : f32 = u_xlat20.x;
  let x_974 : f32 = u_xlat34;
  let x_976 : f32 = u_xlat43;
  u_xlat43 = ((x_973 * x_974) + x_976);
  let x_984 : f32 = x_982.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_984 == -1.0f));
  let x_988 : bool = u_xlatb20.x;
  if (x_988) {
    let x_991 : vec3<f32> = vs_INTERP0;
    let x_994 : vec4<f32> = x_982.x_MainLightWorldToLight[1i];
    let x_996 : vec2<f32> = (vec2<f32>(x_991.y, x_991.y) * vec2<f32>(x_994.x, x_994.y));
    let x_997 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_996.x, x_996.y, x_997.z);
    let x_1000 : vec4<f32> = x_982.x_MainLightWorldToLight[0i];
    let x_1002 : vec3<f32> = vs_INTERP0;
    let x_1005 : vec3<f32> = u_xlat20;
    let x_1007 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1002.x, x_1002.x)) + vec2<f32>(x_1005.x, x_1005.y));
    let x_1008 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1007.x, x_1007.y, x_1008.z);
    let x_1011 : vec4<f32> = x_982.x_MainLightWorldToLight[2i];
    let x_1013 : vec3<f32> = vs_INTERP0;
    let x_1016 : vec3<f32> = u_xlat20;
    let x_1018 : vec2<f32> = ((vec2<f32>(x_1011.x, x_1011.y) * vec2<f32>(x_1013.z, x_1013.z)) + vec2<f32>(x_1016.x, x_1016.y));
    let x_1019 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1018.x, x_1018.y, x_1019.z);
    let x_1021 : vec3<f32> = u_xlat20;
    let x_1024 : vec4<f32> = x_982.x_MainLightWorldToLight[3i];
    let x_1026 : vec2<f32> = (vec2<f32>(x_1021.x, x_1021.y) + vec2<f32>(x_1024.x, x_1024.y));
    let x_1027 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1026.x, x_1026.y, x_1027.z);
    let x_1029 : vec3<f32> = u_xlat20;
    let x_1033 : vec2<f32> = ((vec2<f32>(x_1029.x, x_1029.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1034 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1033.x, x_1033.y, x_1034.z);
    let x_1041 : vec3<f32> = u_xlat20;
    let x_1044 : f32 = x_90.x_GlobalMipBias.x;
    let x_1045 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1041.x, x_1041.y), x_1044);
    u_xlat7 = x_1045;
    let x_1047 : f32 = x_982.x_MainLightCookieTextureFormat;
    let x_1049 : f32 = x_982.x_MainLightCookieTextureFormat;
    let x_1051 : f32 = x_982.x_MainLightCookieTextureFormat;
    let x_1053 : f32 = x_982.x_MainLightCookieTextureFormat;
    let x_1054 : vec4<f32> = vec4<f32>(x_1047, x_1049, x_1051, x_1053);
    let x_1062 : vec4<bool> = (vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1054.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1062.x, x_1062.y);
    let x_1065 : bool = u_xlatb20.y;
    if (x_1065) {
      let x_1070 : f32 = u_xlat7.w;
      x_1066 = x_1070;
    } else {
      let x_1073 : f32 = u_xlat7.x;
      x_1066 = x_1073;
    }
    let x_1074 : f32 = x_1066;
    u_xlat34 = x_1074;
    let x_1076 : bool = u_xlatb20.x;
    if (x_1076) {
      let x_1080 : vec4<f32> = u_xlat7;
      x_1077 = vec3<f32>(x_1080.x, x_1080.y, x_1080.z);
    } else {
      let x_1083 : f32 = u_xlat34;
      x_1077 = vec3<f32>(x_1083, x_1083, x_1083);
    }
    let x_1085 : vec3<f32> = x_1077;
    u_xlat20 = x_1085;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1090 : vec3<f32> = u_xlat20;
  let x_1092 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat20 = (x_1090 * vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1095 : vec4<f32> = u_xlat6;
  let x_1097 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1095.x, x_1095.x, x_1095.x) * x_1097);
  let x_1099 : vec3<f32> = u_xlat2;
  let x_1101 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1099), vec3<f32>(x_1101.x, x_1101.y, x_1101.z));
  let x_1106 : f32 = u_xlat7.x;
  let x_1108 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1106 + x_1108);
  let x_1111 : vec4<f32> = u_xlat3;
  let x_1113 : vec4<f32> = u_xlat7;
  let x_1117 : vec3<f32> = u_xlat2;
  let x_1119 : vec3<f32> = ((vec3<f32>(x_1111.x, x_1111.y, x_1111.z) * -(vec3<f32>(x_1113.x, x_1113.x, x_1113.x))) + -(x_1117));
  let x_1120 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1123 : vec4<f32> = u_xlat3;
  let x_1125 : vec3<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_1123.x, x_1123.y, x_1123.z), x_1125);
  let x_1127 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1127, 0.0f, 1.0f);
  let x_1129 : f32 = u_xlat49;
  u_xlat49 = (-(x_1129) + 1.0f);
  let x_1132 : f32 = u_xlat49;
  let x_1133 : f32 = u_xlat49;
  u_xlat49 = (x_1132 * x_1133);
  let x_1135 : f32 = u_xlat49;
  let x_1136 : f32 = u_xlat49;
  u_xlat49 = (x_1135 * x_1136);
  let x_1139 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_1139) * 0.699999988f) + 1.700000048f);
  let x_1147 : f32 = u_xlat15.x;
  let x_1149 : f32 = u_xlat8.x;
  u_xlat15.x = (x_1147 * x_1149);
  let x_1153 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1153 * 6.0f);
  let x_1165 : vec4<f32> = u_xlat7;
  let x_1168 : f32 = u_xlat15.x;
  let x_1169 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1165.x, x_1165.y, x_1165.z), x_1168);
  u_xlat8 = x_1169;
  let x_1171 : f32 = u_xlat8.w;
  u_xlat15.x = (x_1171 + -1.0f);
  let x_1175 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1177 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_1175 * x_1177) + 1.0f);
  let x_1182 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_1182, 0.0f);
  let x_1186 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_1186);
  let x_1190 : f32 = u_xlat15.x;
  let x_1192 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_1190 * x_1192);
  let x_1196 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_1196);
  let x_1200 : f32 = u_xlat15.x;
  let x_1202 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_1200 * x_1202);
  let x_1205 : vec4<f32> = u_xlat8;
  let x_1207 : vec3<f32> = u_xlat15;
  let x_1209 : vec3<f32> = (vec3<f32>(x_1205.x, x_1205.y, x_1205.z) * vec3<f32>(x_1207.x, x_1207.x, x_1207.x));
  let x_1210 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1212 : vec2<f32> = u_xlat29;
  let x_1214 : vec2<f32> = u_xlat29;
  let x_1218 : vec2<f32> = ((vec2<f32>(x_1212.x, x_1212.x) * vec2<f32>(x_1214.x, x_1214.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1219 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1218.x, x_1218.y, x_1219.z);
  let x_1222 : f32 = u_xlat15.y;
  u_xlat29.x = (1.0f / x_1222);
  let x_1225 : f32 = u_xlat45;
  u_xlat45 = (x_1225 + -0.039999999f);
  let x_1228 : f32 = u_xlat49;
  let x_1229 : f32 = u_xlat45;
  u_xlat45 = ((x_1228 * x_1229) + 0.039999999f);
  let x_1234 : f32 = u_xlat29.x;
  let x_1235 : f32 = u_xlat45;
  u_xlat29.x = (x_1234 * x_1235);
  let x_1238 : vec2<f32> = u_xlat29;
  let x_1240 : vec4<f32> = u_xlat7;
  let x_1242 : vec3<f32> = (vec3<f32>(x_1238.x, x_1238.x, x_1238.x) * vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
  let x_1243 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
  let x_1245 : vec3<f32> = u_xlat19;
  let x_1246 : vec3<f32> = u_xlat4;
  let x_1248 : vec4<f32> = u_xlat7;
  u_xlat19 = ((x_1245 * x_1246) + vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
  let x_1251 : f32 = u_xlat43;
  let x_1253 : f32 = x_161.unity_LightData.z;
  u_xlat29.x = (x_1251 * x_1253);
  let x_1256 : vec4<f32> = u_xlat3;
  let x_1259 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1256.x, x_1256.y, x_1256.z), vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
  let x_1262 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1262, 0.0f, 1.0f);
  let x_1264 : f32 = u_xlat43;
  let x_1266 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1264 * x_1266);
  let x_1269 : vec2<f32> = u_xlat29;
  let x_1271 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1269.x, x_1269.x, x_1269.x) * x_1271);
  let x_1273 : vec3<f32> = u_xlat2;
  let x_1275 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1277 : vec3<f32> = (x_1273 + vec3<f32>(x_1275.x, x_1275.y, x_1275.z));
  let x_1278 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
  let x_1280 : vec4<f32> = u_xlat7;
  let x_1282 : vec4<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_1280.x, x_1280.y, x_1280.z), vec3<f32>(x_1282.x, x_1282.y, x_1282.z));
  let x_1287 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_1287, 1.17549435e-37f);
  let x_1292 : f32 = u_xlat29.x;
  u_xlat29.x = inverseSqrt(x_1292);
  let x_1295 : vec2<f32> = u_xlat29;
  let x_1297 : vec4<f32> = u_xlat7;
  let x_1299 : vec3<f32> = (vec3<f32>(x_1295.x, x_1295.x, x_1295.x) * vec3<f32>(x_1297.x, x_1297.y, x_1297.z));
  let x_1300 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1300.w);
  let x_1302 : vec4<f32> = u_xlat3;
  let x_1304 : vec4<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_1302.x, x_1302.y, x_1302.z), vec3<f32>(x_1304.x, x_1304.y, x_1304.z));
  let x_1309 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_1309, 0.0f, 1.0f);
  let x_1313 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1315 : vec4<f32> = u_xlat7;
  u_xlat29.y = dot(vec3<f32>(x_1313.x, x_1313.y, x_1313.z), vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
  let x_1320 : f32 = u_xlat29.y;
  u_xlat29.y = clamp(x_1320, 0.0f, 1.0f);
  let x_1323 : vec2<f32> = u_xlat29;
  let x_1324 : vec2<f32> = u_xlat29;
  u_xlat29 = (x_1323 * x_1324);
  let x_1327 : f32 = u_xlat29.x;
  let x_1329 : f32 = u_xlat15.x;
  u_xlat29.x = ((x_1327 * x_1329) + 1.000010014f);
  let x_1335 : f32 = u_xlat29.x;
  let x_1337 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1335 * x_1337);
  let x_1341 : f32 = u_xlat29.y;
  u_xlat43 = max(x_1341, 0.100000001f);
  let x_1344 : f32 = u_xlat43;
  let x_1346 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1344 * x_1346);
  let x_1349 : f32 = u_xlat46;
  let x_1351 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1349 * x_1351);
  let x_1354 : f32 = u_xlat44;
  let x_1356 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1354 / x_1356);
  let x_1359 : vec2<f32> = u_xlat29;
  let x_1363 : vec3<f32> = u_xlat4;
  let x_1364 : vec3<f32> = ((vec3<f32>(x_1359.x, x_1359.x, x_1359.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1363);
  let x_1365 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1365.w);
  let x_1367 : vec3<f32> = u_xlat20;
  let x_1368 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1367 * vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
  let x_1373 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1375 : f32 = x_161.unity_LightData.y;
  u_xlat29.x = min(x_1373, x_1375);
  let x_1379 : f32 = u_xlat29.x;
  u_xlatu29 = bitcast<u32>(i32(x_1379));
  let x_1384 : f32 = x_982.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1386 : f32 = x_982.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1388 : f32 = x_982.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1390 : f32 = x_982.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1391 : vec4<f32> = vec4<f32>(x_1384, x_1386, x_1388, x_1390);
  let x_1397 : vec4<bool> = (vec4<f32>(x_1391.x, x_1391.y, x_1391.z, x_1391.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1397.x, x_1397.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1408 : u32 = u_xlatu_loop_1;
    let x_1409 : u32 = u_xlatu29;
    if ((x_1408 < x_1409)) {
    } else {
      break;
    }
    let x_1412 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1412 >> 2u);
    let x_1415 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1415 & 3u));
    let x_1418 : u32 = u_xlatu45;
    let x_1421 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1418)];
    let x_1431 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1436 : vec4<u32> = indexable[x_1431];
    u_xlat45 = dot(x_1421, bitcast<vec4<f32>>(x_1436));
    let x_1439 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1439));
    let x_1443 : vec3<f32> = vs_INTERP0;
    let x_1455 : u32 = u_xlatu45;
    let x_1458 : vec4<f32> = x_1454.x_AdditionalLightsPosition[bitcast<i32>(x_1455)];
    let x_1461 : u32 = u_xlatu45;
    let x_1464 : vec4<f32> = x_1454.x_AdditionalLightsPosition[bitcast<i32>(x_1461)];
    u_xlat9 = ((-(x_1443) * vec3<f32>(x_1458.w, x_1458.w, x_1458.w)) + vec3<f32>(x_1464.x, x_1464.y, x_1464.z));
    let x_1468 : vec3<f32> = u_xlat9;
    let x_1469 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1468, x_1469);
    let x_1471 : f32 = u_xlat35;
    u_xlat35 = max(x_1471, 6.10351562e-05f);
    let x_1474 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1474);
    let x_1477 : f32 = u_xlat49;
    let x_1479 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1477, x_1477, x_1477) * x_1479);
    let x_1482 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1482);
    let x_1484 : f32 = u_xlat35;
    let x_1485 : u32 = u_xlatu45;
    let x_1488 : f32 = x_1454.x_AdditionalLightsAttenuation[bitcast<i32>(x_1485)].x;
    u_xlat35 = (x_1484 * x_1488);
    let x_1490 : f32 = u_xlat35;
    let x_1492 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1490) * x_1492) + 1.0f);
    let x_1495 : f32 = u_xlat35;
    u_xlat35 = max(x_1495, 0.0f);
    let x_1497 : f32 = u_xlat35;
    let x_1498 : f32 = u_xlat35;
    u_xlat35 = (x_1497 * x_1498);
    let x_1500 : f32 = u_xlat35;
    let x_1501 : f32 = u_xlat50;
    u_xlat35 = (x_1500 * x_1501);
    let x_1503 : u32 = u_xlatu45;
    let x_1506 : vec4<f32> = x_1454.x_AdditionalLightsSpotDir[bitcast<i32>(x_1503)];
    let x_1508 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1506.x, x_1506.y, x_1506.z), x_1508);
    let x_1510 : f32 = u_xlat50;
    let x_1511 : u32 = u_xlatu45;
    let x_1514 : f32 = x_1454.x_AdditionalLightsAttenuation[bitcast<i32>(x_1511)].z;
    let x_1516 : u32 = u_xlatu45;
    let x_1519 : f32 = x_1454.x_AdditionalLightsAttenuation[bitcast<i32>(x_1516)].w;
    u_xlat50 = ((x_1510 * x_1514) + x_1519);
    let x_1521 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1521, 0.0f, 1.0f);
    let x_1523 : f32 = u_xlat50;
    let x_1524 : f32 = u_xlat50;
    u_xlat50 = (x_1523 * x_1524);
    let x_1526 : f32 = u_xlat35;
    let x_1527 : f32 = u_xlat50;
    u_xlat35 = (x_1526 * x_1527);
    let x_1530 : u32 = u_xlatu45;
    u_xlatu50 = (x_1530 >> 5u);
    let x_1533 : u32 = u_xlatu45;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1533) & 31i)));
    let x_1539 : i32 = u_xlati51;
    let x_1541 : u32 = u_xlatu50;
    let x_1544 : f32 = x_982.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1541)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1539) & bitcast<u32>(x_1544)));
    let x_1548 : i32 = u_xlati50;
    if ((x_1548 != 0i)) {
      let x_1558 : u32 = u_xlatu45;
      let x_1561 : f32 = x_1557.x_AdditionalLightsLightTypes[bitcast<i32>(x_1558)].el;
      u_xlati50 = i32(x_1561);
      let x_1563 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1563 != 0i));
      let x_1567 : u32 = u_xlatu45;
      u_xlati52 = (bitcast<i32>(x_1567) << bitcast<u32>(2i));
      let x_1570 : i32 = u_xlati51;
      if ((x_1570 != 0i)) {
        let x_1575 : vec3<f32> = vs_INTERP0;
        let x_1577 : i32 = u_xlati52;
        let x_1580 : i32 = u_xlati52;
        let x_1584 : vec4<f32> = x_1557.x_AdditionalLightsWorldToLights[((x_1577 + 1i) / 4i)][((x_1580 + 1i) % 4i)];
        let x_1586 : vec3<f32> = (vec3<f32>(x_1575.y, x_1575.y, x_1575.y) * vec3<f32>(x_1584.x, x_1584.y, x_1584.w));
        let x_1587 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1586.x, x_1586.y, x_1586.z, x_1587.w);
        let x_1589 : i32 = u_xlati52;
        let x_1591 : i32 = u_xlati52;
        let x_1594 : vec4<f32> = x_1557.x_AdditionalLightsWorldToLights[(x_1589 / 4i)][(x_1591 % 4i)];
        let x_1596 : vec3<f32> = vs_INTERP0;
        let x_1599 : vec4<f32> = u_xlat11;
        let x_1601 : vec3<f32> = ((vec3<f32>(x_1594.x, x_1594.y, x_1594.w) * vec3<f32>(x_1596.x, x_1596.x, x_1596.x)) + vec3<f32>(x_1599.x, x_1599.y, x_1599.z));
        let x_1602 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1601.x, x_1601.y, x_1601.z, x_1602.w);
        let x_1604 : i32 = u_xlati52;
        let x_1607 : i32 = u_xlati52;
        let x_1611 : vec4<f32> = x_1557.x_AdditionalLightsWorldToLights[((x_1604 + 2i) / 4i)][((x_1607 + 2i) % 4i)];
        let x_1613 : vec3<f32> = vs_INTERP0;
        let x_1616 : vec4<f32> = u_xlat11;
        let x_1618 : vec3<f32> = ((vec3<f32>(x_1611.x, x_1611.y, x_1611.w) * vec3<f32>(x_1613.z, x_1613.z, x_1613.z)) + vec3<f32>(x_1616.x, x_1616.y, x_1616.z));
        let x_1619 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1618.x, x_1618.y, x_1618.z, x_1619.w);
        let x_1621 : vec4<f32> = u_xlat11;
        let x_1623 : i32 = u_xlati52;
        let x_1626 : i32 = u_xlati52;
        let x_1630 : vec4<f32> = x_1557.x_AdditionalLightsWorldToLights[((x_1623 + 3i) / 4i)][((x_1626 + 3i) % 4i)];
        let x_1632 : vec3<f32> = (vec3<f32>(x_1621.x, x_1621.y, x_1621.z) + vec3<f32>(x_1630.x, x_1630.y, x_1630.w));
        let x_1633 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
        let x_1635 : vec4<f32> = u_xlat11;
        let x_1637 : vec4<f32> = u_xlat11;
        let x_1639 : vec2<f32> = (vec2<f32>(x_1635.x, x_1635.y) / vec2<f32>(x_1637.z, x_1637.z));
        let x_1640 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1639.x, x_1639.y, x_1640.z, x_1640.w);
        let x_1642 : vec4<f32> = u_xlat11;
        let x_1645 : vec2<f32> = ((vec2<f32>(x_1642.x, x_1642.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1646 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1645.x, x_1645.y, x_1646.z, x_1646.w);
        let x_1648 : vec4<f32> = u_xlat11;
        let x_1652 : vec2<f32> = clamp(vec2<f32>(x_1648.x, x_1648.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1653 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1652.x, x_1652.y, x_1653.z, x_1653.w);
        let x_1655 : u32 = u_xlatu45;
        let x_1658 : vec4<f32> = x_1557.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1655)];
        let x_1660 : vec4<f32> = u_xlat11;
        let x_1663 : u32 = u_xlatu45;
        let x_1666 : vec4<f32> = x_1557.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1663)];
        let x_1668 : vec2<f32> = ((vec2<f32>(x_1658.x, x_1658.y) * vec2<f32>(x_1660.x, x_1660.y)) + vec2<f32>(x_1666.z, x_1666.w));
        let x_1669 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1668.x, x_1668.y, x_1669.z, x_1669.w);
      } else {
        let x_1673 : i32 = u_xlati50;
        u_xlatb50 = (x_1673 == 1i);
        let x_1675 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1675);
        let x_1677 : i32 = u_xlati50;
        if ((x_1677 != 0i)) {
          let x_1682 : vec3<f32> = vs_INTERP0;
          let x_1684 : i32 = u_xlati52;
          let x_1687 : i32 = u_xlati52;
          let x_1691 : vec4<f32> = x_1557.x_AdditionalLightsWorldToLights[((x_1684 + 1i) / 4i)][((x_1687 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1682.y, x_1682.y) * vec2<f32>(x_1691.x, x_1691.y));
          let x_1694 : i32 = u_xlati52;
          let x_1696 : i32 = u_xlati52;
          let x_1699 : vec4<f32> = x_1557.x_AdditionalLightsWorldToLights[(x_1694 / 4i)][(x_1696 % 4i)];
          let x_1701 : vec3<f32> = vs_INTERP0;
          let x_1704 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1699.x, x_1699.y) * vec2<f32>(x_1701.x, x_1701.x)) + x_1704);
          let x_1706 : i32 = u_xlati52;
          let x_1709 : i32 = u_xlati52;
          let x_1713 : vec4<f32> = x_1557.x_AdditionalLightsWorldToLights[((x_1706 + 2i) / 4i)][((x_1709 + 2i) % 4i)];
          let x_1715 : vec3<f32> = vs_INTERP0;
          let x_1718 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1713.x, x_1713.y) * vec2<f32>(x_1715.z, x_1715.z)) + x_1718);
          let x_1720 : vec2<f32> = u_xlat39;
          let x_1721 : i32 = u_xlati52;
          let x_1724 : i32 = u_xlati52;
          let x_1728 : vec4<f32> = x_1557.x_AdditionalLightsWorldToLights[((x_1721 + 3i) / 4i)][((x_1724 + 3i) % 4i)];
          u_xlat39 = (x_1720 + vec2<f32>(x_1728.x, x_1728.y));
          let x_1731 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1731 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1734 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1734);
          let x_1736 : u32 = u_xlatu45;
          let x_1739 : vec4<f32> = x_1557.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1736)];
          let x_1741 : vec2<f32> = u_xlat39;
          let x_1743 : u32 = u_xlatu45;
          let x_1746 : vec4<f32> = x_1557.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1743)];
          let x_1748 : vec2<f32> = ((vec2<f32>(x_1739.x, x_1739.y) * x_1741) + vec2<f32>(x_1746.z, x_1746.w));
          let x_1749 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1748.x, x_1748.y, x_1749.z, x_1749.w);
        } else {
          let x_1753 : vec3<f32> = vs_INTERP0;
          let x_1755 : i32 = u_xlati52;
          let x_1758 : i32 = u_xlati52;
          let x_1762 : vec4<f32> = x_1557.x_AdditionalLightsWorldToLights[((x_1755 + 1i) / 4i)][((x_1758 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1753.y, x_1753.y, x_1753.y, x_1753.y) * x_1762);
          let x_1764 : i32 = u_xlati52;
          let x_1766 : i32 = u_xlati52;
          let x_1769 : vec4<f32> = x_1557.x_AdditionalLightsWorldToLights[(x_1764 / 4i)][(x_1766 % 4i)];
          let x_1770 : vec3<f32> = vs_INTERP0;
          let x_1773 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1769 * vec4<f32>(x_1770.x, x_1770.x, x_1770.x, x_1770.x)) + x_1773);
          let x_1775 : i32 = u_xlati52;
          let x_1778 : i32 = u_xlati52;
          let x_1782 : vec4<f32> = x_1557.x_AdditionalLightsWorldToLights[((x_1775 + 2i) / 4i)][((x_1778 + 2i) % 4i)];
          let x_1783 : vec3<f32> = vs_INTERP0;
          let x_1786 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1782 * vec4<f32>(x_1783.z, x_1783.z, x_1783.z, x_1783.z)) + x_1786);
          let x_1788 : vec4<f32> = u_xlat12;
          let x_1789 : i32 = u_xlati52;
          let x_1792 : i32 = u_xlati52;
          let x_1796 : vec4<f32> = x_1557.x_AdditionalLightsWorldToLights[((x_1789 + 3i) / 4i)][((x_1792 + 3i) % 4i)];
          u_xlat12 = (x_1788 + x_1796);
          let x_1798 : vec4<f32> = u_xlat12;
          let x_1800 : vec4<f32> = u_xlat12;
          let x_1802 : vec3<f32> = (vec3<f32>(x_1798.x, x_1798.y, x_1798.z) / vec3<f32>(x_1800.w, x_1800.w, x_1800.w));
          let x_1803 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1803.w);
          let x_1805 : vec4<f32> = u_xlat12;
          let x_1807 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1805.x, x_1805.y, x_1805.z), vec3<f32>(x_1807.x, x_1807.y, x_1807.z));
          let x_1810 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1810);
          let x_1812 : f32 = u_xlat50;
          let x_1814 : vec4<f32> = u_xlat12;
          let x_1816 : vec3<f32> = (vec3<f32>(x_1812, x_1812, x_1812) * vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
          let x_1817 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1817.w);
          let x_1819 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1819.x, x_1819.y, x_1819.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1824 : f32 = u_xlat50;
          u_xlat50 = max(x_1824, 0.000001f);
          let x_1827 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1827);
          let x_1830 : f32 = u_xlat50;
          let x_1832 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1830, x_1830, x_1830) * vec3<f32>(x_1832.z, x_1832.x, x_1832.y));
          let x_1836 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1836);
          let x_1840 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1840, 0.0f, 1.0f);
          let x_1844 : vec3<f32> = u_xlat13;
          let x_1847 : vec4<bool> = (vec4<f32>(x_1844.y, x_1844.z, x_1844.y, x_1844.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1847.x, x_1847.y);
          let x_1850 : bool = u_xlatb39.x;
          if (x_1850) {
            let x_1855 : f32 = u_xlat13.x;
            x_1851 = x_1855;
          } else {
            let x_1858 : f32 = u_xlat13.x;
            x_1851 = -(x_1858);
          }
          let x_1860 : f32 = x_1851;
          u_xlat39.x = x_1860;
          let x_1863 : bool = u_xlatb39.y;
          if (x_1863) {
            let x_1868 : f32 = u_xlat13.x;
            x_1864 = x_1868;
          } else {
            let x_1871 : f32 = u_xlat13.x;
            x_1864 = -(x_1871);
          }
          let x_1873 : f32 = x_1864;
          u_xlat39.y = x_1873;
          let x_1875 : vec4<f32> = u_xlat12;
          let x_1877 : f32 = u_xlat50;
          let x_1880 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1875.x, x_1875.y) * vec2<f32>(x_1877, x_1877)) + x_1880);
          let x_1882 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1882 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1885 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1885, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1889 : u32 = u_xlatu45;
          let x_1892 : vec4<f32> = x_1557.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1889)];
          let x_1894 : vec2<f32> = u_xlat39;
          let x_1896 : u32 = u_xlatu45;
          let x_1899 : vec4<f32> = x_1557.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1896)];
          let x_1901 : vec2<f32> = ((vec2<f32>(x_1892.x, x_1892.y) * x_1894) + vec2<f32>(x_1899.z, x_1899.w));
          let x_1902 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1901.x, x_1901.y, x_1902.z, x_1902.w);
        }
      }
      let x_1909 : vec4<f32> = u_xlat11;
      let x_1912 : f32 = x_90.x_GlobalMipBias.x;
      let x_1913 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1909.x, x_1909.y), x_1912);
      u_xlat11 = x_1913;
      let x_1915 : bool = u_xlatb7.y;
      if (x_1915) {
        let x_1920 : f32 = u_xlat11.w;
        x_1916 = x_1920;
      } else {
        let x_1923 : f32 = u_xlat11.x;
        x_1916 = x_1923;
      }
      let x_1924 : f32 = x_1916;
      u_xlat50 = x_1924;
      let x_1926 : bool = u_xlatb7.x;
      if (x_1926) {
        let x_1930 : vec4<f32> = u_xlat11;
        x_1927 = vec3<f32>(x_1930.x, x_1930.y, x_1930.z);
      } else {
        let x_1933 : f32 = u_xlat50;
        x_1927 = vec3<f32>(x_1933, x_1933, x_1933);
      }
      let x_1935 : vec3<f32> = x_1927;
      let x_1936 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1935.x, x_1935.y, x_1935.z, x_1936.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1942 : vec4<f32> = u_xlat11;
    let x_1944 : u32 = u_xlatu45;
    let x_1947 : vec4<f32> = x_1454.x_AdditionalLightsColor[bitcast<i32>(x_1944)];
    let x_1949 : vec3<f32> = (vec3<f32>(x_1942.x, x_1942.y, x_1942.z) * vec3<f32>(x_1947.x, x_1947.y, x_1947.z));
    let x_1950 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1949.x, x_1949.y, x_1949.z, x_1950.w);
    let x_1952 : vec4<f32> = u_xlat6;
    let x_1954 : vec4<f32> = u_xlat11;
    let x_1956 : vec3<f32> = (vec3<f32>(x_1952.x, x_1952.x, x_1952.x) * vec3<f32>(x_1954.x, x_1954.y, x_1954.z));
    let x_1957 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1956.x, x_1956.y, x_1956.z, x_1957.w);
    let x_1959 : vec4<f32> = u_xlat3;
    let x_1961 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1959.x, x_1959.y, x_1959.z), x_1961);
    let x_1963 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1963, 0.0f, 1.0f);
    let x_1965 : f32 = u_xlat45;
    let x_1966 : f32 = u_xlat35;
    u_xlat45 = (x_1965 * x_1966);
    let x_1968 : f32 = u_xlat45;
    let x_1970 : vec4<f32> = u_xlat11;
    let x_1972 : vec3<f32> = (vec3<f32>(x_1968, x_1968, x_1968) * vec3<f32>(x_1970.x, x_1970.y, x_1970.z));
    let x_1973 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
    let x_1975 : vec3<f32> = u_xlat9;
    let x_1976 : f32 = u_xlat49;
    let x_1979 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_1975 * vec3<f32>(x_1976, x_1976, x_1976)) + x_1979);
    let x_1981 : vec3<f32> = u_xlat9;
    let x_1982 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1981, x_1982);
    let x_1984 : f32 = u_xlat45;
    u_xlat45 = max(x_1984, 1.17549435e-37f);
    let x_1986 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1986);
    let x_1988 : f32 = u_xlat45;
    let x_1990 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1988, x_1988, x_1988) * x_1990);
    let x_1992 : vec4<f32> = u_xlat3;
    let x_1994 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1992.x, x_1992.y, x_1992.z), x_1994);
    let x_1996 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1996, 0.0f, 1.0f);
    let x_1998 : vec3<f32> = u_xlat10;
    let x_1999 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1998, x_1999);
    let x_2001 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2001, 0.0f, 1.0f);
    let x_2003 : f32 = u_xlat45;
    let x_2004 : f32 = u_xlat45;
    u_xlat45 = (x_2003 * x_2004);
    let x_2006 : f32 = u_xlat45;
    let x_2008 : f32 = u_xlat15.x;
    u_xlat45 = ((x_2006 * x_2008) + 1.000010014f);
    let x_2011 : f32 = u_xlat35;
    let x_2012 : f32 = u_xlat35;
    u_xlat35 = (x_2011 * x_2012);
    let x_2014 : f32 = u_xlat45;
    let x_2015 : f32 = u_xlat45;
    u_xlat45 = (x_2014 * x_2015);
    let x_2017 : f32 = u_xlat35;
    u_xlat35 = max(x_2017, 0.100000001f);
    let x_2019 : f32 = u_xlat45;
    let x_2020 : f32 = u_xlat35;
    u_xlat45 = (x_2019 * x_2020);
    let x_2022 : f32 = u_xlat46;
    let x_2023 : f32 = u_xlat45;
    u_xlat45 = (x_2022 * x_2023);
    let x_2025 : f32 = u_xlat44;
    let x_2026 : f32 = u_xlat45;
    u_xlat45 = (x_2025 / x_2026);
    let x_2028 : f32 = u_xlat45;
    let x_2031 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_2028, x_2028, x_2028) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_2031);
    let x_2033 : vec3<f32> = u_xlat9;
    let x_2034 : vec4<f32> = u_xlat11;
    let x_2037 : vec4<f32> = u_xlat8;
    let x_2039 : vec3<f32> = ((x_2033 * vec3<f32>(x_2034.x, x_2034.y, x_2034.z)) + vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
    let x_2040 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);

    continuing {
      let x_2042 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2042 + bitcast<u32>(1i));
    }
  }
  let x_2044 : vec3<f32> = u_xlat19;
  let x_2045 : vec4<f32> = u_xlat5;
  let x_2048 : vec3<f32> = u_xlat20;
  u_xlat15 = ((x_2044 * vec3<f32>(x_2045.x, x_2045.x, x_2045.x)) + x_2048);
  let x_2050 : vec4<f32> = u_xlat8;
  let x_2052 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_2050.x, x_2050.y, x_2050.z) + x_2052);
  let x_2056 : vec4<f32> = vs_INTERP4;
  let x_2058 : vec3<f32> = u_xlat0;
  let x_2060 : vec3<f32> = u_xlat15;
  let x_2061 : vec3<f32> = ((vec3<f32>(x_2056.w, x_2056.w, x_2056.w) * x_2058) + x_2060);
  let x_2062 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
  let x_2064 : bool = u_xlatb1;
  let x_2065 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_2065, x_2064);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

