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
  x_ProjectionParams : vec4<f32>,
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

var<private> vs_INTERP1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_90 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_145 : UnityPerDraw;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_199 : UnityPerMaterial;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_256 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1297 : AdditionalLights;

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
  var u_xlatb36 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat2 : vec3<f32>;
  var x_133 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat17 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb38 : bool;
  var u_xlatb40 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlat38 : f32;
  var x_373 : f32;
  var u_xlatu2 : vec3<u32>;
  var u_xlatu26 : u32;
  var u_xlatu3 : u32;
  var u_xlati26 : i32;
  var u_xlati14 : i32;
  var u_xlatu14 : u32;
  var u_xlati2 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat14 : vec3<f32>;
  var x_506 : f32;
  var u_xlatb14 : vec2<bool>;
  var x_537 : f32;
  var u_xlat26 : vec2<f32>;
  var u_xlatb2 : bool;
  var x_587 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat18 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlatb30 : bool;
  var u_xlatb42 : bool;
  var u_xlat42 : f32;
  var u_xlatu37 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati30 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati40 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat11 : vec3<f32>;
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
  u_xlatb36 = (x_94 == 0.0f);
  let x_99 : vec3<f32> = vs_INTERP0;
  let x_104 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_99) + x_104);
  let x_107 : vec3<f32> = u_xlat1;
  let x_108 : vec3<f32> = u_xlat1;
  u_xlat37 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_110);
  let x_112 : f32 = u_xlat37;
  let x_114 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_112, x_112, x_112) * x_114);
  let x_121 : f32 = x_90.unity_MatrixV[0i].z;
  u_xlat2.x = x_121;
  let x_125 : f32 = x_90.unity_MatrixV[1i].z;
  u_xlat2.y = x_125;
  let x_130 : f32 = x_90.unity_MatrixV[2i].z;
  u_xlat2.z = x_130;
  let x_132 : bool = u_xlatb36;
  if (x_132) {
    let x_136 : vec3<f32> = u_xlat1;
    x_133 = x_136;
  } else {
    let x_138 : vec3<f32> = u_xlat2;
    x_133 = x_138;
  }
  let x_139 : vec3<f32> = x_133;
  u_xlat1 = x_139;
  let x_140 : vec3<f32> = u_xlat1;
  let x_148 : vec4<f32> = x_145.unity_WorldToObject[1i];
  u_xlat2 = (vec3<f32>(x_140.y, x_140.y, x_140.y) * vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_152 : vec4<f32> = x_145.unity_WorldToObject[0i];
  let x_154 : vec3<f32> = u_xlat1;
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154.x, x_154.x, x_154.x)) + x_157);
  let x_160 : vec4<f32> = x_145.unity_WorldToObject[2i];
  let x_162 : vec3<f32> = u_xlat1;
  let x_165 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_162.z, x_162.z, x_162.z)) + x_165);
  let x_168 : vec3<f32> = u_xlat2;
  let x_169 : vec3<f32> = u_xlat2;
  u_xlat36 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat36;
  let x_175 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_173, x_173, x_173) * x_175);
  let x_189 : vec4<f32> = vs_INTERP3;
  let x_192 : f32 = x_90.x_GlobalMipBias.x;
  let x_193 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_189.x, x_189.y), x_192);
  u_xlat3 = x_193;
  let x_195 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = x_199.Color_C30C7CA3;
  u_xlat4 = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_210 : vec4<f32> = vs_INTERP3;
  let x_213 : f32 = x_90.x_GlobalMipBias.x;
  let x_214 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_210.x, x_210.y), x_213);
  u_xlat5 = vec4<f32>(x_214.w, x_214.x, x_214.y, x_214.z);
  let x_217 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_217.y, x_217.z, x_217.w, x_217.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_225 : vec4<f32> = u_xlat6;
  let x_226 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_225, x_226);
  let x_228 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_228);
  let x_231 : f32 = u_xlat36;
  let x_233 : vec4<f32> = u_xlat6;
  u_xlat17 = (vec3<f32>(x_231, x_231, x_231) * vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_238 : f32 = vs_INTERP4.y;
  u_xlat36 = (x_238 * 200.0f);
  let x_241 : f32 = u_xlat36;
  u_xlat36 = min(x_241, 1.0f);
  let x_243 : f32 = u_xlat36;
  let x_245 : vec4<f32> = u_xlat3;
  let x_247 : vec3<f32> = (vec3<f32>(x_243, x_243, x_243) * vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec3<f32> = vs_INTERP0;
  let x_258 : vec4<f32> = x_256.x_MainLightWorldToShadow[0i][1i];
  let x_260 : vec3<f32> = (vec3<f32>(x_250.y, x_250.y, x_250.y) * vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_264 : vec4<f32> = x_256.x_MainLightWorldToShadow[0i][0i];
  let x_266 : vec3<f32> = vs_INTERP0;
  let x_269 : vec4<f32> = u_xlat6;
  let x_271 : vec3<f32> = ((vec3<f32>(x_264.x, x_264.y, x_264.z) * vec3<f32>(x_266.x, x_266.x, x_266.x)) + vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_275 : vec4<f32> = x_256.x_MainLightWorldToShadow[0i][2i];
  let x_277 : vec3<f32> = vs_INTERP0;
  let x_280 : vec4<f32> = u_xlat6;
  let x_282 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_277.z, x_277.z, x_277.z)) + vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec4<f32> = u_xlat6;
  let x_289 : vec4<f32> = x_256.x_MainLightWorldToShadow[0i][3i];
  let x_291 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) + vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_295 : vec4<f32> = u_xlat6;
  let x_296 : vec2<f32> = vec2<f32>(x_295.x, x_295.y);
  let x_298 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_296.x, x_296.y, x_298);
  let x_310 : vec3<f32> = txVec0;
  let x_312 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_310.xy, x_310.z);
  u_xlat36 = x_312;
  let x_315 : f32 = x_256.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_315) + 1.0f);
  let x_318 : f32 = u_xlat36;
  let x_320 : f32 = x_256.x_MainLightShadowParams.x;
  let x_322 : f32 = u_xlat37;
  u_xlat36 = ((x_318 * x_320) + x_322);
  let x_326 : f32 = u_xlat6.z;
  u_xlatb38 = (0.0f >= x_326);
  let x_330 : f32 = u_xlat6.z;
  u_xlatb40 = (x_330 >= 1.0f);
  let x_332 : bool = u_xlatb38;
  let x_333 : bool = u_xlatb40;
  u_xlatb38 = (x_332 | x_333);
  let x_335 : bool = u_xlatb38;
  let x_336 : f32 = u_xlat36;
  u_xlat36 = select(x_336, 1.0f, x_335);
  let x_338 : vec3<f32> = u_xlat0;
  let x_340 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat0.x = dot(x_338, -(vec3<f32>(x_340.x, x_340.y, x_340.z)));
  let x_346 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_346, 0.0f, 1.0f);
  let x_350 : f32 = u_xlat36;
  let x_354 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat12 = (vec3<f32>(x_350, x_350, x_350) * vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec3<f32> = u_xlat12;
  let x_358 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_357 * vec3<f32>(x_358.x, x_358.x, x_358.x));
  let x_361 : vec3<f32> = u_xlat0;
  let x_362 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_361 * vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_366 : f32 = x_145.unity_LODFade.x;
  u_xlatb36 = (x_366 < 0.0f);
  let x_370 : f32 = x_145.unity_LODFade.x;
  u_xlat38 = (x_370 + 1.0f);
  let x_372 : bool = u_xlatb36;
  if (x_372) {
    let x_376 : f32 = u_xlat38;
    x_373 = x_376;
  } else {
    let x_379 : f32 = x_145.unity_LODFade.x;
    x_373 = x_379;
  }
  let x_380 : f32 = x_373;
  u_xlat36 = x_380;
  let x_382 : f32 = u_xlat36;
  u_xlatb38 = (0.5f >= x_382);
  let x_384 : vec3<f32> = u_xlat2;
  let x_388 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat2 = (abs(x_384) * vec3<f32>(x_388.x, x_388.y, x_388.x));
  let x_394 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_394);
  let x_398 : u32 = u_xlatu2.z;
  u_xlatu26 = (x_398 * 1025u);
  let x_402 : u32 = u_xlatu26;
  u_xlatu3 = (x_402 >> 6u);
  let x_406 : u32 = u_xlatu26;
  let x_407 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_406 ^ x_407));
  let x_410 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_410) * 9u);
  let x_414 : u32 = u_xlatu26;
  u_xlatu3 = (x_414 >> 11u);
  let x_417 : u32 = u_xlatu26;
  let x_418 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_417 ^ x_418));
  let x_421 : i32 = u_xlati26;
  u_xlati26 = (x_421 * 32769i);
  let x_425 : i32 = u_xlati26;
  let x_428 : u32 = u_xlatu2.y;
  u_xlati14 = bitcast<i32>((bitcast<u32>(x_425) ^ x_428));
  let x_432 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_432) * 1025u);
  let x_435 : u32 = u_xlatu14;
  u_xlatu26 = (x_435 >> 6u);
  let x_437 : u32 = u_xlatu26;
  let x_438 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_437 ^ x_438));
  let x_441 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_441) * 9u);
  let x_444 : u32 = u_xlatu14;
  u_xlatu26 = (x_444 >> 11u);
  let x_446 : u32 = u_xlatu26;
  let x_447 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_446 ^ x_447));
  let x_450 : i32 = u_xlati14;
  u_xlati14 = (x_450 * 32769i);
  let x_453 : i32 = u_xlati14;
  let x_456 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_453) ^ x_456));
  let x_459 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_459) * 1025u);
  let x_464 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_464 >> 6u);
  let x_466 : u32 = u_xlatu14;
  let x_468 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_466 ^ x_468));
  let x_471 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_471) * 9u);
  let x_476 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_476 >> 11u);
  let x_478 : u32 = u_xlatu14;
  let x_480 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_478 ^ x_480));
  let x_483 : i32 = u_xlati2;
  u_xlati2 = (x_483 * 32769i);
  param = 1065353216i;
  let x_489 : i32 = u_xlati2;
  param_1 = x_489;
  param_2 = 0i;
  param_3 = 23i;
  let x_492 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_492);
  let x_496 : f32 = u_xlat2.x;
  u_xlat2.x = (x_496 + -1.0f);
  let x_501 : f32 = u_xlat2.x;
  u_xlat14.x = (-(x_501) + 1.0f);
  let x_505 : bool = u_xlatb38;
  if (x_505) {
    let x_510 : f32 = u_xlat2.x;
    x_506 = x_510;
  } else {
    let x_513 : f32 = u_xlat14.x;
    x_506 = x_513;
  }
  let x_514 : f32 = x_506;
  u_xlat2.x = x_514;
  let x_516 : f32 = u_xlat36;
  let x_519 : f32 = u_xlat2.x;
  u_xlat36 = ((x_516 * 2.0f) + -(x_519));
  let x_522 : f32 = u_xlat36;
  let x_524 : f32 = u_xlat3.w;
  u_xlat2.x = (x_522 * x_524);
  let x_531 : f32 = u_xlat2.x;
  u_xlatb14.x = (x_531 >= 0.400000006f);
  let x_536 : bool = u_xlatb14.x;
  if (x_536) {
    let x_541 : f32 = u_xlat2.x;
    x_537 = x_541;
  } else {
    x_537 = 0.0f;
  }
  let x_543 : f32 = x_537;
  u_xlat14.x = x_543;
  let x_546 : f32 = u_xlat3.w;
  let x_547 : f32 = u_xlat36;
  u_xlat36 = ((x_546 * x_547) + -0.400000006f);
  let x_554 : f32 = u_xlat2.x;
  u_xlat26.x = dpdxCoarse(x_554);
  let x_558 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_558);
  let x_562 : f32 = u_xlat2.x;
  let x_565 : f32 = u_xlat26.x;
  u_xlat2.x = (abs(x_562) + abs(x_565));
  let x_570 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_570, 0.0001f);
  let x_574 : f32 = u_xlat36;
  let x_576 : f32 = u_xlat2.x;
  u_xlat36 = (x_574 / x_576);
  let x_578 : f32 = u_xlat36;
  u_xlat36 = (x_578 + 0.5f);
  let x_580 : f32 = u_xlat36;
  u_xlat36 = clamp(x_580, 0.0f, 1.0f);
  let x_584 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_584 == 0.0f));
  let x_586 : bool = u_xlatb2;
  if (x_586) {
    let x_590 : f32 = u_xlat36;
    x_587 = x_590;
  } else {
    let x_593 : f32 = u_xlat14.x;
    x_587 = x_593;
  }
  let x_594 : f32 = x_587;
  u_xlat36 = x_594;
  let x_595 : f32 = u_xlat36;
  u_xlat14.x = (x_595 + -0.0001f);
  let x_600 : f32 = u_xlat14.x;
  u_xlatb14.x = (x_600 < 0.0f);
  let x_604 : bool = u_xlatb14.x;
  if (((select(0i, 1i, x_604) * -1i) != 0i)) {
    discard;
  }
  let x_614 : f32 = vs_INTERP2.w;
  u_xlatb14.x = (0.0f < x_614);
  let x_618 : f32 = x_145.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_618 >= 0.0f);
  let x_622 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_622);
  let x_626 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_626);
  let x_630 : f32 = u_xlat14.y;
  let x_632 : f32 = u_xlat14.x;
  u_xlat14.x = (x_630 * x_632);
  let x_635 : vec3<f32> = vs_INTERP1;
  let x_637 : vec4<f32> = vs_INTERP2;
  let x_639 : vec3<f32> = (vec3<f32>(x_635.z, x_635.x, x_635.y) * vec3<f32>(x_637.y, x_637.z, x_637.x));
  let x_640 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec3<f32> = vs_INTERP1;
  let x_644 : vec4<f32> = vs_INTERP2;
  let x_647 : vec4<f32> = u_xlat3;
  let x_650 : vec3<f32> = ((vec3<f32>(x_642.y, x_642.z, x_642.x) * vec3<f32>(x_644.z, x_644.x, x_644.y)) + -(vec3<f32>(x_647.x, x_647.y, x_647.z)));
  let x_651 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : vec3<f32> = u_xlat14;
  let x_655 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec3<f32>(x_653.x, x_653.x, x_653.x) * vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_658 : vec3<f32> = u_xlat14;
  let x_659 : vec3<f32> = u_xlat17;
  u_xlat14 = (x_658 * vec3<f32>(x_659.y, x_659.y, x_659.y));
  let x_662 : vec3<f32> = u_xlat17;
  let x_664 : vec4<f32> = vs_INTERP2;
  let x_667 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_662.x, x_662.x, x_662.x) * vec3<f32>(x_664.x, x_664.y, x_664.z)) + x_667);
  let x_669 : vec3<f32> = u_xlat17;
  let x_671 : vec3<f32> = vs_INTERP1;
  let x_673 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_669.z, x_669.z, x_669.z) * x_671) + x_673);
  let x_675 : vec3<f32> = u_xlat14;
  let x_676 : vec3<f32> = u_xlat14;
  u_xlat3.x = dot(x_675, x_676);
  let x_680 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_680);
  let x_683 : vec3<f32> = u_xlat14;
  let x_684 : vec4<f32> = u_xlat3;
  let x_686 : vec3<f32> = (x_683 * vec3<f32>(x_684.x, x_684.x, x_684.x));
  let x_687 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_690 : f32 = vs_INTERP0.y;
  let x_692 : f32 = x_90.unity_MatrixV[1i].z;
  u_xlat14.x = (x_690 * x_692);
  let x_696 : f32 = x_90.unity_MatrixV[0i].z;
  let x_698 : f32 = vs_INTERP0.x;
  let x_701 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_696 * x_698) + x_701);
  let x_705 : f32 = x_90.unity_MatrixV[2i].z;
  let x_707 : f32 = vs_INTERP0.z;
  let x_710 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_705 * x_707) + x_710);
  let x_714 : f32 = u_xlat14.x;
  let x_716 : f32 = x_90.unity_MatrixV[3i].z;
  u_xlat14.x = (x_714 + x_716);
  let x_720 : f32 = u_xlat14.x;
  let x_723 : f32 = x_90.x_ProjectionParams.y;
  u_xlat14.x = (-(x_720) + -(x_723));
  let x_728 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_728, 0.0f);
  let x_732 : f32 = u_xlat14.x;
  let x_735 : f32 = x_90.unity_FogParams.x;
  u_xlat14.x = (x_732 * x_735);
  u_xlat3.w = 1.0f;
  let x_741 : vec4<f32> = x_145.unity_SHAr;
  let x_742 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_741, x_742);
  let x_747 : vec4<f32> = x_145.unity_SHAg;
  let x_748 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_747, x_748);
  let x_753 : vec4<f32> = x_145.unity_SHAb;
  let x_754 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_753, x_754);
  let x_758 : vec4<f32> = u_xlat3;
  let x_760 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_758.y, x_758.z, x_758.z, x_758.x) * vec4<f32>(x_760.x, x_760.y, x_760.z, x_760.z));
  let x_766 : vec4<f32> = x_145.unity_SHBr;
  let x_767 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_766, x_767);
  let x_772 : vec4<f32> = x_145.unity_SHBg;
  let x_773 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_772, x_773);
  let x_777 : vec4<f32> = x_145.unity_SHBb;
  let x_778 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_777, x_778);
  let x_782 : f32 = u_xlat3.y;
  let x_784 : f32 = u_xlat3.y;
  u_xlat26.x = (x_782 * x_784);
  let x_788 : f32 = u_xlat3.x;
  let x_790 : f32 = u_xlat3.x;
  let x_793 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_788 * x_790) + -(x_793));
  let x_799 : vec4<f32> = x_145.unity_SHC;
  let x_801 : vec2<f32> = u_xlat26;
  let x_804 : vec4<f32> = u_xlat8;
  u_xlat17 = ((vec3<f32>(x_799.x, x_799.y, x_799.z) * vec3<f32>(x_801.x, x_801.x, x_801.x)) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec3<f32> = u_xlat17;
  let x_808 : vec4<f32> = u_xlat6;
  u_xlat17 = (x_807 + vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : vec3<f32> = u_xlat17;
  u_xlat17 = max(x_811, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_816 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_817 : vec2<f32> = vec2<f32>(x_816.x, x_816.y);
  u_xlat26 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_817.x, x_817.y));
  let x_822 : vec2<f32> = u_xlat26;
  let x_823 : vec4<f32> = hlslcc_FragCoord;
  let x_825 : vec2<f32> = (x_822 * vec2<f32>(x_823.x, x_823.y));
  let x_826 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_825.x, x_825.y, x_826.z, x_826.w);
  let x_829 : f32 = u_xlat6.y;
  let x_832 : f32 = x_90.x_ScaleBiasRt.x;
  let x_835 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat26.x = ((x_829 * x_832) + x_835);
  let x_839 : f32 = u_xlat26.x;
  u_xlat6.z = (-(x_839) + 1.0f);
  let x_844 : f32 = u_xlat5.x;
  u_xlat5.x = x_844;
  let x_847 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_847, 0.0f, 1.0f);
  let x_850 : f32 = u_xlat36;
  u_xlat36 = x_850;
  let x_851 : f32 = u_xlat36;
  u_xlat36 = clamp(x_851, 0.0f, 1.0f);
  let x_853 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_853 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_858 : f32 = u_xlat5.x;
  u_xlat26.x = (-(x_858) + 1.0f);
  let x_863 : f32 = u_xlat26.x;
  let x_865 : f32 = u_xlat26.x;
  u_xlat38 = (x_863 * x_865);
  let x_867 : f32 = u_xlat38;
  u_xlat38 = max(x_867, 0.0078125f);
  let x_871 : f32 = u_xlat38;
  let x_872 : f32 = u_xlat38;
  u_xlat39 = (x_871 * x_872);
  let x_876 : f32 = u_xlat5.x;
  u_xlat40 = (x_876 + 0.040000021f);
  let x_879 : f32 = u_xlat40;
  u_xlat40 = min(x_879, 1.0f);
  let x_881 : f32 = u_xlat38;
  u_xlat5.x = ((x_881 * 4.0f) + 2.0f);
  let x_891 : vec4<f32> = u_xlat6;
  let x_894 : f32 = x_90.x_GlobalMipBias.x;
  let x_895 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_891.x, x_891.z), x_894);
  u_xlat6.x = x_895.x;
  let x_900 : f32 = u_xlat6.x;
  u_xlat18 = (x_900 + -1.0f);
  let x_904 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_905 : f32 = u_xlat18;
  u_xlat18 = ((x_904 * x_905) + 1.0f);
  let x_909 : f32 = u_xlat6.x;
  let x_911 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_909, x_911);
  let x_916 : vec4<f32> = vs_INTERP9;
  let x_917 : vec2<f32> = vec2<f32>(x_916.x, x_916.y);
  let x_919 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_917.x, x_917.y, x_919);
  let x_927 : vec3<f32> = txVec1;
  let x_929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_927.xy, x_927.z);
  u_xlat30 = x_929;
  let x_930 : f32 = u_xlat30;
  let x_932 : f32 = x_256.x_MainLightShadowParams.x;
  let x_934 : f32 = u_xlat37;
  u_xlat37 = ((x_930 * x_932) + x_934);
  let x_938 : f32 = vs_INTERP9.z;
  u_xlatb30 = (0.0f >= x_938);
  let x_942 : f32 = vs_INTERP9.z;
  u_xlatb42 = (x_942 >= 1.0f);
  let x_944 : bool = u_xlatb42;
  let x_945 : bool = u_xlatb30;
  u_xlatb30 = (x_944 | x_945);
  let x_947 : bool = u_xlatb30;
  let x_948 : f32 = u_xlat37;
  u_xlat37 = select(x_948, 1.0f, x_947);
  let x_950 : vec3<f32> = vs_INTERP0;
  let x_952 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  let x_954 : vec3<f32> = (x_950 + -(x_952));
  let x_955 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
  let x_957 : vec4<f32> = u_xlat7;
  let x_959 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_957.x, x_957.y, x_957.z), vec3<f32>(x_959.x, x_959.y, x_959.z));
  let x_962 : f32 = u_xlat30;
  let x_964 : f32 = x_256.x_MainLightShadowParams.z;
  let x_967 : f32 = x_256.x_MainLightShadowParams.w;
  u_xlat30 = ((x_962 * x_964) + x_967);
  let x_969 : f32 = u_xlat30;
  u_xlat30 = clamp(x_969, 0.0f, 1.0f);
  let x_972 : f32 = u_xlat37;
  u_xlat42 = (-(x_972) + 1.0f);
  let x_975 : f32 = u_xlat30;
  let x_976 : f32 = u_xlat42;
  let x_978 : f32 = u_xlat37;
  u_xlat37 = ((x_975 * x_976) + x_978);
  let x_980 : f32 = u_xlat18;
  let x_983 : vec4<f32> = x_90.x_MainLightColor;
  let x_985 : vec3<f32> = (vec3<f32>(x_980, x_980, x_980) * vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : vec3<f32> = u_xlat1;
  let x_990 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(-(x_988), vec3<f32>(x_990.x, x_990.y, x_990.z));
  let x_993 : f32 = u_xlat30;
  let x_994 : f32 = u_xlat30;
  u_xlat30 = (x_993 + x_994);
  let x_996 : vec4<f32> = u_xlat3;
  let x_998 : f32 = u_xlat30;
  let x_1002 : vec3<f32> = u_xlat1;
  let x_1004 : vec3<f32> = ((vec3<f32>(x_996.x, x_996.y, x_996.z) * -(vec3<f32>(x_998, x_998, x_998))) + -(x_1002));
  let x_1005 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
  let x_1007 : vec4<f32> = u_xlat3;
  let x_1009 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(vec3<f32>(x_1007.x, x_1007.y, x_1007.z), x_1009);
  let x_1011 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1011, 0.0f, 1.0f);
  let x_1013 : f32 = u_xlat30;
  u_xlat30 = (-(x_1013) + 1.0f);
  let x_1016 : f32 = u_xlat30;
  let x_1017 : f32 = u_xlat30;
  u_xlat30 = (x_1016 * x_1017);
  let x_1019 : f32 = u_xlat30;
  let x_1020 : f32 = u_xlat30;
  u_xlat30 = (x_1019 * x_1020);
  let x_1023 : f32 = u_xlat26.x;
  u_xlat42 = ((-(x_1023) * 0.699999988f) + 1.700000048f);
  let x_1030 : f32 = u_xlat26.x;
  let x_1031 : f32 = u_xlat42;
  u_xlat26.x = (x_1030 * x_1031);
  let x_1035 : f32 = u_xlat26.x;
  u_xlat26.x = (x_1035 * 6.0f);
  let x_1047 : vec4<f32> = u_xlat8;
  let x_1050 : f32 = u_xlat26.x;
  let x_1051 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1047.x, x_1047.y, x_1047.z), x_1050);
  u_xlat8 = x_1051;
  let x_1053 : f32 = u_xlat8.w;
  u_xlat26.x = (x_1053 + -1.0f);
  let x_1057 : f32 = x_145.unity_SpecCube0_HDR.w;
  let x_1059 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1057 * x_1059) + 1.0f);
  let x_1064 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_1064, 0.0f);
  let x_1068 : f32 = u_xlat26.x;
  u_xlat26.x = log2(x_1068);
  let x_1072 : f32 = u_xlat26.x;
  let x_1074 : f32 = x_145.unity_SpecCube0_HDR.y;
  u_xlat26.x = (x_1072 * x_1074);
  let x_1078 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_1078);
  let x_1082 : f32 = u_xlat26.x;
  let x_1084 : f32 = x_145.unity_SpecCube0_HDR.x;
  u_xlat26.x = (x_1082 * x_1084);
  let x_1087 : vec4<f32> = u_xlat8;
  let x_1089 : vec2<f32> = u_xlat26;
  let x_1091 : vec3<f32> = (vec3<f32>(x_1087.x, x_1087.y, x_1087.z) * vec3<f32>(x_1089.x, x_1089.x, x_1089.x));
  let x_1092 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
  let x_1094 : f32 = u_xlat38;
  let x_1096 : f32 = u_xlat38;
  u_xlat26 = ((vec2<f32>(x_1094, x_1094) * vec2<f32>(x_1096, x_1096)) + vec2<f32>(-1.0f, 1.0f));
  let x_1102 : f32 = u_xlat26.y;
  u_xlat38 = (1.0f / x_1102);
  let x_1104 : f32 = u_xlat40;
  u_xlat40 = (x_1104 + -0.039999999f);
  let x_1107 : f32 = u_xlat30;
  let x_1108 : f32 = u_xlat40;
  u_xlat40 = ((x_1107 * x_1108) + 0.039999999f);
  let x_1112 : f32 = u_xlat38;
  let x_1113 : f32 = u_xlat40;
  u_xlat38 = (x_1112 * x_1113);
  let x_1115 : f32 = u_xlat38;
  let x_1117 : vec4<f32> = u_xlat8;
  let x_1119 : vec3<f32> = (vec3<f32>(x_1115, x_1115, x_1115) * vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1120 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec3<f32> = u_xlat17;
  let x_1123 : vec3<f32> = u_xlat4;
  let x_1125 : vec4<f32> = u_xlat8;
  u_xlat17 = ((x_1122 * x_1123) + vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1128 : f32 = u_xlat37;
  let x_1130 : f32 = x_145.unity_LightData.z;
  u_xlat37 = (x_1128 * x_1130);
  let x_1132 : vec4<f32> = u_xlat3;
  let x_1135 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_1132.x, x_1132.y, x_1132.z), vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
  let x_1138 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1138, 0.0f, 1.0f);
  let x_1140 : f32 = u_xlat37;
  let x_1141 : f32 = u_xlat38;
  u_xlat37 = (x_1140 * x_1141);
  let x_1143 : f32 = u_xlat37;
  let x_1145 : vec4<f32> = u_xlat7;
  let x_1147 : vec3<f32> = (vec3<f32>(x_1143, x_1143, x_1143) * vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
  let x_1148 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
  let x_1150 : vec3<f32> = u_xlat1;
  let x_1152 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1154 : vec3<f32> = (x_1150 + vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
  let x_1155 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  let x_1157 : vec4<f32> = u_xlat8;
  let x_1159 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_1157.x, x_1157.y, x_1157.z), vec3<f32>(x_1159.x, x_1159.y, x_1159.z));
  let x_1162 : f32 = u_xlat37;
  u_xlat37 = max(x_1162, 1.17549435e-37f);
  let x_1165 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_1165);
  let x_1167 : f32 = u_xlat37;
  let x_1169 : vec4<f32> = u_xlat8;
  let x_1171 : vec3<f32> = (vec3<f32>(x_1167, x_1167, x_1167) * vec3<f32>(x_1169.x, x_1169.y, x_1169.z));
  let x_1172 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1172.w);
  let x_1174 : vec4<f32> = u_xlat3;
  let x_1176 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_1174.x, x_1174.y, x_1174.z), vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1179, 0.0f, 1.0f);
  let x_1182 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1184 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_1182.x, x_1182.y, x_1182.z), vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1187, 0.0f, 1.0f);
  let x_1189 : f32 = u_xlat37;
  let x_1190 : f32 = u_xlat37;
  u_xlat37 = (x_1189 * x_1190);
  let x_1192 : f32 = u_xlat37;
  let x_1194 : f32 = u_xlat26.x;
  u_xlat37 = ((x_1192 * x_1194) + 1.000010014f);
  let x_1198 : f32 = u_xlat38;
  let x_1199 : f32 = u_xlat38;
  u_xlat38 = (x_1198 * x_1199);
  let x_1201 : f32 = u_xlat37;
  let x_1202 : f32 = u_xlat37;
  u_xlat37 = (x_1201 * x_1202);
  let x_1204 : f32 = u_xlat38;
  u_xlat38 = max(x_1204, 0.100000001f);
  let x_1207 : f32 = u_xlat37;
  let x_1208 : f32 = u_xlat38;
  u_xlat37 = (x_1207 * x_1208);
  let x_1211 : f32 = u_xlat5.x;
  let x_1212 : f32 = u_xlat37;
  u_xlat37 = (x_1211 * x_1212);
  let x_1214 : f32 = u_xlat39;
  let x_1215 : f32 = u_xlat37;
  u_xlat37 = (x_1214 / x_1215);
  let x_1217 : f32 = u_xlat37;
  let x_1221 : vec3<f32> = u_xlat4;
  let x_1222 : vec3<f32> = ((vec3<f32>(x_1217, x_1217, x_1217) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1221);
  let x_1223 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
  let x_1225 : vec4<f32> = u_xlat7;
  let x_1227 : vec4<f32> = u_xlat8;
  let x_1229 : vec3<f32> = (vec3<f32>(x_1225.x, x_1225.y, x_1225.z) * vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
  let x_1230 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
  let x_1234 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1236 : f32 = x_145.unity_LightData.y;
  u_xlat37 = min(x_1234, x_1236);
  let x_1239 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_1239));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1251 : u32 = u_xlatu_loop_1;
    let x_1252 : u32 = u_xlatu37;
    if ((x_1251 < x_1252)) {
    } else {
      break;
    }
    let x_1255 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1255 >> 2u);
    let x_1258 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_1258 & 3u));
    let x_1261 : u32 = u_xlatu40;
    let x_1264 : vec4<f32> = x_145.unity_LightIndices[bitcast<i32>(x_1261)];
    let x_1274 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1279 : vec4<u32> = indexable[x_1274];
    u_xlat40 = dot(x_1264, bitcast<vec4<f32>>(x_1279));
    let x_1283 : f32 = u_xlat40;
    u_xlati40 = i32(x_1283);
    let x_1286 : vec3<f32> = vs_INTERP0;
    let x_1298 : i32 = u_xlati40;
    let x_1300 : vec4<f32> = x_1297.x_AdditionalLightsPosition[x_1298];
    let x_1303 : i32 = u_xlati40;
    let x_1305 : vec4<f32> = x_1297.x_AdditionalLightsPosition[x_1303];
    u_xlat9 = ((-(x_1286) * vec3<f32>(x_1300.w, x_1300.w, x_1300.w)) + vec3<f32>(x_1305.x, x_1305.y, x_1305.z));
    let x_1308 : vec3<f32> = u_xlat9;
    let x_1309 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1308, x_1309);
    let x_1311 : f32 = u_xlat30;
    u_xlat30 = max(x_1311, 6.10351562e-05f);
    let x_1314 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_1314);
    let x_1317 : f32 = u_xlat42;
    let x_1319 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1317, x_1317, x_1317) * x_1319);
    let x_1322 : f32 = u_xlat30;
    u_xlat43 = (1.0f / x_1322);
    let x_1324 : f32 = u_xlat30;
    let x_1325 : i32 = u_xlati40;
    let x_1327 : f32 = x_1297.x_AdditionalLightsAttenuation[x_1325].x;
    u_xlat30 = (x_1324 * x_1327);
    let x_1329 : f32 = u_xlat30;
    let x_1331 : f32 = u_xlat30;
    u_xlat30 = ((-(x_1329) * x_1331) + 1.0f);
    let x_1334 : f32 = u_xlat30;
    u_xlat30 = max(x_1334, 0.0f);
    let x_1336 : f32 = u_xlat30;
    let x_1337 : f32 = u_xlat30;
    u_xlat30 = (x_1336 * x_1337);
    let x_1339 : f32 = u_xlat30;
    let x_1340 : f32 = u_xlat43;
    u_xlat30 = (x_1339 * x_1340);
    let x_1342 : i32 = u_xlati40;
    let x_1344 : vec4<f32> = x_1297.x_AdditionalLightsSpotDir[x_1342];
    let x_1346 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1344.x, x_1344.y, x_1344.z), x_1346);
    let x_1348 : f32 = u_xlat43;
    let x_1349 : i32 = u_xlati40;
    let x_1351 : f32 = x_1297.x_AdditionalLightsAttenuation[x_1349].z;
    let x_1353 : i32 = u_xlati40;
    let x_1355 : f32 = x_1297.x_AdditionalLightsAttenuation[x_1353].w;
    u_xlat43 = ((x_1348 * x_1351) + x_1355);
    let x_1357 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1357, 0.0f, 1.0f);
    let x_1359 : f32 = u_xlat43;
    let x_1360 : f32 = u_xlat43;
    u_xlat43 = (x_1359 * x_1360);
    let x_1362 : f32 = u_xlat30;
    let x_1363 : f32 = u_xlat43;
    u_xlat30 = (x_1362 * x_1363);
    let x_1366 : f32 = u_xlat18;
    let x_1368 : i32 = u_xlati40;
    let x_1370 : vec4<f32> = x_1297.x_AdditionalLightsColor[x_1368];
    u_xlat11 = (vec3<f32>(x_1366, x_1366, x_1366) * vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
    let x_1373 : vec4<f32> = u_xlat3;
    let x_1375 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(vec3<f32>(x_1373.x, x_1373.y, x_1373.z), x_1375);
    let x_1377 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1377, 0.0f, 1.0f);
    let x_1379 : f32 = u_xlat40;
    let x_1380 : f32 = u_xlat30;
    u_xlat40 = (x_1379 * x_1380);
    let x_1382 : f32 = u_xlat40;
    let x_1384 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1382, x_1382, x_1382) * x_1384);
    let x_1386 : vec3<f32> = u_xlat9;
    let x_1387 : f32 = u_xlat42;
    let x_1390 : vec3<f32> = u_xlat1;
    u_xlat9 = ((x_1386 * vec3<f32>(x_1387, x_1387, x_1387)) + x_1390);
    let x_1392 : vec3<f32> = u_xlat9;
    let x_1393 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(x_1392, x_1393);
    let x_1395 : f32 = u_xlat40;
    u_xlat40 = max(x_1395, 1.17549435e-37f);
    let x_1397 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1397);
    let x_1399 : f32 = u_xlat40;
    let x_1401 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1399, x_1399, x_1399) * x_1401);
    let x_1403 : vec4<f32> = u_xlat3;
    let x_1405 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1403.x, x_1403.y, x_1403.z), x_1405);
    let x_1407 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1407, 0.0f, 1.0f);
    let x_1409 : vec3<f32> = u_xlat10;
    let x_1410 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1409, x_1410);
    let x_1412 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1412, 0.0f, 1.0f);
    let x_1414 : f32 = u_xlat40;
    let x_1415 : f32 = u_xlat40;
    u_xlat40 = (x_1414 * x_1415);
    let x_1417 : f32 = u_xlat40;
    let x_1419 : f32 = u_xlat26.x;
    u_xlat40 = ((x_1417 * x_1419) + 1.000010014f);
    let x_1422 : f32 = u_xlat30;
    let x_1423 : f32 = u_xlat30;
    u_xlat30 = (x_1422 * x_1423);
    let x_1425 : f32 = u_xlat40;
    let x_1426 : f32 = u_xlat40;
    u_xlat40 = (x_1425 * x_1426);
    let x_1428 : f32 = u_xlat30;
    u_xlat30 = max(x_1428, 0.100000001f);
    let x_1430 : f32 = u_xlat40;
    let x_1431 : f32 = u_xlat30;
    u_xlat40 = (x_1430 * x_1431);
    let x_1434 : f32 = u_xlat5.x;
    let x_1435 : f32 = u_xlat40;
    u_xlat40 = (x_1434 * x_1435);
    let x_1437 : f32 = u_xlat39;
    let x_1438 : f32 = u_xlat40;
    u_xlat40 = (x_1437 / x_1438);
    let x_1440 : f32 = u_xlat40;
    let x_1443 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_1440, x_1440, x_1440) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1443);
    let x_1445 : vec3<f32> = u_xlat9;
    let x_1446 : vec3<f32> = u_xlat11;
    let x_1448 : vec4<f32> = u_xlat8;
    let x_1450 : vec3<f32> = ((x_1445 * x_1446) + vec3<f32>(x_1448.x, x_1448.y, x_1448.z));
    let x_1451 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1451.w);

    continuing {
      let x_1453 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1453 + bitcast<u32>(1i));
    }
  }
  let x_1455 : vec3<f32> = u_xlat17;
  let x_1456 : vec4<f32> = u_xlat6;
  let x_1459 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_1455 * vec3<f32>(x_1456.x, x_1456.x, x_1456.x)) + vec3<f32>(x_1459.x, x_1459.y, x_1459.z));
  let x_1462 : vec4<f32> = u_xlat8;
  let x_1464 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1462.x, x_1462.y, x_1462.z) + x_1464);
  let x_1466 : vec4<f32> = vs_INTERP4;
  let x_1468 : vec3<f32> = u_xlat0;
  let x_1470 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1466.w, x_1466.w, x_1466.w) * x_1468) + x_1470);
  let x_1473 : f32 = u_xlat14.x;
  let x_1475 : f32 = u_xlat14.x;
  u_xlat1.x = (x_1473 * -(x_1475));
  let x_1480 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1480);
  let x_1483 : vec3<f32> = u_xlat0;
  let x_1486 : vec4<f32> = x_90.unity_FogColor;
  u_xlat0 = (x_1483 + -(vec3<f32>(x_1486.x, x_1486.y, x_1486.z)));
  let x_1492 : vec3<f32> = u_xlat1;
  let x_1494 : vec3<f32> = u_xlat0;
  let x_1497 : vec4<f32> = x_90.unity_FogColor;
  let x_1499 : vec3<f32> = ((vec3<f32>(x_1492.x, x_1492.x, x_1492.x) * x_1494) + vec3<f32>(x_1497.x, x_1497.y, x_1497.z));
  let x_1500 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
  let x_1502 : bool = u_xlatb2;
  let x_1503 : f32 = u_xlat36;
  SV_Target0.w = select(1.0f, x_1503, x_1502);
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

