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

@group(1) @binding(4) var<uniform> x_956 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1430 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1533 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var u_xlat7 : vec4<f32>;
  var x_1041 : f32;
  var x_1052 : vec3<f32>;
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
  var x_1827 : f32;
  var x_1840 : f32;
  var x_1892 : f32;
  var x_1903 : vec3<f32>;
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
  let x_726 : vec2<f32> = vs_INTERP5;
  let x_728 : f32 = x_90.x_GlobalMipBias.x;
  let x_729 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_726, x_728);
  u_xlat6 = x_729;
  let x_734 : vec2<f32> = vs_INTERP5;
  let x_736 : f32 = x_90.x_GlobalMipBias.x;
  let x_737 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_734, x_736);
  u_xlat19 = vec3<f32>(x_737.x, x_737.y, x_737.z);
  let x_739 : vec4<f32> = u_xlat6;
  let x_743 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_744 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : vec4<f32> = u_xlat3;
  let x_748 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_746.x, x_746.y, x_746.z), vec3<f32>(x_748.x, x_748.y, x_748.z));
  let x_753 : f32 = u_xlat15.x;
  u_xlat15.x = (x_753 + 0.5f);
  let x_756 : vec3<f32> = u_xlat15;
  let x_758 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_756.x, x_756.x, x_756.x) * x_758);
  let x_761 : f32 = u_xlat6.w;
  u_xlat15.x = max(x_761, 0.0001f);
  let x_764 : vec3<f32> = u_xlat19;
  let x_765 : vec3<f32> = u_xlat15;
  u_xlat19 = (x_764 / vec3<f32>(x_765.x, x_765.x, x_765.x));
  let x_770 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_771 : vec2<f32> = vec2<f32>(x_770.x, x_770.y);
  let x_775 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_771.x, x_771.y));
  let x_776 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_775.x, x_775.y, x_776.z);
  let x_778 : vec3<f32> = u_xlat15;
  let x_780 : vec4<f32> = hlslcc_FragCoord;
  let x_782 : vec2<f32> = (vec2<f32>(x_778.x, x_778.y) * vec2<f32>(x_780.x, x_780.y));
  let x_783 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_782.x, x_782.y, x_783.z, x_783.w);
  let x_786 : f32 = u_xlat6.y;
  let x_789 : f32 = x_90.x_ScaleBiasRt.x;
  let x_792 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_786 * x_789) + x_792);
  let x_796 : f32 = u_xlat15.x;
  u_xlat6.z = (-(x_796) + 1.0f);
  let x_801 : f32 = u_xlat5.x;
  u_xlat5.x = x_801;
  let x_804 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_804, 0.0f, 1.0f);
  let x_807 : f32 = u_xlat42;
  u_xlat42 = x_807;
  let x_808 : f32 = u_xlat42;
  u_xlat42 = clamp(x_808, 0.0f, 1.0f);
  let x_810 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_810 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_815 : f32 = u_xlat5.x;
  u_xlat15.x = (-(x_815) + 1.0f);
  let x_820 : f32 = u_xlat15.x;
  let x_822 : f32 = u_xlat15.x;
  u_xlat29.x = (x_820 * x_822);
  let x_826 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_826, 0.0078125f);
  let x_831 : f32 = u_xlat29.x;
  let x_833 : f32 = u_xlat29.x;
  u_xlat44 = (x_831 * x_833);
  let x_837 : f32 = u_xlat5.x;
  u_xlat45 = (x_837 + 0.040000021f);
  let x_840 : f32 = u_xlat45;
  u_xlat45 = min(x_840, 1.0f);
  let x_844 : f32 = u_xlat29.x;
  u_xlat46 = ((x_844 * 4.0f) + 2.0f);
  let x_853 : vec4<f32> = u_xlat6;
  let x_856 : f32 = x_90.x_GlobalMipBias.x;
  let x_857 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_853.x, x_853.z), x_856);
  u_xlat5.x = x_857.x;
  let x_861 : f32 = u_xlat5.x;
  u_xlat6.x = (x_861 + -1.0f);
  let x_866 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_868 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_866 * x_868) + 1.0f);
  let x_873 : f32 = u_xlat5.x;
  let x_875 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_873, x_875);
  let x_880 : vec4<f32> = vs_INTERP9;
  let x_881 : vec2<f32> = vec2<f32>(x_880.x, x_880.y);
  let x_883 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_881.x, x_881.y, x_883);
  let x_891 : vec3<f32> = txVec1;
  let x_893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_891.xy, x_891.z);
  u_xlat20.x = x_893;
  let x_896 : f32 = u_xlat20.x;
  let x_898 : f32 = x_272.x_MainLightShadowParams.x;
  let x_900 : f32 = u_xlat43;
  u_xlat43 = ((x_896 * x_898) + x_900);
  let x_904 : f32 = vs_INTERP9.z;
  u_xlatb20.x = (0.0f >= x_904);
  let x_909 : f32 = vs_INTERP9.z;
  u_xlatb34 = (x_909 >= 1.0f);
  let x_911 : bool = u_xlatb34;
  let x_913 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_911 | x_913);
  let x_917 : bool = u_xlatb20.x;
  let x_918 : f32 = u_xlat43;
  u_xlat43 = select(x_918, 1.0f, x_917);
  let x_920 : vec3<f32> = vs_INTERP0;
  let x_922 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat20 = (x_920 + -(x_922));
  let x_925 : vec3<f32> = u_xlat20;
  let x_926 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_925, x_926);
  let x_930 : f32 = u_xlat20.x;
  let x_932 : f32 = x_272.x_MainLightShadowParams.z;
  let x_935 : f32 = x_272.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_930 * x_932) + x_935);
  let x_939 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_939, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat43;
  u_xlat34 = (-(x_943) + 1.0f);
  let x_947 : f32 = u_xlat20.x;
  let x_948 : f32 = u_xlat34;
  let x_950 : f32 = u_xlat43;
  u_xlat43 = ((x_947 * x_948) + x_950);
  let x_958 : f32 = x_956.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_958 == -1.0f));
  let x_962 : bool = u_xlatb20.x;
  if (x_962) {
    let x_965 : vec3<f32> = vs_INTERP0;
    let x_968 : vec4<f32> = x_956.x_MainLightWorldToLight[1i];
    let x_970 : vec2<f32> = (vec2<f32>(x_965.y, x_965.y) * vec2<f32>(x_968.x, x_968.y));
    let x_971 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_970.x, x_970.y, x_971.z);
    let x_974 : vec4<f32> = x_956.x_MainLightWorldToLight[0i];
    let x_976 : vec3<f32> = vs_INTERP0;
    let x_979 : vec3<f32> = u_xlat20;
    let x_981 : vec2<f32> = ((vec2<f32>(x_974.x, x_974.y) * vec2<f32>(x_976.x, x_976.x)) + vec2<f32>(x_979.x, x_979.y));
    let x_982 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_981.x, x_981.y, x_982.z);
    let x_985 : vec4<f32> = x_956.x_MainLightWorldToLight[2i];
    let x_987 : vec3<f32> = vs_INTERP0;
    let x_990 : vec3<f32> = u_xlat20;
    let x_992 : vec2<f32> = ((vec2<f32>(x_985.x, x_985.y) * vec2<f32>(x_987.z, x_987.z)) + vec2<f32>(x_990.x, x_990.y));
    let x_993 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_992.x, x_992.y, x_993.z);
    let x_995 : vec3<f32> = u_xlat20;
    let x_998 : vec4<f32> = x_956.x_MainLightWorldToLight[3i];
    let x_1000 : vec2<f32> = (vec2<f32>(x_995.x, x_995.y) + vec2<f32>(x_998.x, x_998.y));
    let x_1001 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1000.x, x_1000.y, x_1001.z);
    let x_1003 : vec3<f32> = u_xlat20;
    let x_1007 : vec2<f32> = ((vec2<f32>(x_1003.x, x_1003.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1008 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1007.x, x_1007.y, x_1008.z);
    let x_1016 : vec3<f32> = u_xlat20;
    let x_1019 : f32 = x_90.x_GlobalMipBias.x;
    let x_1020 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1016.x, x_1016.y), x_1019);
    u_xlat7 = x_1020;
    let x_1022 : f32 = x_956.x_MainLightCookieTextureFormat;
    let x_1024 : f32 = x_956.x_MainLightCookieTextureFormat;
    let x_1026 : f32 = x_956.x_MainLightCookieTextureFormat;
    let x_1028 : f32 = x_956.x_MainLightCookieTextureFormat;
    let x_1029 : vec4<f32> = vec4<f32>(x_1022, x_1024, x_1026, x_1028);
    let x_1037 : vec4<bool> = (vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1029.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1037.x, x_1037.y);
    let x_1040 : bool = u_xlatb20.y;
    if (x_1040) {
      let x_1045 : f32 = u_xlat7.w;
      x_1041 = x_1045;
    } else {
      let x_1048 : f32 = u_xlat7.x;
      x_1041 = x_1048;
    }
    let x_1049 : f32 = x_1041;
    u_xlat34 = x_1049;
    let x_1051 : bool = u_xlatb20.x;
    if (x_1051) {
      let x_1055 : vec4<f32> = u_xlat7;
      x_1052 = vec3<f32>(x_1055.x, x_1055.y, x_1055.z);
    } else {
      let x_1058 : f32 = u_xlat34;
      x_1052 = vec3<f32>(x_1058, x_1058, x_1058);
    }
    let x_1060 : vec3<f32> = x_1052;
    u_xlat20 = x_1060;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1065 : vec3<f32> = u_xlat20;
  let x_1067 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat20 = (x_1065 * vec3<f32>(x_1067.x, x_1067.y, x_1067.z));
  let x_1070 : vec4<f32> = u_xlat6;
  let x_1072 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1070.x, x_1070.x, x_1070.x) * x_1072);
  let x_1074 : vec3<f32> = u_xlat2;
  let x_1076 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1074), vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
  let x_1081 : f32 = u_xlat7.x;
  let x_1083 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1081 + x_1083);
  let x_1086 : vec4<f32> = u_xlat3;
  let x_1088 : vec4<f32> = u_xlat7;
  let x_1092 : vec3<f32> = u_xlat2;
  let x_1094 : vec3<f32> = ((vec3<f32>(x_1086.x, x_1086.y, x_1086.z) * -(vec3<f32>(x_1088.x, x_1088.x, x_1088.x))) + -(x_1092));
  let x_1095 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  let x_1098 : vec4<f32> = u_xlat3;
  let x_1100 : vec3<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_1098.x, x_1098.y, x_1098.z), x_1100);
  let x_1102 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1102, 0.0f, 1.0f);
  let x_1104 : f32 = u_xlat49;
  u_xlat49 = (-(x_1104) + 1.0f);
  let x_1107 : f32 = u_xlat49;
  let x_1108 : f32 = u_xlat49;
  u_xlat49 = (x_1107 * x_1108);
  let x_1110 : f32 = u_xlat49;
  let x_1111 : f32 = u_xlat49;
  u_xlat49 = (x_1110 * x_1111);
  let x_1115 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_1115) * 0.699999988f) + 1.700000048f);
  let x_1123 : f32 = u_xlat15.x;
  let x_1125 : f32 = u_xlat8.x;
  u_xlat15.x = (x_1123 * x_1125);
  let x_1129 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1129 * 6.0f);
  let x_1141 : vec4<f32> = u_xlat7;
  let x_1144 : f32 = u_xlat15.x;
  let x_1145 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1141.x, x_1141.y, x_1141.z), x_1144);
  u_xlat8 = x_1145;
  let x_1147 : f32 = u_xlat8.w;
  u_xlat15.x = (x_1147 + -1.0f);
  let x_1151 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1153 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_1151 * x_1153) + 1.0f);
  let x_1158 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_1158, 0.0f);
  let x_1162 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_1162);
  let x_1166 : f32 = u_xlat15.x;
  let x_1168 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_1166 * x_1168);
  let x_1172 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_1172);
  let x_1176 : f32 = u_xlat15.x;
  let x_1178 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_1176 * x_1178);
  let x_1181 : vec4<f32> = u_xlat8;
  let x_1183 : vec3<f32> = u_xlat15;
  let x_1185 : vec3<f32> = (vec3<f32>(x_1181.x, x_1181.y, x_1181.z) * vec3<f32>(x_1183.x, x_1183.x, x_1183.x));
  let x_1186 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
  let x_1188 : vec2<f32> = u_xlat29;
  let x_1190 : vec2<f32> = u_xlat29;
  let x_1194 : vec2<f32> = ((vec2<f32>(x_1188.x, x_1188.x) * vec2<f32>(x_1190.x, x_1190.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1195 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1194.x, x_1194.y, x_1195.z);
  let x_1198 : f32 = u_xlat15.y;
  u_xlat29.x = (1.0f / x_1198);
  let x_1201 : f32 = u_xlat45;
  u_xlat45 = (x_1201 + -0.039999999f);
  let x_1204 : f32 = u_xlat49;
  let x_1205 : f32 = u_xlat45;
  u_xlat45 = ((x_1204 * x_1205) + 0.039999999f);
  let x_1210 : f32 = u_xlat29.x;
  let x_1211 : f32 = u_xlat45;
  u_xlat29.x = (x_1210 * x_1211);
  let x_1214 : vec2<f32> = u_xlat29;
  let x_1216 : vec4<f32> = u_xlat7;
  let x_1218 : vec3<f32> = (vec3<f32>(x_1214.x, x_1214.x, x_1214.x) * vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
  let x_1219 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1219.w);
  let x_1221 : vec3<f32> = u_xlat19;
  let x_1222 : vec3<f32> = u_xlat4;
  let x_1224 : vec4<f32> = u_xlat7;
  u_xlat19 = ((x_1221 * x_1222) + vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
  let x_1227 : f32 = u_xlat43;
  let x_1229 : f32 = x_161.unity_LightData.z;
  u_xlat29.x = (x_1227 * x_1229);
  let x_1232 : vec4<f32> = u_xlat3;
  let x_1235 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1232.x, x_1232.y, x_1232.z), vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
  let x_1238 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1238, 0.0f, 1.0f);
  let x_1240 : f32 = u_xlat43;
  let x_1242 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1240 * x_1242);
  let x_1245 : vec2<f32> = u_xlat29;
  let x_1247 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1245.x, x_1245.x, x_1245.x) * x_1247);
  let x_1249 : vec3<f32> = u_xlat2;
  let x_1251 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1253 : vec3<f32> = (x_1249 + vec3<f32>(x_1251.x, x_1251.y, x_1251.z));
  let x_1254 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
  let x_1256 : vec4<f32> = u_xlat7;
  let x_1258 : vec4<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_1256.x, x_1256.y, x_1256.z), vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
  let x_1263 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_1263, 1.17549435e-37f);
  let x_1268 : f32 = u_xlat29.x;
  u_xlat29.x = inverseSqrt(x_1268);
  let x_1271 : vec2<f32> = u_xlat29;
  let x_1273 : vec4<f32> = u_xlat7;
  let x_1275 : vec3<f32> = (vec3<f32>(x_1271.x, x_1271.x, x_1271.x) * vec3<f32>(x_1273.x, x_1273.y, x_1273.z));
  let x_1276 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
  let x_1278 : vec4<f32> = u_xlat3;
  let x_1280 : vec4<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_1278.x, x_1278.y, x_1278.z), vec3<f32>(x_1280.x, x_1280.y, x_1280.z));
  let x_1285 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_1285, 0.0f, 1.0f);
  let x_1289 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1291 : vec4<f32> = u_xlat7;
  u_xlat29.y = dot(vec3<f32>(x_1289.x, x_1289.y, x_1289.z), vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
  let x_1296 : f32 = u_xlat29.y;
  u_xlat29.y = clamp(x_1296, 0.0f, 1.0f);
  let x_1299 : vec2<f32> = u_xlat29;
  let x_1300 : vec2<f32> = u_xlat29;
  u_xlat29 = (x_1299 * x_1300);
  let x_1303 : f32 = u_xlat29.x;
  let x_1305 : f32 = u_xlat15.x;
  u_xlat29.x = ((x_1303 * x_1305) + 1.000010014f);
  let x_1311 : f32 = u_xlat29.x;
  let x_1313 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1311 * x_1313);
  let x_1317 : f32 = u_xlat29.y;
  u_xlat43 = max(x_1317, 0.100000001f);
  let x_1320 : f32 = u_xlat43;
  let x_1322 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1320 * x_1322);
  let x_1325 : f32 = u_xlat46;
  let x_1327 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1325 * x_1327);
  let x_1330 : f32 = u_xlat44;
  let x_1332 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1330 / x_1332);
  let x_1335 : vec2<f32> = u_xlat29;
  let x_1339 : vec3<f32> = u_xlat4;
  let x_1340 : vec3<f32> = ((vec3<f32>(x_1335.x, x_1335.x, x_1335.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1339);
  let x_1341 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1341.w);
  let x_1343 : vec3<f32> = u_xlat20;
  let x_1344 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1343 * vec3<f32>(x_1344.x, x_1344.y, x_1344.z));
  let x_1349 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1351 : f32 = x_161.unity_LightData.y;
  u_xlat29.x = min(x_1349, x_1351);
  let x_1355 : f32 = u_xlat29.x;
  u_xlatu29 = bitcast<u32>(i32(x_1355));
  let x_1360 : f32 = x_956.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1362 : f32 = x_956.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1364 : f32 = x_956.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1366 : f32 = x_956.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1367 : vec4<f32> = vec4<f32>(x_1360, x_1362, x_1364, x_1366);
  let x_1373 : vec4<bool> = (vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1367.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1373.x, x_1373.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1384 : u32 = u_xlatu_loop_1;
    let x_1385 : u32 = u_xlatu29;
    if ((x_1384 < x_1385)) {
    } else {
      break;
    }
    let x_1388 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1388 >> 2u);
    let x_1391 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1391 & 3u));
    let x_1394 : u32 = u_xlatu45;
    let x_1397 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1394)];
    let x_1407 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1412 : vec4<u32> = indexable[x_1407];
    u_xlat45 = dot(x_1397, bitcast<vec4<f32>>(x_1412));
    let x_1415 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1415));
    let x_1419 : vec3<f32> = vs_INTERP0;
    let x_1431 : u32 = u_xlatu45;
    let x_1434 : vec4<f32> = x_1430.x_AdditionalLightsPosition[bitcast<i32>(x_1431)];
    let x_1437 : u32 = u_xlatu45;
    let x_1440 : vec4<f32> = x_1430.x_AdditionalLightsPosition[bitcast<i32>(x_1437)];
    u_xlat9 = ((-(x_1419) * vec3<f32>(x_1434.w, x_1434.w, x_1434.w)) + vec3<f32>(x_1440.x, x_1440.y, x_1440.z));
    let x_1444 : vec3<f32> = u_xlat9;
    let x_1445 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1444, x_1445);
    let x_1447 : f32 = u_xlat35;
    u_xlat35 = max(x_1447, 6.10351562e-05f);
    let x_1450 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1450);
    let x_1453 : f32 = u_xlat49;
    let x_1455 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1453, x_1453, x_1453) * x_1455);
    let x_1458 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1458);
    let x_1460 : f32 = u_xlat35;
    let x_1461 : u32 = u_xlatu45;
    let x_1464 : f32 = x_1430.x_AdditionalLightsAttenuation[bitcast<i32>(x_1461)].x;
    u_xlat35 = (x_1460 * x_1464);
    let x_1466 : f32 = u_xlat35;
    let x_1468 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1466) * x_1468) + 1.0f);
    let x_1471 : f32 = u_xlat35;
    u_xlat35 = max(x_1471, 0.0f);
    let x_1473 : f32 = u_xlat35;
    let x_1474 : f32 = u_xlat35;
    u_xlat35 = (x_1473 * x_1474);
    let x_1476 : f32 = u_xlat35;
    let x_1477 : f32 = u_xlat50;
    u_xlat35 = (x_1476 * x_1477);
    let x_1479 : u32 = u_xlatu45;
    let x_1482 : vec4<f32> = x_1430.x_AdditionalLightsSpotDir[bitcast<i32>(x_1479)];
    let x_1484 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1482.x, x_1482.y, x_1482.z), x_1484);
    let x_1486 : f32 = u_xlat50;
    let x_1487 : u32 = u_xlatu45;
    let x_1490 : f32 = x_1430.x_AdditionalLightsAttenuation[bitcast<i32>(x_1487)].z;
    let x_1492 : u32 = u_xlatu45;
    let x_1495 : f32 = x_1430.x_AdditionalLightsAttenuation[bitcast<i32>(x_1492)].w;
    u_xlat50 = ((x_1486 * x_1490) + x_1495);
    let x_1497 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1497, 0.0f, 1.0f);
    let x_1499 : f32 = u_xlat50;
    let x_1500 : f32 = u_xlat50;
    u_xlat50 = (x_1499 * x_1500);
    let x_1502 : f32 = u_xlat35;
    let x_1503 : f32 = u_xlat50;
    u_xlat35 = (x_1502 * x_1503);
    let x_1506 : u32 = u_xlatu45;
    u_xlatu50 = (x_1506 >> 5u);
    let x_1509 : u32 = u_xlatu45;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1509) & 31i)));
    let x_1515 : i32 = u_xlati51;
    let x_1517 : u32 = u_xlatu50;
    let x_1520 : f32 = x_956.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1517)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1515) & bitcast<u32>(x_1520)));
    let x_1524 : i32 = u_xlati50;
    if ((x_1524 != 0i)) {
      let x_1534 : u32 = u_xlatu45;
      let x_1537 : f32 = x_1533.x_AdditionalLightsLightTypes[bitcast<i32>(x_1534)].el;
      u_xlati50 = i32(x_1537);
      let x_1539 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1539 != 0i));
      let x_1543 : u32 = u_xlatu45;
      u_xlati52 = (bitcast<i32>(x_1543) << bitcast<u32>(2i));
      let x_1546 : i32 = u_xlati51;
      if ((x_1546 != 0i)) {
        let x_1551 : vec3<f32> = vs_INTERP0;
        let x_1553 : i32 = u_xlati52;
        let x_1556 : i32 = u_xlati52;
        let x_1560 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1553 + 1i) / 4i)][((x_1556 + 1i) % 4i)];
        let x_1562 : vec3<f32> = (vec3<f32>(x_1551.y, x_1551.y, x_1551.y) * vec3<f32>(x_1560.x, x_1560.y, x_1560.w));
        let x_1563 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1563.w);
        let x_1565 : i32 = u_xlati52;
        let x_1567 : i32 = u_xlati52;
        let x_1570 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[(x_1565 / 4i)][(x_1567 % 4i)];
        let x_1572 : vec3<f32> = vs_INTERP0;
        let x_1575 : vec4<f32> = u_xlat11;
        let x_1577 : vec3<f32> = ((vec3<f32>(x_1570.x, x_1570.y, x_1570.w) * vec3<f32>(x_1572.x, x_1572.x, x_1572.x)) + vec3<f32>(x_1575.x, x_1575.y, x_1575.z));
        let x_1578 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1577.x, x_1577.y, x_1577.z, x_1578.w);
        let x_1580 : i32 = u_xlati52;
        let x_1583 : i32 = u_xlati52;
        let x_1587 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1580 + 2i) / 4i)][((x_1583 + 2i) % 4i)];
        let x_1589 : vec3<f32> = vs_INTERP0;
        let x_1592 : vec4<f32> = u_xlat11;
        let x_1594 : vec3<f32> = ((vec3<f32>(x_1587.x, x_1587.y, x_1587.w) * vec3<f32>(x_1589.z, x_1589.z, x_1589.z)) + vec3<f32>(x_1592.x, x_1592.y, x_1592.z));
        let x_1595 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1595.w);
        let x_1597 : vec4<f32> = u_xlat11;
        let x_1599 : i32 = u_xlati52;
        let x_1602 : i32 = u_xlati52;
        let x_1606 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1599 + 3i) / 4i)][((x_1602 + 3i) % 4i)];
        let x_1608 : vec3<f32> = (vec3<f32>(x_1597.x, x_1597.y, x_1597.z) + vec3<f32>(x_1606.x, x_1606.y, x_1606.w));
        let x_1609 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1608.x, x_1608.y, x_1608.z, x_1609.w);
        let x_1611 : vec4<f32> = u_xlat11;
        let x_1613 : vec4<f32> = u_xlat11;
        let x_1615 : vec2<f32> = (vec2<f32>(x_1611.x, x_1611.y) / vec2<f32>(x_1613.z, x_1613.z));
        let x_1616 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1615.x, x_1615.y, x_1616.z, x_1616.w);
        let x_1618 : vec4<f32> = u_xlat11;
        let x_1621 : vec2<f32> = ((vec2<f32>(x_1618.x, x_1618.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1622 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1621.x, x_1621.y, x_1622.z, x_1622.w);
        let x_1624 : vec4<f32> = u_xlat11;
        let x_1628 : vec2<f32> = clamp(vec2<f32>(x_1624.x, x_1624.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1629 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1628.x, x_1628.y, x_1629.z, x_1629.w);
        let x_1631 : u32 = u_xlatu45;
        let x_1634 : vec4<f32> = x_1533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1631)];
        let x_1636 : vec4<f32> = u_xlat11;
        let x_1639 : u32 = u_xlatu45;
        let x_1642 : vec4<f32> = x_1533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1639)];
        let x_1644 : vec2<f32> = ((vec2<f32>(x_1634.x, x_1634.y) * vec2<f32>(x_1636.x, x_1636.y)) + vec2<f32>(x_1642.z, x_1642.w));
        let x_1645 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1644.x, x_1644.y, x_1645.z, x_1645.w);
      } else {
        let x_1649 : i32 = u_xlati50;
        u_xlatb50 = (x_1649 == 1i);
        let x_1651 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1651);
        let x_1653 : i32 = u_xlati50;
        if ((x_1653 != 0i)) {
          let x_1658 : vec3<f32> = vs_INTERP0;
          let x_1660 : i32 = u_xlati52;
          let x_1663 : i32 = u_xlati52;
          let x_1667 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1660 + 1i) / 4i)][((x_1663 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1658.y, x_1658.y) * vec2<f32>(x_1667.x, x_1667.y));
          let x_1670 : i32 = u_xlati52;
          let x_1672 : i32 = u_xlati52;
          let x_1675 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[(x_1670 / 4i)][(x_1672 % 4i)];
          let x_1677 : vec3<f32> = vs_INTERP0;
          let x_1680 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1675.x, x_1675.y) * vec2<f32>(x_1677.x, x_1677.x)) + x_1680);
          let x_1682 : i32 = u_xlati52;
          let x_1685 : i32 = u_xlati52;
          let x_1689 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1682 + 2i) / 4i)][((x_1685 + 2i) % 4i)];
          let x_1691 : vec3<f32> = vs_INTERP0;
          let x_1694 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1689.x, x_1689.y) * vec2<f32>(x_1691.z, x_1691.z)) + x_1694);
          let x_1696 : vec2<f32> = u_xlat39;
          let x_1697 : i32 = u_xlati52;
          let x_1700 : i32 = u_xlati52;
          let x_1704 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1697 + 3i) / 4i)][((x_1700 + 3i) % 4i)];
          u_xlat39 = (x_1696 + vec2<f32>(x_1704.x, x_1704.y));
          let x_1707 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1707 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1710 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1710);
          let x_1712 : u32 = u_xlatu45;
          let x_1715 : vec4<f32> = x_1533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1712)];
          let x_1717 : vec2<f32> = u_xlat39;
          let x_1719 : u32 = u_xlatu45;
          let x_1722 : vec4<f32> = x_1533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1719)];
          let x_1724 : vec2<f32> = ((vec2<f32>(x_1715.x, x_1715.y) * x_1717) + vec2<f32>(x_1722.z, x_1722.w));
          let x_1725 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1724.x, x_1724.y, x_1725.z, x_1725.w);
        } else {
          let x_1729 : vec3<f32> = vs_INTERP0;
          let x_1731 : i32 = u_xlati52;
          let x_1734 : i32 = u_xlati52;
          let x_1738 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1731 + 1i) / 4i)][((x_1734 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1729.y, x_1729.y, x_1729.y, x_1729.y) * x_1738);
          let x_1740 : i32 = u_xlati52;
          let x_1742 : i32 = u_xlati52;
          let x_1745 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[(x_1740 / 4i)][(x_1742 % 4i)];
          let x_1746 : vec3<f32> = vs_INTERP0;
          let x_1749 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1745 * vec4<f32>(x_1746.x, x_1746.x, x_1746.x, x_1746.x)) + x_1749);
          let x_1751 : i32 = u_xlati52;
          let x_1754 : i32 = u_xlati52;
          let x_1758 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1751 + 2i) / 4i)][((x_1754 + 2i) % 4i)];
          let x_1759 : vec3<f32> = vs_INTERP0;
          let x_1762 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1758 * vec4<f32>(x_1759.z, x_1759.z, x_1759.z, x_1759.z)) + x_1762);
          let x_1764 : vec4<f32> = u_xlat12;
          let x_1765 : i32 = u_xlati52;
          let x_1768 : i32 = u_xlati52;
          let x_1772 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1765 + 3i) / 4i)][((x_1768 + 3i) % 4i)];
          u_xlat12 = (x_1764 + x_1772);
          let x_1774 : vec4<f32> = u_xlat12;
          let x_1776 : vec4<f32> = u_xlat12;
          let x_1778 : vec3<f32> = (vec3<f32>(x_1774.x, x_1774.y, x_1774.z) / vec3<f32>(x_1776.w, x_1776.w, x_1776.w));
          let x_1779 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1779.w);
          let x_1781 : vec4<f32> = u_xlat12;
          let x_1783 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1781.x, x_1781.y, x_1781.z), vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
          let x_1786 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1786);
          let x_1788 : f32 = u_xlat50;
          let x_1790 : vec4<f32> = u_xlat12;
          let x_1792 : vec3<f32> = (vec3<f32>(x_1788, x_1788, x_1788) * vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
          let x_1793 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1793.w);
          let x_1795 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1795.x, x_1795.y, x_1795.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1800 : f32 = u_xlat50;
          u_xlat50 = max(x_1800, 0.000001f);
          let x_1803 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1803);
          let x_1806 : f32 = u_xlat50;
          let x_1808 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1806, x_1806, x_1806) * vec3<f32>(x_1808.z, x_1808.x, x_1808.y));
          let x_1812 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1812);
          let x_1816 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1816, 0.0f, 1.0f);
          let x_1820 : vec3<f32> = u_xlat13;
          let x_1823 : vec4<bool> = (vec4<f32>(x_1820.y, x_1820.z, x_1820.y, x_1820.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1823.x, x_1823.y);
          let x_1826 : bool = u_xlatb39.x;
          if (x_1826) {
            let x_1831 : f32 = u_xlat13.x;
            x_1827 = x_1831;
          } else {
            let x_1834 : f32 = u_xlat13.x;
            x_1827 = -(x_1834);
          }
          let x_1836 : f32 = x_1827;
          u_xlat39.x = x_1836;
          let x_1839 : bool = u_xlatb39.y;
          if (x_1839) {
            let x_1844 : f32 = u_xlat13.x;
            x_1840 = x_1844;
          } else {
            let x_1847 : f32 = u_xlat13.x;
            x_1840 = -(x_1847);
          }
          let x_1849 : f32 = x_1840;
          u_xlat39.y = x_1849;
          let x_1851 : vec4<f32> = u_xlat12;
          let x_1853 : f32 = u_xlat50;
          let x_1856 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1851.x, x_1851.y) * vec2<f32>(x_1853, x_1853)) + x_1856);
          let x_1858 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1858 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1861 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1861, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1865 : u32 = u_xlatu45;
          let x_1868 : vec4<f32> = x_1533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1865)];
          let x_1870 : vec2<f32> = u_xlat39;
          let x_1872 : u32 = u_xlatu45;
          let x_1875 : vec4<f32> = x_1533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1872)];
          let x_1877 : vec2<f32> = ((vec2<f32>(x_1868.x, x_1868.y) * x_1870) + vec2<f32>(x_1875.z, x_1875.w));
          let x_1878 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1877.x, x_1877.y, x_1878.z, x_1878.w);
        }
      }
      let x_1885 : vec4<f32> = u_xlat11;
      let x_1888 : f32 = x_90.x_GlobalMipBias.x;
      let x_1889 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1885.x, x_1885.y), x_1888);
      u_xlat11 = x_1889;
      let x_1891 : bool = u_xlatb7.y;
      if (x_1891) {
        let x_1896 : f32 = u_xlat11.w;
        x_1892 = x_1896;
      } else {
        let x_1899 : f32 = u_xlat11.x;
        x_1892 = x_1899;
      }
      let x_1900 : f32 = x_1892;
      u_xlat50 = x_1900;
      let x_1902 : bool = u_xlatb7.x;
      if (x_1902) {
        let x_1906 : vec4<f32> = u_xlat11;
        x_1903 = vec3<f32>(x_1906.x, x_1906.y, x_1906.z);
      } else {
        let x_1909 : f32 = u_xlat50;
        x_1903 = vec3<f32>(x_1909, x_1909, x_1909);
      }
      let x_1911 : vec3<f32> = x_1903;
      let x_1912 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1911.x, x_1911.y, x_1911.z, x_1912.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1918 : vec4<f32> = u_xlat11;
    let x_1920 : u32 = u_xlatu45;
    let x_1923 : vec4<f32> = x_1430.x_AdditionalLightsColor[bitcast<i32>(x_1920)];
    let x_1925 : vec3<f32> = (vec3<f32>(x_1918.x, x_1918.y, x_1918.z) * vec3<f32>(x_1923.x, x_1923.y, x_1923.z));
    let x_1926 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1925.x, x_1925.y, x_1925.z, x_1926.w);
    let x_1928 : vec4<f32> = u_xlat6;
    let x_1930 : vec4<f32> = u_xlat11;
    let x_1932 : vec3<f32> = (vec3<f32>(x_1928.x, x_1928.x, x_1928.x) * vec3<f32>(x_1930.x, x_1930.y, x_1930.z));
    let x_1933 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1932.x, x_1932.y, x_1932.z, x_1933.w);
    let x_1935 : vec4<f32> = u_xlat3;
    let x_1937 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1935.x, x_1935.y, x_1935.z), x_1937);
    let x_1939 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1939, 0.0f, 1.0f);
    let x_1941 : f32 = u_xlat45;
    let x_1942 : f32 = u_xlat35;
    u_xlat45 = (x_1941 * x_1942);
    let x_1944 : f32 = u_xlat45;
    let x_1946 : vec4<f32> = u_xlat11;
    let x_1948 : vec3<f32> = (vec3<f32>(x_1944, x_1944, x_1944) * vec3<f32>(x_1946.x, x_1946.y, x_1946.z));
    let x_1949 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1948.x, x_1948.y, x_1948.z, x_1949.w);
    let x_1951 : vec3<f32> = u_xlat9;
    let x_1952 : f32 = u_xlat49;
    let x_1955 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_1951 * vec3<f32>(x_1952, x_1952, x_1952)) + x_1955);
    let x_1957 : vec3<f32> = u_xlat9;
    let x_1958 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1957, x_1958);
    let x_1960 : f32 = u_xlat45;
    u_xlat45 = max(x_1960, 1.17549435e-37f);
    let x_1962 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1962);
    let x_1964 : f32 = u_xlat45;
    let x_1966 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1964, x_1964, x_1964) * x_1966);
    let x_1968 : vec4<f32> = u_xlat3;
    let x_1970 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1968.x, x_1968.y, x_1968.z), x_1970);
    let x_1972 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1972, 0.0f, 1.0f);
    let x_1974 : vec3<f32> = u_xlat10;
    let x_1975 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1974, x_1975);
    let x_1977 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1977, 0.0f, 1.0f);
    let x_1979 : f32 = u_xlat45;
    let x_1980 : f32 = u_xlat45;
    u_xlat45 = (x_1979 * x_1980);
    let x_1982 : f32 = u_xlat45;
    let x_1984 : f32 = u_xlat15.x;
    u_xlat45 = ((x_1982 * x_1984) + 1.000010014f);
    let x_1987 : f32 = u_xlat35;
    let x_1988 : f32 = u_xlat35;
    u_xlat35 = (x_1987 * x_1988);
    let x_1990 : f32 = u_xlat45;
    let x_1991 : f32 = u_xlat45;
    u_xlat45 = (x_1990 * x_1991);
    let x_1993 : f32 = u_xlat35;
    u_xlat35 = max(x_1993, 0.100000001f);
    let x_1995 : f32 = u_xlat45;
    let x_1996 : f32 = u_xlat35;
    u_xlat45 = (x_1995 * x_1996);
    let x_1998 : f32 = u_xlat46;
    let x_1999 : f32 = u_xlat45;
    u_xlat45 = (x_1998 * x_1999);
    let x_2001 : f32 = u_xlat44;
    let x_2002 : f32 = u_xlat45;
    u_xlat45 = (x_2001 / x_2002);
    let x_2004 : f32 = u_xlat45;
    let x_2007 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_2004, x_2004, x_2004) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_2007);
    let x_2009 : vec3<f32> = u_xlat9;
    let x_2010 : vec4<f32> = u_xlat11;
    let x_2013 : vec4<f32> = u_xlat8;
    let x_2015 : vec3<f32> = ((x_2009 * vec3<f32>(x_2010.x, x_2010.y, x_2010.z)) + vec3<f32>(x_2013.x, x_2013.y, x_2013.z));
    let x_2016 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2015.x, x_2015.y, x_2015.z, x_2016.w);

    continuing {
      let x_2018 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2018 + bitcast<u32>(1i));
    }
  }
  let x_2020 : vec3<f32> = u_xlat19;
  let x_2021 : vec4<f32> = u_xlat5;
  let x_2024 : vec3<f32> = u_xlat20;
  u_xlat15 = ((x_2020 * vec3<f32>(x_2021.x, x_2021.x, x_2021.x)) + x_2024);
  let x_2026 : vec4<f32> = u_xlat8;
  let x_2028 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_2026.x, x_2026.y, x_2026.z) + x_2028);
  let x_2032 : vec4<f32> = vs_INTERP4;
  let x_2034 : vec3<f32> = u_xlat0;
  let x_2036 : vec3<f32> = u_xlat15;
  let x_2037 : vec3<f32> = ((vec3<f32>(x_2032.w, x_2032.w, x_2032.w) * x_2034) + x_2036);
  let x_2038 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2037.x, x_2037.y, x_2037.z, x_2038.w);
  let x_2040 : bool = u_xlatb1;
  let x_2041 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_2041, x_2040);
  let x_2049 : u32 = x_90.x_RenderingLayerMaxInt;
  let x_2051 : f32 = x_161.unity_RenderingLayer.x;
  u_xlatu0 = (x_2049 & bitcast<u32>(x_2051));
  let x_2054 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2054);
  let x_2059 : f32 = u_xlat0.x;
  let x_2061 : f32 = x_90.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2059 * x_2061);
  let x_2065 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2065, 0.0f, 1.0f);
  let x_2069 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2069.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

