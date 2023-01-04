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

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_365 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_722 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlatb2 : bool;
  var x_101 : f32;
  var u_xlatb33 : bool;
  var u_xlat35 : f32;
  var u_xlat3 : vec3<f32>;
  var x_153 : f32;
  var x_165 : f32;
  var x_177 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat16 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlatb17 : bool;
  var u_xlat17 : f32;
  var u_xlat39 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_901 : f32;
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
  u_xlat33 = x_86.w;
  let x_97 : f32 = x_95.unity_LODFade.x;
  u_xlatb2 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_104 : f32 = u_xlat33;
    x_101 = abs(x_104);
  } else {
    let x_107 : f32 = u_xlat33;
    x_101 = -(abs(x_107));
  }
  let x_110 : f32 = x_101;
  u_xlat33 = x_110;
  let x_111 : f32 = u_xlat33;
  let x_114 : f32 = x_95.unity_LODFade.x;
  u_xlat33 = (-(x_111) + x_114);
  let x_117 : f32 = u_xlat33;
  u_xlatb33 = (x_117 < 0.0f);
  let x_119 : bool = u_xlatb33;
  if (((select(0i, 1i, x_119) * -1i) != 0i)) {
    discard;
  }
  let x_130 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb33 = (x_130 == 0.0f);
  let x_134 : vec3<f32> = vs_TEXCOORD1;
  let x_139 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_134) + x_139);
  let x_142 : vec3<f32> = u_xlat2;
  let x_143 : vec3<f32> = u_xlat2;
  u_xlat35 = dot(x_142, x_143);
  let x_145 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_145);
  let x_147 : f32 = u_xlat35;
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_147, x_147, x_147) * x_149);
  let x_152 : bool = u_xlatb33;
  if (x_152) {
    let x_157 : f32 = u_xlat2.x;
    x_153 = x_157;
  } else {
    let x_161 : f32 = x_44.unity_MatrixV[0i].z;
    x_153 = x_161;
  }
  let x_162 : f32 = x_153;
  u_xlat3.x = x_162;
  let x_164 : bool = u_xlatb33;
  if (x_164) {
    let x_170 : f32 = u_xlat2.y;
    x_165 = x_170;
  } else {
    let x_173 : f32 = x_44.unity_MatrixV[1i].z;
    x_165 = x_173;
  }
  let x_174 : f32 = x_165;
  u_xlat3.y = x_174;
  let x_176 : bool = u_xlatb33;
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
  u_xlat33 = dot(x_188, x_189);
  let x_191 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_191);
  let x_193 : f32 = u_xlat33;
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
  u_xlat33 = ((x_228 * x_231) + x_234);
  let x_236 : f32 = u_xlat33;
  u_xlat5.z = (-(x_236) + 1.0f);
  let x_241 : f32 = x_57.x_Metallic;
  u_xlat33 = ((-(x_241) * 0.959999979f) + 0.959999979f);
  let x_246 : f32 = u_xlat33;
  let x_249 : f32 = x_57.x_Smoothness;
  u_xlat35 = (-(x_246) + x_249);
  let x_252 : f32 = u_xlat33;
  let x_254 : vec4<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_252, x_252, x_252) * vec3<f32>(x_254.y, x_254.z, x_254.w));
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
  u_xlat33 = (-(x_288) + 1.0f);
  let x_292 : f32 = u_xlat33;
  let x_293 : f32 = u_xlat33;
  u_xlat36 = (x_292 * x_293);
  let x_295 : f32 = u_xlat36;
  u_xlat36 = max(x_295, 0.0078125f);
  let x_299 : f32 = u_xlat36;
  let x_300 : f32 = u_xlat36;
  u_xlat37 = (x_299 * x_300);
  let x_302 : f32 = u_xlat35;
  u_xlat35 = (x_302 + 1.0f);
  let x_304 : f32 = u_xlat35;
  u_xlat35 = clamp(x_304, 0.0f, 1.0f);
  let x_307 : f32 = u_xlat36;
  u_xlat16 = ((x_307 * 4.0f) + 2.0f);
  let x_317 : vec3<f32> = u_xlat5;
  let x_320 : f32 = x_44.x_GlobalMipBias.x;
  let x_321 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_317.x, x_317.z), x_320);
  u_xlat5.x = x_321.x;
  let x_326 : f32 = u_xlat5.x;
  u_xlat27 = (x_326 + -1.0f);
  let x_331 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_332 : f32 = u_xlat27;
  u_xlat27 = ((x_331 * x_332) + 1.0f);
  let x_336 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_336, 1.0f);
  let x_341 : vec4<f32> = vs_TEXCOORD6;
  let x_342 : vec2<f32> = vec2<f32>(x_341.x, x_341.y);
  let x_344 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_342.x, x_342.y, x_344);
  let x_357 : vec3<f32> = txVec0;
  let x_359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_357.xy, x_357.z);
  u_xlat38 = x_359;
  let x_367 : f32 = x_365.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_367) + 1.0f);
  let x_371 : f32 = u_xlat38;
  let x_373 : f32 = x_365.x_MainLightShadowParams.x;
  let x_376 : f32 = u_xlat6.x;
  u_xlat38 = ((x_371 * x_373) + x_376);
  let x_380 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_380);
  let x_384 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (x_384 >= 1.0f);
  let x_386 : bool = u_xlatb17;
  let x_387 : bool = u_xlatb6;
  u_xlatb6 = (x_386 | x_387);
  let x_389 : bool = u_xlatb6;
  let x_390 : f32 = u_xlat38;
  u_xlat38 = select(x_390, 1.0f, x_389);
  let x_392 : vec3<f32> = vs_TEXCOORD1;
  let x_394 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat6 = (x_392 + -(x_394));
  let x_397 : vec3<f32> = u_xlat6;
  let x_398 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_397, x_398);
  let x_402 : f32 = u_xlat6.x;
  let x_404 : f32 = x_365.x_MainLightShadowParams.z;
  let x_407 : f32 = x_365.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_402 * x_404) + x_407);
  let x_411 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_411, 0.0f, 1.0f);
  let x_415 : f32 = u_xlat38;
  u_xlat17 = (-(x_415) + 1.0f);
  let x_419 : f32 = u_xlat6.x;
  let x_420 : f32 = u_xlat17;
  let x_422 : f32 = u_xlat38;
  u_xlat38 = ((x_419 * x_420) + x_422);
  let x_424 : f32 = u_xlat27;
  let x_428 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_424, x_424, x_424) * vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_432 : vec3<f32> = u_xlat3;
  let x_434 : vec3<f32> = u_xlat2;
  u_xlat39 = dot(-(x_432), x_434);
  let x_436 : f32 = u_xlat39;
  let x_437 : f32 = u_xlat39;
  u_xlat39 = (x_436 + x_437);
  let x_440 : vec3<f32> = u_xlat2;
  let x_441 : f32 = u_xlat39;
  let x_445 : vec3<f32> = u_xlat3;
  let x_447 : vec3<f32> = ((x_440 * -(vec3<f32>(x_441, x_441, x_441))) + -(x_445));
  let x_448 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : vec3<f32> = u_xlat2;
  let x_451 : vec3<f32> = u_xlat3;
  u_xlat39 = dot(x_450, x_451);
  let x_453 : f32 = u_xlat39;
  u_xlat39 = clamp(x_453, 0.0f, 1.0f);
  let x_455 : f32 = u_xlat39;
  u_xlat39 = (-(x_455) + 1.0f);
  let x_458 : f32 = u_xlat39;
  let x_459 : f32 = u_xlat39;
  u_xlat39 = (x_458 * x_459);
  let x_461 : f32 = u_xlat39;
  let x_462 : f32 = u_xlat39;
  u_xlat39 = (x_461 * x_462);
  let x_465 : f32 = u_xlat33;
  u_xlat40 = ((-(x_465) * 0.699999988f) + 1.700000048f);
  let x_471 : f32 = u_xlat33;
  let x_472 : f32 = u_xlat40;
  u_xlat33 = (x_471 * x_472);
  let x_474 : f32 = u_xlat33;
  u_xlat33 = (x_474 * 6.0f);
  let x_485 : vec4<f32> = u_xlat7;
  let x_487 : f32 = u_xlat33;
  let x_488 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_485.x, x_485.y, x_485.z), x_487);
  u_xlat7 = x_488;
  let x_490 : f32 = u_xlat7.w;
  u_xlat33 = (x_490 + -1.0f);
  let x_493 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_494 : f32 = u_xlat33;
  u_xlat33 = ((x_493 * x_494) + 1.0f);
  let x_497 : f32 = u_xlat33;
  u_xlat33 = max(x_497, 0.0f);
  let x_499 : f32 = u_xlat33;
  u_xlat33 = log2(x_499);
  let x_501 : f32 = u_xlat33;
  let x_503 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_501 * x_503);
  let x_505 : f32 = u_xlat33;
  u_xlat33 = exp2(x_505);
  let x_507 : f32 = u_xlat33;
  let x_509 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_507 * x_509);
  let x_511 : vec4<f32> = u_xlat7;
  let x_513 : f32 = u_xlat33;
  let x_515 : vec3<f32> = (vec3<f32>(x_511.x, x_511.y, x_511.z) * vec3<f32>(x_513, x_513, x_513));
  let x_516 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_520 : f32 = u_xlat36;
  let x_522 : f32 = u_xlat36;
  u_xlat8 = ((vec2<f32>(x_520, x_520) * vec2<f32>(x_522, x_522)) + vec2<f32>(-1.0f, 1.0f));
  let x_528 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_528);
  let x_531 : vec4<f32> = u_xlat0;
  let x_534 : f32 = u_xlat35;
  u_xlat19 = (-(vec3<f32>(x_531.x, x_531.y, x_531.z)) + vec3<f32>(x_534, x_534, x_534));
  let x_537 : f32 = u_xlat39;
  let x_539 : vec3<f32> = u_xlat19;
  let x_541 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_537, x_537, x_537) * x_539) + vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : f32 = u_xlat33;
  let x_546 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_544, x_544, x_544) * x_546);
  let x_548 : vec4<f32> = u_xlat7;
  let x_550 : vec3<f32> = u_xlat19;
  let x_551 : vec3<f32> = (vec3<f32>(x_548.x, x_548.y, x_548.z) * x_550);
  let x_552 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_554 : vec3<f32> = u_xlat4;
  let x_555 : vec3<f32> = u_xlat12;
  let x_557 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_554 * x_555) + vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_560 : f32 = u_xlat38;
  let x_563 : f32 = x_95.unity_LightData.z;
  u_xlat33 = (x_560 * x_563);
  let x_565 : vec3<f32> = u_xlat2;
  let x_567 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(x_565, vec3<f32>(x_567.x, x_567.y, x_567.z));
  let x_570 : f32 = u_xlat35;
  u_xlat35 = clamp(x_570, 0.0f, 1.0f);
  let x_572 : f32 = u_xlat33;
  let x_573 : f32 = u_xlat35;
  u_xlat33 = (x_572 * x_573);
  let x_575 : f32 = u_xlat33;
  let x_577 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_575, x_575, x_575) * x_577);
  let x_579 : vec3<f32> = u_xlat3;
  let x_581 : vec4<f32> = x_44.x_MainLightPosition;
  let x_583 : vec3<f32> = (x_579 + vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat7;
  let x_588 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_586.x, x_586.y, x_586.z), vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : f32 = u_xlat33;
  u_xlat33 = max(x_591, 1.17549435e-37f);
  let x_594 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_594);
  let x_596 : f32 = u_xlat33;
  let x_598 : vec4<f32> = u_xlat7;
  let x_600 : vec3<f32> = (vec3<f32>(x_596, x_596, x_596) * vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_601 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_603 : vec3<f32> = u_xlat2;
  let x_604 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_603, vec3<f32>(x_604.x, x_604.y, x_604.z));
  let x_607 : f32 = u_xlat33;
  u_xlat33 = clamp(x_607, 0.0f, 1.0f);
  let x_610 : vec4<f32> = x_44.x_MainLightPosition;
  let x_612 : vec4<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_610.x, x_610.y, x_610.z), vec3<f32>(x_612.x, x_612.y, x_612.z));
  let x_615 : f32 = u_xlat35;
  u_xlat35 = clamp(x_615, 0.0f, 1.0f);
  let x_617 : f32 = u_xlat33;
  let x_618 : f32 = u_xlat33;
  u_xlat33 = (x_617 * x_618);
  let x_620 : f32 = u_xlat33;
  let x_622 : f32 = u_xlat8.x;
  u_xlat33 = ((x_620 * x_622) + 1.000010014f);
  let x_626 : f32 = u_xlat35;
  let x_627 : f32 = u_xlat35;
  u_xlat35 = (x_626 * x_627);
  let x_629 : f32 = u_xlat33;
  let x_630 : f32 = u_xlat33;
  u_xlat33 = (x_629 * x_630);
  let x_632 : f32 = u_xlat35;
  u_xlat35 = max(x_632, 0.100000001f);
  let x_635 : f32 = u_xlat33;
  let x_636 : f32 = u_xlat35;
  u_xlat33 = (x_635 * x_636);
  let x_638 : f32 = u_xlat16;
  let x_639 : f32 = u_xlat33;
  u_xlat33 = (x_638 * x_639);
  let x_641 : f32 = u_xlat37;
  let x_642 : f32 = u_xlat33;
  u_xlat33 = (x_641 / x_642);
  let x_644 : vec4<f32> = u_xlat0;
  let x_646 : f32 = u_xlat33;
  let x_649 : vec3<f32> = u_xlat12;
  let x_650 : vec3<f32> = ((vec3<f32>(x_644.x, x_644.y, x_644.z) * vec3<f32>(x_646, x_646, x_646)) + x_649);
  let x_651 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : vec3<f32> = u_xlat6;
  let x_654 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_653 * vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_658 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_660 : f32 = x_95.unity_LightData.y;
  u_xlat33 = min(x_658, x_660);
  let x_664 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_664));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_676 : u32 = u_xlatu_loop_1;
    let x_677 : u32 = u_xlatu33;
    if ((x_676 < x_677)) {
    } else {
      break;
    }
    let x_680 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_680 >> 2u);
    let x_684 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_684 & 3u));
    let x_687 : u32 = u_xlatu36;
    let x_690 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_687)];
    let x_700 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_705 : vec4<u32> = indexable[x_700];
    u_xlat36 = dot(x_690, bitcast<vec4<f32>>(x_705));
    let x_709 : f32 = u_xlat36;
    u_xlati36 = i32(x_709);
    let x_711 : vec3<f32> = vs_TEXCOORD1;
    let x_723 : i32 = u_xlati36;
    let x_725 : vec4<f32> = x_722.x_AdditionalLightsPosition[x_723];
    let x_728 : i32 = u_xlati36;
    let x_730 : vec4<f32> = x_722.x_AdditionalLightsPosition[x_728];
    u_xlat19 = ((-(x_711) * vec3<f32>(x_725.w, x_725.w, x_725.w)) + vec3<f32>(x_730.x, x_730.y, x_730.z));
    let x_733 : vec3<f32> = u_xlat19;
    let x_734 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_733, x_734);
    let x_736 : f32 = u_xlat38;
    u_xlat38 = max(x_736, 6.10351562e-05f);
    let x_739 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_739);
    let x_742 : f32 = u_xlat39;
    let x_744 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_742, x_742, x_742) * x_744);
    let x_746 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_746);
    let x_748 : f32 = u_xlat38;
    let x_749 : i32 = u_xlati36;
    let x_751 : f32 = x_722.x_AdditionalLightsAttenuation[x_749].x;
    u_xlat38 = (x_748 * x_751);
    let x_753 : f32 = u_xlat38;
    let x_755 : f32 = u_xlat38;
    u_xlat38 = ((-(x_753) * x_755) + 1.0f);
    let x_758 : f32 = u_xlat38;
    u_xlat38 = max(x_758, 0.0f);
    let x_760 : f32 = u_xlat38;
    let x_761 : f32 = u_xlat38;
    u_xlat38 = (x_760 * x_761);
    let x_763 : f32 = u_xlat38;
    let x_764 : f32 = u_xlat40;
    u_xlat38 = (x_763 * x_764);
    let x_766 : i32 = u_xlati36;
    let x_768 : vec4<f32> = x_722.x_AdditionalLightsSpotDir[x_766];
    let x_770 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_768.x, x_768.y, x_768.z), x_770);
    let x_772 : f32 = u_xlat40;
    let x_773 : i32 = u_xlati36;
    let x_775 : f32 = x_722.x_AdditionalLightsAttenuation[x_773].z;
    let x_777 : i32 = u_xlati36;
    let x_779 : f32 = x_722.x_AdditionalLightsAttenuation[x_777].w;
    u_xlat40 = ((x_772 * x_775) + x_779);
    let x_781 : f32 = u_xlat40;
    u_xlat40 = clamp(x_781, 0.0f, 1.0f);
    let x_783 : f32 = u_xlat40;
    let x_784 : f32 = u_xlat40;
    u_xlat40 = (x_783 * x_784);
    let x_786 : f32 = u_xlat38;
    let x_787 : f32 = u_xlat40;
    u_xlat38 = (x_786 * x_787);
    let x_790 : f32 = u_xlat27;
    let x_792 : i32 = u_xlati36;
    let x_794 : vec4<f32> = x_722.x_AdditionalLightsColor[x_792];
    u_xlat10 = (vec3<f32>(x_790, x_790, x_790) * vec3<f32>(x_794.x, x_794.y, x_794.z));
    let x_797 : vec3<f32> = u_xlat2;
    let x_798 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(x_797, x_798);
    let x_800 : f32 = u_xlat36;
    u_xlat36 = clamp(x_800, 0.0f, 1.0f);
    let x_802 : f32 = u_xlat36;
    let x_803 : f32 = u_xlat38;
    u_xlat36 = (x_802 * x_803);
    let x_805 : f32 = u_xlat36;
    let x_807 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_805, x_805, x_805) * x_807);
    let x_809 : vec3<f32> = u_xlat19;
    let x_810 : f32 = u_xlat39;
    let x_813 : vec3<f32> = u_xlat3;
    u_xlat19 = ((x_809 * vec3<f32>(x_810, x_810, x_810)) + x_813);
    let x_815 : vec3<f32> = u_xlat19;
    let x_816 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_815, x_816);
    let x_818 : f32 = u_xlat36;
    u_xlat36 = max(x_818, 1.17549435e-37f);
    let x_820 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_820);
    let x_822 : f32 = u_xlat36;
    let x_824 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_822, x_822, x_822) * x_824);
    let x_826 : vec3<f32> = u_xlat2;
    let x_827 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_826, x_827);
    let x_829 : f32 = u_xlat36;
    u_xlat36 = clamp(x_829, 0.0f, 1.0f);
    let x_831 : vec3<f32> = u_xlat9;
    let x_832 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_831, x_832);
    let x_834 : f32 = u_xlat38;
    u_xlat38 = clamp(x_834, 0.0f, 1.0f);
    let x_836 : f32 = u_xlat36;
    let x_837 : f32 = u_xlat36;
    u_xlat36 = (x_836 * x_837);
    let x_839 : f32 = u_xlat36;
    let x_841 : f32 = u_xlat8.x;
    u_xlat36 = ((x_839 * x_841) + 1.000010014f);
    let x_844 : f32 = u_xlat38;
    let x_845 : f32 = u_xlat38;
    u_xlat38 = (x_844 * x_845);
    let x_847 : f32 = u_xlat36;
    let x_848 : f32 = u_xlat36;
    u_xlat36 = (x_847 * x_848);
    let x_850 : f32 = u_xlat38;
    u_xlat38 = max(x_850, 0.100000001f);
    let x_852 : f32 = u_xlat36;
    let x_853 : f32 = u_xlat38;
    u_xlat36 = (x_852 * x_853);
    let x_855 : f32 = u_xlat16;
    let x_856 : f32 = u_xlat36;
    u_xlat36 = (x_855 * x_856);
    let x_858 : f32 = u_xlat37;
    let x_859 : f32 = u_xlat36;
    u_xlat36 = (x_858 / x_859);
    let x_861 : vec4<f32> = u_xlat0;
    let x_863 : f32 = u_xlat36;
    let x_866 : vec3<f32> = u_xlat12;
    u_xlat19 = ((vec3<f32>(x_861.x, x_861.y, x_861.z) * vec3<f32>(x_863, x_863, x_863)) + x_866);
    let x_868 : vec3<f32> = u_xlat19;
    let x_869 : vec3<f32> = u_xlat10;
    let x_871 : vec4<f32> = u_xlat7;
    let x_873 : vec3<f32> = ((x_868 * x_869) + vec3<f32>(x_871.x, x_871.y, x_871.z));
    let x_874 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);

    continuing {
      let x_876 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_876 + bitcast<u32>(1i));
    }
  }
  let x_878 : vec3<f32> = u_xlat4;
  let x_879 : vec3<f32> = u_xlat5;
  let x_882 : vec3<f32> = u_xlat6;
  let x_883 : vec3<f32> = ((x_878 * vec3<f32>(x_879.x, x_879.x, x_879.x)) + x_882);
  let x_884 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_888 : vec4<f32> = u_xlat7;
  let x_890 : vec4<f32> = u_xlat0;
  let x_892 : vec3<f32> = (vec3<f32>(x_888.x, x_888.y, x_888.z) + vec3<f32>(x_890.x, x_890.y, x_890.z));
  let x_893 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_898 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_898 == 1.0f);
  let x_900 : bool = u_xlatb0;
  if (x_900) {
    let x_905 : f32 = u_xlat1.x;
    x_901 = x_905;
  } else {
    x_901 = 1.0f;
  }
  let x_907 : f32 = x_901;
  SV_Target0.w = x_907;
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

