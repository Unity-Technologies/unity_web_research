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
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_326 : MainLightShadows;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_482 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_714 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat2 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat36 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat33 : f32;
  var u_xlat25 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb27 : bool;
  var x_355 : f32;
  var u_xlat27 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu14 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati14 : i32;
  var u_xlat38 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1 = x_63.x;
  let x_68 : vec4<f32> = vs_TEXCOORD3;
  let x_70 : vec4<f32> = vs_TEXCOORD3;
  u_xlat12.x = dot(vec3<f32>(x_68.x, x_68.y, x_68.z), vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_75 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat12;
  let x_80 : vec4<f32> = vs_TEXCOORD3;
  u_xlat12 = (vec3<f32>(x_78.x, x_78.x, x_78.x) * vec3<f32>(x_80.x, x_80.y, x_80.z));
  let x_88 : f32 = vs_TEXCOORD7.y;
  let x_92 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2 = (x_88 * x_92);
  let x_96 : f32 = x_44.unity_MatrixV[0i].z;
  let x_98 : f32 = vs_TEXCOORD7.x;
  let x_100 : f32 = u_xlat2;
  u_xlat2 = ((x_96 * x_98) + x_100);
  let x_104 : f32 = x_44.unity_MatrixV[2i].z;
  let x_106 : f32 = vs_TEXCOORD7.z;
  let x_108 : f32 = u_xlat2;
  u_xlat2 = ((x_104 * x_106) + x_108);
  let x_110 : f32 = u_xlat2;
  let x_113 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat2 = (x_110 + x_113);
  let x_115 : f32 = u_xlat2;
  let x_119 : f32 = x_44.x_ProjectionParams.y;
  u_xlat2 = (-(x_115) + -(x_119));
  let x_122 : f32 = u_xlat2;
  u_xlat2 = max(x_122, 0.0f);
  let x_125 : f32 = u_xlat2;
  let x_128 : f32 = x_44.unity_FogParams.x;
  u_xlat2 = (x_125 * x_128);
  let x_136 : vec4<f32> = vs_TEXCOORD0;
  let x_139 : f32 = x_44.x_GlobalMipBias.x;
  let x_140 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_136.z, x_136.w), x_139);
  u_xlat3 = x_140;
  let x_146 : vec4<f32> = vs_TEXCOORD0;
  let x_149 : f32 = x_44.x_GlobalMipBias.x;
  let x_150 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_146.z, x_146.w), x_149);
  u_xlat13 = vec3<f32>(x_150.x, x_150.y, x_150.z);
  let x_152 : vec4<f32> = u_xlat3;
  let x_156 : vec3<f32> = (vec3<f32>(x_152.x, x_152.y, x_152.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_157 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_159 : vec3<f32> = u_xlat12;
  let x_160 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_159, vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_165 : f32 = u_xlat3.x;
  u_xlat3.x = (x_165 + 0.5f);
  let x_169 : vec3<f32> = u_xlat13;
  let x_170 : vec4<f32> = u_xlat3;
  u_xlat13 = (x_169 * vec3<f32>(x_170.x, x_170.x, x_170.x));
  let x_174 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_174, 0.0001f);
  let x_178 : vec3<f32> = u_xlat13;
  let x_179 : vec4<f32> = u_xlat3;
  u_xlat13 = (x_178 / vec3<f32>(x_179.x, x_179.x, x_179.x));
  let x_185 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_186 : vec2<f32> = vec2<f32>(x_185.x, x_185.y);
  let x_190 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_186.x, x_186.y));
  let x_191 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_190.x, x_190.y, x_191.z, x_191.w);
  let x_193 : vec4<f32> = u_xlat3;
  let x_195 : vec4<f32> = hlslcc_FragCoord;
  let x_197 : vec2<f32> = (vec2<f32>(x_193.x, x_193.y) * vec2<f32>(x_195.x, x_195.y));
  let x_198 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_197.x, x_197.y, x_198.z, x_198.w);
  let x_202 : f32 = u_xlat3.y;
  let x_205 : f32 = x_44.x_ScaleBiasRt.x;
  let x_208 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat14 = ((x_202 * x_205) + x_208);
  let x_210 : f32 = u_xlat14;
  u_xlat3.z = (-(x_210) + 1.0f);
  let x_214 : f32 = u_xlat1;
  u_xlat14 = ((-(x_214) * 0.959999979f) + 0.959999979f);
  let x_220 : f32 = u_xlat14;
  u_xlat36 = (-(x_220) + 1.0f);
  let x_224 : vec4<f32> = u_xlat0;
  let x_226 : f32 = u_xlat14;
  u_xlat4 = (vec3<f32>(x_224.x, x_224.y, x_224.z) * vec3<f32>(x_226, x_226, x_226));
  let x_229 : vec4<f32> = u_xlat0;
  let x_233 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_234 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : f32 = u_xlat1;
  let x_238 : vec4<f32> = u_xlat0;
  let x_243 : vec3<f32> = ((vec3<f32>(x_236, x_236, x_236) * vec3<f32>(x_238.x, x_238.y, x_238.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_244 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_247 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_247) + 1.0f);
  let x_250 : f32 = u_xlat1;
  let x_251 : f32 = u_xlat1;
  u_xlat14 = (x_250 * x_251);
  let x_253 : f32 = u_xlat14;
  u_xlat14 = max(x_253, 0.0078125f);
  let x_257 : f32 = u_xlat14;
  let x_258 : f32 = u_xlat14;
  u_xlat37 = (x_257 * x_258);
  let x_262 : f32 = u_xlat0.w;
  let x_263 : f32 = u_xlat36;
  u_xlat33 = (x_262 + x_263);
  let x_265 : f32 = u_xlat33;
  u_xlat33 = clamp(x_265, 0.0f, 1.0f);
  let x_267 : f32 = u_xlat14;
  u_xlat36 = ((x_267 * 4.0f) + 2.0f);
  let x_277 : vec4<f32> = u_xlat3;
  let x_280 : f32 = x_44.x_GlobalMipBias.x;
  let x_281 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_277.x, x_277.z), x_280);
  u_xlat3.x = x_281.x;
  let x_286 : f32 = u_xlat3.x;
  u_xlat25 = (x_286 + -1.0f);
  let x_291 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_292 : f32 = u_xlat25;
  u_xlat25 = ((x_291 * x_292) + 1.0f);
  let x_296 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_296, 1.0f);
  let x_301 : vec4<f32> = vs_TEXCOORD8;
  let x_302 : vec2<f32> = vec2<f32>(x_301.x, x_301.y);
  let x_304 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_302.x, x_302.y, x_304);
  let x_317 : vec3<f32> = txVec0;
  let x_319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_317.xy, x_317.z);
  u_xlat5.x = x_319;
  let x_328 : f32 = x_326.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_328) + 1.0f);
  let x_333 : f32 = u_xlat5.x;
  let x_335 : f32 = x_326.x_MainLightShadowParams.x;
  let x_338 : f32 = u_xlat16.x;
  u_xlat5.x = ((x_333 * x_335) + x_338);
  let x_345 : f32 = vs_TEXCOORD8.z;
  u_xlatb16 = (0.0f >= x_345);
  let x_349 : f32 = vs_TEXCOORD8.z;
  u_xlatb27 = (x_349 >= 1.0f);
  let x_351 : bool = u_xlatb27;
  let x_352 : bool = u_xlatb16;
  u_xlatb16 = (x_351 | x_352);
  let x_354 : bool = u_xlatb16;
  if (x_354) {
    x_355 = 1.0f;
  } else {
    let x_360 : f32 = u_xlat5.x;
    x_355 = x_360;
  }
  let x_361 : f32 = x_355;
  u_xlat5.x = x_361;
  let x_363 : vec3<f32> = vs_TEXCOORD7;
  let x_367 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat16 = (x_363 + -(x_367));
  let x_370 : vec3<f32> = u_xlat16;
  let x_371 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(x_370, x_371);
  let x_375 : f32 = u_xlat16.x;
  let x_377 : f32 = x_326.x_MainLightShadowParams.z;
  let x_380 : f32 = x_326.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_375 * x_377) + x_380);
  let x_384 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_384, 0.0f, 1.0f);
  let x_389 : f32 = u_xlat5.x;
  u_xlat27 = (-(x_389) + 1.0f);
  let x_393 : f32 = u_xlat16.x;
  let x_394 : f32 = u_xlat27;
  let x_397 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_393 * x_394) + x_397);
  let x_400 : f32 = u_xlat25;
  let x_403 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_400, x_400, x_400) * vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_408 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_408;
  let x_412 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_412;
  let x_416 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_416;
  let x_419 : vec3<f32> = u_xlat6;
  let x_421 : vec3<f32> = u_xlat12;
  u_xlat39 = dot(-(x_419), x_421);
  let x_423 : f32 = u_xlat39;
  let x_424 : f32 = u_xlat39;
  u_xlat39 = (x_423 + x_424);
  let x_427 : vec3<f32> = u_xlat12;
  let x_428 : f32 = u_xlat39;
  let x_432 : vec3<f32> = u_xlat6;
  let x_434 : vec3<f32> = ((x_427 * -(vec3<f32>(x_428, x_428, x_428))) + -(x_432));
  let x_435 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec3<f32> = u_xlat12;
  let x_438 : vec3<f32> = u_xlat6;
  u_xlat39 = dot(x_437, x_438);
  let x_440 : f32 = u_xlat39;
  u_xlat39 = clamp(x_440, 0.0f, 1.0f);
  let x_442 : f32 = u_xlat39;
  u_xlat39 = (-(x_442) + 1.0f);
  let x_445 : f32 = u_xlat39;
  let x_446 : f32 = u_xlat39;
  u_xlat39 = (x_445 * x_446);
  let x_448 : f32 = u_xlat39;
  let x_449 : f32 = u_xlat39;
  u_xlat39 = (x_448 * x_449);
  let x_452 : f32 = u_xlat1;
  u_xlat40 = ((-(x_452) * 0.699999988f) + 1.700000048f);
  let x_458 : f32 = u_xlat1;
  let x_459 : f32 = u_xlat40;
  u_xlat1 = (x_458 * x_459);
  let x_461 : f32 = u_xlat1;
  u_xlat1 = (x_461 * 6.0f);
  let x_472 : vec4<f32> = u_xlat7;
  let x_474 : f32 = u_xlat1;
  let x_475 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_472.x, x_472.y, x_472.z), x_474);
  u_xlat7 = x_475;
  let x_477 : f32 = u_xlat7.w;
  u_xlat1 = (x_477 + -1.0f);
  let x_484 : f32 = x_482.unity_SpecCube0_HDR.w;
  let x_485 : f32 = u_xlat1;
  u_xlat1 = ((x_484 * x_485) + 1.0f);
  let x_488 : f32 = u_xlat1;
  u_xlat1 = max(x_488, 0.0f);
  let x_490 : f32 = u_xlat1;
  u_xlat1 = log2(x_490);
  let x_492 : f32 = u_xlat1;
  let x_494 : f32 = x_482.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_492 * x_494);
  let x_496 : f32 = u_xlat1;
  u_xlat1 = exp2(x_496);
  let x_498 : f32 = u_xlat1;
  let x_500 : f32 = x_482.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_498 * x_500);
  let x_502 : vec4<f32> = u_xlat7;
  let x_504 : f32 = u_xlat1;
  let x_506 : vec3<f32> = (vec3<f32>(x_502.x, x_502.y, x_502.z) * vec3<f32>(x_504, x_504, x_504));
  let x_507 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_511 : f32 = u_xlat14;
  let x_513 : f32 = u_xlat14;
  u_xlat8 = ((vec2<f32>(x_511, x_511) * vec2<f32>(x_513, x_513)) + vec2<f32>(-1.0f, 1.0f));
  let x_519 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_519);
  let x_522 : vec4<f32> = u_xlat0;
  let x_525 : f32 = u_xlat33;
  u_xlat19 = (-(vec3<f32>(x_522.x, x_522.y, x_522.z)) + vec3<f32>(x_525, x_525, x_525));
  let x_528 : f32 = u_xlat39;
  let x_530 : vec3<f32> = u_xlat19;
  let x_532 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_528, x_528, x_528) * x_530) + vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : f32 = u_xlat1;
  let x_537 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_535, x_535, x_535) * x_537);
  let x_539 : vec4<f32> = u_xlat7;
  let x_541 : vec3<f32> = u_xlat19;
  let x_542 : vec3<f32> = (vec3<f32>(x_539.x, x_539.y, x_539.z) * x_541);
  let x_543 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec3<f32> = u_xlat13;
  let x_546 : vec3<f32> = u_xlat4;
  let x_548 : vec4<f32> = u_xlat7;
  u_xlat13 = ((x_545 * x_546) + vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_552 : f32 = u_xlat5.x;
  let x_555 : f32 = x_482.unity_LightData.z;
  u_xlat33 = (x_552 * x_555);
  let x_557 : vec3<f32> = u_xlat12;
  let x_559 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_557, vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : f32 = u_xlat1;
  u_xlat1 = clamp(x_562, 0.0f, 1.0f);
  let x_564 : f32 = u_xlat33;
  let x_565 : f32 = u_xlat1;
  u_xlat33 = (x_564 * x_565);
  let x_567 : f32 = u_xlat33;
  let x_569 : vec3<f32> = u_xlat16;
  u_xlat5 = (vec3<f32>(x_567, x_567, x_567) * x_569);
  let x_571 : vec3<f32> = u_xlat6;
  let x_573 : vec4<f32> = x_44.x_MainLightPosition;
  let x_575 : vec3<f32> = (x_571 + vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec4<f32> = u_xlat7;
  let x_580 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_578.x, x_578.y, x_578.z), vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : f32 = u_xlat33;
  u_xlat33 = max(x_583, 1.17549435e-37f);
  let x_586 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_586);
  let x_588 : f32 = u_xlat33;
  let x_590 : vec4<f32> = u_xlat7;
  let x_592 : vec3<f32> = (vec3<f32>(x_588, x_588, x_588) * vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec3<f32> = u_xlat12;
  let x_596 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_595, vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : f32 = u_xlat33;
  u_xlat33 = clamp(x_599, 0.0f, 1.0f);
  let x_602 : vec4<f32> = x_44.x_MainLightPosition;
  let x_604 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_602.x, x_602.y, x_602.z), vec3<f32>(x_604.x, x_604.y, x_604.z));
  let x_607 : f32 = u_xlat1;
  u_xlat1 = clamp(x_607, 0.0f, 1.0f);
  let x_609 : f32 = u_xlat33;
  let x_610 : f32 = u_xlat33;
  u_xlat33 = (x_609 * x_610);
  let x_612 : f32 = u_xlat33;
  let x_614 : f32 = u_xlat8.x;
  u_xlat33 = ((x_612 * x_614) + 1.000010014f);
  let x_618 : f32 = u_xlat1;
  let x_619 : f32 = u_xlat1;
  u_xlat1 = (x_618 * x_619);
  let x_621 : f32 = u_xlat33;
  let x_622 : f32 = u_xlat33;
  u_xlat33 = (x_621 * x_622);
  let x_624 : f32 = u_xlat1;
  u_xlat1 = max(x_624, 0.100000001f);
  let x_627 : f32 = u_xlat33;
  let x_628 : f32 = u_xlat1;
  u_xlat33 = (x_627 * x_628);
  let x_630 : f32 = u_xlat36;
  let x_631 : f32 = u_xlat33;
  u_xlat33 = (x_630 * x_631);
  let x_633 : f32 = u_xlat37;
  let x_634 : f32 = u_xlat33;
  u_xlat33 = (x_633 / x_634);
  let x_636 : vec4<f32> = u_xlat0;
  let x_638 : f32 = u_xlat33;
  let x_641 : vec3<f32> = u_xlat4;
  let x_642 : vec3<f32> = ((vec3<f32>(x_636.x, x_636.y, x_636.z) * vec3<f32>(x_638, x_638, x_638)) + x_641);
  let x_643 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec3<f32> = u_xlat5;
  let x_646 : vec4<f32> = u_xlat7;
  u_xlat5 = (x_645 * vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_650 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_652 : f32 = x_482.unity_LightData.y;
  u_xlat33 = min(x_650, x_652);
  let x_656 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_656));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_668 : u32 = u_xlatu_loop_1;
    let x_669 : u32 = u_xlatu33;
    if ((x_668 < x_669)) {
    } else {
      break;
    }
    let x_672 : u32 = u_xlatu_loop_1;
    u_xlatu14 = (x_672 >> 2u);
    let x_676 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_676 & 3u));
    let x_679 : u32 = u_xlatu14;
    let x_682 : vec4<f32> = x_482.unity_LightIndices[bitcast<i32>(x_679)];
    let x_692 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_697 : vec4<u32> = indexable[x_692];
    u_xlat14 = dot(x_682, bitcast<vec4<f32>>(x_697));
    let x_701 : f32 = u_xlat14;
    u_xlati14 = i32(x_701);
    let x_703 : vec3<f32> = vs_TEXCOORD7;
    let x_715 : i32 = u_xlati14;
    let x_717 : vec4<f32> = x_714.x_AdditionalLightsPosition[x_715];
    let x_720 : i32 = u_xlati14;
    let x_722 : vec4<f32> = x_714.x_AdditionalLightsPosition[x_720];
    u_xlat19 = ((-(x_703) * vec3<f32>(x_717.w, x_717.w, x_717.w)) + vec3<f32>(x_722.x, x_722.y, x_722.z));
    let x_726 : vec3<f32> = u_xlat19;
    let x_727 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_726, x_727);
    let x_729 : f32 = u_xlat38;
    u_xlat38 = max(x_729, 6.10351562e-05f);
    let x_732 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_732);
    let x_735 : f32 = u_xlat39;
    let x_737 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_735, x_735, x_735) * x_737);
    let x_739 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_739);
    let x_741 : f32 = u_xlat38;
    let x_742 : i32 = u_xlati14;
    let x_744 : f32 = x_714.x_AdditionalLightsAttenuation[x_742].x;
    u_xlat38 = (x_741 * x_744);
    let x_746 : f32 = u_xlat38;
    let x_748 : f32 = u_xlat38;
    u_xlat38 = ((-(x_746) * x_748) + 1.0f);
    let x_751 : f32 = u_xlat38;
    u_xlat38 = max(x_751, 0.0f);
    let x_753 : f32 = u_xlat38;
    let x_754 : f32 = u_xlat38;
    u_xlat38 = (x_753 * x_754);
    let x_756 : f32 = u_xlat38;
    let x_757 : f32 = u_xlat40;
    u_xlat38 = (x_756 * x_757);
    let x_759 : i32 = u_xlati14;
    let x_761 : vec4<f32> = x_714.x_AdditionalLightsSpotDir[x_759];
    let x_763 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_761.x, x_761.y, x_761.z), x_763);
    let x_765 : f32 = u_xlat40;
    let x_766 : i32 = u_xlati14;
    let x_768 : f32 = x_714.x_AdditionalLightsAttenuation[x_766].z;
    let x_770 : i32 = u_xlati14;
    let x_772 : f32 = x_714.x_AdditionalLightsAttenuation[x_770].w;
    u_xlat40 = ((x_765 * x_768) + x_772);
    let x_774 : f32 = u_xlat40;
    u_xlat40 = clamp(x_774, 0.0f, 1.0f);
    let x_776 : f32 = u_xlat40;
    let x_777 : f32 = u_xlat40;
    u_xlat40 = (x_776 * x_777);
    let x_779 : f32 = u_xlat38;
    let x_780 : f32 = u_xlat40;
    u_xlat38 = (x_779 * x_780);
    let x_783 : f32 = u_xlat25;
    let x_785 : i32 = u_xlati14;
    let x_787 : vec4<f32> = x_714.x_AdditionalLightsColor[x_785];
    u_xlat10 = (vec3<f32>(x_783, x_783, x_783) * vec3<f32>(x_787.x, x_787.y, x_787.z));
    let x_790 : vec3<f32> = u_xlat12;
    let x_791 : vec3<f32> = u_xlat9;
    u_xlat14 = dot(x_790, x_791);
    let x_793 : f32 = u_xlat14;
    u_xlat14 = clamp(x_793, 0.0f, 1.0f);
    let x_795 : f32 = u_xlat14;
    let x_796 : f32 = u_xlat38;
    u_xlat14 = (x_795 * x_796);
    let x_798 : f32 = u_xlat14;
    let x_800 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_798, x_798, x_798) * x_800);
    let x_802 : vec3<f32> = u_xlat19;
    let x_803 : f32 = u_xlat39;
    let x_806 : vec3<f32> = u_xlat6;
    u_xlat19 = ((x_802 * vec3<f32>(x_803, x_803, x_803)) + x_806);
    let x_808 : vec3<f32> = u_xlat19;
    let x_809 : vec3<f32> = u_xlat19;
    u_xlat14 = dot(x_808, x_809);
    let x_811 : f32 = u_xlat14;
    u_xlat14 = max(x_811, 1.17549435e-37f);
    let x_813 : f32 = u_xlat14;
    u_xlat14 = inverseSqrt(x_813);
    let x_815 : f32 = u_xlat14;
    let x_817 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_815, x_815, x_815) * x_817);
    let x_819 : vec3<f32> = u_xlat12;
    let x_820 : vec3<f32> = u_xlat19;
    u_xlat14 = dot(x_819, x_820);
    let x_822 : f32 = u_xlat14;
    u_xlat14 = clamp(x_822, 0.0f, 1.0f);
    let x_824 : vec3<f32> = u_xlat9;
    let x_825 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_824, x_825);
    let x_827 : f32 = u_xlat38;
    u_xlat38 = clamp(x_827, 0.0f, 1.0f);
    let x_829 : f32 = u_xlat14;
    let x_830 : f32 = u_xlat14;
    u_xlat14 = (x_829 * x_830);
    let x_832 : f32 = u_xlat14;
    let x_834 : f32 = u_xlat8.x;
    u_xlat14 = ((x_832 * x_834) + 1.000010014f);
    let x_837 : f32 = u_xlat38;
    let x_838 : f32 = u_xlat38;
    u_xlat38 = (x_837 * x_838);
    let x_840 : f32 = u_xlat14;
    let x_841 : f32 = u_xlat14;
    u_xlat14 = (x_840 * x_841);
    let x_843 : f32 = u_xlat38;
    u_xlat38 = max(x_843, 0.100000001f);
    let x_845 : f32 = u_xlat14;
    let x_846 : f32 = u_xlat38;
    u_xlat14 = (x_845 * x_846);
    let x_848 : f32 = u_xlat36;
    let x_849 : f32 = u_xlat14;
    u_xlat14 = (x_848 * x_849);
    let x_851 : f32 = u_xlat37;
    let x_852 : f32 = u_xlat14;
    u_xlat14 = (x_851 / x_852);
    let x_854 : vec4<f32> = u_xlat0;
    let x_856 : f32 = u_xlat14;
    let x_859 : vec3<f32> = u_xlat4;
    u_xlat19 = ((vec3<f32>(x_854.x, x_854.y, x_854.z) * vec3<f32>(x_856, x_856, x_856)) + x_859);
    let x_861 : vec3<f32> = u_xlat19;
    let x_862 : vec3<f32> = u_xlat10;
    let x_864 : vec4<f32> = u_xlat7;
    let x_866 : vec3<f32> = ((x_861 * x_862) + vec3<f32>(x_864.x, x_864.y, x_864.z));
    let x_867 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);

    continuing {
      let x_869 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_869 + bitcast<u32>(1i));
    }
  }
  let x_871 : vec3<f32> = u_xlat13;
  let x_872 : vec4<f32> = u_xlat3;
  let x_875 : vec3<f32> = u_xlat5;
  let x_876 : vec3<f32> = ((x_871 * vec3<f32>(x_872.x, x_872.x, x_872.x)) + x_875);
  let x_877 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat7;
  let x_881 : vec4<f32> = u_xlat0;
  let x_883 : vec3<f32> = (vec3<f32>(x_879.x, x_879.y, x_879.z) + vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : f32 = u_xlat2;
  let x_887 : f32 = u_xlat2;
  u_xlat33 = (x_886 * -(x_887));
  let x_890 : f32 = u_xlat33;
  u_xlat33 = exp2(x_890);
  let x_892 : vec4<f32> = u_xlat0;
  let x_896 : vec4<f32> = x_44.unity_FogColor;
  let x_899 : vec3<f32> = (vec3<f32>(x_892.x, x_892.y, x_892.z) + -(vec3<f32>(x_896.x, x_896.y, x_896.z)));
  let x_900 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_904 : f32 = u_xlat33;
  let x_906 : vec4<f32> = u_xlat0;
  let x_910 : vec4<f32> = x_44.unity_FogColor;
  let x_912 : vec3<f32> = ((vec3<f32>(x_904, x_904, x_904) * vec3<f32>(x_906.x, x_906.y, x_906.z)) + vec3<f32>(x_910.x, x_910.y, x_910.z));
  let x_913 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

