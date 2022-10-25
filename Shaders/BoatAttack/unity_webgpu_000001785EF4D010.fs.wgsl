struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_365 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_432 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_874 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_987 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlatb2 : bool;
  var x_101 : f32;
  var u_xlatb42 : bool;
  var u_xlat44 : f32;
  var u_xlat3 : vec3<f32>;
  var x_153 : f32;
  var x_165 : f32;
  var x_177 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat19 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlatb6 : bool;
  var u_xlatb20 : bool;
  var u_xlat20 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat48 : f32;
  var x_520 : f32;
  var x_531 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat49 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat35 : vec2<f32>;
  var u_xlatu35 : u32;
  var u_xlati49 : i32;
  var u_xlati35 : i32;
  var u_xlati51 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb35 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var u_xlat39 : vec2<f32>;
  var x_1289 : f32;
  var x_1302 : f32;
  var x_1354 : f32;
  var x_1366 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1503 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_44.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_82 : vec3<f32> = u_xlat2;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_82.x, x_82.y), x_85);
  u_xlat42 = x_86.w;
  let x_97 : f32 = x_95.unity_LODFade.x;
  u_xlatb2 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_104 : f32 = u_xlat42;
    x_101 = abs(x_104);
  } else {
    let x_107 : f32 = u_xlat42;
    x_101 = -(abs(x_107));
  }
  let x_110 : f32 = x_101;
  u_xlat42 = x_110;
  let x_111 : f32 = u_xlat42;
  let x_114 : f32 = x_95.unity_LODFade.x;
  u_xlat42 = (-(x_111) + x_114);
  let x_117 : f32 = u_xlat42;
  u_xlatb42 = (x_117 < 0.0f);
  let x_119 : bool = u_xlatb42;
  if (((select(0i, 1i, x_119) * -1i) != 0i)) {
    discard;
  }
  let x_130 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb42 = (x_130 == 0.0f);
  let x_134 : vec3<f32> = vs_TEXCOORD1;
  let x_139 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_134) + x_139);
  let x_142 : vec3<f32> = u_xlat2;
  let x_143 : vec3<f32> = u_xlat2;
  u_xlat44 = dot(x_142, x_143);
  let x_145 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_145);
  let x_147 : f32 = u_xlat44;
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_147, x_147, x_147) * x_149);
  let x_152 : bool = u_xlatb42;
  if (x_152) {
    let x_157 : f32 = u_xlat2.x;
    x_153 = x_157;
  } else {
    let x_161 : f32 = x_44.unity_MatrixV[0i].z;
    x_153 = x_161;
  }
  let x_162 : f32 = x_153;
  u_xlat3.x = x_162;
  let x_164 : bool = u_xlatb42;
  if (x_164) {
    let x_170 : f32 = u_xlat2.y;
    x_165 = x_170;
  } else {
    let x_173 : f32 = x_44.unity_MatrixV[1i].z;
    x_165 = x_173;
  }
  let x_174 : f32 = x_165;
  u_xlat3.y = x_174;
  let x_176 : bool = u_xlatb42;
  if (x_176) {
    let x_181 : f32 = u_xlat2.z;
    x_177 = x_181;
  } else {
    let x_184 : f32 = x_44.unity_MatrixV[2i].z;
    x_177 = x_184;
  }
  let x_185 : f32 = x_177;
  u_xlat3.z = x_185;
  let x_188 : vec3<f32> = vs_TEXCOORD2;
  let x_189 : vec3<f32> = vs_TEXCOORD2;
  u_xlat42 = dot(x_188, x_189);
  let x_191 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_191);
  let x_193 : f32 = u_xlat42;
  let x_195 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_193, x_193, x_193) * x_195);
  let x_204 : vec2<f32> = vs_TEXCOORD8;
  let x_206 : f32 = x_44.x_GlobalMipBias.x;
  let x_207 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_204, x_206);
  u_xlat4 = vec3<f32>(x_207.x, x_207.y, x_207.z);
  let x_212 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_213 : vec2<f32> = vec2<f32>(x_212.x, x_212.y);
  let x_217 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_213.x, x_213.y));
  let x_218 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_217.x, x_217.y, x_218.z);
  let x_220 : vec3<f32> = u_xlat5;
  let x_222 : vec4<f32> = hlslcc_FragCoord;
  let x_224 : vec2<f32> = (vec2<f32>(x_220.x, x_220.y) * vec2<f32>(x_222.x, x_222.y));
  let x_225 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_224.x, x_224.y, x_225.z);
  let x_228 : f32 = u_xlat5.y;
  let x_231 : f32 = x_44.x_ScaleBiasRt.x;
  let x_234 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat42 = ((x_228 * x_231) + x_234);
  let x_236 : f32 = u_xlat42;
  u_xlat5.z = (-(x_236) + 1.0f);
  let x_241 : f32 = x_57.x_Metallic;
  u_xlat42 = ((-(x_241) * 0.959999979f) + 0.959999979f);
  let x_246 : f32 = u_xlat42;
  let x_249 : f32 = x_57.x_Smoothness;
  u_xlat44 = (-(x_246) + x_249);
  let x_252 : f32 = u_xlat42;
  let x_254 : vec4<f32> = u_xlat1;
  u_xlat15 = (vec3<f32>(x_252, x_252, x_252) * vec3<f32>(x_254.y, x_254.z, x_254.w));
  let x_257 : vec4<f32> = u_xlat0;
  let x_260 : vec4<f32> = x_57.x_BaseColor;
  let x_265 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_260.x, x_260.y, x_260.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_266 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_269 : f32 = x_57.x_Metallic;
  let x_271 : f32 = x_57.x_Metallic;
  let x_273 : f32 = x_57.x_Metallic;
  let x_274 : vec3<f32> = vec3<f32>(x_269, x_271, x_273);
  let x_279 : vec4<f32> = u_xlat0;
  let x_284 : vec3<f32> = ((vec3<f32>(x_274.x, x_274.y, x_274.z) * vec3<f32>(x_279.x, x_279.y, x_279.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_288 : f32 = x_57.x_Smoothness;
  u_xlat42 = (-(x_288) + 1.0f);
  let x_292 : f32 = u_xlat42;
  let x_293 : f32 = u_xlat42;
  u_xlat45 = (x_292 * x_293);
  let x_295 : f32 = u_xlat45;
  u_xlat45 = max(x_295, 0.0078125f);
  let x_299 : f32 = u_xlat45;
  let x_300 : f32 = u_xlat45;
  u_xlat46 = (x_299 * x_300);
  let x_302 : f32 = u_xlat44;
  u_xlat44 = (x_302 + 1.0f);
  let x_304 : f32 = u_xlat44;
  u_xlat44 = clamp(x_304, 0.0f, 1.0f);
  let x_307 : f32 = u_xlat45;
  u_xlat19 = ((x_307 * 4.0f) + 2.0f);
  let x_317 : vec3<f32> = u_xlat5;
  let x_320 : f32 = x_44.x_GlobalMipBias.x;
  let x_321 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_317.x, x_317.z), x_320);
  u_xlat5.x = x_321.x;
  let x_326 : f32 = u_xlat5.x;
  u_xlat33 = (x_326 + -1.0f);
  let x_331 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_332 : f32 = u_xlat33;
  u_xlat33 = ((x_331 * x_332) + 1.0f);
  let x_336 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_336, 1.0f);
  let x_341 : vec4<f32> = vs_TEXCOORD6;
  let x_342 : vec2<f32> = vec2<f32>(x_341.x, x_341.y);
  let x_344 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_342.x, x_342.y, x_344);
  let x_357 : vec3<f32> = txVec0;
  let x_359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_357.xy, x_357.z);
  u_xlat47 = x_359;
  let x_367 : f32 = x_365.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_367) + 1.0f);
  let x_371 : f32 = u_xlat47;
  let x_373 : f32 = x_365.x_MainLightShadowParams.x;
  let x_376 : f32 = u_xlat6.x;
  u_xlat47 = ((x_371 * x_373) + x_376);
  let x_380 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_380);
  let x_384 : f32 = vs_TEXCOORD6.z;
  u_xlatb20 = (x_384 >= 1.0f);
  let x_386 : bool = u_xlatb20;
  let x_387 : bool = u_xlatb6;
  u_xlatb6 = (x_386 | x_387);
  let x_389 : bool = u_xlatb6;
  let x_390 : f32 = u_xlat47;
  u_xlat47 = select(x_390, 1.0f, x_389);
  let x_392 : vec3<f32> = vs_TEXCOORD1;
  let x_394 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_396 : vec3<f32> = (x_392 + -(x_394));
  let x_397 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat6;
  let x_401 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_399.x, x_399.y, x_399.z), vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_406 : f32 = u_xlat6.x;
  let x_408 : f32 = x_365.x_MainLightShadowParams.z;
  let x_411 : f32 = x_365.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_406 * x_408) + x_411);
  let x_415 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_415, 0.0f, 1.0f);
  let x_419 : f32 = u_xlat47;
  u_xlat20 = (-(x_419) + 1.0f);
  let x_423 : f32 = u_xlat6.x;
  let x_424 : f32 = u_xlat20;
  let x_426 : f32 = u_xlat47;
  u_xlat47 = ((x_423 * x_424) + x_426);
  let x_434 : f32 = x_432.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_434 == -1.0f));
  let x_436 : bool = u_xlatb6;
  if (x_436) {
    let x_439 : vec3<f32> = vs_TEXCOORD1;
    let x_442 : vec4<f32> = x_432.x_MainLightWorldToLight[1i];
    let x_444 : vec2<f32> = (vec2<f32>(x_439.y, x_439.y) * vec2<f32>(x_442.x, x_442.y));
    let x_445 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
    let x_448 : vec4<f32> = x_432.x_MainLightWorldToLight[0i];
    let x_450 : vec3<f32> = vs_TEXCOORD1;
    let x_453 : vec4<f32> = u_xlat6;
    let x_455 : vec2<f32> = ((vec2<f32>(x_448.x, x_448.y) * vec2<f32>(x_450.x, x_450.x)) + vec2<f32>(x_453.x, x_453.y));
    let x_456 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
    let x_459 : vec4<f32> = x_432.x_MainLightWorldToLight[2i];
    let x_461 : vec3<f32> = vs_TEXCOORD1;
    let x_464 : vec4<f32> = u_xlat6;
    let x_466 : vec2<f32> = ((vec2<f32>(x_459.x, x_459.y) * vec2<f32>(x_461.z, x_461.z)) + vec2<f32>(x_464.x, x_464.y));
    let x_467 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
    let x_469 : vec4<f32> = u_xlat6;
    let x_473 : vec4<f32> = x_432.x_MainLightWorldToLight[3i];
    let x_475 : vec2<f32> = (vec2<f32>(x_469.x, x_469.y) + vec2<f32>(x_473.x, x_473.y));
    let x_476 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
    let x_478 : vec4<f32> = u_xlat6;
    let x_483 : vec2<f32> = ((vec2<f32>(x_478.x, x_478.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_484 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_484.z, x_484.w);
    let x_491 : vec4<f32> = u_xlat6;
    let x_494 : f32 = x_44.x_GlobalMipBias.x;
    let x_495 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_491.x, x_491.y), x_494);
    u_xlat6 = x_495;
    let x_500 : f32 = x_432.x_MainLightCookieTextureFormat;
    let x_502 : f32 = x_432.x_MainLightCookieTextureFormat;
    let x_504 : f32 = x_432.x_MainLightCookieTextureFormat;
    let x_506 : f32 = x_432.x_MainLightCookieTextureFormat;
    let x_507 : vec4<f32> = vec4<f32>(x_500, x_502, x_504, x_506);
    let x_515 : vec4<bool> = (vec4<f32>(x_507.x, x_507.y, x_507.z, x_507.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_515.x, x_515.y);
    let x_519 : bool = u_xlatb7.y;
    if (x_519) {
      let x_524 : f32 = u_xlat6.w;
      x_520 = x_524;
    } else {
      let x_527 : f32 = u_xlat6.x;
      x_520 = x_527;
    }
    let x_528 : f32 = x_520;
    u_xlat48 = x_528;
    let x_530 : bool = u_xlatb7.x;
    if (x_530) {
      let x_534 : vec4<f32> = u_xlat6;
      x_531 = vec3<f32>(x_534.x, x_534.y, x_534.z);
    } else {
      let x_537 : f32 = u_xlat48;
      x_531 = vec3<f32>(x_537, x_537, x_537);
    }
    let x_539 : vec3<f32> = x_531;
    let x_540 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_546 : vec4<f32> = u_xlat6;
  let x_549 : vec4<f32> = x_44.x_MainLightColor;
  let x_551 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_552 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_554 : f32 = u_xlat33;
  let x_556 : vec4<f32> = u_xlat6;
  let x_558 : vec3<f32> = (vec3<f32>(x_554, x_554, x_554) * vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec3<f32> = u_xlat3;
  let x_563 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(-(x_561), x_563);
  let x_565 : f32 = u_xlat48;
  let x_566 : f32 = u_xlat48;
  u_xlat48 = (x_565 + x_566);
  let x_569 : vec3<f32> = u_xlat2;
  let x_570 : f32 = u_xlat48;
  let x_574 : vec3<f32> = u_xlat3;
  let x_576 : vec3<f32> = ((x_569 * -(vec3<f32>(x_570, x_570, x_570))) + -(x_574));
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec3<f32> = u_xlat2;
  let x_580 : vec3<f32> = u_xlat3;
  u_xlat48 = dot(x_579, x_580);
  let x_582 : f32 = u_xlat48;
  u_xlat48 = clamp(x_582, 0.0f, 1.0f);
  let x_584 : f32 = u_xlat48;
  u_xlat48 = (-(x_584) + 1.0f);
  let x_587 : f32 = u_xlat48;
  let x_588 : f32 = u_xlat48;
  u_xlat48 = (x_587 * x_588);
  let x_590 : f32 = u_xlat48;
  let x_591 : f32 = u_xlat48;
  u_xlat48 = (x_590 * x_591);
  let x_594 : f32 = u_xlat42;
  u_xlat49 = ((-(x_594) * 0.699999988f) + 1.700000048f);
  let x_600 : f32 = u_xlat42;
  let x_601 : f32 = u_xlat49;
  u_xlat42 = (x_600 * x_601);
  let x_603 : f32 = u_xlat42;
  u_xlat42 = (x_603 * 6.0f);
  let x_614 : vec4<f32> = u_xlat7;
  let x_616 : f32 = u_xlat42;
  let x_617 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_614.x, x_614.y, x_614.z), x_616);
  u_xlat7 = x_617;
  let x_619 : f32 = u_xlat7.w;
  u_xlat42 = (x_619 + -1.0f);
  let x_622 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_623 : f32 = u_xlat42;
  u_xlat42 = ((x_622 * x_623) + 1.0f);
  let x_626 : f32 = u_xlat42;
  u_xlat42 = max(x_626, 0.0f);
  let x_628 : f32 = u_xlat42;
  u_xlat42 = log2(x_628);
  let x_630 : f32 = u_xlat42;
  let x_632 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_630 * x_632);
  let x_634 : f32 = u_xlat42;
  u_xlat42 = exp2(x_634);
  let x_636 : f32 = u_xlat42;
  let x_638 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_636 * x_638);
  let x_640 : vec4<f32> = u_xlat7;
  let x_642 : f32 = u_xlat42;
  let x_644 : vec3<f32> = (vec3<f32>(x_640.x, x_640.y, x_640.z) * vec3<f32>(x_642, x_642, x_642));
  let x_645 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_649 : f32 = u_xlat45;
  let x_651 : f32 = u_xlat45;
  u_xlat8 = ((vec2<f32>(x_649, x_649) * vec2<f32>(x_651, x_651)) + vec2<f32>(-1.0f, 1.0f));
  let x_657 : f32 = u_xlat8.y;
  u_xlat42 = (1.0f / x_657);
  let x_660 : vec4<f32> = u_xlat0;
  let x_663 : f32 = u_xlat44;
  u_xlat22 = (-(vec3<f32>(x_660.x, x_660.y, x_660.z)) + vec3<f32>(x_663, x_663, x_663));
  let x_666 : f32 = u_xlat48;
  let x_668 : vec3<f32> = u_xlat22;
  let x_670 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_666, x_666, x_666) * x_668) + vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : f32 = u_xlat42;
  let x_675 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_673, x_673, x_673) * x_675);
  let x_677 : vec4<f32> = u_xlat7;
  let x_679 : vec3<f32> = u_xlat22;
  let x_680 : vec3<f32> = (vec3<f32>(x_677.x, x_677.y, x_677.z) * x_679);
  let x_681 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec3<f32> = u_xlat4;
  let x_684 : vec3<f32> = u_xlat15;
  let x_686 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_683 * x_684) + vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_689 : f32 = u_xlat47;
  let x_692 : f32 = x_95.unity_LightData.z;
  u_xlat42 = (x_689 * x_692);
  let x_694 : vec3<f32> = u_xlat2;
  let x_696 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat44 = dot(x_694, vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : f32 = u_xlat44;
  u_xlat44 = clamp(x_699, 0.0f, 1.0f);
  let x_701 : f32 = u_xlat42;
  let x_702 : f32 = u_xlat44;
  u_xlat42 = (x_701 * x_702);
  let x_704 : f32 = u_xlat42;
  let x_706 : vec4<f32> = u_xlat6;
  let x_708 : vec3<f32> = (vec3<f32>(x_704, x_704, x_704) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec3<f32> = u_xlat3;
  let x_713 : vec4<f32> = x_44.x_MainLightPosition;
  let x_715 : vec3<f32> = (x_711 + vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat7;
  let x_720 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_718.x, x_718.y, x_718.z), vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : f32 = u_xlat42;
  u_xlat42 = max(x_723, 1.17549435e-37f);
  let x_726 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_726);
  let x_728 : f32 = u_xlat42;
  let x_730 : vec4<f32> = u_xlat7;
  let x_732 : vec3<f32> = (vec3<f32>(x_728, x_728, x_728) * vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_735 : vec3<f32> = u_xlat2;
  let x_736 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_735, vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : f32 = u_xlat42;
  u_xlat42 = clamp(x_739, 0.0f, 1.0f);
  let x_742 : vec4<f32> = x_44.x_MainLightPosition;
  let x_744 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_742.x, x_742.y, x_742.z), vec3<f32>(x_744.x, x_744.y, x_744.z));
  let x_747 : f32 = u_xlat44;
  u_xlat44 = clamp(x_747, 0.0f, 1.0f);
  let x_749 : f32 = u_xlat42;
  let x_750 : f32 = u_xlat42;
  u_xlat42 = (x_749 * x_750);
  let x_752 : f32 = u_xlat42;
  let x_754 : f32 = u_xlat8.x;
  u_xlat42 = ((x_752 * x_754) + 1.000010014f);
  let x_758 : f32 = u_xlat44;
  let x_759 : f32 = u_xlat44;
  u_xlat44 = (x_758 * x_759);
  let x_761 : f32 = u_xlat42;
  let x_762 : f32 = u_xlat42;
  u_xlat42 = (x_761 * x_762);
  let x_764 : f32 = u_xlat44;
  u_xlat44 = max(x_764, 0.100000001f);
  let x_767 : f32 = u_xlat42;
  let x_768 : f32 = u_xlat44;
  u_xlat42 = (x_767 * x_768);
  let x_770 : f32 = u_xlat19;
  let x_771 : f32 = u_xlat42;
  u_xlat42 = (x_770 * x_771);
  let x_773 : f32 = u_xlat46;
  let x_774 : f32 = u_xlat42;
  u_xlat42 = (x_773 / x_774);
  let x_776 : vec4<f32> = u_xlat0;
  let x_778 : f32 = u_xlat42;
  let x_781 : vec3<f32> = u_xlat15;
  let x_782 : vec3<f32> = ((vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(x_778, x_778, x_778)) + x_781);
  let x_783 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat6;
  let x_787 : vec4<f32> = u_xlat7;
  let x_789 : vec3<f32> = (vec3<f32>(x_785.x, x_785.y, x_785.z) * vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_790 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  let x_793 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_795 : f32 = x_95.unity_LightData.y;
  u_xlat42 = min(x_793, x_795);
  let x_799 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_799));
  let x_803 : f32 = x_432.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_805 : f32 = x_432.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_807 : f32 = x_432.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_809 : f32 = x_432.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_810 : vec4<f32> = vec4<f32>(x_803, x_805, x_807, x_809);
  let x_816 : vec4<bool> = (vec4<f32>(x_810.x, x_810.y, x_810.z, x_810.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_816.x, x_816.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_827 : u32 = u_xlatu_loop_1;
    let x_828 : u32 = u_xlatu42;
    if ((x_827 < x_828)) {
    } else {
      break;
    }
    let x_831 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_831 >> 2u);
    let x_835 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_835 & 3u));
    let x_838 : u32 = u_xlatu45;
    let x_841 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_838)];
    let x_851 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_856 : vec4<u32> = indexable[x_851];
    u_xlat45 = dot(x_841, bitcast<vec4<f32>>(x_856));
    let x_859 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_859));
    let x_863 : vec3<f32> = vs_TEXCOORD1;
    let x_875 : u32 = u_xlatu45;
    let x_878 : vec4<f32> = x_874.x_AdditionalLightsPosition[bitcast<i32>(x_875)];
    let x_881 : u32 = u_xlatu45;
    let x_884 : vec4<f32> = x_874.x_AdditionalLightsPosition[bitcast<i32>(x_881)];
    u_xlat9 = ((-(x_863) * vec3<f32>(x_878.w, x_878.w, x_878.w)) + vec3<f32>(x_884.x, x_884.y, x_884.z));
    let x_887 : vec3<f32> = u_xlat9;
    let x_888 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_887, x_888);
    let x_890 : f32 = u_xlat47;
    u_xlat47 = max(x_890, 6.10351562e-05f);
    let x_893 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_893);
    let x_896 : f32 = u_xlat48;
    let x_898 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_896, x_896, x_896) * x_898);
    let x_901 : f32 = u_xlat47;
    u_xlat35.x = (1.0f / x_901);
    let x_904 : f32 = u_xlat47;
    let x_905 : u32 = u_xlatu45;
    let x_908 : f32 = x_874.x_AdditionalLightsAttenuation[bitcast<i32>(x_905)].x;
    u_xlat47 = (x_904 * x_908);
    let x_910 : f32 = u_xlat47;
    let x_912 : f32 = u_xlat47;
    u_xlat47 = ((-(x_910) * x_912) + 1.0f);
    let x_915 : f32 = u_xlat47;
    u_xlat47 = max(x_915, 0.0f);
    let x_917 : f32 = u_xlat47;
    let x_918 : f32 = u_xlat47;
    u_xlat47 = (x_917 * x_918);
    let x_920 : f32 = u_xlat47;
    let x_922 : f32 = u_xlat35.x;
    u_xlat47 = (x_920 * x_922);
    let x_924 : u32 = u_xlatu45;
    let x_927 : vec4<f32> = x_874.x_AdditionalLightsSpotDir[bitcast<i32>(x_924)];
    let x_929 : vec3<f32> = u_xlat10;
    u_xlat35.x = dot(vec3<f32>(x_927.x, x_927.y, x_927.z), x_929);
    let x_933 : f32 = u_xlat35.x;
    let x_934 : u32 = u_xlatu45;
    let x_937 : f32 = x_874.x_AdditionalLightsAttenuation[bitcast<i32>(x_934)].z;
    let x_939 : u32 = u_xlatu45;
    let x_942 : f32 = x_874.x_AdditionalLightsAttenuation[bitcast<i32>(x_939)].w;
    u_xlat35.x = ((x_933 * x_937) + x_942);
    let x_946 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_946, 0.0f, 1.0f);
    let x_950 : f32 = u_xlat35.x;
    let x_952 : f32 = u_xlat35.x;
    u_xlat35.x = (x_950 * x_952);
    let x_955 : f32 = u_xlat47;
    let x_957 : f32 = u_xlat35.x;
    u_xlat47 = (x_955 * x_957);
    let x_960 : u32 = u_xlatu45;
    u_xlatu35 = (x_960 >> 5u);
    let x_963 : u32 = u_xlatu45;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_963) & 31i)));
    let x_969 : i32 = u_xlati49;
    let x_971 : u32 = u_xlatu35;
    let x_974 : f32 = x_432.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_971)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_969) & bitcast<u32>(x_974)));
    let x_978 : i32 = u_xlati35;
    if ((x_978 != 0i)) {
      let x_988 : u32 = u_xlatu45;
      let x_991 : f32 = x_987.x_AdditionalLightsLightTypes[bitcast<i32>(x_988)].el;
      u_xlati35 = i32(x_991);
      let x_993 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_993 != 0i));
      let x_997 : u32 = u_xlatu45;
      u_xlati51 = (bitcast<i32>(x_997) << bitcast<u32>(2i));
      let x_1000 : i32 = u_xlati49;
      if ((x_1000 != 0i)) {
        let x_1005 : vec3<f32> = vs_TEXCOORD1;
        let x_1007 : i32 = u_xlati51;
        let x_1010 : i32 = u_xlati51;
        let x_1014 : vec4<f32> = x_987.x_AdditionalLightsWorldToLights[((x_1007 + 1i) / 4i)][((x_1010 + 1i) % 4i)];
        let x_1016 : vec3<f32> = (vec3<f32>(x_1005.y, x_1005.y, x_1005.y) * vec3<f32>(x_1014.x, x_1014.y, x_1014.w));
        let x_1017 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
        let x_1019 : i32 = u_xlati51;
        let x_1021 : i32 = u_xlati51;
        let x_1024 : vec4<f32> = x_987.x_AdditionalLightsWorldToLights[(x_1019 / 4i)][(x_1021 % 4i)];
        let x_1026 : vec3<f32> = vs_TEXCOORD1;
        let x_1029 : vec4<f32> = u_xlat11;
        let x_1031 : vec3<f32> = ((vec3<f32>(x_1024.x, x_1024.y, x_1024.w) * vec3<f32>(x_1026.x, x_1026.x, x_1026.x)) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
        let x_1032 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
        let x_1034 : i32 = u_xlati51;
        let x_1037 : i32 = u_xlati51;
        let x_1041 : vec4<f32> = x_987.x_AdditionalLightsWorldToLights[((x_1034 + 2i) / 4i)][((x_1037 + 2i) % 4i)];
        let x_1043 : vec3<f32> = vs_TEXCOORD1;
        let x_1046 : vec4<f32> = u_xlat11;
        let x_1048 : vec3<f32> = ((vec3<f32>(x_1041.x, x_1041.y, x_1041.w) * vec3<f32>(x_1043.z, x_1043.z, x_1043.z)) + vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
        let x_1049 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
        let x_1051 : vec4<f32> = u_xlat11;
        let x_1053 : i32 = u_xlati51;
        let x_1056 : i32 = u_xlati51;
        let x_1060 : vec4<f32> = x_987.x_AdditionalLightsWorldToLights[((x_1053 + 3i) / 4i)][((x_1056 + 3i) % 4i)];
        let x_1062 : vec3<f32> = (vec3<f32>(x_1051.x, x_1051.y, x_1051.z) + vec3<f32>(x_1060.x, x_1060.y, x_1060.w));
        let x_1063 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
        let x_1065 : vec4<f32> = u_xlat11;
        let x_1067 : vec4<f32> = u_xlat11;
        let x_1069 : vec2<f32> = (vec2<f32>(x_1065.x, x_1065.y) / vec2<f32>(x_1067.z, x_1067.z));
        let x_1070 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1069.x, x_1069.y, x_1070.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat11;
        let x_1075 : vec2<f32> = ((vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1076 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1075.x, x_1075.y, x_1076.z, x_1076.w);
        let x_1078 : vec4<f32> = u_xlat11;
        let x_1082 : vec2<f32> = clamp(vec2<f32>(x_1078.x, x_1078.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1083 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : u32 = u_xlatu45;
        let x_1088 : vec4<f32> = x_987.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1085)];
        let x_1090 : vec4<f32> = u_xlat11;
        let x_1093 : u32 = u_xlatu45;
        let x_1096 : vec4<f32> = x_987.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1093)];
        let x_1098 : vec2<f32> = ((vec2<f32>(x_1088.x, x_1088.y) * vec2<f32>(x_1090.x, x_1090.y)) + vec2<f32>(x_1096.z, x_1096.w));
        let x_1099 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
      } else {
        let x_1103 : i32 = u_xlati35;
        u_xlatb35 = (x_1103 == 1i);
        let x_1105 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1105);
        let x_1107 : i32 = u_xlati35;
        if ((x_1107 != 0i)) {
          let x_1111 : vec3<f32> = vs_TEXCOORD1;
          let x_1113 : i32 = u_xlati51;
          let x_1116 : i32 = u_xlati51;
          let x_1120 : vec4<f32> = x_987.x_AdditionalLightsWorldToLights[((x_1113 + 1i) / 4i)][((x_1116 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1111.y, x_1111.y) * vec2<f32>(x_1120.x, x_1120.y));
          let x_1123 : i32 = u_xlati51;
          let x_1125 : i32 = u_xlati51;
          let x_1128 : vec4<f32> = x_987.x_AdditionalLightsWorldToLights[(x_1123 / 4i)][(x_1125 % 4i)];
          let x_1130 : vec3<f32> = vs_TEXCOORD1;
          let x_1133 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1128.x, x_1128.y) * vec2<f32>(x_1130.x, x_1130.x)) + x_1133);
          let x_1135 : i32 = u_xlati51;
          let x_1138 : i32 = u_xlati51;
          let x_1142 : vec4<f32> = x_987.x_AdditionalLightsWorldToLights[((x_1135 + 2i) / 4i)][((x_1138 + 2i) % 4i)];
          let x_1144 : vec3<f32> = vs_TEXCOORD1;
          let x_1147 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1142.x, x_1142.y) * vec2<f32>(x_1144.z, x_1144.z)) + x_1147);
          let x_1149 : vec2<f32> = u_xlat35;
          let x_1150 : i32 = u_xlati51;
          let x_1153 : i32 = u_xlati51;
          let x_1157 : vec4<f32> = x_987.x_AdditionalLightsWorldToLights[((x_1150 + 3i) / 4i)][((x_1153 + 3i) % 4i)];
          u_xlat35 = (x_1149 + vec2<f32>(x_1157.x, x_1157.y));
          let x_1160 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1160 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1163 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1163);
          let x_1165 : u32 = u_xlatu45;
          let x_1168 : vec4<f32> = x_987.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1165)];
          let x_1170 : vec2<f32> = u_xlat35;
          let x_1172 : u32 = u_xlatu45;
          let x_1175 : vec4<f32> = x_987.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1172)];
          let x_1177 : vec2<f32> = ((vec2<f32>(x_1168.x, x_1168.y) * x_1170) + vec2<f32>(x_1175.z, x_1175.w));
          let x_1178 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
        } else {
          let x_1182 : vec3<f32> = vs_TEXCOORD1;
          let x_1184 : i32 = u_xlati51;
          let x_1187 : i32 = u_xlati51;
          let x_1191 : vec4<f32> = x_987.x_AdditionalLightsWorldToLights[((x_1184 + 1i) / 4i)][((x_1187 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1182.y, x_1182.y, x_1182.y, x_1182.y) * x_1191);
          let x_1193 : i32 = u_xlati51;
          let x_1195 : i32 = u_xlati51;
          let x_1198 : vec4<f32> = x_987.x_AdditionalLightsWorldToLights[(x_1193 / 4i)][(x_1195 % 4i)];
          let x_1199 : vec3<f32> = vs_TEXCOORD1;
          let x_1202 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1198 * vec4<f32>(x_1199.x, x_1199.x, x_1199.x, x_1199.x)) + x_1202);
          let x_1204 : i32 = u_xlati51;
          let x_1207 : i32 = u_xlati51;
          let x_1211 : vec4<f32> = x_987.x_AdditionalLightsWorldToLights[((x_1204 + 2i) / 4i)][((x_1207 + 2i) % 4i)];
          let x_1212 : vec3<f32> = vs_TEXCOORD1;
          let x_1215 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1211 * vec4<f32>(x_1212.z, x_1212.z, x_1212.z, x_1212.z)) + x_1215);
          let x_1217 : vec4<f32> = u_xlat12;
          let x_1218 : i32 = u_xlati51;
          let x_1221 : i32 = u_xlati51;
          let x_1225 : vec4<f32> = x_987.x_AdditionalLightsWorldToLights[((x_1218 + 3i) / 4i)][((x_1221 + 3i) % 4i)];
          u_xlat12 = (x_1217 + x_1225);
          let x_1227 : vec4<f32> = u_xlat12;
          let x_1229 : vec4<f32> = u_xlat12;
          let x_1231 : vec3<f32> = (vec3<f32>(x_1227.x, x_1227.y, x_1227.z) / vec3<f32>(x_1229.w, x_1229.w, x_1229.w));
          let x_1232 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1232.w);
          let x_1234 : vec4<f32> = u_xlat12;
          let x_1236 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1234.x, x_1234.y, x_1234.z), vec3<f32>(x_1236.x, x_1236.y, x_1236.z));
          let x_1241 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1241);
          let x_1244 : vec2<f32> = u_xlat35;
          let x_1246 : vec4<f32> = u_xlat12;
          let x_1248 : vec3<f32> = (vec3<f32>(x_1244.x, x_1244.x, x_1244.x) * vec3<f32>(x_1246.x, x_1246.y, x_1246.z));
          let x_1249 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
          let x_1251 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1251.x, x_1251.y, x_1251.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1258 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1258, 0.000001f);
          let x_1263 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1263);
          let x_1267 : vec2<f32> = u_xlat35;
          let x_1269 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1267.x, x_1267.x, x_1267.x) * vec3<f32>(x_1269.z, x_1269.x, x_1269.y));
          let x_1273 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1273);
          let x_1277 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1277, 0.0f, 1.0f);
          let x_1281 : vec3<f32> = u_xlat13;
          let x_1284 : vec4<bool> = (vec4<f32>(x_1281.y, x_1281.z, x_1281.y, x_1281.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1284.x, x_1284.y);
          let x_1288 : bool = u_xlatb39.x;
          if (x_1288) {
            let x_1293 : f32 = u_xlat13.x;
            x_1289 = x_1293;
          } else {
            let x_1296 : f32 = u_xlat13.x;
            x_1289 = -(x_1296);
          }
          let x_1298 : f32 = x_1289;
          u_xlat39.x = x_1298;
          let x_1301 : bool = u_xlatb39.y;
          if (x_1301) {
            let x_1306 : f32 = u_xlat13.x;
            x_1302 = x_1306;
          } else {
            let x_1309 : f32 = u_xlat13.x;
            x_1302 = -(x_1309);
          }
          let x_1311 : f32 = x_1302;
          u_xlat39.y = x_1311;
          let x_1313 : vec4<f32> = u_xlat12;
          let x_1315 : vec2<f32> = u_xlat35;
          let x_1318 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(x_1315.x, x_1315.x)) + x_1318);
          let x_1320 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1320 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1323 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1323, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1327 : u32 = u_xlatu45;
          let x_1330 : vec4<f32> = x_987.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1327)];
          let x_1332 : vec2<f32> = u_xlat35;
          let x_1334 : u32 = u_xlatu45;
          let x_1337 : vec4<f32> = x_987.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1334)];
          let x_1339 : vec2<f32> = ((vec2<f32>(x_1330.x, x_1330.y) * x_1332) + vec2<f32>(x_1337.z, x_1337.w));
          let x_1340 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1339.x, x_1339.y, x_1340.z, x_1340.w);
        }
      }
      let x_1347 : vec4<f32> = u_xlat11;
      let x_1350 : f32 = x_44.x_GlobalMipBias.x;
      let x_1351 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1347.x, x_1347.y), x_1350);
      u_xlat11 = x_1351;
      let x_1353 : bool = u_xlatb7.y;
      if (x_1353) {
        let x_1358 : f32 = u_xlat11.w;
        x_1354 = x_1358;
      } else {
        let x_1361 : f32 = u_xlat11.x;
        x_1354 = x_1361;
      }
      let x_1362 : f32 = x_1354;
      u_xlat35.x = x_1362;
      let x_1365 : bool = u_xlatb7.x;
      if (x_1365) {
        let x_1369 : vec4<f32> = u_xlat11;
        x_1366 = vec3<f32>(x_1369.x, x_1369.y, x_1369.z);
      } else {
        let x_1372 : vec2<f32> = u_xlat35;
        x_1366 = vec3<f32>(x_1372.x, x_1372.x, x_1372.x);
      }
      let x_1374 : vec3<f32> = x_1366;
      let x_1375 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1374.x, x_1374.y, x_1374.z, x_1375.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1381 : vec4<f32> = u_xlat11;
    let x_1383 : u32 = u_xlatu45;
    let x_1386 : vec4<f32> = x_874.x_AdditionalLightsColor[bitcast<i32>(x_1383)];
    let x_1388 : vec3<f32> = (vec3<f32>(x_1381.x, x_1381.y, x_1381.z) * vec3<f32>(x_1386.x, x_1386.y, x_1386.z));
    let x_1389 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1389.w);
    let x_1391 : f32 = u_xlat33;
    let x_1393 : vec4<f32> = u_xlat11;
    let x_1395 : vec3<f32> = (vec3<f32>(x_1391, x_1391, x_1391) * vec3<f32>(x_1393.x, x_1393.y, x_1393.z));
    let x_1396 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
    let x_1398 : vec3<f32> = u_xlat2;
    let x_1399 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(x_1398, x_1399);
    let x_1401 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1401, 0.0f, 1.0f);
    let x_1403 : f32 = u_xlat45;
    let x_1404 : f32 = u_xlat47;
    u_xlat45 = (x_1403 * x_1404);
    let x_1406 : f32 = u_xlat45;
    let x_1408 : vec4<f32> = u_xlat11;
    let x_1410 : vec3<f32> = (vec3<f32>(x_1406, x_1406, x_1406) * vec3<f32>(x_1408.x, x_1408.y, x_1408.z));
    let x_1411 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1410.x, x_1410.y, x_1410.z, x_1411.w);
    let x_1413 : vec3<f32> = u_xlat9;
    let x_1414 : f32 = u_xlat48;
    let x_1417 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1413 * vec3<f32>(x_1414, x_1414, x_1414)) + x_1417);
    let x_1419 : vec3<f32> = u_xlat9;
    let x_1420 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1419, x_1420);
    let x_1422 : f32 = u_xlat45;
    u_xlat45 = max(x_1422, 1.17549435e-37f);
    let x_1424 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1424);
    let x_1426 : f32 = u_xlat45;
    let x_1428 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1426, x_1426, x_1426) * x_1428);
    let x_1430 : vec3<f32> = u_xlat2;
    let x_1431 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1430, x_1431);
    let x_1433 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1433, 0.0f, 1.0f);
    let x_1435 : vec3<f32> = u_xlat10;
    let x_1436 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1435, x_1436);
    let x_1438 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1438, 0.0f, 1.0f);
    let x_1440 : f32 = u_xlat45;
    let x_1441 : f32 = u_xlat45;
    u_xlat45 = (x_1440 * x_1441);
    let x_1443 : f32 = u_xlat45;
    let x_1445 : f32 = u_xlat8.x;
    u_xlat45 = ((x_1443 * x_1445) + 1.000010014f);
    let x_1448 : f32 = u_xlat47;
    let x_1449 : f32 = u_xlat47;
    u_xlat47 = (x_1448 * x_1449);
    let x_1451 : f32 = u_xlat45;
    let x_1452 : f32 = u_xlat45;
    u_xlat45 = (x_1451 * x_1452);
    let x_1454 : f32 = u_xlat47;
    u_xlat47 = max(x_1454, 0.100000001f);
    let x_1456 : f32 = u_xlat45;
    let x_1457 : f32 = u_xlat47;
    u_xlat45 = (x_1456 * x_1457);
    let x_1459 : f32 = u_xlat19;
    let x_1460 : f32 = u_xlat45;
    u_xlat45 = (x_1459 * x_1460);
    let x_1462 : f32 = u_xlat46;
    let x_1463 : f32 = u_xlat45;
    u_xlat45 = (x_1462 / x_1463);
    let x_1465 : vec4<f32> = u_xlat0;
    let x_1467 : f32 = u_xlat45;
    let x_1470 : vec3<f32> = u_xlat15;
    u_xlat9 = ((vec3<f32>(x_1465.x, x_1465.y, x_1465.z) * vec3<f32>(x_1467, x_1467, x_1467)) + x_1470);
    let x_1472 : vec3<f32> = u_xlat9;
    let x_1473 : vec4<f32> = u_xlat11;
    let x_1476 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1472 * vec3<f32>(x_1473.x, x_1473.y, x_1473.z)) + x_1476);

    continuing {
      let x_1478 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1478 + bitcast<u32>(1i));
    }
  }
  let x_1480 : vec3<f32> = u_xlat4;
  let x_1481 : vec3<f32> = u_xlat5;
  let x_1484 : vec4<f32> = u_xlat6;
  let x_1486 : vec3<f32> = ((x_1480 * vec3<f32>(x_1481.x, x_1481.x, x_1481.x)) + vec3<f32>(x_1484.x, x_1484.y, x_1484.z));
  let x_1487 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1486.x, x_1486.y, x_1486.z, x_1487.w);
  let x_1491 : vec3<f32> = u_xlat22;
  let x_1492 : vec4<f32> = u_xlat0;
  let x_1494 : vec3<f32> = (x_1491 + vec3<f32>(x_1492.x, x_1492.y, x_1492.z));
  let x_1495 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1494.x, x_1494.y, x_1494.z, x_1495.w);
  let x_1500 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1500 == 1.0f);
  let x_1502 : bool = u_xlatb0;
  if (x_1502) {
    let x_1507 : f32 = u_xlat1.x;
    x_1503 = x_1507;
  } else {
    x_1503 = 1.0f;
  }
  let x_1509 : f32 = x_1503;
  SV_Target0.w = x_1509;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

